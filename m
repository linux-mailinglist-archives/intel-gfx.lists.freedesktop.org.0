Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B32543337F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 12:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 487576E237;
	Tue, 19 Oct 2021 10:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D296E237
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 10:28:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="289326262"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="289326262"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 03:28:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="483166339"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 03:28:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org, imre.deak@intel.com,
 matthew.d.roper@intel.com
In-Reply-To: <YW6arFCYguwWoQm3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
 <20211018065207.30587-2-vandita.kulkarni@intel.com>
 <875ytts527.fsf@intel.com> <YW6arFCYguwWoQm3@intel.com>
Date: Tue, 19 Oct 2021 13:28:10 +0300
Message-ID: <87r1chqpfp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dsi/xelpd: Fix the bit mask
 for wakeup GB
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

On Tue, 19 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Oct 19, 2021 at 01:05:20PM +0300, Jani Nikula wrote:
>> On Mon, 18 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
>>=20
>> Commit message goes here.
>>=20
>> > Fixes: f87c46c43175 ("drm/i915/dsi/xelpd: Add WA to program LP to HS w=
akeup guardband")
>> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
>> >  drivers/gpu/drm/i915/i915_reg.h        | 3 ++-
>> >  2 files changed, 3 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/=
i915/display/icl_dsi.c
>> > index 9ee62707ec72..8c166f92f8bd 100644
>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > @@ -1271,7 +1271,7 @@ static void adlp_set_lp_hs_wakeup_gb(struct inte=
l_encoder *encoder)
>> >  	if (DISPLAY_VER(i915) =3D=3D 13) {
>> >  		for_each_dsi_port(port, intel_dsi->ports)
>> >  			intel_de_rmw(i915, TGL_DSI_CHKN_REG(port),
>> > -				     TGL_DSI_CHKN_LSHS_GB, 0x4);
>> > +				     TGL_DSI_CHKN_LSHS_GB_MASK, TGL_DSI_CHKN_LSHS_GB_MASK);
>>=20
>> I think you mean the value should be TGL_DSI_CHKN_LSHS_GB.
>
> IMO the value should never be named that. It should be
> TGL_DSI_CHKN_LSHS_GB_<something>.

Alternatively,

#define TGL_DSI_CHKN_LSHS_GB(byte_clocks)		REG_FIELD_PREP(TGL_DSI_CHKN_LSHS=
_GB_MASK, (byte_clocks))

and

intel_de_rmw(i915, TGL_DSI_CHKN_REG(port),
	     TGL_DSI_CHKN_LSHS_GB_MASK, TGL_DSI_CHKN_LSHS_GB(4));

?

We're using the value in a specific place that references a w/a, so the
magic 4 isn't too bad.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
