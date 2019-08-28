Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09659A0BD2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 22:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7543D89EB4;
	Wed, 28 Aug 2019 20:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 053D689EB4
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 20:49:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 13:49:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; 
 d="scan'208,217";a="171673573"
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.252.71.22])
 ([10.252.71.22])
 by orsmga007.jf.intel.com with ESMTP; 28 Aug 2019 13:48:59 -0700
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-7-git-send-email-swati2.sharma@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F821D39F8@BGSMSX104.gar.corp.intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <3a446974-592a-ec3f-0ee7-68ef34de8a4b@intel.com>
Date: Thu, 29 Aug 2019 02:18:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D39F8@BGSMSX104.gar.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v8][PATCH 06/10] drm/i91/display: Extract
 i965_read_luts()
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: multipart/mixed; boundary="===============1592553478=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1592553478==
Content-Type: multipart/alternative;
 boundary="------------968DB7B8F6D1E690173030D3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------968DB7B8F6D1E690173030D3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28-Aug-19 9:38 PM, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Sharma, Swati2
>> Sent: Monday, August 26, 2019 11:56 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Sharma, Shashank
>> <shashank.sharma@intel.com>; Manna, Animesh <animesh.manna@intel.com>;
>> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; daniel.vetter@ffwll.ch;
>> ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>; Sharma,
>> Swati2 <swati2.sharma@intel.com>
>> Subject: [v8][PATCH 06/10] drm/i91/display: Extract i965_read_luts()
> Typo in i915.
>
>> For i965, have hw read out to create hw blob of gamma lut values.
> Instead of "have", I feel "add" would sound better.
>
> Also, don't drop version history.
>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>> drivers/gpu/drm/i915/display/intel_color.c | 39 ++++++++++++++++++++++++++++++
>> drivers/gpu/drm/i915/i915_reg.h            |  3 +++
>> 2 files changed, 42 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
>> b/drivers/gpu/drm/i915/display/intel_color.c
>> index 45e0ee8..c77bbed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> @@ -1571,6 +1571,44 @@ void i9xx_read_luts(struct intel_crtc_state *crtc_state)
>> 	crtc_state->base.gamma_lut = i9xx_read_lut_8(crtc_state);  }
>>
>> +static struct drm_property_blob *
>> +i965_read_gamma_lut_10p6(struct intel_crtc_state *crtc_state) {
> You can rename this as " i965_read_lut_10p6" as pointed by Ville as well.
> Will help extend for de-gamma later and can be re-used.
Did this since we may need to create a new func for degamma readout and
this can't be reused.
>
> Also make these const, as recommended by Ville.
>
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
>> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> +	u32 i, val1, val2, lut_size = INTEL_INFO(dev_priv)->color.gamma_lut_size;
> Move to next line to honour 80 character limits.
>
>> +	enum pipe pipe = crtc->pipe;
>> +	struct drm_property_blob *blob;
>> +	struct drm_color_lut *blob_data;
>> +
>> +	blob = drm_property_create_blob(&dev_priv->drm,
>> +					sizeof(struct drm_color_lut) * lut_size,
>> +					NULL);
>> +	if (IS_ERR(blob))
>> +		return NULL;
>> +
>> +	blob_data = blob->data;
>> +
>> +	for (i = 0; i < lut_size - 1; i++) {
>> +		val1 = I915_READ(PALETTE(pipe, 2 * i + 0));
>> +		val2 = I915_READ(PALETTE(pipe, 2 * i + 1));
>> +
>> +		blob_data[i].red = REG_FIELD_GET(PALETTE_RED_MASK, val1) << 8 |
>> REG_FIELD_GET(PALETTE_RED_MASK, val2);
>> +		blob_data[i].green = REG_FIELD_GET(PALETTE_GREEN_MASK, val1)
>> << 8 | REG_FIELD_GET(PALETTE_GREEN_MASK, val2);
>> +		blob_data[i].blue = REG_FIELD_GET(PALETTE_BLUE_MASK, val1) << 8
>> | REG_FIELD_GET(PALETTE_BLUE_MASK, val2) ;
>> +	}
>> +
>> +	return blob;
>> +}
>> +
>> +static void i965_read_luts(struct intel_crtc_state *crtc_state) {
>> +	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
>> +		crtc_state->base.gamma_lut = i9xx_read_lut_8(crtc_state);
>> +	else
>> +		crtc_state->base.gamma_lut =
>> i965_read_gamma_lut_10p6(crtc_state);
>> +}
>> +
>> void intel_color_init(struct intel_crtc *crtc)  {
>> 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev); @@ -1586,6
>> +1624,7 @@ void intel_color_init(struct intel_crtc *crtc)
>> 		} else if (INTEL_GEN(dev_priv) >= 4) {
>> 			dev_priv->display.color_check = i9xx_color_check;
>> 			dev_priv->display.color_commit = i9xx_color_commit;
>> +			dev_priv->display.read_luts = i965_read_luts;
>> 			dev_priv->display.load_luts = i965_load_luts;
>> 		} else {
>> 			dev_priv->display.color_check = i9xx_color_check; diff --git
>> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
>> b687faa..b30b0c6b 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3558,6 +3558,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>> #define _PALETTE_A		0xa000
>> #define _PALETTE_B		0xa800
>> #define _CHV_PALETTE_C		0xc000
>> +#define PALETTE_RED_MASK        REG_GENMASK(23, 16)
>> +#define PALETTE_GREEN_MASK      REG_GENMASK(15, 8)
>> +#define PALETTE_BLUE_MASK       REG_GENMASK(7, 0)
>> #define PALETTE(pipe, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
>> 				      _PICK((pipe), _PALETTE_A,		\
>> 					    _PALETTE_B, _CHV_PALETTE_C) + \
>> --
>> 1.9.1


-- 
~Swati Sharma


--------------968DB7B8F6D1E690173030D3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix"><tt>On 28-Aug-19 9:38 PM, Shankar, Uma
        wrote:</tt><br>
    </div>
    <blockquote type="cite"
cite="mid:E7C9878FBA1C6D42A1CA3F62AEB6945F821D39F8@BGSMSX104.gar.corp.intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: Sharma, Swati2
Sent: Monday, August 26, 2019 11:56 AM
To: <a class="moz-txt-link-abbreviated" href="mailto:intel-gfx@lists.freedesktop.org">intel-gfx@lists.freedesktop.org</a>
Cc: Nikula, Jani <a class="moz-txt-link-rfc2396E" href="mailto:jani.nikula@intel.com">&lt;jani.nikula@intel.com&gt;</a>; Sharma, Shashank
<a class="moz-txt-link-rfc2396E" href="mailto:shashank.sharma@intel.com">&lt;shashank.sharma@intel.com&gt;</a>; Manna, Animesh <a class="moz-txt-link-rfc2396E" href="mailto:animesh.manna@intel.com">&lt;animesh.manna@intel.com&gt;</a>;
Nautiyal, Ankit K <a class="moz-txt-link-rfc2396E" href="mailto:ankit.k.nautiyal@intel.com">&lt;ankit.k.nautiyal@intel.com&gt;</a>; <a class="moz-txt-link-abbreviated" href="mailto:daniel.vetter@ffwll.ch">daniel.vetter@ffwll.ch</a>;
<a class="moz-txt-link-abbreviated" href="mailto:ville.syrjala@linux.intel.com">ville.syrjala@linux.intel.com</a>; Shankar, Uma <a class="moz-txt-link-rfc2396E" href="mailto:uma.shankar@intel.com">&lt;uma.shankar@intel.com&gt;</a>; Sharma,
Swati2 <a class="moz-txt-link-rfc2396E" href="mailto:swati2.sharma@intel.com">&lt;swati2.sharma@intel.com&gt;</a>
Subject: [v8][PATCH 06/10] drm/i91/display: Extract i965_read_luts()
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Typo in i915.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
For i965, have hw read out to create hw blob of gamma lut values.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">Instead of "have", I feel "add" would sound better.

Also, don't drop version history.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Signed-off-by: Swati Sharma <a class="moz-txt-link-rfc2396E" href="mailto:swati2.sharma@intel.com">&lt;swati2.sharma@intel.com&gt;</a>
---
drivers/gpu/drm/i915/display/intel_color.c | 39 ++++++++++++++++++++++++++++++
drivers/gpu/drm/i915/i915_reg.h            |  3 +++
2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c
b/drivers/gpu/drm/i915/display/intel_color.c
index 45e0ee8..c77bbed 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1571,6 +1571,44 @@ void i9xx_read_luts(struct intel_crtc_state *crtc_state)
	crtc_state-&gt;base.gamma_lut = i9xx_read_lut_8(crtc_state);  }

