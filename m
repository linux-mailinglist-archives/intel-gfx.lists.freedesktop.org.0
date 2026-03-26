Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOgeMFwnxWkU7QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:32:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CFE335395
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:32:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE87D10E8EB;
	Thu, 26 Mar 2026 12:32:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ek3W4K+J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE4110E8EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 12:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774528345; x=1806064345;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+WCxmqhhA00sYpe0k24gmuLzvBAIQ+NIGctA09CXneE=;
 b=ek3W4K+Jx2J40C4LhMPVe1raZewYV//7EWmj6ypVUFq73IxCIc6y1m+g
 WCcQ47AlovXEaIQqZtA2B04pAhmMh6IGTQp33Mx0W6aX1szXlzNcR5vqS
 p3uGuwFngjtH6jmqDYPZepo1qJKz+c26F88NoU09MEhP0T0gA2apvomai
 shrF8ATJaIchQIxa3i/ctghrH6lqLxUsDJrUL1+vd7+CdrR41gHAo3VJM
 ff0SdSKrnh1LIOHcveli0xgTDF8pqVce5PMxXBigPCU1r4kj3jTa3hax2
 uhrPpxFqLlKJDJZK2RSeUDYBkNFK1FBmV7ku5y7dpxhRMkpNGvme7iR0R g==;
X-CSE-ConnectionGUID: vgYLqEJ1T7ukXy/t9JLqig==
X-CSE-MsgGUID: s+zxuYPrQ9utFK7amByV1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="79489487"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="79489487"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:32:07 -0700
X-CSE-ConnectionGUID: vyyVrOmAQdauQWFdfiNDqw==
X-CSE-MsgGUID: wxRAjZvYTLO9hpkN2nszlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="255489486"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:32:05 -0700
Date: Thu, 26 Mar 2026 14:32:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Yassine Mounir <sosohero200@gmail.com>, g@freedesktop.org
Cc: gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 security@kernel.org
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
Message-ID: <acUnQkniqECI0QVY@intel.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260324151741.29338-1-sosohero200@gmail.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [1.11 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MIXED_CHARSET(0.63)[subject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sosohero200@gmail.com,m:g@freedesktop.org,m:gregkh@linuxfoundation.org,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_SPAM(0.00)[0.318];
	ARC_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 91CFE335395
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 11:17:41AM -0400, Yassine Mounir wrote:
> Fix a race condition in Linux 7.0-rc2 where a GEM object could be freed
> during relocation if userspace closes the handle concurrently.
> 
> The fix involves pinning the object lifetime using i915_gem_object_get()
> before the relocation loop and releasing it via i915_gem_object_put()
> in the common exit path (out label), ensuring symmetry in both success
> and error paths.
> 
> This v2 rebases the change to the new 'gem/' directory structure in
> the current mainline tree and addresses potential memory leaks in
> early error returns.
> 
> Signed-off-by: Yassine Mounir <sosohero200@gmail.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index e7918f896..0468c0551 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1528,6 +1528,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
>  		return -EFAULT;
>  
> +	i915_gem_object_get(ev->vma->obj);
>  	do {
>  		struct drm_i915_gem_relocation_entry *r = stack;
>  		unsigned int count =
> @@ -1588,6 +1589,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  		urelocs += ARRAY_SIZE(stack);
>  	} while (remain);
>  out:
> +	i915_gem_object_put(ev->vma->obj);
>  	reloc_cache_reset(&eb->reloc_cache, eb);
>  	return remain;


Ignoring the AI slop aspect, I did have a quick look at the code a bit
and noticed this:

eb_lookup_vma() {
	...
	rcu_read_lock();
	vma = radix_tree_lookup(...);
	if (likely(vma && vma->vm == vm))
		vma = i915_vma_tryget(vma);
	rcu_read_unlock();
	if (likely(vma))
		return vma;
	...
}

So if we somehow get a vma with the wrong vm there then we
return the vma without grabbing a reference to it.


Should we not do something like this?

if (likely(vma && vma->vm == vm))
	vma = i915_vma_tryget(vma);
+ else
+	vma = NULL;

-- 
Ville Syrjälä
Intel
