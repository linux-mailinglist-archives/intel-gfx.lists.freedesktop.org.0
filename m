Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B687E5E5F25
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 11:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A27010EA8A;
	Thu, 22 Sep 2022 09:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0393310EA8A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 09:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663840691; x=1695376691;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Cz8TEbF+pzjVLUIdSk+WvapzLy2u7x/PeRP0oJ9Q+0Y=;
 b=AM9Cm2b6P2U5eHJw/L2nSU/XfDnbD0QtM6o754I17ByyhKoPtkD5hsft
 UHHBabIfAgOo8kfCtY1coFbLL5FiOSQeJDHQSq2p7IDB3thWngxzHw6kf
 ca6vlw+FPMadCrr1bdQMXqUZ42G91T+tXR008vlrwoFbZmJYgS0/I0laJ
 Xofn0trRETv9w30oCp/nIDL/8XHiS//dyt+qKbJkaWAbEPWS1LAdkED36
 m0zUSeuwAIbhbLKmIiUQJASg0NMG9QAlqTWTkiEN0m3hU23OWsCxFayDE
 cMKC84XOKpRB5ahahDLfxeZ5hNYCRLt3nIOJMbp/ISr4JB7dZ9ZskydJY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="287335027"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="287335027"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 02:58:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="650458109"
Received: from akoska-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.156])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 02:58:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YywuLfoS2XMxUasw@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
 <20220916165206.1499-3-ville.syrjala@linux.intel.com>
 <9731fffc60162a34b7790bb08792fc55593e4ca2.camel@coelho.fi>
 <YywdAq6eYfTEppUC@intel.com> <87leqb7px7.fsf@intel.com>
 <Yywsrhy2MJKRI76v@intel.com> <YywuLfoS2XMxUasw@intel.com>
Date: Thu, 22 Sep 2022 12:57:51 +0300
Message-ID: <8735cj7mu8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Mark FBC B gone if pipe B is
 gone
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 22 Sep 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 22, 2022 at 12:36:46PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Thu, Sep 22, 2022 at 11:51:16AM +0300, Jani Nikula wrote:
>> > On Thu, 22 Sep 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.inte=
l.com> wrote:
>> > > On Thu, Sep 22, 2022 at 11:18:55AM +0300, Luca Coelho wrote:
>> > >> On Fri, 2022-09-16 at 19:52 +0300, Ville Syrjala wrote:
>> > >> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > >> >=20
>> > >> > If pipe B is fused off we also shouldn't have FBC B.
>> > >> >=20
>> > >> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel=
.com>
>> > >> > ---
>> > >> >  drivers/gpu/drm/i915/intel_device_info.c | 1 +
>> > >> >  1 file changed, 1 insertion(+)
>> > >> >=20
>> > >> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/g=
pu/drm/i915/intel_device_info.c
>> > >> > index 1434dc33cf49..fbefebc023f1 100644
>> > >> > --- a/drivers/gpu/drm/i915/intel_device_info.c
>> > >> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> > >> > @@ -394,6 +394,7 @@ void intel_device_info_runtime_init(struct dr=
m_i915_private *dev_priv)
>> > >> >  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
>> > >> >  			runtime->pipe_mask &=3D ~BIT(PIPE_B);
>> > >> >  			runtime->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_B);
>> > >> > +			runtime->fbc_mask &=3D ~BIT(INTEL_FBC_B);
>> > >> >  		}
>> > >> >  		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
>> > >> >  			runtime->pipe_mask &=3D ~BIT(PIPE_C);
>> > >>=20
>> > >> I don't know (yet) what exactly this does, but it makes sense if you
>> > >> think of consistency: we already do that for PIPE_A.
>> > >
>> > > It's basically saying the entire pipe is fused off, so anything
>> > > living inside that pipe should also be fused off.
>> > >
>> > >>=20
>> > >> But what about PIPE_C and PIPE_D? Wouldn't it make sense to do the =
same
>> > >> thing for them as well?
>> > >
>> > > There is no FBC engine on those pipes (we don't even have
>> > > the INTEL_FBC_C+ enum values defined), at least for now.
>> >=20
>> > A future proof way would be to add
>> >=20
>> > 	runtime->fbc_mask &=3D runtime->pipe_mask;
>>=20
>> Dunno if I entirely like the extra assumption that the enums match.
>
> Well, I guess I already did that partially in eg. skl_fbc_id_for_pipe()
> though that one does allow for a difference in bias at least.

Regardless, scratch what I just said, I don't like it either. For
whatever reason I momentarily thought fbc_mask was indexed using
pipes. *facepalm*.

Sorry for the noise.

BR,
Jani.


>
>> Also would need to make sure we don't accidentally screw up any
>> old platforms where FBC is not tied to a specific pipe, but I
>> guess we should never have pipe A fused off on those w/o
>> the entire display engine fused off as well.
>>=20
>> >=20
>> > after all the fuse handling. Would also fix any misconfiguration in
>> > i915_pci.c.
>> >=20
>> >=20
>> > BR,
>> > Jani.
>> >=20
>> >=20
>> > --=20
>> > Jani Nikula, Intel Open Source Graphics Center
>>=20
>> --=20
>> Ville Syrj=C3=A4l=C3=A4
>> Intel

--=20
Jani Nikula, Intel Open Source Graphics Center
