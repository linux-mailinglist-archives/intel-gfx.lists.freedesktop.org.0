Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A83EE250C4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 15:42:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB9489101;
	Tue, 21 May 2019 13:42:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3588489101
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 13:42:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 06:42:32 -0700
X-ExtLoop1: 1
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.66.99.83])
 ([10.66.99.83])
 by fmsmga006.fm.intel.com with ESMTP; 21 May 2019 06:42:29 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <1557827010-24239-1-git-send-email-swati2.sharma@intel.com>
 <1557827010-24239-4-git-send-email-swati2.sharma@intel.com>
 <20190514161024.GC24299@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <9b750067-fd23-acc2-a6d0-2c9aaf3e2ad0@intel.com>
Date: Tue, 21 May 2019 19:12:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514161024.GC24299@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v6][PATCH 03/12] drm/i915: Add
 intel_color_lut_equal() to compare hw and sw gamma/degamma lut values
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0141291291=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0141291291==
Content-Type: multipart/alternative;
 boundary="------------B404919887137E87E2453F0B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------B404919887137E87E2453F0B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14-May-19 9:40 PM, Ville Syrjälä wrote:

> On Tue, May 14, 2019 at 03:13:21PM +0530, Swati Sharma wrote:
>> v3: -Rebase
>> v4: -Renamed intel_compare_color_lut() to intel_color_lut_equal() [Jani]
>>      -Added the default label above the correct label [Jani]
>>      -Corrected smatch warn "variable dereferenced before check" [Dan Carpenter]
>> v5: -Added condition (!blob1 && !blob2) return true [Jani]
>>      -Called PIPE_CONF_CHECK_COLOR_LUT inside if (!adjust) [Jani]
>>      -Added #undef PIPE_CONF_CHECK_COLOR_LUT [Jani]
>> v6: -Added func intel_color_get_bit_precision() to get bit precision for
>>       gamma and degamma lut readout depending upon platform and
>>       corresponding to load_luts() [Ankit]
>>      -Added debug log for color para in intel_dump_pipe_config [Jani]
>>      -Made patch11 as patch3 [Jani]
>>
>> I could think of adding intel_color_get_bit_precision() to be the way
>> to get away with bit precision problem for degamma and gamma (its like a table
>> having hard coded values depening on gamma_mode).
>> If anybody could think of better way then this then please guide.
>>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>>   drivers/gpu/drm/i915/intel_color.c   | 93 ++++++++++++++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/intel_color.h   |  7 +++
>>   drivers/gpu/drm/i915/intel_display.c | 24 ++++++++++
>>   3 files changed, 124 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_color.c b/drivers/gpu/drm/i915/intel_color.c
>> index 50b98ee..1e60369 100644
>> --- a/drivers/gpu/drm/i915/intel_color.c
>> +++ b/drivers/gpu/drm/i915/intel_color.c
>> @@ -1251,6 +1251,99 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
>>   	return 0;
>>   }
>>   
>> +void intel_color_get_bit_precision(struct intel_crtc_state *crtc_state, int *bp_gamma)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
>> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> +
>> +	if (HAS_GMCH(dev_priv)) {
>> +		if (IS_CHERRYVIEW(dev_priv)) {
>> +			if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT) {
>> +				*bp_gamma = 8;
>> +				return;
> Functions can actually return values.
>
> Not sure I particularly like this function though. We can't fit
> the gamma vs. degamm stuff in here neatly. I think per-platform
> stuff to determine the precision is required to make this sane.
> And it should probably got into intel_color.c to keep things
> neatly contained.
>
> Something along the lines of:
>
> i9xx_gamma_precision()
> {
> 	if (!gamma_enable)
> 		return 0;
>
> 	switch (gamma_mode) {
> 	case GAMMA_MODE_MODE_8BIT:
> 		return 8;
> 	case GAMMA_MODE_MODE_10BIT:
> 		return 16;
> 	}
> }
>
> chv_gamma_precision()
> {
> 	if (cgm_mode & CGM_PIPE_MODE_GAMMA)
> 		return 10;
> 	else
> 		return i9xx_gamma_precision();
> }
>
> chv_degamma_precision(crtc_state)
> {
> 	if (cgm_mode & CGM_PIPE_MODE_DEGAMMA)
> 		return 14;
> 	else
> 		return 0
> }
>
> ilk_gamma_precision()
> {
> 	if (!gamma_enable)
> 		return 0;
>
> 	if ((csc_mode & CSC_POSITION_BEFORE_GAMMA) == 0)
> 		return 0;
>
> 	switch (gamma_mode) {
> 	case GAMMA_MODE_MODE_8BIT:
> 		return 8;
> 	case GAMMA_MODE_MODE_10BIT:
> 		return 10;
> 	}
> }
>
> ilk_degamma_precision()
> {
> 	if (!gamma_enable)
> 		return 0;
>
> 	if ((csc_mode & CSC_POSITION_BEFORE_GAMMA) != 0)
> 		return 0;
>
> 	switch (gamma_mode) {
> 	case GAMMA_MODE_MODE_8BIT:
> 		return 8;
> 	case GAMMA_MODE_MODE_10BIT:
> 		return 10;
> 	}
> }
>
> ... extend to ivb, glk, and icl variants too.

ok..will do like this. thanks! sorry i was on leave.
2 queries:
(1) Since intel_color_get_bit_precision() will be used to set bit precision for gamma and degamma both, it will
     return multiple values..should i return values as struct? or sending as pointer is ok?
	if (HAS_GMCH(dev_priv)) {
		if (IS_CHERRYVIEW(dev_priv))
			*bp_gamma = chv_gamma_precision(crtc_state);
(2) (or) if this method is not fine, should we have function ptr for the same?
Please suggest the best method?

>
>> +			}
>> +			if (crtc_state->cgm_mode == CGM_PIPE_MODE_GAMMA)
>> +				*bp_gamma = 10;
>> +		} else if (INTEL_GEN(dev_priv) >= 4) {
>> +			if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
>> +				*bp_gamma = 8;
>> +			else
>> +				*bp_gamma = 16;
>> +		} else {
>> +			*bp_gamma = 8;
>> +		}
>> +	} else {
>> +		if (INTEL_GEN(dev_priv) >= 11) {
>> +			if ((crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) ==
>> +					GAMMA_MODE_MODE_8BIT)
>> +				*bp_gamma = 8;
>> +			else
>> +				*bp_gamma = 10;
>> +		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
>> +			if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
>> +				*bp_gamma = 8;
>> +			else
>> +				*bp_gamma = 10;
>> +		} else if (INTEL_GEN(dev_priv) >= 7) {
>> +			if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
>> +				*bp_gamma = 8;
>> +			else if (crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
>> +				*bp_gamma = 10;
>> +				else
>> +					*bp_gamma = 10;
>> +		} else {
>> +			if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
>> +				*bp_gamma = 8;
>> +			else
>> +				*bp_gamma = 10;
>> +		}
>> +	}
>> +}
>> +
>> +static inline bool err_check(struct drm_color_lut *sw_lut,
>> +	                     struct drm_color_lut *hw_lut, u32 err)
>> +{
>> +	 return ((abs((long)hw_lut->red - sw_lut->red)) <= err) &&
>> +	        ((abs((long)hw_lut->blue - sw_lut->blue)) <= err) &&
>> +	        ((abs((long)hw_lut->green - sw_lut->green)) <= err);
>> +}
>> +
>> +bool intel_color_lut_equal(struct drm_property_blob *blob1,
>> +			   struct drm_property_blob *blob2,
>> +			   u32 bit_precision)
>> +{
>> +	struct drm_color_lut *sw_lut, *hw_lut;
>> +	int sw_lut_size, hw_lut_size, i;
>> +	u32 err;
>> +
>> +	if (!blob1 && !blob2)
>> +		return true;
>> +
>> +	if (!blob1)
>> +		return true;
>> +
>> +	if (!blob2)
>> +		return false;
>> +
>> +	sw_lut_size = drm_color_lut_size(blob1);
>> +	hw_lut_size = drm_color_lut_size(blob2);
>> +
>> +	if (sw_lut_size != hw_lut_size)
>> +		return false;
>> +
>> +	sw_lut = blob1->data;
>> +	hw_lut = blob2->data;
>> +
>> +	err = 0xffff >> bit_precision;
>> +
>> +	for (i = 0; i < sw_lut_size; i++) {
>> +		 if (!err_check(&hw_lut[i], &sw_lut[i], err))
>> +			return false;
>> +	}
>> +
>> +	return true;
>> +}
>> +
>>   void intel_color_init(struct intel_crtc *crtc)
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> diff --git a/drivers/gpu/drm/i915/intel_color.h b/drivers/gpu/drm/i915/intel_color.h
>> index 057e8ac..f2872d3 100644
>> --- a/drivers/gpu/drm/i915/intel_color.h
>> +++ b/drivers/gpu/drm/i915/intel_color.h
>> @@ -6,13 +6,20 @@
>>   #ifndef __INTEL_COLOR_H__
>>   #define __INTEL_COLOR_H__
>>   
>> +#include <linux/types.h>
>> +
>>   struct intel_crtc_state;
>>   struct intel_crtc;
>> +struct drm_property_blob;
>>   
>>   void intel_color_init(struct intel_crtc *crtc);
>>   int intel_color_check(struct intel_crtc_state *crtc_state);
>>   void intel_color_commit(const struct intel_crtc_state *crtc_state);
>>   void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
>>   void intel_color_get_config(struct intel_crtc_state *crtc_state);
>> +bool intel_color_lut_equal(struct drm_property_blob *blob1,
>> +			   struct drm_property_blob *blob2,
>> +			   u32 bit_precision);
>> +void intel_color_get_bit_precision(struct intel_crtc_state *crtc_state, int *bp_gamma);
>>   
>>   #endif /* __INTEL_COLOR_H__ */
>> diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
>> index 3e01028..46985c15 100644
>> --- a/drivers/gpu/drm/i915/intel_display.c
>> +++ b/drivers/gpu/drm/i915/intel_display.c
>> @@ -11570,6 +11570,16 @@ static void intel_dump_pipe_config(struct intel_crtc *crtc,
>>   				      drm_rect_width(&state->base.dst),
>>   				      drm_rect_height(&state->base.dst));
>>   	}
>> +
>> +	if (IS_CHERRYVIEW(dev_priv))
>> +		DRM_DEBUG_KMS("cgm_mode:%d gamma_mode:%d gamma_enable:%d csc_enable:%d\n",
>> +			       pipe_config->cgm_mode, pipe_config->gamma_mode, pipe_config->gamma_enable,
>> +			       pipe_config->csc_enable);
>> +	else
>> +		DRM_DEBUG_KMS("csc_mode:%d gamma_mode:%d gamma_enable:%d csc_enable:%d\n",
>> +			       pipe_config->csc_mode, pipe_config->gamma_mode, pipe_config->gamma_enable,
>> +			       pipe_config->csc_enable);
>> +
>>   }
>>   
>>   static bool check_digital_port_conflicts(struct drm_atomic_state *state)
>> @@ -11947,6 +11957,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>>   			  bool adjust)
>>   {
>>   	bool ret = true;
>> +	u32 bp_gamma = 0;
>>   	bool fixup_inherited = adjust &&
>>   		(current_config->base.mode.private_flags & I915_MODE_FLAG_INHERITED) &&
>>   		!(pipe_config->base.mode.private_flags & I915_MODE_FLAG_INHERITED);
>> @@ -12098,6 +12109,15 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>>   	} \
>>   } while (0)
>>   
>> +#define PIPE_CONF_CHECK_COLOR_LUT(name, bit_precision) do { \
>> +	if (!intel_color_lut_equal(current_config->name, \
>> +				   pipe_config->name, bit_precision)) { \
>> +		pipe_config_err(adjust, __stringify(name), \
>> +				"hw_state doesn't match sw_state\n"); \
>> +		ret = false; \
>> +	} \
>> +} while (0)
>> +
>>   #define PIPE_CONF_QUIRK(quirk) \
>>   	((current_config->quirks | pipe_config->quirks) & (quirk))
>>   
>> @@ -12193,6 +12213,9 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>>   			PIPE_CONF_CHECK_X(csc_mode);
>>   		PIPE_CONF_CHECK_BOOL(gamma_enable);
>>   		PIPE_CONF_CHECK_BOOL(csc_enable);
>> +
>> +		intel_color_get_bit_precision(pipe_config, &bp_gamma);
>> +		PIPE_CONF_CHECK_COLOR_LUT(base.gamma_lut, bp_gamma);
>>   	}
>>   
>>   	PIPE_CONF_CHECK_BOOL(double_wide);
>> @@ -12255,6 +12278,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>>   #undef PIPE_CONF_CHECK_FLAGS
>>   #undef PIPE_CONF_CHECK_CLOCK_FUZZY
>>   #undef PIPE_CONF_QUIRK
>> +#undef PIPE_CONF_CHECK_COLOR_LUT
>>   
>>   	return ret;
>>   }
>> -- 
>> 1.9.1


