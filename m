Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zYU9C+sW32nFOgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 06:41:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC1B4003A4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 06:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5CC10E048;
	Wed, 15 Apr 2026 04:41:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LXtJKWmh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9ED110E00F;
 Wed, 15 Apr 2026 04:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776228069; x=1807764069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5LJ1Q3SUrh4roFowSAPiLbHcSS1WX0rg/61R2zHv6Ws=;
 b=LXtJKWmhAQWY5h4BbqPURFHqy3Qj2ofXC9DGjd+JMAxgJ92RwFPZV8Wt
 0t7kIsh9M0V8B1A5ypxWWDwtnOWRvBWcgSift2s6jDbQGr1DL9uXb6bXJ
 SQfPQVEcie2qaU4UAEjm/0pl6WqWsPnEWrRxzq4hwEkBlfRrEzzQ1uwWb
 R+rTUUG+qfhZYRqdfVDfaDNSoh6lZEfCARhpSxxw1ckbw/68xxl5DPR8q
 85yN5zvSf9tT7rrpaOjl7dyA5Ilna3Wq04WIT7rrrGMLFRsBtLMgq5+iy
 tdlXa2wwwmH73O2NFLNQGmkUYRV+SeNedIGVvuYyGHkmQt6GlkqP+64sx g==;
X-CSE-ConnectionGUID: OMzZMujIRW2KW+dHF3a6+w==
X-CSE-MsgGUID: qwE1E6HXTgyvIaxBNOhd+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="99838482"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="99838482"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 21:41:08 -0700
X-CSE-ConnectionGUID: qZRAT2DLQmSYAPkEjjp24Q==
X-CSE-MsgGUID: 3fFeKLLVQtCkQy+bSUXP8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227652731"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa008.fm.intel.com with ESMTP; 14 Apr 2026 21:41:07 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2] drm/i915/lt_phy: Update the Tx Swing for DP 1.4
Date: Wed, 15 Apr 2026 10:09:52 +0530
Message-Id: <20260415043952.3189598-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0FC1B4003A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Changes have been introduced in Bspec regarding the Tx Swing level,
Tx pre/post coefficients. Update the Tx Swing Level and the Tx
pre/post-cursor co-effecients to incorporate these changes

v2: Updated the commit message (Suraj)

BSpec: 74493
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 395dba8c9e4d..980ab19868b3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1123,8 +1123,8 @@ static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] = {
 	{ .lt = { 1, 2, 0, 28, 7  } },
 	{ .lt = { 0, 3, 0, 35, 13 } },
 	{ .lt = { 1, 1, 0, 27, 0  } },
-	{ .lt = { 1, 2, 0, 31, 4  } },
-	{ .lt = { 0, 3, 0, 39, 9  } },
+	{ .lt = { 1, 2, 0, 31, 5  } },
+	{ .lt = { 0, 3, 0, 37, 11 } },
 	{ .lt = { 1, 2, 0, 35, 0  } },
 	{ .lt = { 0, 3, 0, 41, 7  } },
 	{ .lt = { 0, 3, 0, 48, 0  } },
-- 
2.25.1

