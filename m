Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17549A0B82
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 22:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D51891C4;
	Wed, 28 Aug 2019 20:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17DD3891AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 20:29:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 13:29:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; 
 d="scan'208,217";a="171668383"
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.252.71.22])
 ([10.252.71.22])
 by orsmga007.jf.intel.com with ESMTP; 28 Aug 2019 13:29:47 -0700
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-6-git-send-email-swati2.sharma@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F821D39B9@BGSMSX104.gar.corp.intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <464dc066-87b1-0e67-e9bd-fbef2e6bdb53@intel.com>
Date: Thu, 29 Aug 2019 01:59:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D39B9@BGSMSX104.gar.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v8][PATCH 05/10] drm/i915/display: Extract
 i9xx_read_luts()
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
Content-Type: multipart/mixed; boundary="===============0069583200=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0069583200==
Content-Type: multipart/alternative;
 boundary="------------DC3170668AF6CB5994D1BAEC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DC3170668AF6CB5994D1BAEC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28-Aug-19 9:25 PM, Shankar, Uma wrote:
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
>> Subject: [v8][PATCH 05/10] drm/i915/display: Extract i9xx_read_luts()
>>
>> For the legacy gamma, have hw read out to create hw blob of gamma lut values.
> Would be better if we define platforms for which this is applicable (I mean what all is
> considered legacy here)
>
>> Also, add function intel_color_lut_pack to convert hw value with given bit_precision
> Wrap this up within 75 characters.
>
>> to lut property val.
> Keep the version history, don't drop that.
>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> ---
>> drivers/gpu/drm/i915/display/intel_color.c | 51 ++++++++++++++++++++++++++++++
>> drivers/gpu/drm/i915/i915_reg.h            |  3 ++
>> 2 files changed, 54 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
>> b/drivers/gpu/drm/i915/display/intel_color.c
>> index 27727a1..45e0ee8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> @@ -1521,6 +1521,56 @@ bool intel_color_lut_equal(struct drm_property_blob
>> *blob1,
>> 	return true;
>> }
>>
>> +/* convert hw value with given bit_precision to lut property val */
>> +static u32 intel_color_lut_pack(u32 val, u32 bit_precision) {
>> +	u32 max = 0xffff >> (16 - bit_precision);
>> +
>> +	val = clamp_val(val, 0, max);
>> +
>> +	if (bit_precision < 16)
>> +		val <<= 16 - bit_precision;
>> +
>> +	return val;
>> +}
>> +
>> +static struct drm_property_blob *
>> +i9xx_read_lut_8(struct intel_crtc_state *crtc_state) {
> Would be good to add some comments describing the rationale of this
> function. Why 8 etc.
Func is written similar to load luts for i9xx.Therefore didn't explain 8.
Do I need to add comment for all the functions/platform? Won't commit 
message
sufficient enough?
>
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
>> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> +	enum pipe pipe = crtc->pipe;
>> +	struct drm_property_blob *blob;
>> +	struct drm_color_lut *blob_data;
>> +	u32 i, val;
>> +
>> +	blob = drm_property_create_blob(&dev_priv->drm,
>> +					sizeof(struct drm_color_lut) * 256,
> Have a macro for 256. Explain why 256, add comments.
This is similar to load luts, since nothing new i added so didn't give
explanation. I can re-use LEGACY_LUT_LENGTH for this, since wanted these
functions to be similar to load_luts, therefore kept same.
>
>> +					NULL);
>> +	if (IS_ERR(blob))
>> +		return NULL;
>> +
>> +	blob_data = blob->data;
>> +
>> +	for (i = 0; i < 256; i++) {
> Add the macro for 256.
Macro already there LEGACY_LUT_LENGTH. Should i reuse that?
>
>> +		if (HAS_GMCH(dev_priv))
>> +			val = I915_READ(PALETTE(pipe, i));
>> +		else
>> +			val = I915_READ(LGC_PALETTE(pipe, i));
>> +
>> +		blob_data[i].red =
>> intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_RED_MASK, val), 8);
>> +		blob_data[i].green =
>> intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_GREEN_MASK, val), 8);
>> +		blob_data[i].blue =
>> intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_BLUE_MASK, val), 8);
>> +	}
>> +
>> +	return blob;
>> +}
>> +
>> +void i9xx_read_luts(struct intel_crtc_state *crtc_state) {
>> +	crtc_state->base.gamma_lut = i9xx_read_lut_8(crtc_state); }
>> +
>> void intel_color_init(struct intel_crtc *crtc)  {
>> 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev); @@ -1541,6
>> +1591,7 @@ void intel_color_init(struct intel_crtc *crtc)
>> 			dev_priv->display.color_check = i9xx_color_check;
>> 			dev_priv->display.color_commit = i9xx_color_commit;
>> 			dev_priv->display.load_luts = i9xx_load_luts;
>> +			dev_priv->display.read_luts = i9xx_read_luts;
>> 		}
>> 	} else {
>> 		if (INTEL_GEN(dev_priv) >= 11)
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
>> a092b34..b687faa 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -7192,6 +7192,9 @@ enum {
>> /* legacy palette */
>> #define _LGC_PALETTE_A           0x4a000
>> #define _LGC_PALETTE_B           0x4a800
>> +#define LGC_PALETTE_RED_MASK     REG_GENMASK(23, 16)
>> +#define LGC_PALETTE_GREEN_MASK   REG_GENMASK(15, 8)
>> +#define LGC_PALETTE_BLUE_MASK    REG_GENMASK(7, 0)
>> #define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A,
>> _LGC_PALETTE_B) + (i) * 4)
>>
>> /* ilk/snb precision palette */
>> --
>> 1.9.1


