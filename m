Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHkUD0iQemmz7wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:40:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1C6A9AED
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:40:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F92010E780;
	Wed, 28 Jan 2026 22:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ucmejwy+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1410C10E792
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 22:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769640005; x=1801176005;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WZUV0cx/nbBcBJtvYNj/mCMT/R9vF5keKHs585meVWI=;
 b=Ucmejwy+jGXrEiD1hhDLAgIqlG+vbdQ++WuhdR68Tfrr+9V4AJkcJgDh
 jGbynFDN8zAsu3Yu4lJA3OV1cyXXjgsyzFTDK+jcIF9RSuhemfRuUZrhL
 8R9KxmFMMgxol1YqyNiV8tiDUSEtQ9Zbg00GqaTT7mGl2hIHddvdjxOj6
 7lqED8I1DCpbi3ImODF3c6WQ5ucCPi5XzOACzseQVvA/TOlU8+3UE2I9U
 9vC+/YYEW7/Qzi0iJvhGJyfXD3tgUD1o7/b20BqrVlKfz5MtjEa4RWiRY
 pcb5V9h/A0EK+27Uj6mlrBy5HPBF0OPzTrOl8FaNsCY+Nt4I+bTvubHP6 g==;
X-CSE-ConnectionGUID: V/zE7BXHRbGvfNRkbLmxOQ==
X-CSE-MsgGUID: bWC7PtBLQGq0qqIghx6K8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70582841"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70582841"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:40:05 -0800
X-CSE-ConnectionGUID: BrIn2Fb8RnaiDxY8yyWULA==
X-CSE-MsgGUID: /C7cLYqXQzivhVUp/L57QQ==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.221])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:40:02 -0800
Date: Wed, 28 Jan 2026 23:39:59 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [PATCH] drm/i915: Add vgpu.entry list initialization
Message-ID: <aXqQPw6fGxMoDrh0@ashyti-mobl2.lan>
References: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
 <aXo_t0nqu-TMow4-@ashyti-mobl2.lan>
 <3f47d40ba15db7ace414d68934b84b9da8bd69c3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3f47d40ba15db7ace414d68934b84b9da8bd69c3@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,m:michal.grzelak@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: AA1C6A9AED
X-Rspamd-Action: no action

Hi Jani,

> >> diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
> >> index d29a06ea51a5..362282b20f7b 100644
> >> --- a/drivers/gpu/drm/i915/i915_vgpu.c
> >> +++ b/drivers/gpu/drm/i915/i915_vgpu.c
> >> @@ -67,6 +67,7 @@ void intel_vgpu_detect(struct drm_i915_private *dev_priv)
> >>  	u64 magic;
> >>  	u16 version_major;
> >>  	void __iomem *shared_area;
> >> +	INIT_LIST_HEAD(&dev_priv->vgpu.entry);
> >
> > Despite what Sebastian is suggesting, I think the place is right
> > (or almost right).
> >
> > But I wouldn't fix it this way. Initializing virtual GPUs is not
> > mandatory, indeed it fails only during delete that is the only
> > function that doesn't check whether the list is initialized.
> >
> > I would rather check whether the list is initialized before
> > trying to delete it, with a nice comment saying that the list
> > might not have been initialized and we want to avoid accessing an
> > invalid list.
> 
> Nope, none of this.
> 
> The problem is intel_gvt_init() and intel_gvt_driver_remove() happening
> at different abstraction levels in i915_driver.c, with the calls also
> happening at different abstraction levels in the error path.
> 
> Basically when i915_driver_hw_probe() returns with an error, the caller
> has no way of knowing whether intel_gvt_init() succeeded or not, and any
> call to intel_gvt_driver_remove() is bound to be wrong.
> 
> The fix is not to make intel_gvt_driver_remove() "gracefully" handle
> broken probe/cleanup calls, but to fix the probe/cleanup calls.

Yes, agree, the initialization of the vgpu is a little fancy (I
was about to re-reply right after my reply with a better
suggestion, but I didn't want to spam)

But as a fast one- liner and correct cleanup we have the choice
to gracefully remove the driver or freak out because we are
trying to delete a list that is not initialized.

[*] https://intel-gfx-ci.01.org/tree/drm-tip/IGT_8711/shard-dg2-5/igt@i915_module_load@fault-injection.html#dmesg-warnings385

> Michał is actually looking into this, Cc'd.

Good that Michal is looking into this.

Thank you,
Andi
