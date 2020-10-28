Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9B929CFE7
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 13:26:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA9E6E506;
	Wed, 28 Oct 2020 12:26:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81A66E506
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 12:26:31 +0000 (UTC)
IronPort-SDR: MhTu1C2FmUUo5yuq1Roybhkwijft6/MkNRCyG3b7GBIq1tdZ0E5USwwW6+go1+4vdyX3VIOgkJ
 ECYviNlumsHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="155216802"
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; 
 d="scan'208,217";a="155216802"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 05:26:30 -0700
IronPort-SDR: 4qDDwlA+kek+U7IcInZ3wL1KgmBLHj+3fGvUdTT/jxxMomevp00RL5hjIruNxWHC5eJsHp/FSD
 U+YkEy3ebYng==
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; 
 d="scan'208,217";a="468699987"
Received: from vvlada-mobl.ger.corp.intel.com (HELO [10.252.43.111])
 ([10.252.43.111])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 05:26:29 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Navare, Manasi" <manasi.d.navare@intel.com>
References: <20201022054223.25071-1-manasi.d.navare@intel.com>
 <20201022054223.25071-11-manasi.d.navare@intel.com>
 <20201026201854.GL6112@intel.com> <20201026224148.GF25941@labuser-Z97X-UD5H>
 <20201027134230.GN6112@intel.com> <20201027181910.GB3950@labuser-Z97X-UD5H>
 <20201027191150.GP6112@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <dec38bb5-c6a2-18dc-684c-92564e630451@linux.intel.com>