+static struct drm_property_blob *
+i965_read_gamma_lut_10p6(struct intel_crtc_state *crtc_state) {
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
You can rename this as " i965_read_lut_10p6" as pointed by Ville as well.
Will help extend for de-gamma later and can be re-used.</pre>
    </blockquote>
    <tt>Did this since we may need to create a new func for degamma
      readout and<br>
      this can't be reused.<br>
    </tt>
    <blockquote type="cite"
cite="mid:E7C9878FBA1C6D42A1CA3F62AEB6945F821D39F8@BGSMSX104.gar.corp.intel.com">
      <pre class="moz-quote-pre" wrap="">

Also make these const, as recommended by Ville. 

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;base.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
+	u32 i, val1, val2, lut_size = INTEL_INFO(dev_priv)-&gt;color.gamma_lut_size;
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Move to next line to honour 80 character limits.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+	enum pipe pipe = crtc-&gt;pipe;
+	struct drm_property_blob *blob;
+	struct drm_color_lut *blob_data;
+
+	blob = drm_property_create_blob(&amp;dev_priv-&gt;drm,
+					sizeof(struct drm_color_lut) * lut_size,
+					NULL);
+	if (IS_ERR(blob))
+		return NULL;
+
+	blob_data = blob-&gt;data;
+
+	for (i = 0; i &lt; lut_size - 1; i++) {
+		val1 = I915_READ(PALETTE(pipe, 2 * i + 0));
+		val2 = I915_READ(PALETTE(pipe, 2 * i + 1));
+
+		blob_data[i].red = REG_FIELD_GET(PALETTE_RED_MASK, val1) &lt;&lt; 8 |
REG_FIELD_GET(PALETTE_RED_MASK, val2);
+		blob_data[i].green = REG_FIELD_GET(PALETTE_GREEN_MASK, val1)
&lt;&lt; 8 | REG_FIELD_GET(PALETTE_GREEN_MASK, val2);
+		blob_data[i].blue = REG_FIELD_GET(PALETTE_BLUE_MASK, val1) &lt;&lt; 8
| REG_FIELD_GET(PALETTE_BLUE_MASK, val2) ;
+	}
+
+	return blob;
+}
+
+static void i965_read_luts(struct intel_crtc_state *crtc_state) {
+	if (crtc_state-&gt;gamma_mode == GAMMA_MODE_MODE_8BIT)
+		crtc_state-&gt;base.gamma_lut = i9xx_read_lut_8(crtc_state);
+	else
+		crtc_state-&gt;base.gamma_lut =
i965_read_gamma_lut_10p6(crtc_state);
+}
+
void intel_color_init(struct intel_crtc *crtc)  {
	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev); @@ -1586,6
