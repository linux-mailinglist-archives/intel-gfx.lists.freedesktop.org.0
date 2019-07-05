Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F2E60624
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 14:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC476E4A1;
	Fri,  5 Jul 2019 12:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA576E4A1
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 12:43:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 05:43:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,455,1557212400"; 
 d="scan'208,217";a="169667726"
Received: from ngabryex-mobl1.ger.corp.intel.com (HELO [10.249.141.77])
 ([10.249.141.77])
 by orsmga006.jf.intel.com with ESMTP; 05 Jul 2019 05:43:57 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190705123057.19346-1-chris@chris-wilson.co.uk>
 <0ff02900-acdb-12a2-84d4-8df69e2e08cf@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b8bbe8f4-c70a-6df9-1336-b7511fe40bd8@intel.com>
Date: Fri, 5 Jul 2019 15:43:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <0ff02900-acdb-12a2-84d4-8df69e2e08cf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/oa: Reconfigure contexts on the fly
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
Content-Type: multipart/mixed; boundary="===============1385922290=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1385922290==
Content-Type: multipart/alternative;
 boundary="------------14FC9BBC310E86D54C6E38CB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------14FC9BBC310E86D54C6E38CB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/07/2019 15:42, Lionel Landwerlin wrote:
>>
>> +
>> +static int
>> +gen8_store_flex(struct i915_request *rq,
>> +        struct intel_context *ce,
>> +        const struct flex *flex, unsigned int count)
>> +{
>> +    u32 offset;
>> +    u32 *cs;
>> +
>> +    cs = intel_ring_begin(rq, 4 * count);
>> +    if (IS_ERR(cs))
>> +        return PTR_ERR(cs);
>
>
> Is the right of the kernel context large enough to hold the MI_SDIs 
> for all the contexts?
>
>

s/right/ring/



--------------14FC9BBC310E86D54C6E38CB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 05/07/2019 15:42, Lionel Landwerlin
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0ff02900-acdb-12a2-84d4-8df69e2e08cf@intel.com">
      <blockquote type="cite" style="color: #000000;"><br>
        +
        <br>
        +static int
        <br>
        +gen8_store_flex(struct i915_request *rq,
        <br>
        +        struct intel_context *ce,
        <br>
        +        const struct flex *flex, unsigned int count)
        <br>
        +{
        <br>
        +    u32 offset;
        <br>
        +    u32 *cs;
        <br>
        +
        <br>
        +    cs = intel_ring_begin(rq, 4 * count);
        <br>
        +    if (IS_ERR(cs))
        <br>
        +        return PTR_ERR(cs);
        <br>
      </blockquote>
      <br>
      <br>
      Is the right of the kernel context large enough to hold the
      MI_SDIs for all the contexts?
      <br>
      <br>
      <br>
    </blockquote>
    <p><br>
    </p>
    <p>s/right/ring/</p>
    <p><br>
    </p>
  </body>
</html>

--------------14FC9BBC310E86D54C6E38CB--

--===============1385922290==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1385922290==--