Date: Wed, 28 Oct 2020 13:26:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201027191150.GP6112@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v11 10/12] drm/i915: Link planes in a
 bigjoiner configuration, v3.
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
Content-Type: multipart/mixed; boundary="===============0678169579=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0678169579==
Content-Type: multipart/alternative;
 boundary="------------85F0D60842EEB4493FE0B519"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------85F0D60842EEB4493FE0B519
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Op 27-10-2020 om 20:11 schreef Ville Syrjälä:
> On Tue, Oct 27, 2020 at 11:19:16AM -0700, Navare, Manasi wrote:
>> On Tue, Oct 27, 2020 at 03:42:30PM +0200, Ville Syrjälä wrote:
>>> On Mon, Oct 26, 2020 at 03:41:48PM -0700, Navare, Manasi wrote:
>>>> On Mon, Oct 26, 2020 at 10:18:54PM +0200, Ville Syrjälä wrote:
>>>>> On Wed, Oct 21, 2020 at 10:42:21PM -0700, Manasi Navare wrote:
>>>>>> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>>>>
>>>>>>  Make sure that when a plane is set in a bigjoiner mode, we will add
>>>>>>  their counterpart to the atomic state as well. This will allow us to
>>>>>>  make sure all state is available when planes are checked.
>>>>>>
>>>>>> Because of the funny interactions with bigjoiner and planar YUV
>>>>>> formats, we may end up adding a lot of planes, so we have to keep
>>>>>> iterating until we no longer add any planes.
>>>>>>
>>>>>> Also fix the atomic intel plane iterator, so things watermarks start
>>>>>> working automagically.
>>>>>>
>>>>>> v6:
>>>>>> * Fix from_plane_state assignments (Manasi)
>>>>>> v5:
>>>>>> * Rebase after adding sagv support (Manasi)
>>>>>> v4:
>>>>>> * Manual rebase (Manasi)
>>>>>> Changes since v1:
>>>>>> - Rebase on top of plane_state split, cleaning up the code a lot.
>>>>>> - Make intel_atomic_crtc_state_for_each_plane_state() bigjoiner capable.
>>>>>> - Add iter macro to intel_atomic_crtc_state_for_each_plane_state() to
>>>>>>   keep iteration working.
>>>>>> Changes since v2:
>>>>>> - Add icl_(un)set_bigjoiner_plane_links, to make it more clear where
>>>>>>   links are made and broken.
>>>>>>
>>>>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>>>> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
>>>>>> ---
>>>>>>  .../gpu/drm/i915/display/intel_atomic_plane.c |  53 ++++-
>>>>>>  .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +-
>>>>>>  drivers/gpu/drm/i915/display/intel_display.c  | 207 ++++++++++++++++--
>>>>>>  drivers/gpu/drm/i915/display/intel_display.h  |  20 +-
>>>>>>  .../drm/i915/display/intel_display_types.h    |  11 +
>>>>>>  drivers/gpu/drm/i915/intel_pm.c               |  20 +-
>>>>>>  6 files changed, 274 insertions(+), 40 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>>>>> index 3334ff253600..5df928f8f322 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>>>>> @@ -246,12 +246,17 @@ static void intel_plane_clear_hw_state(struct intel_plane_state *plane_state)
>>>>>>  	memset(&plane_state->hw, 0, sizeof(plane_state->hw));
>>>>>>  }
>>>>>>  
>>>>>> -void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
>>>>>> +void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_state *crtc_state,
>>>>>> +				       struct intel_plane_state *plane_state,
>>>>>>  				       const struct intel_plane_state *from_plane_state)
>>>>>>  {
>>>>>>  	intel_plane_clear_hw_state(plane_state);
>>>>>>  
>>>>>> -	plane_state->hw.crtc = from_plane_state->uapi.crtc;
>>>>>> +	if (from_plane_state->uapi.crtc)
>>>>>> +		plane_state->hw.crtc = crtc_state->uapi.crtc;
>>>>>> +	else
>>>>>> +		plane_state->hw.crtc = NULL;
>>>>>> +
>>>>>>  	plane_state->hw.fb = from_plane_state->uapi.fb;
>>>>>>  	if (plane_state->hw.fb)
>>>>>>  		drm_framebuffer_get(plane_state->hw.fb);
>>>>>> @@ -320,15 +325,36 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
>>>>>>  }
>>>>>>  
>>>>>>  static struct intel_crtc *
>>>>>> -get_crtc_from_states(const struct intel_plane_state *old_plane_state,
>>>>>> +get_crtc_from_states(struct intel_atomic_state *state,
>>>>>> +		     const struct intel_plane_state *old_plane_state,
>>>>>>  		     const struct intel_plane_state *new_plane_state)
>>>>>>  {
>>>>>> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>>>>>> +	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
>>>>>> +
>>>>>>  	if (new_plane_state->uapi.crtc)
>>>>>>  		return to_intel_crtc(new_plane_state->uapi.crtc);
>>>>>>  
>>>>>>  	if (old_plane_state->uapi.crtc)
>>>>>>  		return to_intel_crtc(old_plane_state->uapi.crtc);
>>>>>>  
>>>>>> +	if (new_plane_state->bigjoiner_slave) {
>>>>>> +		const struct intel_plane_state *new_master_plane_state =
>>>>>> +			intel_atomic_get_new_plane_state(state, new_plane_state->bigjoiner_plane);
>>>>>> +
>>>>>> +		/* need to use uapi here, new_master_plane_state might not be copied to hw yet */
>>>>>> +		if (new_master_plane_state->uapi.crtc)
>>>>>> +			return intel_get_crtc_for_pipe(dev_priv, plane->pipe);
>>>>>> +	}
>>>>>> +
>>>>>> +	if (old_plane_state->bigjoiner_slave) {
>>>>>> +		const struct intel_plane_state *old_master_plane_state =
>>>>>> +			intel_atomic_get_old_plane_state(state, old_plane_state->bigjoiner_plane);
>>>>>> +
>>>>>> +		if (old_master_plane_state->uapi.crtc)
>>>>>> +			return intel_get_crtc_for_pipe(dev_priv, plane->pipe);
>>>>>> +	}
>>>>>> +
>>>>>>  	return NULL;
>>>>>>  }
>>>>>>  
>>>>>> @@ -339,18 +365,33 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>>>>>>  		intel_atomic_get_new_plane_state(state, plane);
>>>>>>  	const struct intel_plane_state *old_plane_state =
>>>>>>  		intel_atomic_get_old_plane_state(state, plane);
>>>>>> +	const struct intel_plane_state *new_master_plane_state;
>>>>>>  	struct intel_crtc *crtc =
>>>>>> -		get_crtc_from_states(old_plane_state, new_plane_state);
>>>>>> +		get_crtc_from_states(state, old_plane_state,
>>>>>> +				     new_plane_state);
>>>>>>  	const struct intel_crtc_state *old_crtc_state;
>>>>>>  	struct intel_crtc_state *new_crtc_state;
>>>>>>  
>>>>>> -	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state);
>>>>>> +	if (crtc)
>>>>>> +		new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>>>>>> +	else
>>>>>> +		new_crtc_state = NULL;
>>>>>> +
>>>>>> +	new_master_plane_state = new_plane_state;
>>>>>> +	if (new_plane_state->bigjoiner_slave)
>>>>>> +		new_master_plane_state =
>>>>>> +			intel_atomic_get_new_plane_state(state,
>>>>>> +							 new_plane_state->bigjoiner_plane);
>>>>>> +
>>>>>> +	intel_plane_copy_uapi_to_hw_state(new_crtc_state,
>>>>>> +					  new_plane_state,
>>>>>> +					  new_master_plane_state);
>>>>>> +
>>>>>>  	new_plane_state->uapi.visible = false;
>>>>>>  	if (!crtc)
>>>>>>  		return 0;
>>>>>>  
>>>>>>  	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
>>>>>> -	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>>>>>>  
>>>>>>  	return intel_plane_atomic_check_with_state(old_crtc_state,
>>>>>>  						   new_crtc_state,
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
>>>>>> index 59dd1fbb02ea..c2a1e7c86e6c 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
>>>>>> @@ -23,7 +23,8 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
>>>>>>  
>>>>>>  unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
>>>>>>  				   const struct intel_plane_state *plane_state);
>>>>>> -void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
>>>>>> +void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_state *crtc_state,
>>>>>> +				       struct intel_plane_state *plane_state,
>>>>>>  				       const struct intel_plane_state *from_plane_state);
>>>>>>  void intel_update_plane(struct intel_plane *plane,
>>>>>>  			const struct intel_crtc_state *crtc_state,
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>>>> index c0715a3ea47b..579cccc1fd91 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>>> @@ -3718,7 +3718,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
>>>>>>  	drm_framebuffer_get(fb);
>>>>>>  
>>>>>>  	plane_state->crtc = &intel_crtc->base;
>>>>>> -	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state);
>>>>>> +	intel_plane_copy_uapi_to_hw_state(crtc_state, intel_state, intel_state);
>>>>>>  
>>>>>>  	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
>>>>>>  
>>>>>> @@ -12801,26 +12801,180 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
>>>>>>  	return true;
>>>>>>  }
>>>>>>  
>>>>>> +static int icl_unset_bigjoiner_plane_links(struct intel_atomic_state *state,
>>>>>> +					   struct intel_crtc_state *new_crtc_state)
>>>>>> +{
>>>>>> +	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
>>>>>> +	struct intel_plane *plane;
>>>>>> +
>>>>>> +	/*
>>>>>> +	 * Teardown the old bigjoiner plane mappings.
>>>>>> +	 */
>>>>>> +	for_each_intel_plane_on_crtc(crtc->base.dev, crtc, plane) {
>>>>>> +		struct intel_plane_state *plane_state, *other_plane_state;
>>>>>> +		struct intel_plane *other_plane;
>>>>>> +
>>>>>> +		plane_state = intel_atomic_get_plane_state(state, plane);
>>>>>> +		if (IS_ERR(plane_state))
>>>>>> +			return PTR_ERR(plane_state);
>>>>>> +
>>>>>> +		other_plane = plane_state->bigjoiner_plane;
>>>>>> +		if (!other_plane)
>>>>>> +			continue;
>>>>>> +
>>>>>> +		plane_state->bigjoiner_plane = NULL;
>>>>>> +		plane_state->bigjoiner_slave = false;
>>>>>> +
>>>>>> +		other_plane_state = intel_atomic_get_plane_state(state, other_plane);
>>>>>> +		if (IS_ERR(other_plane_state))
>>>>>> +			return PTR_ERR(other_plane_state);
>>>>>> +		other_plane_state->bigjoiner_plane = NULL;
>>>>>> +		other_plane_state->bigjoiner_slave = false;
>>>>> Why would we even need this bigjoiner stuff in the planes? AFAICS about
>>>>> the only thing we should need is someting like
>>>>>
>>>>> for_each_plane_on_master()
>>>>> 	add_same_plane_on_slave()
>>>>>
>>>>> somewhere before we do the plane->check() stuff. I guess start
>>>>> of intel_atomic_check_planes() could be the right spot.
>>>>>
>>>> Yes may be but honestly I leave this optimization/change to the original
>>>> author Maarten or you as a follow up
>>> I don't want to see several hundred lines of totally uneccessary code
>>> added. If it's buggy (which it may very well be because it's too big to
>>> review properly) we are going to have to revert it anyway. If anything
>>> else has changed in the same code the revertr is going to be a huge
>>> pain.
>>>
>> This entire patch just does the linking of planes and there is no
>> unnecessary code.
> Yes there is. Each plane should have a proper hw state so there 
> should be absolutely no need for this linking stuff.
>
>> Also since I am just a carrier of this code and not
>> the original author I dont know how this can be simplified
>> without breaking the functionality. 
> You don't understand the code, I don't understand the code. How do
> you suggest we can merge this? If there is any problem with the code
> we have no choice but a full revert.

Hey,

There's good reason to link the planes. The reason is similar to linking Y and CbCr planes.
You're completely correct that hardware programming doesn't need the linking, and planes are
in theory standalone.

But there's also atomic. The lifetime of plane_state on the bigjoiner slave plane must be
linked to the lifetime of the master plane. Otherwise if you do a commit on the master plane,
you may get a use after free on slave. To prevent this I just linked them together. :)