-- 
~Swati Sharma


--------------B404919887137E87E2453F0B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">
      <pre>On 14-May-19 9:40 PM, Ville Syrjälä wrote:</pre>
    </div>
    <blockquote type="cite" cite="mid:20190514161024.GC24299@intel.com">
      <pre class="moz-quote-pre" wrap="">On Tue, May 14, 2019 at 03:13:21PM +0530, Swati Sharma wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">v3: -Rebase
v4: -Renamed intel_compare_color_lut() to intel_color_lut_equal() [Jani]
    -Added the default label above the correct label [Jani]
    -Corrected smatch warn "variable dereferenced before check" [Dan Carpenter]
v5: -Added condition (!blob1 &amp;&amp; !blob2) return true [Jani]
    -Called PIPE_CONF_CHECK_COLOR_LUT inside if (!adjust) [Jani]
    -Added #undef PIPE_CONF_CHECK_COLOR_LUT [Jani]
v6: -Added func intel_color_get_bit_precision() to get bit precision for
     gamma and degamma lut readout depending upon platform and
     corresponding to load_luts() [Ankit]
    -Added debug log for color para in intel_dump_pipe_config [Jani]
    -Made patch11 as patch3 [Jani]

I could think of adding intel_color_get_bit_precision() to be the way
to get away with bit precision problem for degamma and gamma (its like a table
having hard coded values depening on gamma_mode).
If anybody could think of better way then this then please guide.

