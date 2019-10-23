Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 146A9E22F7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 20:59:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBA436EB7A;
	Wed, 23 Oct 2019 18:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F4E6EB7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 18:59:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 11:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; 
 d="scan'208,217";a="209979415"
Received: from cbackhau-mobl1.ger.corp.intel.com (HELO [10.252.56.64])
 ([10.252.56.64])
 by fmsmga001.fm.intel.com with ESMTP; 23 Oct 2019 11:59:04 -0700
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 =?UTF-8?Q?Tapani_P=c3=a4lli?= <tapani.palli@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191023120618.5344-1-tapani.palli@intel.com>
 <87d0enl9ui.fsf@gaia.fi.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <fb16d56f-b78e-0f5b-f771-c26e0ee41707@intel.com>
Date: Wed, 23 Oct 2019 21:59:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87d0enl9ui.fsf@gaia.fi.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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
Content-Type: multipart/mixed; boundary="===============0244870833=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0244870833==
Content-Type: multipart/alternative;
 boundary="------------FAD3A9424535686823AEBCB9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FAD3A9424535686823AEBCB9
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 23/10/2019 19:12, Mika Kuoppala wrote:
> Tapani Pälli <tapani.palli@intel.com> writes:
>
>> As with commit 3fe0107e45ab, this change fixes multiple tests that are
>> using the invocation counts. Documentation doesn't list the workaround
>> for TGL but applying it fixes the tests.
>>
>> Signed-off-by: Tapani Pälli <tapani.palli@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index af8a8183154a..86ded203b2dd 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -1215,6 +1215,26 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
>>   
>>   static void tgl_whitelist_build(struct intel_engine_cs *engine)
>>   {
>> +	struct i915_wa_list *w = &engine->whitelist;
>> +
>> +	switch (engine->class) {
>> +	case RENDER_CLASS:
>> +		/*
>> +		 * WaAllowPMDepthAndInvocationCountAccessFromUMD:tgl
> Tried to find info about this but failed.


It probably got renamed, it started with CFL stepping C+ and wasn't 
listed for ICL.

¯\_(ツ)_/¯


-Lionel

>
>> +		 *
>> +		 * This covers 4 registers which are next to one another :
>> +		 *   - PS_INVOCATION_COUNT
>> +		 *   - PS_INVOCATION_COUNT_UDW
>> +		 *   - PS_DEPTH_COUNT
>> +		 *   - PS_DEPTH_COUNT_UDW
>> +		 */
>> +		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
>> +				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
>> +				  RING_FORCE_TO_NONPRIV_RANGE_4);
> The register spec is identical with gen11 so ok to whitelist.
>
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>
>> +		break;
>> +	default:
>> +		break;
>> +	}
>>   }
>>   
>>   void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>> -- 
>> 2.21.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



--------------FAD3A9424535686823AEBCB9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 23/10/2019 19:12, Mika Kuoppala
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:87d0enl9ui.fsf@gaia.fi.intel.com">
      <pre class="moz-quote-pre" wrap="">Tapani Pälli <a class="moz-txt-link-rfc2396E" href="mailto:tapani.palli@intel.com">&lt;tapani.palli@intel.com&gt;</a> writes:

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">As with commit 3fe0107e45ab, this change fixes multiple tests that are
using the invocation counts. Documentation doesn't list the workaround
for TGL but applying it fixes the tests.

Signed-off-by: Tapani Pälli <a class="moz-txt-link-rfc2396E" href="mailto:tapani.palli@intel.com">&lt;tapani.palli@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index af8a8183154a..86ded203b2dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1215,6 +1215,26 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 
 static void tgl_whitelist_build(struct intel_engine_cs *engine)
 {
+	struct i915_wa_list *w = &amp;engine-&gt;whitelist;
+
+	switch (engine-&gt;class) {
+	case RENDER_CLASS:
+		/*
+		 * WaAllowPMDepthAndInvocationCountAccessFromUMD:tgl
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Tried to find info about this but failed.</pre>
    </blockquote>
    <p><br>
    </p>
    <p>It probably got renamed, it started with CFL stepping C+ and
      wasn't listed for ICL.</p>
    <p><span style="color: rgb(0, 0, 0); font-family: &quot;helvetica
        neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: start; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        text-decoration-style: initial; text-decoration-color: initial;
        display: inline !important; float: none;">¯\_(ツ)_/¯</span></p>
    <p><br>
    </p>
    <p>-Lionel<br>
    </p>
    <blockquote type="cite" cite="mid:87d0enl9ui.fsf@gaia.fi.intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+		 *
+		 * This covers 4 registers which are next to one another :
+		 *   - PS_INVOCATION_COUNT
+		 *   - PS_INVOCATION_COUNT_UDW
+		 *   - PS_DEPTH_COUNT
+		 *   - PS_DEPTH_COUNT_UDW
+		 */
+		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
+				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
+				  RING_FORCE_TO_NONPRIV_RANGE_4);
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
The register spec is identical with gen11 so ok to whitelist.

Reviewed-by: Mika Kuoppala <a class="moz-txt-link-rfc2396E" href="mailto:mika.kuoppala@linux.intel.com">&lt;mika.kuoppala@linux.intel.com&gt;</a>

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">+		break;
+	default:
+		break;
+	}
 }
 
 void intel_engine_init_whitelist(struct intel_engine_cs *engine)
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Intel-gfx@lists.freedesktop.org">Intel-gfx@lists.freedesktop.org</a>
<a class="moz-txt-link-freetext" href="https://lists.freedesktop.org/mailman/listinfo/intel-gfx">https://lists.freedesktop.org/mailman/listinfo/intel-gfx</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
Intel-gfx mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Intel-gfx@lists.freedesktop.org">Intel-gfx@lists.freedesktop.org</a>
<a class="moz-txt-link-freetext" href="https://lists.freedesktop.org/mailman/listinfo/intel-gfx">https://lists.freedesktop.org/mailman/listinfo/intel-gfx</a></pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------FAD3A9424535686823AEBCB9--

--===============0244870833==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0244870833==--