~Maarten

~Maarten


--------------85F0D60842EEB4493FE0B519
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Op 27-10-2020 om 20:11 schreef Ville
      Syrjälä:<br>
    </div>
    <blockquote type="cite" cite="mid:20201027191150.GP6112@intel.com">
      <pre class="moz-quote-pre" wrap="">On Tue, Oct 27, 2020 at 11:19:16AM -0700, Navare, Manasi wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On Tue, Oct 27, 2020 at 03:42:30PM +0200, Ville Syrjälä wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">On Mon, Oct 26, 2020 at 03:41:48PM -0700, Navare, Manasi wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">On Mon, Oct 26, 2020 at 10:18:54PM +0200, Ville Syrjälä wrote:
</pre>
            <blockquote type="cite">
              <pre class="moz-quote-pre" wrap="">On Wed, Oct 21, 2020 at 10:42:21PM -0700, Manasi Navare wrote:
</pre>
              <blockquote type="cite">
                <pre class="moz-quote-pre" wrap="">From: Maarten Lankhorst <a class="moz-txt-link-rfc2396E" href="mailto:maarten.lankhorst@linux.intel.com">&lt;maarten.lankhorst@linux.intel.com&gt;</a>

 Make sure that when a plane is set in a bigjoiner mode, we will add
 their counterpart to the atomic state as well. This will allow us to
 make sure all state is available when planes are checked.

