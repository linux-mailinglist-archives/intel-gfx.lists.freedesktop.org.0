Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kG9nNLkagWm0EAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:44:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 058D2D1BC6
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:44:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7AB10E489;
	Mon,  2 Feb 2026 21:44:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIBW5fe6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF0210E49A;
 Mon,  2 Feb 2026 21:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770068660; x=1801604660;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=m2SQyYBRHQruoBB/Z3qAoxk2tuOXT2cTrvoWKkRYYq8=;
 b=hIBW5fe6szm4KIaQ0c9JRMLY6aGyxIBJcu9M+/kYraSJmYPLIxTD2G8M
 xAdrOE1JYtPMzc+WrOx4PWmbKB4IUmsjJiFZ3i/os/jZNx5SiH4RXMBEZ
 1v3HlUAJdphfqWyWehir66+goKPYFvoNGaUX29DRQ47T07DGc787wFKqb
 Iu30TqSQmPySDLZPjfW7jmA//AH/oNPm7XHWmFIj91JYAIC2qzpkdWmpx
 6Kw8ISqDMRbkd7/7EjhcI0pANU7uF1CRznPGHT9y4XyznAfL5IRSsfhy0
 j7sHxhKq9UIlgYyqmpRrB9HfpTtXMGz9NRVDNZNEnJf39fZurJDUlj29X w==;
X-CSE-ConnectionGUID: Q185HXdcS/WGN9gHIg0juw==
X-CSE-MsgGUID: 4jZEQkl0QcmWC6a97UljKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="58814355"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="58814355"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:44:20 -0800
X-CSE-ConnectionGUID: YwrkHJLVQ8u/wgQ4+P48pA==
X-CSE-MsgGUID: seDrr59xRoeqn30QBi6S0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209646860"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.51])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:44:19 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 02 Feb 2026 18:43:16 -0300
Subject: [PATCH 10/16] drm/xe/xe3p_lpg: Update LRC sizes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-nvl-p-upstreaming-v1-10-653e4ff105dc@intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
In-Reply-To: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 058D2D1BC6
X-Rspamd-Action: no action

Like with previous generations, the engine context images for of both
RCS and CCS in Xe3p_LPG contain a common layout at the end for the
context related to the "Compute Pipeline".

The size of the memory area written to such section varies; it depends
on the type of preemption has taken place during the execution and type
of command streamer instruction that was used on the pipeline. For
Xe3p_LPG, the maximum possible size, including NOOPs for cache line
alignment, is 4368 dwords, which would be the case of a mid-thread
preemption during the execution of a COMPUTE_WALKER_2 instruction.

The maximum size has increased in such a way that we need to update
xe_gt_lrc_size() to match the new sizing requirement. When we add that
to the engine-specific parts, we have:

  - RCS context image: 6672 dwords = 26688 bytes -> 7 pages
  - CCS context image: 5024 dwords = 20096 bytes -> 5 pages

Bspec: 65182, 55793, 73590
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/xe_lrc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
index e58eb8b9db78..38f648b98868 100644
--- a/drivers/gpu/drm/xe/xe_lrc.c
+++ b/drivers/gpu/drm/xe/xe_lrc.c
@@ -113,13 +113,17 @@ size_t xe_gt_lrc_hang_replay_size(struct xe_gt *gt, enum xe_engine_class class)
 	/* Engine context image */
 	switch (class) {
 	case XE_ENGINE_CLASS_RENDER:
-		if (GRAPHICS_VER(xe) >= 20)
+		if (GRAPHICS_VERx100(xe) >= 3510)
+			size += 7 * SZ_4K;
+		else if (GRAPHICS_VER(xe) >= 20)
 			size += 3 * SZ_4K;
 		else
 			size += 13 * SZ_4K;
 		break;
 	case XE_ENGINE_CLASS_COMPUTE:
-		if (GRAPHICS_VER(xe) >= 20)
+		if (GRAPHICS_VERx100(xe) >= 3510)
+			size += 5 * SZ_4K;
+		else if (GRAPHICS_VER(xe) >= 20)
 			size += 2 * SZ_4K;
 		else
 			size += 13 * SZ_4K;

-- 
2.52.0