Signed-off-by: Swati Sharma <a class="moz-txt-link-rfc2396E" href="mailto:swati2.sharma@intel.com">&lt;swati2.sharma@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/intel_color.c   | 93 ++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_color.h   |  7 +++
 drivers/gpu/drm/i915/intel_display.c | 24 ++++++++++
 3 files changed, 124 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_color.c b/drivers/gpu/drm/i915/intel_color.c
index 50b98ee..1e60369 100644
--- a/drivers/gpu/drm/i915/intel_color.c
+++ b/drivers/gpu/drm/i915/intel_color.c
@@ -1251,6 +1251,99 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+void intel_color_get_bit_precision(struct intel_crtc_state *crtc_state, int *bp_gamma)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;base.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
+
+	if (HAS_GMCH(dev_priv)) {
+		if (IS_CHERRYVIEW(dev_priv)) {
+			if (crtc_state-&gt;gamma_mode == GAMMA_MODE_MODE_8BIT) {
+				*bp_gamma = 8;
+				return;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Functions can actually return values.

Not sure I particularly like this function though. We can't fit
the gamma vs. degamm stuff in here neatly. I think per-platform
stuff to determine the precision is required to make this sane.
And it should probably got into intel_color.c to keep things
neatly contained.

Something along the lines of:

i9xx_gamma_precision()
{
	if (!gamma_enable)
		return 0;

	switch (gamma_mode) {
	case GAMMA_MODE_MODE_8BIT:
		return 8;
	case GAMMA_MODE_MODE_10BIT:
		return 16;
	}
}

chv_gamma_precision()
{
	if (cgm_mode &amp; CGM_PIPE_MODE_GAMMA)
		return 10;
	else
		return i9xx_gamma_precision();
}

chv_degamma_precision(crtc_state)
{
	if (cgm_mode &amp; CGM_PIPE_MODE_DEGAMMA)
		return 14;
	else
		return 0
}

ilk_gamma_precision()
{
	if (!gamma_enable)
		return 0;

	if ((csc_mode &amp; CSC_POSITION_BEFORE_GAMMA) == 0)
		return 0;

	switch (gamma_mode) {
	case GAMMA_MODE_MODE_8BIT:
		return 8;
	case GAMMA_MODE_MODE_10BIT:
		return 10;
	}
}

ilk_degamma_precision()
{
	if (!gamma_enable)
		return 0;

	if ((csc_mode &amp; CSC_POSITION_BEFORE_GAMMA) != 0)
		return 0;

	switch (gamma_mode) {
	case GAMMA_MODE_MODE_8BIT:
		return 8;
	case GAMMA_MODE_MODE_10BIT:
		return 10;
	}
}

... extend to ivb, glk, and icl variants too.</pre>
    </blockquote>
    <pre>ok..will do like this. thanks! sorry i was on leave.
2 queries:
(1) Since intel_color_get_bit_precision() will be used to set bit precision for gamma and degamma both, it will
    return multiple values..should i return values as struct? or sending as pointer is ok?
	if (HAS_GMCH(dev_priv)) {                                            
		if (IS_CHERRYVIEW(dev_priv))                                
			*bp_gamma = chv_gamma_precision(crtc_state); 
(2) (or) if this method is not fine, should we have function ptr for the same?
Please suggest the best method?
</pre>
    <blockquote type="cite" cite="mid:20190514161024.GC24299@intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+			}
+			if (crtc_state-&gt;cgm_mode == CGM_PIPE_MODE_GAMMA)
+				*bp_gamma = 10;
+		} else if (INTEL_GEN(dev_priv) &gt;= 4) {
+			if (crtc_state-&gt;gamma_mode == GAMMA_MODE_MODE_8BIT)
+				*bp_gamma = 8;
+			else
+				*bp_gamma = 16;
+		} else {
+			*bp_gamma = 8;
+		}
+	} else {
+		if (INTEL_GEN(dev_priv) &gt;= 11) {
+			if ((crtc_state-&gt;gamma_mode &amp; GAMMA_MODE_MODE_MASK) ==
+					GAMMA_MODE_MODE_8BIT)
+				*bp_gamma = 8;
+			else
+				*bp_gamma = 10;
+		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
+			if (crtc_state-&gt;gamma_mode == GAMMA_MODE_MODE_8BIT)
+				*bp_gamma = 8;
+			else
+				*bp_gamma = 10;
+		} else if (INTEL_GEN(dev_priv) &gt;= 7) {
+			if (crtc_state-&gt;gamma_mode == GAMMA_MODE_MODE_8BIT)
+				*bp_gamma = 8;
+			else if (crtc_state-&gt;gamma_mode == GAMMA_MODE_MODE_SPLIT)
+				*bp_gamma = 10;
+				else
+					*bp_gamma = 10;
+		} else {
+			if (crtc_state-&gt;gamma_mode == GAMMA_MODE_MODE_8BIT)
+				*bp_gamma = 8;
+			else
+				*bp_gamma = 10;
+		}
+	}
+}
+
+static inline bool err_check(struct drm_color_lut *sw_lut,
+	                     struct drm_color_lut *hw_lut, u32 err)
+{
+	 return ((abs((long)hw_lut-&gt;red - sw_lut-&gt;red)) &lt;= err) &amp;&amp;
+	        ((abs((long)hw_lut-&gt;blue - sw_lut-&gt;blue)) &lt;= err) &amp;&amp;
+	        ((abs((long)hw_lut-&gt;green - sw_lut-&gt;green)) &lt;= err);
+}
+
+bool intel_color_lut_equal(struct drm_property_blob *blob1,
+			   struct drm_property_blob *blob2,
+			   u32 bit_precision)
+{
+	struct drm_color_lut *sw_lut, *hw_lut;
+	int sw_lut_size, hw_lut_size, i;
+	u32 err;
+
+	if (!blob1 &amp;&amp; !blob2)
+		return true;
+
+	if (!blob1)
+		return true;
+
+	if (!blob2)
+		return false;
+
+	sw_lut_size = drm_color_lut_size(blob1);
+	hw_lut_size = drm_color_lut_size(blob2);
+
+	if (sw_lut_size != hw_lut_size)
+		return false;
+
+	sw_lut = blob1-&gt;data;
+	hw_lut = blob2-&gt;data;
+
+	err = 0xffff &gt;&gt; bit_precision;
+
+	for (i = 0; i &lt; sw_lut_size; i++) {
+		 if (!err_check(&amp;hw_lut[i], &amp;sw_lut[i], err))
+			return false;
+	}
+
+	return true;
+}
+
 void intel_color_init(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
diff --git a/drivers/gpu/drm/i915/intel_color.h b/drivers/gpu/drm/i915/intel_color.h
index 057e8ac..f2872d3 100644
--- a/drivers/gpu/drm/i915/intel_color.h
+++ b/drivers/gpu/drm/i915/intel_color.h
@@ -6,13 +6,20 @@
 #ifndef __INTEL_COLOR_H__
 #define __INTEL_COLOR_H__
 
+#include &lt;linux/types.h&gt;
+
 struct intel_crtc_state;
 struct intel_crtc;
+struct drm_property_blob;
 
 void intel_color_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_crtc_state *crtc_state);
 void intel_color_commit(const struct intel_crtc_state *crtc_state);
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
 void intel_color_get_config(struct intel_crtc_state *crtc_state);
+bool intel_color_lut_equal(struct drm_property_blob *blob1,
+			   struct drm_property_blob *blob2,
+			   u32 bit_precision);
+void intel_color_get_bit_precision(struct intel_crtc_state *crtc_state, int *bp_gamma);
 
 #endif /* __INTEL_COLOR_H__ */
diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index 3e01028..46985c15 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -11570,6 +11570,16 @@ static void intel_dump_pipe_config(struct intel_crtc *crtc,
 				      drm_rect_width(&amp;state-&gt;base.dst),
 				      drm_rect_height(&amp;state-&gt;base.dst));
 	}