Because of the funny interactions with bigjoiner and planar YUV
formats, we may end up adding a lot of planes, so we have to keep
iterating until we no longer add any planes.

Also fix the atomic intel plane iterator, so things watermarks start
working automagically.

v6:
* Fix from_plane_state assignments (Manasi)
v5:
* Rebase after adding sagv support (Manasi)
v4:
* Manual rebase (Manasi)
Changes since v1:
- Rebase on top of plane_state split, cleaning up the code a lot.
- Make intel_atomic_crtc_state_for_each_plane_state() bigjoiner capable.
- Add iter macro to intel_atomic_crtc_state_for_each_plane_state() to
  keep iteration working.
Changes since v2:
- Add icl_(un)set_bigjoiner_plane_links, to make it more clear where
  links are made and broken.

Signed-off-by: Maarten Lankhorst <a class="moz-txt-link-rfc2396E" href="mailto:maarten.lankhorst@linux.intel.com">&lt;maarten.lankhorst@linux.intel.com&gt;</a>
Signed-off-by: Manasi Navare <a class="moz-txt-link-rfc2396E" href="mailto:manasi.d.navare@intel.com">&lt;manasi.d.navare@intel.com&gt;</a>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  53 ++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 207 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h  |  20 +-
 .../drm/i915/display/intel_display_types.h    |  11 +
 drivers/gpu/drm/i915/intel_pm.c               |  20 +-
 6 files changed, 274 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 3334ff253600..5df928f8f322 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -246,12 +246,17 @@ static void intel_plane_clear_hw_state(struct intel_plane_state *plane_state)
 	memset(&amp;plane_state-&gt;hw, 0, sizeof(plane_state-&gt;hw));
 }
 
