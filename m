Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E2D8CF897
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 07:04:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4609E10E8E3;
	Mon, 27 May 2024 05:04:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c84x0Xlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40FF10E8E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716786249; x=1748322249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OfjMT3kbVO3Yk56gR1EbGc4ptrDpAFUt12t6Y2R4kKw=;
 b=c84x0XlxfC/cBQlfVJLDSK+HnfwRHP5RT9iOVb8kTlfgINzKyp8IqOYW
 Ya2BgyVawUa9ee3peAtJfH05Ow3agUJyJAhAWIUtFsoVIlIlOZTlDiPf2
 z1wvAtryCloFPOjRKbFa1DAkk9kX7diY7zPG2xY6OeGCYTPcf16mz6HQt
 GjLzI73Zc1VeJOsLfbYOPcwhgH9jE6Os5NT/mGbWtnldu8KmI5FPfmStv
 F2gyfUgZwgtNTAilO2VtZkPe885bDDB34ttoeIKkDY+KakfJpiRg2ny8l
 gju9ZZPDQdzrP8/x6m58B895Hby48lBCKKbRNs0hJD2ekjO/7kiJSFyj7 g==;
X-CSE-ConnectionGUID: ETFgNuMDQrawntfZiGejmg==
X-CSE-MsgGUID: 2WgnFbPMTzy8tg8zBY/bGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="30597503"
X-IronPort-AV: E=Sophos;i="6.08,191,1712646000"; d="scan'208";a="30597503"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2024 22:04:08 -0700
X-CSE-ConnectionGUID: FQBJk8+zQqaMBP7irMyMMA==
X-CSE-MsgGUID: 3zyE/wZTSC6PKtA01mmyGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,191,1712646000"; d="scan'208";a="34718992"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.210])
 by orviesa009.jf.intel.com with ESMTP; 26 May 2024 22:04:07 -0700
From: gareth.yu@intel.com
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org,
	gareth.yu@intel.com
Subject: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the detect
 handler
Date: Mon, 27 May 2024 13:14:32 +0800
Message-Id: <20240527051432.173965-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240520185822.3725844-13-imre.deak@intel.com>
References: <20240520185822.3725844-13-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A bad link in MST is not retrained. Please also consider MST.
The issue ticket is https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10902.

	if (intel_dp->is_mst) {
		/*
		 * If we are in MST mode then this connector
		 * won't appear connected or have anything
		 * with EDID on it
		 */
		status = connector_status_disconnected;
		goto out;
	}

	/*
	 * Some external monitors do not signal loss of link synchronization
	 * with an IRQ_HPD, so force a link status check.
	 */
	if (!intel_dp_is_edp(intel_dp)) {
		ret = intel_dp_retrain_link(encoder, ctx);
		if (ret)
			return ret;
	}
