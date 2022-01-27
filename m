Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFE649E156
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4469E10E485;
	Thu, 27 Jan 2022 11:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC1A10E179
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643283791; x=1674819791;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=10KfMNPpb+aLEblztgZQMQNtYjMZ2vL7InOZXU+qiEY=;
 b=R43BpGIhdyvT82eFtzKlapsEPtAHokLjRrlETKQxtyEStN8RnYAEZXvL
 /8ycB9PpxYYhPsHNeNEECWHLZliyAJc0kkfjkP9mw2oYAvoMtJ42WyvU/
 Q9v67NL/Mh8PtPPHEmZzDbbJH2LNUFQ84jdrTALNI5GxIC3H850xTJXGl
 YBHS0f3ZVPtvgeuj5CY3nM6Z06adYocLgXXOFV7AZyxdL0fFua8Enyxz6
 qoGTaLROisUhp4TWSXsLXAfldRzeoYsif6aGHXySm4aZGXn1RjQn8j26Q
 CiI/SV+BLH6p9A0qytAaeNordG74fjJV5VQaD6VZaD4CBLhjb0wDBm7lw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234201294"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="234201294"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:42:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="480259158"
Received: from johnlyon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.209])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:42:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YfKDcoJKVdJtPPz3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
 <20220127093303.17309-5-ville.syrjala@linux.intel.com>
 <87r18twhfo.fsf@intel.com> <87o83xwhey.fsf@intel.com>
 <YfKDcoJKVdJtPPz3@intel.com>
Date: Thu, 27 Jan 2022 13:42:48 +0200
Message-ID: <87ilu5wgjr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915: Move drrs hardware bit
 frobbing to small helpers
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

On Thu, 27 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Jan 27, 2022 at 01:24:05PM +0200, Jani Nikula wrote:
>> On Thu, 27 Jan 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> > On Thu, 27 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wro=
te:
>> >> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >>
>> >> Split the drrs code that actually changes the refresh rate
>> >> (via PIPECONF or M/N values) to small helper functions that
>> >> only deal with the hardware details an nothing else. We'll
>> >> soon have a third way of doing this, and it's less confusing
>> >> when each difference method lives in its own funciton.
>> >>
>> >> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_drrs.c | 67 ++++++++++++---------=
--
>> >>  1 file changed, 36 insertions(+), 31 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/=
drm/i915/display/intel_drrs.c
>> >> index 46be46f2c47e..0cacdb174fd0 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
>> >> @@ -87,6 +87,38 @@ intel_drrs_compute_config(struct intel_dp *intel_d=
p,
>> >>  		pipe_config->dp_m2_n2.data_m *=3D pipe_config->splitter.link_count;
>> >>  }
>> >>=20=20
>> >> +static void
>> >> +intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *=
crtc_state,
>> >> +				     enum drrs_refresh_rate_type refresh_type)
>> >
>> > Side note, for future, does this really need to be an enum? Could it
>> > just be a bool "reduced" or something?
>>=20
>> And I mean throughout the driver, not just right here.
>
> I suppose a bool would suffice. I was going to rename it to
> at least have a bit more consistent namespace, but perhaps
> we could just nuke it entirely.

Also, should be done in follow-up, let's not complicate this set any
more.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
