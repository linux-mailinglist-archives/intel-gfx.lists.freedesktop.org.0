Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DCA886BFD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 13:25:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595C610E1E4;
	Fri, 22 Mar 2024 12:24:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MbN/Tf1p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1ABB10E3B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 12:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711110292; x=1742646292;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uOfQfxRHgSTkxCrR/9iHEOCv/JvGRKeLeKai6BPLoYI=;
 b=MbN/Tf1pOi5JyrCBDIwd7TX7CgRoykkLLyRlGDR9BHFAPKqy/lh6WAq+
 cYhIg08ilDsWBjpc7hDHePH7KiHFb3nI5MWNVB5SsN858ifXWef0QGZhD
 QB0qkfti2hy+xesvXjVtiiXpfxBVrYOZ3Ggsil/KM9lzqGD4vlfIw38WI
 GtKyT0ztQmJnnd3hD3CWN0E7+VC1LKp43LEKFF7+tZacJawjjPN34Rx3i
 1Af1Y2OwM/rqO9DJOPP9QyC0Y2f13nVnsM7AXFUALYcm6mxq2LCYWicuQ
 QX1cU3nwmrjtX8OsFaOxDcF/tDsBNLL7RLPqdBayQeh037dehDSxDXu5F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6281194"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6281194"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 05:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="15322033"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 05:24:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] Avoid unwanted lspcon init and probe warnings
Date: Fri, 22 Mar 2024 17:48:30 +0530
Message-Id: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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

Currently we probe for lspcon, inside lspcon init.

If there is no lspcon connected, the probe expectedly fails and
results in error message. This inturn gets propogated to
lspcon init and we get again error message for lspcon init
failure.

Separate the probe function and avoid displaying error if probe fails.
If probe succeeds, only then start lspcon init and set the expected
LS/PCON mode as first step.

Ankit Nautiyal (2):
  drm/i915/lspcon: Separate function to set expected mode
  drm/i915/lspcon: Separate lspcon probe and lspcon init

 drivers/gpu/drm/i915/display/intel_dp.c     |  3 +
 drivers/gpu/drm/i915/display/intel_lspcon.c | 66 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
 3 files changed, 45 insertions(+), 25 deletions(-)

-- 
2.40.1