-void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
+void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_state *crtc_state,
+				       struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state)
 {
 	intel_plane_clear_hw_state(plane_state);
 
-	plane_state-&gt;hw.crtc = from_plane_state-&gt;uapi.crtc;
+	if (from_plane_state-&gt;uapi.crtc)
+		plane_state-&gt;hw.crtc = crtc_state-&gt;uapi.crtc;
+	else
+		plane_state-&gt;hw.crtc = NULL;
+
 	plane_state-&gt;hw.fb = from_plane_state-&gt;uapi.fb;
 	if (plane_state-&gt;hw.fb)
 		drm_framebuffer_get(plane_state-&gt;hw.fb);
@@ -320,15 +325,36 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 }
 
 static struct intel_crtc *
-get_crtc_from_states(const struct intel_plane_state *old_plane_state,
+get_crtc_from_states(struct intel_atomic_state *state,
+		     const struct intel_plane_state *old_plane_state,
 		     const struct intel_plane_state *new_plane_state)
 {
+	struct drm_i915_private *dev_priv = to_i915(state-&gt;base.dev);
+	struct intel_plane *plane = to_intel_plane(new_plane_state-&gt;uapi.plane);
+
 	if (new_plane_state-&gt;uapi.crtc)
 		return to_intel_crtc(new_plane_state-&gt;uapi.crtc);
 
 	if (old_plane_state-&gt;uapi.crtc)
 		return to_intel_crtc(old_plane_state-&gt;uapi.crtc);
 
+	if (new_plane_state-&gt;bigjoiner_slave) {
+		const struct intel_plane_state *new_master_plane_state =
+			intel_atomic_get_new_plane_state(state, new_plane_state-&gt;bigjoiner_plane);
+
+		/* need to use uapi here, new_master_plane_state might not be copied to hw yet */
+		if (new_master_plane_state-&gt;uapi.crtc)
+			return intel_get_crtc_for_pipe(dev_priv, plane-&gt;pipe);
+	}
+
+	if (old_plane_state-&gt;bigjoiner_slave) {
+		const struct intel_plane_state *old_master_plane_state =
+			intel_atomic_get_old_plane_state(state, old_plane_state-&gt;bigjoiner_plane);
+
+		if (old_master_plane_state-&gt;uapi.crtc)
+			return intel_get_crtc_for_pipe(dev_priv, plane-&gt;pipe);
+	}
+
 	return NULL;
 }
 
@@ -339,18 +365,33 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
+	const struct intel_plane_state *new_master_plane_state;
 	struct intel_crtc *crtc =
-		get_crtc_from_states(old_plane_state, new_plane_state);
+		get_crtc_from_states(state, old_plane_state,
+				     new_plane_state);
 	const struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc_state *new_crtc_state;
 
-	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state);
+	if (crtc)
+		new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
+	else
+		new_crtc_state = NULL;
+
+	new_master_plane_state = new_plane_state;
+	if (new_plane_state-&gt;bigjoiner_slave)
+		new_master_plane_state =
+			intel_atomic_get_new_plane_state(state,
+							 new_plane_state-&gt;bigjoiner_plane);
+
+	intel_plane_copy_uapi_to_hw_state(new_crtc_state,
+					  new_plane_state,
+					  new_master_plane_state);
+
 	new_plane_state-&gt;uapi.visible = false;
 	if (!crtc)
 		return 0;
 
 	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
