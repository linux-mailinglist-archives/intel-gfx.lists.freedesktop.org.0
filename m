Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHRTMkKfwmm3fQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 15:27:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E9330A1F7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 15:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7844510E181;
	Tue, 24 Mar 2026 14:27:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="BnFSBiYh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE16C10E6F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 14:27:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3FBBF433F9;
 Tue, 24 Mar 2026 14:27:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1E8EC19424;
 Tue, 24 Mar 2026 14:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1774362430;
 bh=YntyrAEvKhruUfdcbERV1IHtWYJ3Xd1vlHV8OzTeqh0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BnFSBiYhpOGEZqQkmPGAlGeUAUYIXevDepVPzm7DjFO9gDMlCEcV/8Pm5uH7Jtjx5
 5EAVRU4HA58eiWJChDvvHrs1VY/pVr7GNfnSv4A3ZLJ30nq6u8lrFsEALK4Me6EJdb
 z23Wl3Vsn193p4g7gjt3wONb3R+yWJ+hu7QbzBo4=
Date: Tue, 24 Mar 2026 15:26:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Yassine Mounir <sosohero200@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com,
 security@kernel.org, rodrigo.vivi@intel.com
Subject: Re: [PATCH] drm/i915: Fix UAF race between relocation and GEM_CLOSE
Message-ID: <2026032453-depletion-various-b39f@gregkh>
References: <20260324134718.27331-1-sosohero200@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260324134718.27331-1-sosohero200@gmail.com>
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
X-Spamd-Result: default: False [3.19 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sosohero200@gmail.com,m:joonas.lahtinen@linux.intel.com,m:security@kernel.org,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 52E9330A1F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 09:47:18AM -0400, Yassine Mounir wrote:
> A use-after-free (UAF) vulnerability was identified in the i915 driver 
> within eb_relocate_vma. The issue arises from a race condition where 
> a concurrent DRM_IOCTL_GEM_CLOSE can drop the GEM object's reference 
> count to zero while the relocation thread is still processing entries.
> 
> This results in the kernel attempting to access freed memory in 
> eb_relocate_entry, leading to a display pipeline hang and potential 
> system instability.
> 
> Fix:
> Wrap the relocation phase with i915_gem_object_get() and 
> i915_gem_object_put() to ensure the object remains valid throughout 
> the operation, even if user-space requests to close the handle.
> 
> Reported-by: Yassine Mounir (Toji1) <sosohero200@gmail.com>
> Signed-off-by: Yassine Mounir <sosohero200@gmail.com>

No need for a reported-by when you create and sign off on a change.

> ---
>  drivers/gpu/drm/i915/i915_gem_execbuffer.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> --- a/drivers/gpu/drm/i915/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/i915_gem_execbuffer.c

There is no such file name in the current kernel tree, what version did
you make this against?


> @@ -1542,7 +1542,11 @@ eb_relocate_vma(struct i915_execbuffer *eb, struct i915_vma *vma)
>  		if (ret)
>  			return ret;
>  
> +		/* Hold a reference to prevent UAF during concurrent GEM_CLOSE */
> +		i915_gem_object_get(vma->obj);
>  		ret = eb_relocate_entry(eb, vma, rel);
> +		i915_gem_object_put(vma->obj);
> +

What prevents the object from going away right after the put call here?

thanks,

greg k-h
