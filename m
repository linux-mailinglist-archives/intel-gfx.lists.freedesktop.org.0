Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F148D44B2
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 07:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1D9010E6C1;
	Thu, 30 May 2024 05:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XY82tB2N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2075B10E6C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 05:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717046080; x=1748582080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OfjMT3kbVO3Yk56gR1EbGc4ptrDpAFUt12t6Y2R4kKw=;
 b=XY82tB2NIlzHOU7tejWIOvS+9AcimVsx3j1E9WsdEp1ocgsDuQIzU1ej
 ffG7mSoX3pq7PQNIF8G+vcbChvk4BraD6h570wVHshFuN4iA9ihVLVLBE
 unbxJVL2qxrGPyRel5DPomJVPhasdMdFiymoZkwyBrv6pWnEGoBYdX2WV
 xLF5VASfa6DcfL2veyVwjrlvkMoYzX0bI83L4D6C8i16cgof28B+Gp1WG
 UwgmWEXQDOown48sSvWMHrqfDr4uNIV+1st9zjMEReZJRCQ/p/9FUrpYV
 h3YMRQCPe7iorb5C3uFQRfe5iPuU8JaNn/4xgDWA6I+9UqkvT3dPBbexm w==;
X-CSE-ConnectionGUID: 6eJJXeIsSEi5Ik0IWHVw+Q==
X-CSE-MsgGUID: D3JddbPZQyyLqFkkAaBEFg==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="11781368"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="11781368"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 22:14:39 -0700
X-CSE-ConnectionGUID: 3eIp/F9hREyObF4gfIlJPQ==
X-CSE-MsgGUID: YrFfQ8QsSXaOFvCog5sFOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35747510"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.210])
 by orviesa009.jf.intel.com with ESMTP; 29 May 2024 22:14:34 -0700
From: gareth.yu@intel.com
To: jani.nikula@linux.intel.com
Cc: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, tejas.upadhyay@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the detect
 handler
Date: Thu, 30 May 2024 13:24:59 +0800
Message-Id: <20240530052459.3744520-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240430073112.10586-1-gareth.yu@intel.com>
References: <20240430073112.10586-1-gareth.yu@intel.com>
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
