Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ENMTHdMkIGozxQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:57:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D181637C62
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 14:57:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=f1ikxPCo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9E1C10FD97;
	Wed,  3 Jun 2026 12:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C1410FD97;
 Wed,  3 Jun 2026 12:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780491471; x=1812027471;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=s9llO3Hohndfoy83MAv1XcEbxsNHcKyI6JApsMMn1+I=;
 b=f1ikxPCoMzwgjOAgA1C1w7cZd4qlq6tYmVnuBTw3G+5K4kzPPiiBTRDu
 IwszS+Xmz0mc+z0/QVX+Tm50h7FamIBkKC4VopE3cVhYxnFF2KhhDSagG
 ZKQqI1Jj3lx842KCNixUL7o56FP2bMQBMRxSATDbdjbChz/eYOJzGxb1W
 CtKD7mbhRE8Q5PW45O+MqMzGh1P9gGKL9ZNtIow0FQqRD+0hXJ11T3HpJ
 GVef9paUUQ/Uyz7Mb/qF2VERRQeyjbfTxIL1HvXw2Smw5cHaJ9Vup6kNQ
 q6ugUfewL7WJZLH1dNwzsluz+cq1N5S7IyVTuq46Ws8a//33VnurDYj2n g==;
X-CSE-ConnectionGUID: QD9ncC9VQJKvWZ8i9UbfCw==
X-CSE-MsgGUID: sfkPwJs+SXuk7W79Dbwzqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="68839104"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="68839104"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:57:50 -0700
X-CSE-ConnectionGUID: +V9fGis7SHakdxarDD9YxQ==
X-CSE-MsgGUID: VbTiVN8hQQCW3bVhbH6FaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="267881749"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.210])
 ([10.245.244.210])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 05:57:49 -0700
Message-ID: <80f3d370-7211-437f-a4d1-ef246eb47b7b@linux.intel.com>
Date: Wed, 3 Jun 2026 14:57:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH] drm/xe/ggtt: clear reserved area at GUC_GGTT_TOP.
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>
References: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D181637C62

Hello,

On 5/27/26 16:45, Rodrigo Vivi wrote:
> The PF GGTT allocator was initialised over a relative [0, usable_size)
> range, with ggtt->start added on every address conversion to get the
> actual hardware address.  Two consequences of that model were considered
> "horrible hacks":
> 
>   - ggtt->start (the WOPCM offset) had to be carried around and added
>     to every drm_mm result.
This is still the case, only we add a separate variable now that is usually 0.
We always have to ensure that this is correctly accounted
for, otherwise we get subtle bugs, so there's no reason not to use it,
if it's already used everywhere.

Whether it's 0 or wopcm_start doesn't change the result.

>   - The GUC_GGTT_TOP ceiling silently truncated the GGTT range instead
>     of being made explicit, leaving PTEs in [GUC_GGTT_TOP, total_size)
>     untouched during the initial clear.
This is a valid concern, but it's very easily be fixed inside the initial clear
by calling xe_ggtt_clear once more with a comment for !VF case.

Something like below is enough to fix it. Adding a reserved region at the end/start
is not the way to do so and just adds more complications.
---8<---
When initialising GGTT, we never clear the part above GUC_GGTT_TOP.
Add a member to &xe_ggtt that holds the full GGTT size, and clear it
during the pass at xe_ggtt_initial_clear.

Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index 8ec23862477fc..497b99a932f0d 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -115,6 +115,8 @@ struct xe_ggtt {
 	u64 start;
 	/** @size: Total usable size of this GGTT */
 	u64 size;
+	/** @entire_size: complete size of the accessible GGTT, reserved regions inclusive */
+	u64 entire_size;
 	/**
 	 * @flags: Flags for this GGTT.
 	 * Acceptable flags:
@@ -406,7 +408,8 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
 			return -ENOMEM;
 		}
 		ggtt_start = wopcm;
-		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE - ggtt_start;
+		ggtt->entire_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE;
+		ggtt_size = ggtt->entire_size - ggtt_start;
 	} else {
 		ggtt_start = xe_tile_sriov_vf_ggtt_base(ggtt->tile);
 		ggtt_size = xe_tile_sriov_vf_ggtt(ggtt->tile);
@@ -417,6 +420,7 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
 				    ggtt_start, ggtt_start + ggtt_size - 1);
 			return -ERANGE;
 		}
+		ggtt->entire_size = ggtt_size;
 	}
 
 	ggtt->gsm = ggtt->tile->mmio.regs + SZ_8M;
@@ -461,6 +465,10 @@ static void xe_ggtt_initial_clear(struct xe_ggtt *ggtt)
 	drm_mm_for_each_hole(hole, &ggtt->mm, start, end)
 		xe_ggtt_clear(ggtt, ggtt->start + start, end - start);
 
+	end = ggtt->start + ggtt->size;
+	if (ggtt->entire_size > end)
+		xe_ggtt_clear(ggtt, end, ggtt->entire_size - end);
+
 	xe_ggtt_invalidate(ggtt);
 	mutex_unlock(&ggtt->lock);
 }

