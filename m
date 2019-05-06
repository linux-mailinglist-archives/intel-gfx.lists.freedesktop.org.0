Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA49015410
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 20:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF0489BF4;
	Mon,  6 May 2019 18:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89CF89BF4
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 18:57:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 11:57:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,439,1549958400"; 
 d="scan'208,217";a="168611414"
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.252.84.222])
 ([10.252.84.222])
 by fmsmga002.fm.intel.com with ESMTP; 06 May 2019 11:57:08 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
 <1556989900-21972-12-git-send-email-swati2.sharma@intel.com>
 <20190506183308.GC24299@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <feca5839-0cf2-41cd-51a6-77b385ece7d8@intel.com>
Date: Tue, 7 May 2019 00:27:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506183308.GC24299@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v5][PATCH 11/11] drm/i915: Add
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch,
 intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com
Content-Type: multipart/mixed; boundary="===============0468454861=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0468454861==
Content-Type: multipart/alternative;
 boundary="------------51F87C0D4220F149AEC66677"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------51F87C0D4220F149AEC66677
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07-May-19 12:03 AM, Ville Syrjälä wrote:

> On Sat, May 04, 2019 at 10:41:40PM +0530, Swati Sharma wrote:
>> v3: Rebase
>> v4: -Renamed intel_compare_color_lut() to intel_color_lut_equal() [Jani]
>>      -Added the default label above the correct label [Jani]
>>      -Corrected smatch warn "variable dereferenced before check" [Dan Carpenter]
>> v5: -Added condition (!blob1 && !blob2) return true [Jani]
>>      -Called PIPE_CONF_CHECK_COLOR_LUT inside if (!adjust) [Jani]
>>      -Added #undef PIPE_CONF_CHECK_COLOR_LUT [Jani]
>>
>> There are few things wrong in this patch:
>> [1] For chv bit precision is 14, on what basis it should be assigned?
> Like everything else it will more or less be a reverse of the
> compute side. For CHV we need to look at cgm_mode, gamma_enable,
> gamma_mode, and c8_planes. Hmm. We actually don't have readout for
> c8_planes so I guess we'll have to make some kind of exception for
> that one.

By this I meant was, since I am assigning bit_precision on the basis
of gamma_mode in the compare function like
+	case GAMMA_MODE_MODE_8BIT:
+		bit_precision = 8;
etc. We have 8BIT, 10BIT and 12BIT GAMMA_MODES only.How will I
assign 14BIT on the basis of GAMMA_MODES (or) is there some other
option to assign precision. Please see the comparison code below.

>
>> [2] For glk and icl, degamma LUT values are not rounded off, there
>> should err=0 if using same function, how to make that exception?
> You mean the degamma? Just set precision==16? Maybe I'm not
> understanding the question.

Again same query as above, if I set precision as 16..on what basis?
Which GAMMA_MODE? (or) default i should set as 16?

>
>> [3] For glk, bit precision is 10 but gamma mode is 8BIT?
> Not sure what you mean. glk gamma_mode works just like with
> other ilk+ platforms (apart from not having the csc_mode
> gamma vs. degamma control).

Sorry..my bad!

>
> I suspect the most annoying case is ivb-bdw 10bit gamma mode
> since we probably don't have the full readout to do the reverse
> mapping of whether the LUT is used as gamma or degamma. But I
> guess we'll just have to compare it against whichever one the
> software state has.

One last query, as there is difference in precision of gamma and
degamma..we have one comparison function..how will we get to know whether
blob received is degamma or gamma? Do we need to pass some kind of enum value
to know comparison needs to be done for gamma or degamma?