-	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 
 	return intel_plane_atomic_check_with_state(old_crtc_state,
 						   new_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 59dd1fbb02ea..c2a1e7c86e6c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -23,7 +23,8 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state);
-void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
+void intel_plane_copy_uapi_to_hw_state(const struct intel_crtc_state *crtc_state,
+				       struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state);
 void intel_update_plane(struct intel_plane *plane,
 			const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c0715a3ea47b..579cccc1fd91 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3718,7 +3718,7 @@ intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 	drm_framebuffer_get(fb);
 
 	plane_state-&gt;crtc = &amp;intel_crtc-&gt;base;
-	intel_plane_copy_uapi_to_hw_state(intel_state, intel_state);
+	intel_plane_copy_uapi_to_hw_state(crtc_state, intel_state, intel_state);
 
 	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
 
@@ -12801,26 +12801,180 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
+static int icl_unset_bigjoiner_plane_links(struct intel_atomic_state *state,
+					   struct intel_crtc_state *new_crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state-&gt;uapi.crtc);
+	struct intel_plane *plane;
+
+	/*
+	 * Teardown the old bigjoiner plane mappings.
+	 */
+	for_each_intel_plane_on_crtc(crtc-&gt;base.dev, crtc, plane) {
+		struct intel_plane_state *plane_state, *other_plane_state;
+		struct intel_plane *other_plane;
+
+		plane_state = intel_atomic_get_plane_state(state, plane);
+		if (IS_ERR(plane_state))
+			return PTR_ERR(plane_state);
+
+		other_plane = plane_state-&gt;bigjoiner_plane;
+		if (!other_plane)
+			continue;
+
+		plane_state-&gt;bigjoiner_plane = NULL;
+		plane_state-&gt;bigjoiner_slave = false;
+
+		other_plane_state = intel_atomic_get_plane_state(state, other_plane);
+		if (IS_ERR(other_plane_state))
+			return PTR_ERR(other_plane_state);
+		other_plane_state-&gt;bigjoiner_plane = NULL;
+		other_plane_state-&gt;bigjoiner_slave = false;
</pre>
              </blockquote>
              <pre class="moz-quote-pre" wrap="">
Why would we even need this bigjoiner stuff in the planes? AFAICS about
the only thing we should need is someting like

for_each_plane_on_master()
	add_same_plane_on_slave()

somewhere before we do the plane-&gt;check() stuff. I guess start
of intel_atomic_check_planes() could be the right spot.

</pre>
            </blockquote>
            <pre class="moz-quote-pre" wrap="">
Yes may be but honestly I leave this optimization/change to the original
author Maarten or you as a follow up
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">
I don't want to see several hundred lines of totally uneccessary code
added. If it's buggy (which it may very well be because it's too big to
review properly) we are going to have to revert it anyway. If anything
else has changed in the same code the revertr is going to be a huge
pain.

</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
This entire patch just does the linking of planes and there is no
unnecessary code.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Yes there is. Each plane should have a proper hw state so there 
should be absolutely no need for this linking stuff.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Also since I am just a carrier of this code and not
the original author I dont know how this can be simplified
without breaking the functionality. 
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
You don't understand the code, I don't understand the code. How do
you suggest we can merge this? If there is any problem with the code
we have no choice but a full revert.
</pre>
    </blockquote>
    <p>Hey,</p>
    <pre>There's good reason to link the planes. The reason is similar to linking Y and CbCr planes.
You're completely correct that hardware programming doesn't need the linking, and planes are
in theory standalone.

But there's also atomic. The lifetime of plane_state on the bigjoiner slave plane must be
linked to the lifetime of the master plane. Otherwise if you do a commit on the master plane,
you may get a use after free on slave. To prevent this I just linked them together. :)

~Maarten

~Maarten
</pre>
  </body>
</html>

--------------85F0D60842EEB4493FE0B519--

--===============0678169579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0678169579==--