+1624,7 @@ void intel_color_init(struct intel_crtc *crtc)
		} else if (INTEL_GEN(dev_priv) &gt;= 4) {
			dev_priv-&gt;display.color_check = i9xx_color_check;
			dev_priv-&gt;display.color_commit = i9xx_color_commit;
+			dev_priv-&gt;display.read_luts = i965_read_luts;
			dev_priv-&gt;display.load_luts = i965_load_luts;
		} else {
			dev_priv-&gt;display.color_check = i9xx_color_check; diff --git
a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
b687faa..b30b0c6b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3558,6 +3558,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
#define _PALETTE_A		0xa000
#define _PALETTE_B		0xa800
#define _CHV_PALETTE_C		0xc000
+#define PALETTE_RED_MASK        REG_GENMASK(23, 16)
+#define PALETTE_GREEN_MASK      REG_GENMASK(15, 8)
+#define PALETTE_BLUE_MASK       REG_GENMASK(7, 0)
#define PALETTE(pipe, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
				      _PICK((pipe), _PALETTE_A,		\
					    _PALETTE_B, _CHV_PALETTE_C) + \
--
1.9.1
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
    <br>
    <pre class="moz-signature" cols="72">-- 
~Swati Sharma
</pre>
  </body>
</html>

--------------968DB7B8F6D1E690173030D3--

--===============1592553478==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1592553478==--
