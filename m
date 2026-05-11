Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kO8iNXPLAWqgjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CA550DBBE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD8C410E715;
	Mon, 11 May 2026 12:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IYhlVw2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B9610E715;
 Mon, 11 May 2026 12:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502513; x=1810038513;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EImN/DOGpckX48zbhbLLuiWw416hn2+ZBUvKDC76f3I=;
 b=IYhlVw2l95M+vh7gdL+DitUftmUroD66uoWCw1IarnDwcAqSNQrw5vaG
 baanjJpjQyDts2Z/XHF2rPhj6p24UO45Hj9LjS+IgLWhqOINK+JM4h0Ee
 aWMaDYrbblYeSrV7I83Xy0dGk+/DzF+9eNK/Ea+YL/EAf2o6XLrwaHluV
 O3lExP/UiRtvqZgalYn3TTyzJwZl68rNlwGRaT5JMS8wmLVDGLmhzskzQ
 LMuUeJ03E4B4XJWnjVYBx28KufUdZdTD5EQMnLuYkO1gfMIpf3u4RFCw3
 j+J2CEzYtNejIeNYmw1oZbpdd/F0Jm3peCImAFSFhFGoVUYV/Zmj0Ompo g==;
X-CSE-ConnectionGUID: F1Hk+GdKSlG5jy4nCY26+w==
X-CSE-MsgGUID: gmt6i6u4S2adDhDnjHjiPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90762736"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90762736"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:32 -0700
X-CSE-ConnectionGUID: Hw+8bTTXSqeyhwyy4t6dGw==
X-CSE-MsgGUID: vZ7zX6YZQaaBouW/8wazSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267801410"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:31 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 00/11] drm/i915/display: reduce the pm demand peak bw based
 on display data rate
Date: Mon, 11 May 2026 15:28:05 +0300
Message-ID: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Queue-Id: 67CA550DBBE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

In xe3+, soc can lower the fabric frequency when the display
needs less bandwidth than the minimum GV point.

v1: pmdemand peak bw is updated to 20GB/s is the required data rate
    is low and less than 20GB/s even though there are no QGV point
    with 20GB/s. Only the peak_ww is changed based on the conditions 

v2: At the time of BW info calculations, a new row is inserted with
    peakbw as 20GB/s and deratebw also to 20GB/s and the required
    pmdemand peakbw is automatically calculated based on the old
    logic.    

Vinod Govindapillai (11):
  drm/i915/wm: clear the plane ddb_y entries on plane disable
  drm/i915/pm_demand: introduce HAS_PMDEMAND macro
  drm/i915/display: sagv pre/post plane calls to check pmdemand support
  drm/i915/bw: Extract icl_init_qgv_info()
  drm/i915/bw: sort the qgv points based on the dclk
  drm/i915/bw: update the routine to get max dclk from qgv points
  drm/i915/bw: update the routine to find the peakbw in MTL
  drm/i915/bw: update the tile-y dependency based on the display version
  drm/i915/bw: consolidate the debug info of bw/dgv/psf data
  drm/i915/bw: extract update_sagv_status()
  drm/i915/bw: insert a sw bw info entry to cater low data rate usecases

 drivers/gpu/drm/i915/display/intel_bw.c       | 215 +++++++++++++-----
 .../drm/i915/display/intel_display_device.h   |   2 +
 .../gpu/drm/i915/display/intel_display_irq.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  12 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   8 +-
 6 files changed, 178 insertions(+), 65 deletions(-)

-- 
2.43.0

