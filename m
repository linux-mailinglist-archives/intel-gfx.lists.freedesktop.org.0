Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NKvsKveyKWqicAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 20:54:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CB766C654
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 20:54:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UsQo0tbA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A830D10EB9C;
	Wed, 10 Jun 2026 18:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D61E10EB9C;
 Wed, 10 Jun 2026 18:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781117685; x=1812653685;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=T3Vn+n5c0DHViaMxNrdKeHogSMpVzQsGdlXLC1tvHHw=;
 b=UsQo0tbAB5haIDKVVER0LFe0uYRIdJMc9y4gIdJmU7JZq64ffyw1l24B
 hkKBOEvV8WYh3G/IxQNkGiJ1jYykvPmIPueVYkrLw9QvxVvoF0SbzWu4u
 d4DTSFyUXKJveil7r88RjLAD7Gbd9NED75Uq2mf6KZ94Q+1fGK0oepe2a
 3VkP6RgkMKBvzDTbsfJVI7IChIEA+GdxGrgr4wbjnX9eQtcbrtcdMzMIf
 90f0sSLhYL+jwjBZY6rSDubHujeo5RMNt1TMYoJCd2xAOg7IX31Z378PR
 VEHNgDCS+9ZDW+2UNRsln+xlmOzTM0DZHpeFjEE/SvO/KqPH+d8LdiZ0n Q==;
X-CSE-ConnectionGUID: XkBbZ220QWiPVmg+8Elg1w==
X-CSE-MsgGUID: bAVE4/GeQz+dhooS+CC8xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="104585840"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="104585840"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 11:54:45 -0700
X-CSE-ConnectionGUID: K5gi68zrRcOQvp/o8qFW+A==
X-CSE-MsgGUID: UQrNdxn/SrWvzpNcnLhFVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250166004"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 11:54:43 -0700
Date: Wed, 10 Jun 2026 21:54:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 02/14] drm/i915/cdclk: Pass CDCLK in MHz to pcode on DG2
Message-ID: <aimy71wEwM-ky0Tw@intel.com>
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
 <20260610170652.5320-3-ville.syrjala@linux.intel.com>
 <4e72aea4331149f4f54016dfb884e171255ba483@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e72aea4331149f4f54016dfb884e171255ba483@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.75 / 15.00];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24CB766C654

On Wed, Jun 10, 2026 at 08:31:48PM +0300, Jani Nikula wrote:
> On Wed, 10 Jun 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We are currently trying to pass the CDCLK in kHz to the pcode
> > on DG2, while the pcode expects a value in MHz units. Adjust
> > the units appropriately.
> 
> How is it working? :o

I don't think DG2 pcode does all that much a with the information.
Eg. AFAIK it doesn't actually adjust any voltages due to this stuff.
I think it's more for some internal power usage estimates or something,
but dunno what that really means in practice.

> 
> Fixes: ?
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 9ca56bab281f..9718062d8d6c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2703,8 +2703,10 @@ static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
> >  	 * if CDCLK is decreasing or not changing, set bits 25:16 to current CDCLK,
> >  	 * which basically means we choose the maximum of old and new CDCLK, if we know both
> >  	 */
> > -	if (change_cdclk)
> > +	if (change_cdclk) {
> >  		cdclk = max(new_cdclk_state->actual.cdclk, old_cdclk_state->actual.cdclk);
> > +		cdclk = DIV_ROUND_UP(cdclk, 1000);
> > +	}
> 
> I'd consider s/cdclk/cdclk_mhz/g here and in intel_pcode_notify() to
> emphasize it's not kHz.
> 
> >  	/*
> >  	 * According to "Sequence For Pipe Count Change",
> > @@ -2740,8 +2742,10 @@ static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
> >  	 * According to "Sequence After Frequency Change",
> >  	 * set bits 25:16 to current CDCLK
> >  	 */
> > -	if (update_cdclk)
> > +	if (update_cdclk) {
> >  		cdclk = new_cdclk_state->actual.cdclk;
> > +		cdclk = DIV_ROUND_UP(cdclk, 1000);
> > +	}
> 
> Ditto.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> >  
> >  	/*
> >  	 * According to "Sequence For Pipe Count Change",
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
