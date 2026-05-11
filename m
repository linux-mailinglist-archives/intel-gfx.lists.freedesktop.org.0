Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKUuFytNAmrIqgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:42:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC395166DB
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5DD10E8F3;
	Mon, 11 May 2026 21:42:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="POOBWp1s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CC4110E8F2;
 Mon, 11 May 2026 21:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535720; x=1810071720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=//mYb+Vnkb+++qHjecxnMqrfpMUrRfF7zBPXSsZHf4A=;
 b=POOBWp1sq3LU0omtOqASkXK5gVCm6VzFEXbyfBWWcdlK1CH74reBivEr
 meolwQf+0HHsfro93N6uk+HWg5aKGpC8Us/VZ+RWVZLWThBn3YWoyY7KP
 xzNTbNz4p7Nzf8PxvN5M6LjV46cajnQBwly77legGQKEK6DK88T8nM5WN
 JsDjjK3k1uG95L50uQSDi+SaYayumEnpY4WdNmkG3k2IJsNXWkwCbC6ai
 V4DvXnBg3pABx1mukLC3GURQMtbxLAkUBYoHtlnxNZv8TzbiqTXY67fV8
 Kwz+bJyGVMhGI3uhagFZMPGdW9bPABryFCoDiLVXKCVTSED/d/0hY4Klu w==;
X-CSE-ConnectionGUID: OCbW8SSJTBKq0OKmnnB8kQ==
X-CSE-MsgGUID: Rr9NuyMTSYqNp9OZD0NGyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90816879"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90816879"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:59 -0700
X-CSE-ConnectionGUID: pfKv0/8+SQWa5XUiEkhDjA==
X-CSE-MsgGUID: 65YxtfEtQDaYDXbqGe32zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="275702916"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:58 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/14] drm/xe: Print a debug message if we have no stolen for
 the initial FB
Date: Tue, 12 May 2026 00:41:16 +0300
Message-ID: <20260511214122.8468-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 2BC395166DB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Inform the poor sop reading the logs why the initial FB was rejected
if there is no stolen memory.

Technically this should perhaps be an error since the plane is known
to be enabled at this point, and if there is no stolen then it clearly
can't be scanning out from anywhere. But maybe there are some
virtualization passthrough cases and whatnot where we might not be
able to get access to stolen, so keep it as debug (same as i915).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 14ac4cd8b7ff..b7e0685351bb 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -67,10 +67,14 @@ initial_plane_bo(struct xe_device *xe,
 			    "Using phys_base=%pa, based on initial plane programming\n",
 			    &phys_base);
 	} else {
-		struct ttm_resource_manager *stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
+		struct ttm_resource_manager *stolen;
 
-		if (!stolen)
+		stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
+		if (!stolen) {
+			drm_dbg_kms(&xe->drm, "No stolen for initial FB\n");
 			return NULL;
+		}
+
 		phys_base = base;
 		flags |= XE_BO_FLAG_STOLEN;
 	}
-- 
2.52.0

