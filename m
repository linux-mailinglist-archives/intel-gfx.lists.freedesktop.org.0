Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SA0oCu3peWkF1AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 11:50:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7013A9FB24
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 11:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FEF110E641;
	Wed, 28 Jan 2026 10:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hMSFFWeh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6626810E641
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 10:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769597417; x=1801133417;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=07+TO9/5ylDSbJv05fcZyK83gKLdLsS3aup409qf7mQ=;
 b=hMSFFWehi/r8WTnCWYgZe9+4J8vvPswn0RPUioAI8gwthc867BibpNNi
 ex5mmRjdeFWYc7fmeJs97FyvCe5WfqowHABw1eSJEw+SGCgZ2gJqCU0ly
 GZV2nIJc01H0vsa0JIelzLi6j+WvvSEQ//szOneITt+XTMBufmWD90Mv3
 06nTMge0VPtwyNrk4oqGowGz+huSuBcRm7JM6caDc/JrOOUqAr327I4di
 a4/oIrVI1TvawaY8drINYfQSrzJH0ap1QJu/rCU+ooiJXARSG0QdAxmpK
 2TZeR8D0GC4xf/g95Wc80sxzR8em4MVqy86VHbgHSa9Hqj5kiuc8uld5Y Q==;
X-CSE-ConnectionGUID: WxyNB394R4aVLytTytyKJQ==
X-CSE-MsgGUID: fxO/tgr8TxO1gIhsmRxDfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="81121239"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81121239"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 02:50:17 -0800
X-CSE-ConnectionGUID: cRYKiVKrQxyn6ViZpl9Z6Q==
X-CSE-MsgGUID: Icu/SNc5S/qAJ73cAop/uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245846477"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 02:50:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kaushlendra Kumar <kaushlendra.kumar@intel.com>, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, Kaushlendra Kumar
 <kaushlendra.kumar@intel.com>
Subject: Re: [PATCH] drm/i915: Prevent  heap overflow in i915_l3_write()
In-Reply-To: <20260128051142.3006076-1-kaushlendra.kumar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260128051142.3006076-1-kaushlendra.kumar@intel.com>
Date: Wed, 28 Jan 2026 12:50:11 +0200
Message-ID: <b0435f60602510e61ba04385e378f2caba9ac366@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kaushlendra.kumar@intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7013A9FB24
X-Rspamd-Action: no action

On Wed, 28 Jan 2026, Kaushlendra Kumar <kaushlendra.kumar@intel.com> wrote:
> The i915_l3_write() function failed to validate that the write
> count did not exceed the remaining buffer size after the starting
> offset. This allows userspace to trigger a heap buffer overflow.
>
> Clamp the write count to the remaining size of the L3 log buffer
> to ensure memory safety.
>
> Signed-off-by: Kaushlendra Kumar <kaushlendra.kumar@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_sysfs.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index 70e0d8615160..3c592111d0cc 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -121,6 +121,7 @@ i915_l3_write(struct file *filp, struct kobject *kobj,
>  	}
>  
>  	count = round_down(count, sizeof(u32));
> +	count = min_t(size_t, GEN7_L3LOG_SIZE - offset, count);

This may make count not be a multiple of sizeof(u32) again. Note how
offset is treated below.

BR,
Jani.

>  	memcpy(remap_info + offset / sizeof(u32), buf, count);
>  
>  	/* NB: We defer the remapping until we switch to the context */

-- 
Jani Nikula, Intel