>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>>   drivers/gpu/drm/i915/intel_color.c   | 54 ++++++++++++++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/intel_color.h   |  6 ++++
>>   drivers/gpu/drm/i915/intel_display.c | 12 ++++++++
>>   3 files changed, 72 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_color.c b/drivers/gpu/drm/i915/intel_color.c
>> index 695b76d..73cb901 100644
>> --- a/drivers/gpu/drm/i915/intel_color.c
>> +++ b/drivers/gpu/drm/i915/intel_color.c
>> @@ -1630,6 +1630,60 @@ static void ilk_read_luts(struct intel_crtc_state *crtc_state)
>>   		crtc_state->base.gamma_lut = ilk_read_gamma_lut(crtc_state);
>>   }
>>   
>> +static inline bool err_check(struct drm_color_lut *sw_lut, struct drm_color_lut *hw_lut, u32 err)
>> +{
>> +	 return ((abs((long)hw_lut->red - sw_lut->red)) <= err) &&
>> +	        ((abs((long)hw_lut->blue - sw_lut->blue)) <= err) &&
>> +	        ((abs((long)hw_lut->green - sw_lut->green)) <= err);
>> +}
>> +
>> +bool intel_color_lut_equal(struct drm_property_blob *blob1,
>> +			   struct drm_property_blob *blob2,
>> +			   u32 gamma_mode)
>> +{
>> +	struct drm_color_lut *sw_lut, *hw_lut;
>> +	int sw_lut_size, hw_lut_size, i;
>> +	u32 bit_precision, err;
>> +
>> +	if (!blob1 && !blob2)
>> +		return true;
>> +
>> +	if (!blob1 || !blob2)
>> +		return false;
>> +
>> +	sw_lut_size = drm_color_lut_size(blob1);
>> +	hw_lut_size = drm_color_lut_size(blob2);
>> +
>> +	if (sw_lut_size != hw_lut_size)
>> +		return false;
>> +
>> +	switch(gamma_mode) {
>> +	default:
>> +	case GAMMA_MODE_MODE_8BIT:
>> +		bit_precision = 8;
>> +		break;
>> +	case GAMMA_MODE_MODE_10BIT:
>> +	case GAMMA_MODE_MODE_SPLIT:
>> +		bit_precision = 10;
>> +		break;
>> +	case GAMMA_MODE_MODE_12BIT:
>> +		bit_precision = 12;
>> +		break;
>> +	}
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
>> index fc53de9..b525c80 100644
>> --- a/drivers/gpu/drm/i915/intel_color.h
>> +++ b/drivers/gpu/drm/i915/intel_color.h
>> @@ -6,13 +6,19 @@
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
>>   void intel_color_read_luts(struct intel_crtc_state *crtc_state);
>> +bool intel_color_lut_equal(struct drm_property_blob *blob1,
>> +				 struct drm_property_blob *blob2,
>> +				 u32 gamma_mode);
>>   
>>   #endif /* __INTEL_COLOR_H__ */
>> diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
>> index 791974b..a713171 100644
>> --- a/drivers/gpu/drm/i915/intel_display.c
>> +++ b/drivers/gpu/drm/i915/intel_display.c
>> @@ -12287,6 +12287,14 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>>   	} \
>>   } while (0)
>>   
>> +#define PIPE_CONF_CHECK_COLOR_LUT(name, gamma_mode) do { \
>> +	if (!intel_color_lut_equal(current_config->name, pipe_config->name, gamma_mode)) { \
>> +		pipe_config_err(adjust, __stringify(name), \
>> +				"hw_state doesn't match sw_state\n"); \
>> +		ret = false; \
>> +	} \
>> +} while (0)
>> +
>>   #define PIPE_CONF_QUIRK(quirk) \
>>   	((current_config->quirks | pipe_config->quirks) & (quirk))
>>   
>> @@ -12376,6 +12384,9 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
>>   			PIPE_CONF_CHECK_X(csc_mode);
>>   		PIPE_CONF_CHECK_BOOL(gamma_enable);
>>   		PIPE_CONF_CHECK_BOOL(csc_enable);
>> +
>> +		PIPE_CONF_CHECK_COLOR_LUT(base.gamma_lut, pipe_config->gamma_mode);
>> +		PIPE_CONF_CHECK_COLOR_LUT(base.degamma_lut, pipe_config->gamma_mode);
>>   	}
>>   
>>   	PIPE_CONF_CHECK_BOOL(double_wide);
>> @@ -12438,6 +12449,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
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


