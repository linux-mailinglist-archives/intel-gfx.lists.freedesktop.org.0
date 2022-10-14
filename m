Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DA95FEB5F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 11:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6ED10E047;
	Fri, 14 Oct 2022 09:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7067810E047
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 09:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665738787; x=1697274787;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ueAO16q/4KH4k4yfuLgUmNEuwbrcQavnLIZplcVw2E0=;
 b=OEKCQfEtmz7yNV0XNvchUnY5t7zLim9z/STbi9Kz6oOzUe1ls7nLWVe+
 FLkY2ZlRgcQKuYIFYu7ZBBeSGxS2w7uOOxvjrrHtM8iSdIlpAAMJZqU4u
 inGzH9H2fnjjJbeJoyg7pB2ttgdqNYeOmnCtyccIqMPA/2JTES8PHtr0/
 M6PB1GJt/P85X3XxmguzwvAy+RmQ4s4n14bckzyS6cxmxdq+3jdMJKT3h
 zPALqkyYPwXbdPMnQMh4MXihOi5LCbcamLWSUOILp37WVqHdDma8AXK4H
 gVmAifWXnZaGtCmk1HLg6pQJfnsNFwdAt9zDrwx+tbqevTHLa1Rpl+azW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="367351837"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="367351837"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:13:06 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="752855116"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="752855116"
Received: from lgleeson-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.43.239])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:13:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, Ville
 Syrjala <ville.syrjala@linux.intel.com>
In-Reply-To: <SJ1PR11MB6129764665E28806A37A77A2B9249@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <SJ1PR11MB6129764665E28806A37A77A2B9249@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Fri, 14 Oct 2022 12:13:19 +0300
Message-ID: <87lepisr80.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/22] drm/i915: ELD precompute and readout
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
Cc: Takashi Iwai <tiwai@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 Oct 2022, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.=
com> wrote:
>> -----Original Message-----
>> From: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Sent: Tuesday, October 11, 2022 10:30 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kai
>> Vehmanen <kai.vehmanen@linux.intel.com>; Takashi Iwai <tiwai@suse.de>
>> Subject: [PATCH 00/22] drm/i915: ELD precompute and readout
>>=20
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> There was some discussion around ELD precompute, so I decided to have a
>> quick look at hooking that up. Unfortunately the i915 audio code is a bi=
t of a
>> mess so ended up with a patchbomb of cleanups. Sorry about that.
>>=20
>> The actually interesting stuff is at the end of the series.
>> The precumpute+readot+state checker is pretty self explanatory stuff for=
 the
>> most part.
>>=20
>> But I think we need to decide what to do with the hardware ELD buffer in
>> general. It's totally busted atm on HSW (and I'd expecpt BDW as well), b=
ut
>> we had no idea since we had no readout+state checker for it.
>>=20
>> So do we try to salvage it (I guess to mainly act as some kind of "did we
>> enable audio correctly?" canary) or do we just stop programming it outri=
ght?
>> And on which platforms could we do that?
>>=20
>
> Hello Ville,
>
> I have gone through the patches and they look good. However, there is one=
 aspect that is still not clear for me(may be I have missed something!)
> The changes does not touch the callback i915_audio_component_get_eld() wh=
ich is actually used by the audio driver to access the ELD. So we are still=
 sending out an "non-precomputed" eld stored in the connector
> structure. Should we be passing eld data from crtc_state instead here?

Good catch, I missed that in my review.

BR,
Jani.


>
> Regards,
>
> Chaitanya
>
>> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
>> Cc: Takashi Iwai <tiwai@suse.de>
>>=20
>> Ville Syrj=C3=A4l=C3=A4 (22):
>>   drm/i915/audio: s/dev_priv/i915/
>>   drm/i915/audio: Nuke leftover ROUNDING_FACTOR
>>   drm/i915/audio: Remove CL/BLC audio stuff
>>   drm/i915/audio: Exract struct ilk_audio_regs
>>   drm/i915/audio: Use REG_BIT() & co.
>>   drm/i915/audio: Unify register bit naming
>>   drm/i915/audio: Protect singleton register with a lock
>>   drm/i915/audio: Nuke intel_eld_uptodate()
>>   drm/i915/audio: Read ELD buffer size from hardware
>>   drm/i915/audio: Make sure we write the whole ELD buffer
>>   drm/i915/audio: Use u32* for ELD
>>   drm/i915/audio: Use intel_de_rmw() for most audio registers
>>   drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+
>>   drm/i915/audio: Do the vblank waits
>>   drm/i915/audio: Precompute the ELD
>>   drm/i915/audio: Hardware ELD readout
>>   drm/i915/sdvo: Extract intel_sdvo_has_audio()
>>   drm/i915/sdvo: Precompute the ELD
>>   drm/i915/sdvo: Do ELD hardware readout
>>   drm/i915/audio: Hook up ELD into the state checker
>>   drm/i915/audio: Include ELD in the state dump
>>   hax: drm/i915/audio: Make HSW hardware ELD buffer sort of work
>>=20
>>  drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +
>>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +
>>  drivers/gpu/drm/i915/display/intel_audio.c    | 792 ++++++++++--------
>>  drivers/gpu/drm/i915/display/intel_audio.h    |   7 +
>>  .../gpu/drm/i915/display/intel_audio_regs.h   |  88 +-
>>  .../drm/i915/display/intel_crtc_state_dump.c  |  17 +
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +
>>  drivers/gpu/drm/i915/display/intel_display.c  |  43 +
>>  .../drm/i915/display/intel_display_types.h    |   2 +
>>  drivers/gpu/drm/i915/display/intel_dp.c       |   4 +-
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +-
>>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  54 +-
>>  12 files changed, 608 insertions(+), 409 deletions(-)
>>=20
>> --
>> 2.35.1
>

--=20
Jani Nikula, Intel Open Source Graphics Center
