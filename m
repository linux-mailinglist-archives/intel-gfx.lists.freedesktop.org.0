Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMhNJ0NQEGq5VwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:46:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82035B462F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E48310F5B2;
	Fri, 22 May 2026 12:46:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oFJRQAhj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F8210F5A7;
 Fri, 22 May 2026 12:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779454016; x=1810990016;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=60X3Itl5vQT+8Wx3n6S0jcU3A4B24gCjRoSWPGMnRO0=;
 b=oFJRQAhjUxYRnZTx2erTG2htLIoeT8ZcRb2ENRsVUwTAv52sB4QAo2x1
 N0Q3bPBE6ESomssMQUlhv6ChJOMxxgfWf3yPxFjwrQv30KOTl/Mg8XMar
 aj7BS/X/rYxpGozkv9PMWN8WvbepRQqhyI8IlAIAlZcT7/I6HlRaRQQtY
 23p10JmXkJR24zsWufr8L3cX/mzzxiPbhZx73K33vJAvyWzBOzTPs0is2
 1zIgVI2ww2+rFu0wlOLNH7waZKuX3RojmlEsL3y8S75kNyM+RJ91uSCf+
 xHFf4JwevE/rCGierWrppwhOS+AEcwQhk/KYg5JTVrXdGfLG7zzsKUdJb g==;
X-CSE-ConnectionGUID: IzummNfPTzyC+KefiLvFRg==
X-CSE-MsgGUID: ZWlLkaGMSyiHZ8FvNrwczg==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="79414261"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="79414261"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 05:46:55 -0700
X-CSE-ConnectionGUID: tSasalSrSiWdHe8Eryvnjw==
X-CSE-MsgGUID: kPdxaK0aT2CFbC8HG8AUAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="240064427"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.1])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 05:46:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: imre.deak@intel.com, Jouni Hogander <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/dp: Add helpers to reset link params
In-Reply-To: <ahBOa-Pepaw8iTsW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-2-imre.deak@intel.com>
 <ag962-z5WD8SVS9I@intel.com> <ahAJPJUYbSRvWPQT@ideak-desk.lan>
 <6b7498358483981472e9a9c6b0c76739de0b028a@intel.com>
 <ahBOa-Pepaw8iTsW@intel.com>
Date: Fri, 22 May 2026 15:46:50 +0300
Message-ID: <89725d0a646dc66ed4fadfa065193074f78ba28b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: E82035B462F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 22 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, May 22, 2026 at 01:29:39PM +0300, Jani Nikula wrote:
>> On Fri, 22 May 2026, Imre Deak <imre.deak@intel.com> wrote:
>> > On Fri, May 22, 2026 at 12:36:27AM +0300, Ville Syrj=C3=A4l=C3=A4 wrot=
e:
>> >> On Mon, May 18, 2026 at 02:24:22PM +0300, Imre Deak wrote:
>> >> > Add helpers to defer and handle link params resets instead of
>> >> > open-coding the same. Rename intel_dp_reset_link_params() to
>> >> > intel_dp_reset_link_params_force() to align its name with the new
>> >> > deferred reset helpers.
>> >> >=20
>> >> > When deferring a reset, return whether a new reset was queued, used=
 by a