--------------51F87C0D4220F149AEC66677
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">
      <p><tt>On 07-May-19 12:03 AM, Ville Syrjälä wrote:</tt></p>
    </div>
    <blockquote type="cite" cite="mid:20190506183308.GC24299@intel.com">
      <pre class="moz-quote-pre" wrap="">On Sat, May 04, 2019 at 10:41:40PM +0530, Swati Sharma wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">v3: Rebase
v4: -Renamed intel_compare_color_lut() to intel_color_lut_equal() [Jani]
    -Added the default label above the correct label [Jani]
    -Corrected smatch warn "variable dereferenced before check" [Dan Carpenter]
v5: -Added condition (!blob1 &amp;&amp; !blob2) return true [Jani]
    -Called PIPE_CONF_CHECK_COLOR_LUT inside if (!adjust) [Jani]
    -Added #undef PIPE_CONF_CHECK_COLOR_LUT [Jani]

There are few things wrong in this patch:
[1] For chv bit precision is 14, on what basis it should be assigned?
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Like everything else it will more or less be a reverse of the
compute side. For CHV we need to look at cgm_mode, gamma_enable,
gamma_mode, and c8_planes. Hmm. We actually don't have readout for
c8_planes so I guess we'll have to make some kind of exception for
that one.</pre>
    </blockquote>
    <pre>By this I meant was, since I am assigning bit_precision on the basis
of gamma_mode in the compare function like
+	case GAMMA_MODE_MODE_8BIT:
+		bit_precision = 8;
etc. We have 8BIT, 10BIT and 12BIT GAMMA_MODES only.How will I 
assign 14BIT on the basis of GAMMA_MODES (or) is there some other 
option to assign precision. Please see the comparison code below.
</pre>
    <blockquote type="cite" cite="mid:20190506183308.GC24299@intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">[2] For glk and icl, degamma LUT values are not rounded off, there
should err=0 if using same function, how to make that exception?
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
You mean the degamma? Just set precision==16? Maybe I'm not
understanding the question.</pre>
    </blockquote>
    <pre>Again same query as above, if I set precision as 16..on what basis?
Which GAMMA_MODE? (or) default i should set as 16?
</pre>
    <blockquote type="cite" cite="mid:20190506183308.GC24299@intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">[3] For glk, bit precision is 10 but gamma mode is 8BIT?
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Not sure what you mean. glk gamma_mode works just like with
other ilk+ platforms (apart from not having the csc_mode
gamma vs. degamma control).</pre>
    </blockquote>
    <pre>Sorry..my bad!
</pre>
    <blockquote type="cite" cite="mid:20190506183308.GC24299@intel.com">
      <pre class="moz-quote-pre" wrap="">

I suspect the most annoying case is ivb-bdw 10bit gamma mode
since we probably don't have the full readout to do the reverse
mapping of whether the LUT is used as gamma or degamma. But I
guess we'll just have to compare it against whichever one the
software state has.</pre>
    </blockquote>
    <pre>One last query, as there is difference in precision of gamma and 
degamma..we have one comparison function..how will we get to know whether
blob received is degamma or gamma? Do we need to pass some kind of enum value
to know comparison needs to be done for gamma or degamma?
</pre>
    <blockquote type="cite" cite="mid:20190506183308.GC24299@intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Signed-off-by: Swati Sharma <a class="moz-txt-link-rfc2396E" href="mailto:swati2.sharma@intel.com">&lt;swati2.sharma@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/intel_color.c   | 54 ++++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_color.h   |  6 ++++
 drivers/gpu/drm/i915/intel_display.c | 12 ++++++++
 3 files changed, 72 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_color.c b/drivers/gpu/drm/i915/intel_color.c
