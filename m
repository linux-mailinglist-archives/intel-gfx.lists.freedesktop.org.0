Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B765D43E76C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 19:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E176E99F;
	Thu, 28 Oct 2021 17:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3FE6E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 17:38:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="217383453"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="217383453"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:38:02 -0700
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="498500292"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:38:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com, daniel@ffwll.ch,
 lucas.demarchi@intel.com, Dave Airlie <airlied@redhat.com>
In-Reply-To: <87cznxkmyw.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1634918767.git.jani.nikula@intel.com>
 <97098cf69dfeb0c6c4ab85d3378e4d41fdd952c2.1634918767.git.jani.nikula@intel.com>
 <YXLqdUaSHlfIPpN2@intel.com> <87cznxkmyw.fsf@intel.com>
Date: Thu, 28 Oct 2021 20:37:57 +0300
Message-ID: <87a6itf3t6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/audio: define the audio struct
 separately from drm_i915_private
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

On Fri, 22 Oct 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 22 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Fri, Oct 22, 2021 at 07:27:57PM +0300, Jani Nikula wrote:
>>> Add a standalone definition of struct intel_audio_private, and note that
>>> all of it is private to intel_audio.c.
>>>=20
>>> Cc: Dave Airlie <airlied@redhat.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_drv.h | 45 ++++++++++++++++++---------------
>>>  1 file changed, 24 insertions(+), 21 deletions(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i91=
5_drv.h
>>> index 9c77610acf23..ed86633a587b 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -828,6 +828,29 @@ struct i915_selftest_stash {
>>>  	struct ida mock_region_instances;
>>>  };
>>>=20=20
>>> +/* intel_audio.c private */
>>> +struct intel_audio_private {
>>
>> Not sure the "_private" is actually useful. I'd just call it
>> intel_audio. The fact that struct drm_i915_private
>> already says "private" doesn't mean anything to anyone anyway.
>
> I first named it just intel_audio. Then I added intel_hdcp too, and
> realized it means something else, in intel_display_types.h. Then there's
> intel_gmbus. Probably others. I'd kind of like to have some
> consistency. I'm not hung up on "_private", but I don't like to call
> this intel_audio and then have intel_hdcp_foo and intel_gmbus_bar. Ideas
> welcome.

I ended up keeping the intel_audio_private name for now in v2. It's a
two-line patch to rename later. Though I admit it sets a precedent.

BR,
Jani.

>
> And, yeah, we could just rename drm_i915_private drm_i915_public. :p
>
>
> BR,
> Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
