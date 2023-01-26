Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C0367CA5D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 13:00:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0487410E5FD;
	Thu, 26 Jan 2023 12:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D916410E5FD
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 12:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674734437; x=1706270437;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=B/oSuLQxx0RvYporIsiIdYS33k0pfmLkGEk/osq7+OY=;
 b=U9ry+NJ22jZglyt35EVl9apTERUWs5Zkfh/BClVgagErAPaFhp0UE+Bi
 2/USCAbWT09hNxhJbKNQeRIFtKPLrPJUBA8hjZg1TOcDc2rCOHL7CEHTN
 akF0peSu2ykHG/sFgUXW4m0GEpKrFjDsseVmxGu645nZEHsEE5n2xRJ02
 95YKuxhSbgXorK3me3HMdD+wWPL9KD3C+Ij8CtFsy4vafQ+jBSCNecAxo
 mOfZojuKRNFBm/sFkmUNfIO4I53FI/0jE7azdbwc7/pSIty40NW2MrKqO
 dWXhnWfI+VPBr7MtkuE+yqLd4kIh0yW1krB/ahTrsr6Rgpycz9DMVlYL6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="314698672"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="314698672"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 04:00:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="908200616"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="908200616"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.157])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 04:00:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
Date: Thu, 26 Jan 2023 14:00:31 +0200
Message-ID: <87bkml5wv4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> On Wed, 2023-01-25 at 12:44 +0200, Jouni H=C3=B6gander wrote:
>> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/dr=
m/i915/display/intel_psr.c
>> > index 7d4a15a283a0..63b79c611932 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(struct =
intel_plane *plane,
>> >  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
>> >  }
>> >=20=20
>> > -void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>> > +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
>> > +					const struct intel_crtc_state *crtc_state,
>> > +					const struct intel_plane_state *plane_state,
>> > +					int color_plane)
>> > +{
>> > +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>
> Should you use i915 instead of dev_priv? I've heard and read elsewhere
> that this is generally a desired change.  Much easier to use always the
> same local name for this kind of thing.  Though this file is already
> interspersed with both versions...

Basically the only reason to use dev_priv for new code is to deal with
some register macros that still have implicit dev_priv in
them. Otherwise, i915 should be used, and when convenient, dev_priv
should be converted to i915 while touching the code anyway (in a
separate patch, but while you're there).

The implicit dev_priv dependencies in the register macros are a bit
annoying to fix, and it's been going slow. In retrospect maybe the right
thing would have been to just sed the parameter to all of them
everywhere and be done with it for good. Not too late now, I guess, and
I'd take the patches in a heartbeat if someone were to step up and do
it.


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