index 695b76d..73cb901 100644
--- a/drivers/gpu/drm/i915/intel_color.c
+++ b/drivers/gpu/drm/i915/intel_color.c
@@ -1630,6 +1630,60 @@ static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 		crtc_state-&gt;base.gamma_lut = ilk_read_gamma_lut(crtc_state);
 }
 
+static inline bool err_check(struct drm_color_lut *sw_lut, struct drm_color_lut *hw_lut, u32 err)
+{
+	 return ((abs((long)hw_lut-&gt;red - sw_lut-&gt;red)) &lt;= err) &amp;&amp;
+	        ((abs((long)hw_lut-&gt;blue - sw_lut-&gt;blue)) &lt;= err) &amp;&amp;
+	        ((abs((long)hw_lut-&gt;green - sw_lut-&gt;green)) &lt;= err);
+}
+
+bool intel_color_lut_equal(struct drm_property_blob *blob1,
+			   struct drm_property_blob *blob2,
+			   u32 gamma_mode)
+{
+	struct drm_color_lut *sw_lut, *hw_lut;
+	int sw_lut_size, hw_lut_size, i;
+	u32 bit_precision, err;
+
+	if (!blob1 &amp;&amp; !blob2)
+		return true;
+
+	if (!blob1 || !blob2)
+		return false;
+
+	sw_lut_size = drm_color_lut_size(blob1);
+	hw_lut_size = drm_color_lut_size(blob2);
+
+	if (sw_lut_size != hw_lut_size)
+		return false;
+
+	switch(gamma_mode) {
+	default:
+	case GAMMA_MODE_MODE_8BIT:
+		bit_precision = 8;
+		break;
+	case GAMMA_MODE_MODE_10BIT:
+	case GAMMA_MODE_MODE_SPLIT:
+		bit_precision = 10;
+		break;
+	case GAMMA_MODE_MODE_12BIT:
+		bit_precision = 12;
+		break;
+	}
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
index fc53de9..b525c80 100644
--- a/drivers/gpu/drm/i915/intel_color.h
+++ b/drivers/gpu/drm/i915/intel_color.h
@@ -6,13 +6,19 @@
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
 void intel_color_read_luts(struct intel_crtc_state *crtc_state);
+bool intel_color_lut_equal(struct drm_property_blob *blob1,
+				 struct drm_property_blob *blob2,
+				 u32 gamma_mode);
 
 #endif /* __INTEL_COLOR_H__ */
diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index 791974b..a713171 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -12287,6 +12287,14 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_COLOR_LUT(name, gamma_mode) do { \
+	if (!intel_color_lut_equal(current_config-&gt;name, pipe_config-&gt;name, gamma_mode)) { \
+		pipe_config_err(adjust, __stringify(name), \
+				"hw_state doesn't match sw_state\n"); \
+		ret = false; \
+	} \
+} while (0)
+
 #define PIPE_CONF_QUIRK(quirk) \
 	((current_config-&gt;quirks | pipe_config-&gt;quirks) &amp; (quirk))
 
@@ -12376,6 +12384,9 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
 			PIPE_CONF_CHECK_X(csc_mode);
 		PIPE_CONF_CHECK_BOOL(gamma_enable);
 		PIPE_CONF_CHECK_BOOL(csc_enable);
+
+		PIPE_CONF_CHECK_COLOR_LUT(base.gamma_lut, pipe_config-&gt;gamma_mode);
+		PIPE_CONF_CHECK_COLOR_LUT(base.degamma_lut, pipe_config-&gt;gamma_mode);
 	}
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
@@ -12438,6 +12449,7 @@ static bool fastboot_enabled(struct drm_i915_private *dev_priv)
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
    <pre>
</pre>
    <pre class="moz-signature" cols="72">-- 
~Swati Sharma
</pre>
  </body>
</html>

--------------51F87C0D4220F149AEC66677--

--===============0468454861==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0468454861==--