+
+	if (IS_CHERRYVIEW(dev_priv))
+		DRM_DEBUG_KMS("cgm_mode:%d gamma_mode:%d gamma_enable:%d csc_enable:%d\n",
+			       pipe_config-&gt;cgm_mode, pipe_config-&gt;gamma_mode, pipe_config-&gt;gamma_enable,
+			       pipe_config-&gt;csc_enable);
+	else
+		DRM_DEBUG_KMS("csc_mode:%d gamma_mode:%d gamma_enable:%d csc_enable:%d\n",
+			       pipe_config-&gt;csc_mode, pipe_config-&gt;gamma_mode, pipe_config-&gt;gamma_enable,
+			       pipe_config-&gt;csc_enable);
+
 }
 
 static bool check_digital_port_conflicts(struct drm_atomic_state *state)
@@ -11947,6 +11957,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 			  bool adjust)
 {
 	bool ret = true;
+	u32 bp_gamma = 0;
 	bool fixup_inherited = adjust &amp;&amp;
 		(current_config-&gt;base.mode.private_flags &amp; I915_MODE_FLAG_INHERITED) &amp;&amp;
 		!(pipe_config-&gt;base.mode.private_flags &amp; I915_MODE_FLAG_INHERITED);
@@ -12098,6 +12109,15 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_COLOR_LUT(name, bit_precision) do { \
+	if (!intel_color_lut_equal(current_config-&gt;name, \
+				   pipe_config-&gt;name, bit_precision)) { \
+		pipe_config_err(adjust, __stringify(name), \
+				"hw_state doesn't match sw_state\n"); \
+		ret = false; \
+	} \
+} while (0)
+
 #define PIPE_CONF_QUIRK(quirk) \
 	((current_config-&gt;quirks | pipe_config-&gt;quirks) &amp; (quirk))
 
@@ -12193,6 +12213,9 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 			PIPE_CONF_CHECK_X(csc_mode);
 		PIPE_CONF_CHECK_BOOL(gamma_enable);
 		PIPE_CONF_CHECK_BOOL(csc_enable);
+
+		intel_color_get_bit_precision(pipe_config, &amp;bp_gamma);
+		PIPE_CONF_CHECK_COLOR_LUT(base.gamma_lut, bp_gamma);
 	}
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
@@ -12255,6 +12278,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 #undef PIPE_CONF_CHECK_FLAGS
 #undef PIPE_CONF_CHECK_CLOCK_FUZZY
 #undef PIPE_CONF_QUIRK
+#undef PIPE_CONF_CHECK_COLOR_LUT
 
 	return ret;
 }
-- 
1.9.1
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
~Swati Sharma
</pre>
  </body>
</html>

--------------B404919887137E87E2453F0B--

--===============0141291291==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0141291291==--