-- 
~Swati Sharma


--------------DC3170668AF6CB5994D1BAEC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix"><tt>On 28-Aug-19 9:25 PM, Shankar, Uma
        wrote:</tt><br>
    </div>
    <blockquote type="cite"
cite="mid:E7C9878FBA1C6D42A1CA3F62AEB6945F821D39B9@BGSMSX104.gar.corp.intel.com">
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
Subject: [v8][PATCH 05/10] drm/i915/display: Extract i9xx_read_luts()

For the legacy gamma, have hw read out to create hw blob of gamma lut values.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Would be better if we define platforms for which this is applicable (I mean what all is
considered legacy here)

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Also, add function intel_color_lut_pack to convert hw value with given bit_precision
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Wrap this up within 75 characters.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">to lut property val.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Keep the version history, don't drop that.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Signed-off-by: Swati Sharma <a class="moz-txt-link-rfc2396E" href="mailto:swati2.sharma@intel.com">&lt;swati2.sharma@intel.com&gt;</a>
---
drivers/gpu/drm/i915/display/intel_color.c | 51 ++++++++++++++++++++++++++++++
drivers/gpu/drm/i915/i915_reg.h            |  3 ++
2 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c
b/drivers/gpu/drm/i915/display/intel_color.c
index 27727a1..45e0ee8 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1521,6 +1521,56 @@ bool intel_color_lut_equal(struct drm_property_blob
*blob1,
	return true;
}

