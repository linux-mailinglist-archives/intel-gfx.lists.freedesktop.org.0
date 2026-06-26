Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sm++HNigPmpdJQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 17:55:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9BA6CEB45
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 17:55:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SDf52Gxp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031FD10E3D1;
	Fri, 26 Jun 2026 15:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADD510E3C4;
 Fri, 26 Jun 2026 15:54:59 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id 1A9B942A7C;
 Fri, 26 Jun 2026 15:54:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D5DE1F000E9;
 Fri, 26 Jun 2026 15:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782489299;
 bh=HnX3YkJzFg+3/HFsm1Ylzc3uTkNta0IzAnCrp7mu+iE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=SDf52GxpGNgv+SwKs1zF60r8V4sFTL6eLqeuetGHz5ah5abm2Xorp0vbLk6VPROq2
 5arCElFTIRI6AMLKM18oKfGsQKC2iHOBoaBgt9tuCfRbb3g2TZVtg/Qsn9BEznse9r
 3nchadlbDlSA8MUzwliMEPD6cxE69LZ+cSVAZNCsMWLl4mld8bc9KEyzVQVRFuIs2E
 WJNmAHpUKrmfxh6lr1a2UY4yx3X/iHqPLeNJ8zyqM717EKkb5cAOm+OCLUjfwCLL79
 l1kJS7QysIHcYqZjXeFm+3HGSgayW9I3P09wrpuGw3gfUHBa7fvzHZf9fFqsA2MBy1
 9wOzwo64D3gnw==
Date: Fri, 26 Jun 2026 17:54:54 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/gt: Return bool values from a boolean helper
Message-ID: <aj51Ia0HE9xDufPh@zenone.zhora.eu>
References: <20260625114442.2912230-1-andi.shyti@linux.intel.com>
 <53ba85083a23024c7d54b656c834c144abbb57cf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53ba85083a23024c7d54b656c834c144abbb57cf@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,zenone.zhora.eu:mid,lists.freedesktop.org:from_smtp,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E9BA6CEB45

Hi Jani,

On Thu, Jun 25, 2026 at 04:11:45PM +0300, Jani Nikula wrote:
> On Thu, 25 Jun 2026, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > intel_has_gpu_reset() returns logically correct values by
> > returning a function pointer when GPU reset is supported and
> > NULL otherwise. However, as a boolean helper, it is more
> > appropriate to return explicit true or false values.
> >
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_reset.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > index b2cf672564dd..a3f198646e1d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > @@ -797,9 +797,9 @@ static int __intel_gt_reset(struct intel_gt *gt, intel_engine_mask_t engine_mask
> >  bool intel_has_gpu_reset(const struct intel_gt *gt)
> >  {
> >  	if (!gt->i915->params.reset)
> > -		return NULL;
> > +		return false;
> >  
> > -	return intel_get_gpu_reset(gt);
> > +	return !!intel_get_gpu_reset(gt);
> 
> !! is superfluous.

OK, I can resend it. I actually like the use of "!!" because it
explicitly converts the result to 1 or 0, by definition of true
and false, but I don't have a strong opinion on it in this case.

Thanks,
Andi

> >  }
> >  
> >  bool intel_has_reset_engine(const struct intel_gt *gt)
> 
> -- 
> Jani Nikula, Intel
