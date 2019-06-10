Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA46A3B38A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 12:55:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1240189122;
	Mon, 10 Jun 2019 10:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01045890FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 10:54:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 03:54:57 -0700
X-ExtLoop1: 1
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.66.99.83])
 ([10.66.99.83])
 by orsmga004.jf.intel.com with ESMTP; 10 Jun 2019 03:54:56 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
 <1559123462-7343-4-git-send-email-swati2.sharma@intel.com>
 <20190531152855.GW5942@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <cdf14984-9165-3f05-e6f9-78289ec5ac50@intel.com>
Date: Mon, 10 Jun 2019 16:24:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531152855.GW5942@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v7][PATCH 03/12] drm/i915: Add func to compare
 hw/sw gamma lut
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1628897677=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1628897677==
Content-Type: multipart/alternative;
 boundary="------------F9EBA8F149E6F203E72635F4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F9EBA8F149E6F203E72635F4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 31-May-19 8:58 PM, Ville Syrjälä wrote:

> On Wed, May 29, 2019 at 03:20:53PM +0530, Swati Sharma wrote:
>> v3: -Rebase
>> v4: -Renamed intel_compare_color_lut() to intel_color_lut_equal() [Jani]
>>      -Added the default label above the correct label [Jani]
>>      -Corrected smatch warn "variable dereferenced before check"
>>       [Dan Carpenter]
>> v5: -Added condition (!blob1 && !blob2) return true [Jani]
>>      -Called PIPE_CONF_CHECK_COLOR_LUT inside if (!adjust) [Jani]
>>      -Added #undef PIPE_CONF_CHECK_COLOR_LUT [Jani]
>> v6: -Added func intel_color_get_bit_precision() to get bit precision for
>>       gamma and degamma lut readout depending upon platform and
>>       corresponding to load_luts() [Ankit]
>>      -Added debug log for color para in intel_dump_pipe_config [Jani]
>>      -Made patch11 as patch3 [Jani]
>> v7: -Renamed func intel_color_get_bit_precision() to
>>       intel_color_get_gamma_bit_precision()
>>      -Added separate function/platform for gamma bit precision [Ville]
>>      -Corrected checkpatch warnings
>>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>>   drivers/gpu/drm/i915/intel_color.c   | 166 +++++++++++++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/intel_color.h   |   7 ++
>>   drivers/gpu/drm/i915/intel_display.c |  24 +++++
>>   3 files changed, 197 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_color.c b/drivers/gpu/drm/i915/intel_color.c
>> index 50b98ee..b20a2c6 100644
>> --- a/drivers/gpu/drm/i915/intel_color.c
>> +++ b/drivers/gpu/drm/i915/intel_color.c
>> @@ -1251,6 +1251,172 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
>>   	return 0;
>>   }
>>   
>> +static int i9xx_gamma_precision(struct intel_crtc_state *crtc_state)
>> +{
>> +	if (!crtc_state->gamma_enable)
>> +		return 0;
>> +
>> +	switch (crtc_state->gamma_mode) {
>> +	case GAMMA_MODE_MODE_8BIT:
>> +		return 8;
>> +	case GAMMA_MODE_MODE_10BIT:
>> +		return 16;
>> +	default:
>> +		MISSING_CASE(crtc_state->gamma_mode);
>> +		return 0;
>> +	}
>> +}
>> +
>> +static int chv_gamma_precision(struct intel_crtc_state *crtc_state)
>> +{
>> +	if (crtc_state->cgm_mode & CGM_PIPE_MODE_GAMMA)
>> +		return 10;
>> +	else
>> +		return i9xx_gamma_precision(crtc_state);
>> +}
>> +
>> +static int ilk_gamma_precision(struct intel_crtc_state *crtc_state)
>> +{
>> +	if (!crtc_state->gamma_enable)
>> +		return 0;
>> +
>> +	if ((crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) == 0)
>> +		return 0;
>> +
>> +	switch (crtc_state->gamma_mode) {
>> +	case GAMMA_MODE_MODE_8BIT:
>> +		return 8;
>> +	case GAMMA_MODE_MODE_10BIT:
>> +		return 10;
>> +	default:
>> +		MISSING_CASE(crtc_state->gamma_mode);
>> +		return 0;
>> +	}
>> +}
>> +
>> +static int ivb_gamma_precision(struct intel_crtc_state *crtc_state)
>> +{
>> +	if (!crtc_state->gamma_enable)
>> +		return 0;
>> +
>> +	if ((crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) == 0)
>> +		return 0;
>> +
>> +	switch (crtc_state->gamma_mode) {
>> +	case GAMMA_MODE_MODE_8BIT:
>> +		return 8;
>> +	case GAMMA_MODE_MODE_SPLIT:
>> +	case GAMMA_MODE_MODE_10BIT:
>> +		return 10;
>> +	default:
>> +		MISSING_CASE(crtc_state->gamma_mode);
>> +		return 0;
>> +	}
>> +}
>> +
>> +static int glk_gamma_precision(struct intel_crtc_state *crtc_state)
>> +{
>> +	if (!crtc_state->gamma_enable)
>> +		return 0;
>> +
>> +	if ((crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) == 0)
>> +		return 0;
> glk doens't have that bit.
>
>> +
>> +	switch (crtc_state->gamma_mode) {
>> +	case GAMMA_MODE_MODE_8BIT:
>> +		return 8;
>> +	case GAMMA_MODE_MODE_10BIT:
>> +		return 10;
>> +	default:
>> +		MISSING_CASE(crtc_state->gamma_mode);
>> +		return 0;
>> +	}
>> +}
>> +
>> +static int icl_gamma_precision(struct intel_crtc_state *crtc_state)
>> +{
>> +	if ((crtc_state->gamma_mode & PRE_CSC_GAMMA_ENABLE) == 0)
>> +		return 0;
> POST_CSC_GAMMA
>
>> +
>> +	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
>> +	case GAMMA_MODE_MODE_8BIT:
>> +		return 8;
>> +	case GAMMA_MODE_MODE_10BIT:
>> +		return 10;
>> +	default:
>> +		MISSING_CASE(crtc_state->gamma_mode);
>> +		return 0;
>> +	}
>> +}
>> +
>> +int intel_color_get_gamma_bit_precision(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
>> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> +
>> +	if (HAS_GMCH(dev_priv)) {
>> +		if (IS_CHERRYVIEW(dev_priv))
>> +			return chv_gamma_precision(crtc_state);
>> +		else
>> +			return i9xx_gamma_precision(crtc_state);
>> +	} else {
>> +		if (INTEL_GEN(dev_priv) >= 11)
>> +			return icl_gamma_precision(crtc_state);
>> +		else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
>> +			return glk_gamma_precision(crtc_state);
>> +		else if (INTEL_GEN(dev_priv) >= 7)
>> +			return ivb_gamma_precision(crtc_state);
>> +		else
>> +			return ilk_gamma_precision(crtc_state);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static inline bool err_check(struct drm_color_lut *sw_lut,
>> +			     struct drm_color_lut *hw_lut, u32 err)
>> +{
>> +	return ((abs((long)hw_lut->red - sw_lut->red)) <= err) &&
>> +		((abs((long)hw_lut->blue - sw_lut->blue)) <= err) &&
>> +		((abs((long)hw_lut->green - sw_lut->green)) <= err);
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
> What is this logic trying to do?
>
> Something like?
>
> if (!blob1 != !blob2)
> 	return false;
> if (!blob1)
> 	return true;
>
>
>> +
>> +	sw_lut_size = drm_color_lut_size(blob1);
>> +	hw_lut_size = drm_color_lut_size(blob2);
>> +
>> +	if (sw_lut_size != hw_lut_size)
>> +		return false;
> This is going to trigger with the split gamma mode. We'll need to be
> more clever when comparing the two.

So, we need check for gamma_mode here as-well?

>
>> +
>> +	sw_lut = blob1->data;
>> +	hw_lut = blob2->data;
>> +
>> +	err = 0xffff >> bit_precision;
>> +
>> +	for (i = 0; i < sw_lut_size; i++) {
>> +		if (!err_check(&hw_lut[i], &sw_lut[i], err))
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
>> index 057e8ac..02ea1bc 100644
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
>> +int intel_color_get_gamma_bit_precision(struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_COLOR_H__ */
>> diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
>> index 3e01028..b8ff3f4 100644
>> --- a/drivers/gpu/drm/i915/intel_display.c
>> +++ b/drivers/gpu/drm/i915/intel_display.c
>> @@ -11570,6 +11570,15 @@ static void intel_dump_pipe_config(struct intel_crtc *crtc,
>>   				      drm_rect_width(&state->base.dst),
>>   				      drm_rect_height(&state->base.dst));
>>   	}
>> +
>> +	if (IS_CHERRYVIEW(dev_priv))
>> +		DRM_DEBUG_KMS("cgm_mode:%d gamma_mode:%d gamma_enable:%d csc_enable:%d\n",
>> +			       pipe_config->cgm_mode, pipe_config->gamma_mode,
>> +			       pipe_config->gamma_enable, pipe_config->csc_enable);
>> +	else
>> +		DRM_DEBUG_KMS("csc_mode:%d gamma_mode:%d gamma_enable:%d csc_enable:%d\n",
>> +			       pipe_config->csc_mode, pipe_config->gamma_mode,
>> +			       pipe_config->gamma_enable, pipe_config->csc_enable);
>>   }
>>   
>>   static bool check_digital_port_conflicts(struct drm_atomic_state *state)
>> @@ -11947,6 +11956,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>>   			  bool adjust)
>>   {
>>   	bool ret = true;
>> +	u32 bp_gamma = 0;
>>   	bool fixup_inherited = adjust &&
>>   		(current_config->base.mode.private_flags & I915_MODE_FLAG_INHERITED) &&
>>   		!(pipe_config->base.mode.private_flags & I915_MODE_FLAG_INHERITED);
>> @@ -12098,6 +12108,15 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
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
>> @@ -12193,6 +12212,10 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>>   			PIPE_CONF_CHECK_X(csc_mode);
>>   		PIPE_CONF_CHECK_BOOL(gamma_enable);
>>   		PIPE_CONF_CHECK_BOOL(csc_enable);
>> +
>> +		bp_gamma = intel_color_get_gamma_bit_precision(pipe_config);
>> +		if (bp_gamma)
>> +			PIPE_CONF_CHECK_COLOR_LUT(base.gamma_lut, bp_gamma);
> Sometimes the sw gamma gets programmed in the hw degamma, so we do need
> degamma readout, and we'll need to somehow figure out which hw thing
> is which sw thing.

Can you please little bit elaborate on this? What's the usecase?

>
> I'm thinking the following sort of logic should work since so
> far it should be just the the sw.gamma that can end up in
> hw.degamma:
>
> if (sw.gamma && !hw.gamma) {
> 	CHECK(sw.gamma, hw.degamma);
> 	CHECK(sw.degamma, hw.gamma);
> } else {
> 	CHECK(sw.gamma, hw.gamma);
> 	CHECK(sw.degamma, hw.degamma);
> }
>
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
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx


-- 
~Swati Sharma


--------------F9EBA8F149E6F203E72635F4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">
      <pre>On 31-May-19 8:58 PM, Ville Syrjälä wrote:</pre>
    </div>
    <blockquote type="cite" cite="mid:20190531152855.GW5942@intel.com">
      <pre class="moz-quote-pre" wrap="">On Wed, May 29, 2019 at 03:20:53PM +0530, Swati Sharma wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">v3: -Rebase
v4: -Renamed intel_compare_color_lut() to intel_color_lut_equal() [Jani]
    -Added the default label above the correct label [Jani]
    -Corrected smatch warn "variable dereferenced before check"
     [Dan Carpenter]
v5: -Added condition (!blob1 &amp;&amp; !blob2) return true [Jani]
    -Called PIPE_CONF_CHECK_COLOR_LUT inside if (!adjust) [Jani]
    -Added #undef PIPE_CONF_CHECK_COLOR_LUT [Jani]
v6: -Added func intel_color_get_bit_precision() to get bit precision for
     gamma and degamma lut readout depending upon platform and
     corresponding to load_luts() [Ankit]
    -Added debug log for color para in intel_dump_pipe_config [Jani]
    -Made patch11 as patch3 [Jani]
v7: -Renamed func intel_color_get_bit_precision() to
     intel_color_get_gamma_bit_precision()
    -Added separate function/platform for gamma bit precision [Ville]
    -Corrected checkpatch warnings

Signed-off-by: Swati Sharma <a class="moz-txt-link-rfc2396E" href="mailto:swati2.sharma@intel.com">&lt;swati2.sharma@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/intel_color.c   | 166 +++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_color.h   |   7 ++
 drivers/gpu/drm/i915/intel_display.c |  24 +++++
 3 files changed, 197 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_color.c b/drivers/gpu/drm/i915/intel_color.c
index 50b98ee..b20a2c6 100644
--- a/drivers/gpu/drm/i915/intel_color.c
+++ b/drivers/gpu/drm/i915/intel_color.c
@@ -1251,6 +1251,172 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+static int i9xx_gamma_precision(struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state-&gt;gamma_enable)
+		return 0;
+
+	switch (crtc_state-&gt;gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		return 8;
+	case GAMMA_MODE_MODE_10BIT:
+		return 16;
+	default:
+		MISSING_CASE(crtc_state-&gt;gamma_mode);
+		return 0;
+	}
+}
+
+static int chv_gamma_precision(struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state-&gt;cgm_mode &amp; CGM_PIPE_MODE_GAMMA)
+		return 10;
+	else
+		return i9xx_gamma_precision(crtc_state);
+}
+
+static int ilk_gamma_precision(struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state-&gt;gamma_enable)
+		return 0;
+
+	if ((crtc_state-&gt;csc_mode &amp; CSC_POSITION_BEFORE_GAMMA) == 0)
+		return 0;
+
+	switch (crtc_state-&gt;gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		return 8;
+	case GAMMA_MODE_MODE_10BIT:
+		return 10;
+	default:
+		MISSING_CASE(crtc_state-&gt;gamma_mode);
+		return 0;
+	}
+}
+
+static int ivb_gamma_precision(struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state-&gt;gamma_enable)
+		return 0;
+
+	if ((crtc_state-&gt;csc_mode &amp; CSC_POSITION_BEFORE_GAMMA) == 0)
+		return 0;
+
+	switch (crtc_state-&gt;gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		return 8;
+	case GAMMA_MODE_MODE_SPLIT:
+	case GAMMA_MODE_MODE_10BIT:
+		return 10;
+	default:
+		MISSING_CASE(crtc_state-&gt;gamma_mode);
+		return 0;
+	}
+}
+
+static int glk_gamma_precision(struct intel_crtc_state *crtc_state)
+{
+	if (!crtc_state-&gt;gamma_enable)
+		return 0;
+
+	if ((crtc_state-&gt;csc_mode &amp; CSC_POSITION_BEFORE_GAMMA) == 0)
+		return 0;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
glk doens't have that bit.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+
+	switch (crtc_state-&gt;gamma_mode) {
+	case GAMMA_MODE_MODE_8BIT:
+		return 8;
+	case GAMMA_MODE_MODE_10BIT:
+		return 10;
+	default:
+		MISSING_CASE(crtc_state-&gt;gamma_mode);
+		return 0;
+	}
+}
+
+static int icl_gamma_precision(struct intel_crtc_state *crtc_state)
+{
+	if ((crtc_state-&gt;gamma_mode &amp; PRE_CSC_GAMMA_ENABLE) == 0)
+		return 0;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
POST_CSC_GAMMA

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+
+	switch (crtc_state-&gt;gamma_mode &amp; GAMMA_MODE_MODE_MASK) {
+	case GAMMA_MODE_MODE_8BIT:
+		return 8;
+	case GAMMA_MODE_MODE_10BIT:
+		return 10;
+	default:
+		MISSING_CASE(crtc_state-&gt;gamma_mode);
+		return 0;
+	}
+}
+
+int intel_color_get_gamma_bit_precision(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;base.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
+
+	if (HAS_GMCH(dev_priv)) {
+		if (IS_CHERRYVIEW(dev_priv))
+			return chv_gamma_precision(crtc_state);
+		else
+			return i9xx_gamma_precision(crtc_state);
+	} else {
+		if (INTEL_GEN(dev_priv) &gt;= 11)
+			return icl_gamma_precision(crtc_state);
+		else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
+			return glk_gamma_precision(crtc_state);
+		else if (INTEL_GEN(dev_priv) &gt;= 7)
+			return ivb_gamma_precision(crtc_state);
+		else
+			return ilk_gamma_precision(crtc_state);
+	}
+
+	return 0;
+}
+
+static inline bool err_check(struct drm_color_lut *sw_lut,
+			     struct drm_color_lut *hw_lut, u32 err)
+{
+	return ((abs((long)hw_lut-&gt;red - sw_lut-&gt;red)) &lt;= err) &amp;&amp;
+		((abs((long)hw_lut-&gt;blue - sw_lut-&gt;blue)) &lt;= err) &amp;&amp;
+		((abs((long)hw_lut-&gt;green - sw_lut-&gt;green)) &lt;= err);
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
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
What is this logic trying to do?

Something like?

if (!blob1 != !blob2)
	return false;
if (!blob1)
	return true;


</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+
+	sw_lut_size = drm_color_lut_size(blob1);
+	hw_lut_size = drm_color_lut_size(blob2);
+
+	if (sw_lut_size != hw_lut_size)
+		return false;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
This is going to trigger with the split gamma mode. We'll need to be
more clever when comparing the two.</pre>
    </blockquote>
    <pre>So, we need check for gamma_mode here as-well? 
</pre>
    <blockquote type="cite" cite="mid:20190531152855.GW5942@intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+
+	sw_lut = blob1-&gt;data;
+	hw_lut = blob2-&gt;data;
+
+	err = 0xffff &gt;&gt; bit_precision;
+
+	for (i = 0; i &lt; sw_lut_size; i++) {
+		if (!err_check(&amp;hw_lut[i], &amp;sw_lut[i], err))
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
index 057e8ac..02ea1bc 100644
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
+int intel_color_get_gamma_bit_precision(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_COLOR_H__ */
diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index 3e01028..b8ff3f4 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -11570,6 +11570,15 @@ static void intel_dump_pipe_config(struct intel_crtc *crtc,
 				      drm_rect_width(&amp;state-&gt;base.dst),
 				      drm_rect_height(&amp;state-&gt;base.dst));
 	}
+
+	if (IS_CHERRYVIEW(dev_priv))
+		DRM_DEBUG_KMS("cgm_mode:%d gamma_mode:%d gamma_enable:%d csc_enable:%d\n",
+			       pipe_config-&gt;cgm_mode, pipe_config-&gt;gamma_mode,
+			       pipe_config-&gt;gamma_enable, pipe_config-&gt;csc_enable);
+	else
+		DRM_DEBUG_KMS("csc_mode:%d gamma_mode:%d gamma_enable:%d csc_enable:%d\n",
+			       pipe_config-&gt;csc_mode, pipe_config-&gt;gamma_mode,
+			       pipe_config-&gt;gamma_enable, pipe_config-&gt;csc_enable);
 }
 
 static bool check_digital_port_conflicts(struct drm_atomic_state *state)
@@ -11947,6 +11956,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 			  bool adjust)
 {
 	bool ret = true;
+	u32 bp_gamma = 0;
 	bool fixup_inherited = adjust &amp;&amp;
 		(current_config-&gt;base.mode.private_flags &amp; I915_MODE_FLAG_INHERITED) &amp;&amp;
 		!(pipe_config-&gt;base.mode.private_flags &amp; I915_MODE_FLAG_INHERITED);
@@ -12098,6 +12108,15 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
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
 
@@ -12193,6 +12212,10 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 			PIPE_CONF_CHECK_X(csc_mode);
 		PIPE_CONF_CHECK_BOOL(gamma_enable);
 		PIPE_CONF_CHECK_BOOL(csc_enable);
+
+		bp_gamma = intel_color_get_gamma_bit_precision(pipe_config);
+		if (bp_gamma)
+			PIPE_CONF_CHECK_COLOR_LUT(base.gamma_lut, bp_gamma);
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Sometimes the sw gamma gets programmed in the hw degamma, so we do need
degamma readout, and we'll need to somehow figure out which hw thing
is which sw thing.</pre>
    </blockquote>
    <pre>Can you please little bit elaborate on this? What's the usecase?
</pre>
    <blockquote type="cite" cite="mid:20190531152855.GW5942@intel.com">
      <pre class="moz-quote-pre" wrap="">

I'm thinking the following sort of logic should work since so
far it should be just the the sw.gamma that can end up in 
hw.degamma:

if (sw.gamma &amp;&amp; !hw.gamma) {
	CHECK(sw.gamma, hw.degamma);
	CHECK(sw.degamma, hw.gamma);
} else {
	CHECK(sw.gamma, hw.gamma);
	CHECK(sw.degamma, hw.degamma);
}

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap=""> 	}
 
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

_______________________________________________
Intel-gfx mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Intel-gfx@lists.freedesktop.org">Intel-gfx@lists.freedesktop.org</a>
<a class="moz-txt-link-freetext" href="https://lists.freedesktop.org/mailman/listinfo/intel-gfx">https://lists.freedesktop.org/mailman/listinfo/intel-gfx</a>
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

--------------F9EBA8F149E6F203E72635F4--

--===============1628897677==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1628897677==--
