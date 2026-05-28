Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIFYDYsaGGoBdQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 005575F0ACE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE04F10EFD0;
	Thu, 28 May 2026 10:35:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="krsWjRTf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5A510EFD0;
 Thu, 28 May 2026 10:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779964552; x=1811500552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EtFt4gXIdLGpkCK8TKUL5Yd30NcOvP12kaVydruUGyA=;
 b=krsWjRTf5Xxiy1YG8/zhR25c/HjIJtvHhbCUpQ3qohfqUEUrAFG3HsQM
 y77prewV2E46MgyCNwrnYognW65hdYtj+e0nuWUn7O0KjklcmlwvDxIJR
 khremr+dowS3Nmj+GqmXPj4VBfp07OMls4125B/CeGlvxcF5NAA5IuGpL
 en1jSKlC6cECMWxEIERsoF9olJ2PO2h81rg0K7dR6l/xYAYKOEJiuznsp
 QsHXdOTFZda8cj9mh4mYB1tXAya7eZ1+YWVtHGnZPvxUV2f98thU7tTpH
 E0r23ZZlzp6hTQBxmTyvQWH8R5GApDm6cglmLDuPReUCyqDCTvemSNHLM w==;
X-CSE-ConnectionGUID: U0a127oWTe+Q9PsAAIdT8Q==
X-CSE-MsgGUID: OEdC1+qbQwairGvWuMIytg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="79837694"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="79837694"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:51 -0700
X-CSE-ConnectionGUID: JgbMpsC3SaqI1GZCDmg98w==
X-CSE-MsgGUID: tM/y8Ss7Te6VBZ0jTx8yzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="247458924"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:51 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/11] drm/i915/bw: Simplify the best max_data_rate search
Date: Thu, 28 May 2026 13:34:58 +0300
Message-ID: <20260528103458.18069-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: 005575F0ACE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For some reason we're tracking the best max_data_rate
as the difference between the required data_rate and
max_data_rate. That's pointlessly complicated as we're
just looking for the minimum max_data_rate that is
greater or equal to data_rate.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 423cae2ff208..41539fdfeac5 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1112,8 +1112,8 @@ static int mtl_find_qgv_points(struct intel_display *display,
 		if (max_data_rate < data_rate)
 			continue;
 
-		if (max_data_rate - data_rate < best_rate) {
-			best_rate = max_data_rate - data_rate;
+		if (max_data_rate < best_rate) {
+			best_rate = max_data_rate;
 			qgv_peak_bw = display->bw.peakbw[i];
 		}
 
-- 
2.53.0