>> >> > follow-up change.
>> >> >=20
>> >> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>> >> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>> >> >  drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++=
----
>> >> >  drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
>> >> >  .../drm/i915/display/intel_dp_link_training.c |  4 +-
>> >> >  5 files changed, 38 insertions(+), 14 deletions(-)
>> >> >=20
>> >> > diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/dr=
m/i915/display/g4x_dp.c
>> >> > index 5ff1cdf4581a5..c20a97e21419b 100644
>> >> > --- a/drivers/gpu/drm/i915/display/g4x_dp.c
>> >> > +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>> >> > @@ -1265,7 +1265,7 @@ static void intel_dp_encoder_reset(struct drm=
_encoder *encoder)
>> >> >=20=20
>> >> >  	intel_dp->DP =3D intel_de_read(display, intel_dp->output_reg);
>> >> >=20=20
>> >> > -	intel_dp->reset_link_params =3D true;
>> >> > +	intel_dp_reset_link_params_defer(intel_dp);
>> >> >  	intel_dp_invalidate_source_oui(intel_dp);
>> >> >=20=20
>> >> >  	if (display->platform.valleyview || display->platform.cherryview)
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu=
/drm/i915/display/intel_ddi.c
>> >> > index 86520848892e0..77819aaeccb76 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> >> > @@ -4664,7 +4664,7 @@ static void intel_ddi_encoder_reset(struct dr=
m_encoder *encoder)
>> >> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(to_intel_encoder(en=
coder));
>> >> >  	struct intel_digital_port *dig_port =3D enc_to_dig_port(to_intel_=
encoder(encoder));
>> >> >=20=20
>> >> > -	intel_dp->reset_link_params =3D true;
>> >> > +	intel_dp_reset_link_params_defer(intel_dp);
>> >> >  	intel_dp_invalidate_source_oui(intel_dp);
>> >> >=20=20
>> >> >  	intel_pps_encoder_reset(intel_dp);
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/=
drm/i915/display/intel_dp.c
>> >> > index 1920d2f026665..13163dd085e91 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > @@ -3710,7 +3710,11 @@ void intel_dp_set_link_params(struct intel_d=
p *intel_dp,
>> >> >  	intel_dp->lane_count =3D lane_count;
>> >> >  }
>> >> >=20=20
>> >> > -void intel_dp_reset_link_params(struct intel_dp *intel_dp)
>> >> > +/*
>> >> > + * Reset link params now, preserving any deferred connector
>> >> > + * detect-time reset request.
>> >> > + */
>> >> > +void intel_dp_reset_link_params_force(struct intel_dp *intel_dp)
>> >> >  {
>> >> >  	intel_dp->link.max_lane_count =3D intel_dp_max_common_lane_count(=
intel_dp);
>> >> >  	intel_dp->link.max_rate =3D intel_dp_max_common_rate(intel_dp);
>> >> > @@ -3720,6 +3724,28 @@ void intel_dp_reset_link_params(struct intel=
_dp *intel_dp)
>> >> >  	intel_dp->link.seq_train_failures =3D 0;
>> >> >  }
>> >> >=20=20
>> >> > +/*
>> >> > + * Reset link params during the next connector detect.
>> >> > + * Return %true if a new reset was queued.
>> >> > + */
>> >> > +bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp)
>> >>=20
>> >> I find the intel_dp_reset_link_params_defer() vs.
>> >> intel_dp_reset_link_params_force() naming rather confusing.
>> >>=20
>> >> Can't immediately think of a really good name for
>> >> intel_dp_reset_link_params_defer() so maybe it's better to not
>> >> have a function for it at all (ie. just drop this patch)?
>> >
>> > The idea was to have an interface to reset the link params directly or
>> > in a deferred way, instead of a direct access of the flag.
>> >
>> > The names are not great yes. I could use what Jouni suggested instead,
>> > or if the above argument is not good enough I can also drop this patch.
>>=20
>> I suggest intel_dp_reset_link_params() keeps its name, or gets renamed
>> to intel_dp_link_params_reset(). It just does the thing, no "force".
>>=20
>> Then the other two use something like:
>>=20
>> - submit/process
>> - queue/process
>> - stage/handle
>>=20
>> or some combination i.e. something like:
>>=20
>> intel_dp_link_params_reset()
>> intel_dp_link_params_reset_submit()
>> intel_dp_link_params_reset_process()
>
> All of it kinda leaves it a bit unclear how these things
> are related, and then one probably has to read through
> them to figure out what they're actually doing.
>
> Hence why I think just setting/checking the flag on the
> spot might be the clearest approach. You can immediately
> find where it's set vs. checked.

Trouble is if you want to hide that flag in an opaque type in the
future.


--=20
Jani Nikula, Intel
