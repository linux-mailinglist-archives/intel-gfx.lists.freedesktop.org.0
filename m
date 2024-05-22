Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A86C8CBD7B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 11:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492F110E173;
	Wed, 22 May 2024 09:05:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3eilJjG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35A7910E173
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 09:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716368726; x=1747904726;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZoLrhLmSRVQWU5YpPgr+geazsSAJ+1yKXR/31mJPhs8=;
 b=a3eilJjG8sh4ozNOS59gTtpcw1PGKR3m2pPDQNixgvOLPVxn1jmtPjmd
 +6bL8DbMA+xW1e+v0FOi6WMrJJGpj0/5FQrabiUMDoBcqOZ+t2LyIRie7
 HLA8DiNxIv0lgU83JGtFPIZAZfsKyRwsggGC7zoULawcwWacUh02omtcg
 by+0qWMHfrWarh8+O0GRK0xtoS33qkxRq4Zks3MebPe9irQccL6FsJmKw
 cuDlq/f71wLl+cqURGDTeGOUXFlPiBdI1rJSvT/3FXjqEk1dxHRYmK5cJ
 R1KftfxBWwOSyj9W5iBKYpa1KFLbwu8DOLarQG1Q3OT8q4TGCVW8RzRST g==;
X-CSE-ConnectionGUID: z81ff7KRTDKCppSEFiOdqA==
X-CSE-MsgGUID: 3BwQ3uqGRAy7Yr7mYGZqBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="30108734"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="30108734"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 02:05:20 -0700
X-CSE-ConnectionGUID: MNhuyxEsSAmi+v8sw3nrRw==
X-CSE-MsgGUID: 7uz+Qz0RSqSW8oVsvCJUtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="33086470"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 02:05:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Extract intel_dp_has_dsc()
In-Reply-To: <ZkznUVgYqPOxhbGQ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
 <20240517145356.26103-3-ville.syrjala@linux.intel.com>
 <87h6esu5dl.fsf@intel.com> <Zktzmthyfrxk7ACO@intel.com>
 <87seybqyrc.fsf@intel.com> <ZkznUVgYqPOxhbGQ@intel.com>
Date: Wed, 22 May 2024 12:05:16 +0300
Message-ID: <87jzjmqks3.fsf@intel.com>
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

On Tue, 21 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, May 21, 2024 at 12:51:03PM +0300, Jani Nikula wrote:
>> On Mon, 20 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Mon, May 20, 2024 at 01:47:34PM +0300, Jani Nikula wrote:
>> >> On Fri, 17 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wr=
ote:
>> >> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> >
>> >> > Extract a helper to check whether the source+sink combo
>> >> > supports DSC. That basic check is needed both during mode
>> >> > validation and compute config. We'll also need to add extra
>> >> > checks to both places, so having a single place for it is nicer.
>> >> >
>> >> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++--
>> >> >  1 file changed, 14 insertions(+), 2 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/=
drm/i915/display/intel_dp.c
>> >> > index 1e88449fe5f2..7bf283b4df7f 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > @@ -1220,6 +1220,19 @@ bool intel_dp_need_bigjoiner(struct intel_dp=
 *intel_dp,
>> >> >  	       connector->force_bigjoiner_enable;
>> >> >  }
>> >> >=20=20
>> >> > +static bool intel_dp_has_dsc(struct intel_connector *connector)
>> >>=20
>> >> Why not const?
>> >
>> > We've generally not consted these things. And then whenver add
>> > one const somewhere it usually ends up getting in the way later,
>> > not because we need mutability but simply because we want to
>> > call something that doesn't have the const.
>> >
>> > I suppose if we do want to start consting things more we should
>> > just do some kind of bigger pass over the whole codebase so that
>> > that there's less chance of pain later.
>> >
>> > We're also not using container_of_const() for these right now,
>> > so the const can vanish semi-accidentally when casting things.
>> >
>> > I suppose this thing might be low level enough that the const
>> > could be kept. I'll have another think about it.
>>=20
>> It's just that this series drops a bunch of const because of this, which
>> feels like the opposite of what you usually do. :)
>
> I suppose.
>
> My current rule of thumb is:
> - atomic object states and fbs should be const if possible
> - everything else is not
>
> I wouldn't mind making more things const, but I suspect
> there are several sizeable rabbit holes that need to be
> dug out beforehand.

Fair enough. Like I said, the series is R-b.

J.



--=20
Jani Nikula, Intel
