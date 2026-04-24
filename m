Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIkAKS1X62nkKwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 13:42:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E7145DEC5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 13:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DCAB10F529;
	Fri, 24 Apr 2026 11:42:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jR71M8iD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6275410F529;
 Fri, 24 Apr 2026 11:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777030955; x=1808566955;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BFx6VUczctOjFtglAjq28lYE9HY5UwG2AEJnl/WvyWk=;
 b=jR71M8iDaBSRmM3TKfBR4V6tSBilfHNePKm6DfI+2hGVe4+L1afsQcjD
 /H6efztWKnbMh9OeWCbwtKc9wmtAXaohuwVa4TgXMGlGYKEsQOR+cSZZm
 Cd39Xn5EYL2ELaJb4I3s+14aRzg71aXzOFpA1OkibJkbzb0l0qmfxzHyW
 bJyux8BFDRDvVuwHsvpJOf6g/7XVmESrgylg+tfGG/hEoHC94PsrrnbrY
 dR4L3ppSLSU9IAYC6DydRYIr7ttqD9gzLD/4IEdTbvD78VfMIp2yX3eD3
 zEOjJm7+TgDwIdNq86Uv2PA8HeqLIH5W8IP4BxLRC/tVJaDcRX+7c2qUP w==;
X-CSE-ConnectionGUID: 1WC2qIeuSi2601VI92Md9A==
X-CSE-MsgGUID: tKVx2cWBTIi8Lcdm9HysLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="100662524"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="100662524"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 04:42:34 -0700
X-CSE-ConnectionGUID: dfzumyoaS0OxTlP4cQPaqQ==
X-CSE-MsgGUID: lscikg75R0CGhzNV8UAEIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="256227726"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 04:42:32 -0700
Date: Fri, 24 Apr 2026 13:42:29 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: enable ccs modifiers on dg2
Message-ID: <aetXJXANjinP119i@black.igk.intel.com>
References: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
 <92d121173a3e42ef91274f9fa810e47d71b8dd70@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <92d121173a3e42ef91274f9fa810e47d71b8dd70@intel.com>
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
X-Rspamd-Queue-Id: 32E7145DEC5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[raag.jadav@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,igalia.com,linux.intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,black.igk.intel.com:mid]

On Fri, Apr 24, 2026 at 11:44:57AM +0300, Jani Nikula wrote:
> On Thu, 23 Apr 2026, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> > Since Xe driver aux ccs enablement dg2 ccs modifiers have been
> > disabled on both Xe and i915 drivers. Here allow dg2 to use
> > ccs again for framebuffers.
> >
> > Fixes: 6a99e91a6ca8fec5882450128fb128265f86b32a ("drm/i915/display: Detect AuxCCS support via display parent interface")
> 
> In kernel, there should be 12 characters of sha1.

I had a misconception that checkpatch already flags this, but it seems
not? Or perhaps I'm not much informed about the history (if any)?

Raag

> 'dim fixes <sha1>' gives you the correct format, and suggests Cc's
> (though you probably shouldn't actually Cc all of them).
> 
> For referencing commits in general, I have this handy alias in my
> .gitconfig:
> 
> [alias]
> 	cite = log -1 --abbrev=12 '--format=%h (\"%s\")'
> 
> $ git cite 6a99e91a6ca8fec5882450128fb128265f86b32a
> 6a99e91a6ca8 ("drm/i915/display: Detect AuxCCS support via display parent interface")
> 
> BR,
> Jani.
> 
> > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index d31819758f3d..a4bd4f8e18b2 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -750,9 +750,8 @@ static bool has_auxccs(struct drm_device *drm)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(drm);
> >  
> > -	return IS_GRAPHICS_VER(i915, 9, 12) ||
> > -	       IS_ALDERLAKE_P(i915) ||
> > -	       IS_METEORLAKE(i915);
> > +	return IS_GRAPHICS_VER(i915, 9, 12) &&
> > +		!HAS_FLAT_CCS(i915);
> >  }
> >  
> >  static bool has_fenced_regions(struct drm_device *drm)
> 
> -- 
> Jani Nikula, Intel