+/* convert hw value with given bit_precision to lut property val */
+static u32 intel_color_lut_pack(u32 val, u32 bit_precision) {
+	u32 max = 0xffff &gt;&gt; (16 - bit_precision);
+
+	val = clamp_val(val, 0, max);
+
+	if (bit_precision &lt; 16)
+		val &lt;&lt;= 16 - bit_precision;
+
+	return val;
+}
+
+static struct drm_property_blob *
+i9xx_read_lut_8(struct intel_crtc_state *crtc_state) {
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Would be good to add some comments describing the rationale of this
function. Why 8 etc.</pre>
    </blockquote>
    <tt>Func is written similar to load luts for i9xx.Therefore didn't
      explain 8.<br>
      Do I need to add comment for all the functions/platform? Won't
      commit message <br>
      sufficient enough?<br>
    </tt>
    <blockquote type="cite"
cite="mid:E7C9878FBA1C6D42A1CA3F62AEB6945F821D39B9@BGSMSX104.gar.corp.intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+	struct intel_crtc *crtc = to_intel_crtc(crtc_state-&gt;base.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev);
+	enum pipe pipe = crtc-&gt;pipe;
+	struct drm_property_blob *blob;
+	struct drm_color_lut *blob_data;
+	u32 i, val;
+
+	blob = drm_property_create_blob(&amp;dev_priv-&gt;drm,
+					sizeof(struct drm_color_lut) * 256,
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Have a macro for 256. Explain why 256, add comments.</pre>
    </blockquote>
    <tt>This is similar to load luts, since nothing new i added so
      didn't give <br>
      explanation. I can re-use LEGACY_LUT_LENGTH for this, since wanted
      these<br>
      functions to be similar to load_luts, therefore kept same.<br>
    </tt>
    <blockquote type="cite"
cite="mid:E7C9878FBA1C6D42A1CA3F62AEB6945F821D39B9@BGSMSX104.gar.corp.intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+					NULL);
+	if (IS_ERR(blob))
+		return NULL;
+
+	blob_data = blob-&gt;data;
+
+	for (i = 0; i &lt; 256; i++) {
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Add the macro for 256.</pre>
    </blockquote>
    <tt>Macro already there LEGACY_LUT_LENGTH. Should i reuse that?</tt><br>
    <blockquote type="cite"
cite="mid:E7C9878FBA1C6D42A1CA3F62AEB6945F821D39B9@BGSMSX104.gar.corp.intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+		if (HAS_GMCH(dev_priv))
+			val = I915_READ(PALETTE(pipe, i));
+		else
+			val = I915_READ(LGC_PALETTE(pipe, i));
+
+		blob_data[i].red =
intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_RED_MASK, val), 8);
+		blob_data[i].green =
intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_GREEN_MASK, val), 8);
+		blob_data[i].blue =
intel_color_lut_pack(REG_FIELD_GET(LGC_PALETTE_BLUE_MASK, val), 8);
+	}
+
+	return blob;
+}
+
+void i9xx_read_luts(struct intel_crtc_state *crtc_state) {
+	crtc_state-&gt;base.gamma_lut = i9xx_read_lut_8(crtc_state); }
+
void intel_color_init(struct intel_crtc *crtc)  {
	struct drm_i915_private *dev_priv = to_i915(crtc-&gt;base.dev); @@ -1541,6
+1591,7 @@ void intel_color_init(struct intel_crtc *crtc)
			dev_priv-&gt;display.color_check = i9xx_color_check;
			dev_priv-&gt;display.color_commit = i9xx_color_commit;
			dev_priv-&gt;display.load_luts = i9xx_load_luts;
+			dev_priv-&gt;display.read_luts = i9xx_read_luts;
		}
	} else {
		if (INTEL_GEN(dev_priv) &gt;= 11)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
a092b34..b687faa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7192,6 +7192,9 @@ enum {
/* legacy palette */
#define _LGC_PALETTE_A           0x4a000
#define _LGC_PALETTE_B           0x4a800
+#define LGC_PALETTE_RED_MASK     REG_GENMASK(23, 16)
+#define LGC_PALETTE_GREEN_MASK   REG_GENMASK(15, 8)
+#define LGC_PALETTE_BLUE_MASK    REG_GENMASK(7, 0)
#define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A,
_LGC_PALETTE_B) + (i) * 4)

/* ilk/snb precision palette */
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

--------------DC3170668AF6CB5994D1BAEC--

--===============0069583200==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0069583200==--
