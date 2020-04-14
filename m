Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C21D1A77C6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 11:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 190506E1E5;
	Tue, 14 Apr 2020 09:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6B66E1E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 09:50:59 +0000 (UTC)
IronPort-SDR: goGHAsMb9nBCbAfSWfP9hsKFkyxrksjQhIgmisdS4AgnHjsnVmzO8FSv1NUWY/CAbGzaqHvfUl
 93NBoglDSF0Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 02:50:58 -0700
IronPort-SDR: C7yyN7jKhgTF1iBT/ism50fNB8lBmYObnqG+jI0Qc8fi6l5J5lLMeFEc9jbi9ATVbZypA4dGWq
 IrAR3Alaf4Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; 
 d="scan'208,217";a="427009290"
Received: from marinasm-mobl1.ccr.corp.intel.com (HELO [10.252.42.43])
 ([10.252.42.43])
 by orsmga005.jf.intel.com with ESMTP; 14 Apr 2020 02:50:57 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20200409091706.690045-1-lionel.g.landwerlin@intel.com>
 <20200409091706.690045-3-lionel.g.landwerlin@intel.com>
 <20200413233409.GC61072@orsosgc001.amr.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <64e3375e-5a79-8545-679e-f81e4e0a22f5@intel.com>
Date: Tue, 14 Apr 2020 12:50:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200413233409.GC61072@orsosgc001.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 3/4] drm/i915/perf: prepare driver to
 receive multiple ctx handles
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
Content-Type: multipart/mixed; boundary="===============0505979736=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0505979736==
Content-Type: multipart/alternative;
 boundary="------------633AB7FE28ED48CD92268204"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------633AB7FE28ED48CD92268204
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/04/2020 02:34, Umesh Nerlige Ramappa wrote:
>> -         * When set globally, we use a low priority kernel context,
>> -         * so it will effectively take effect when idle.
>> -         */
>> -        ret = emit_oa_config(stream, config, ce,
>> +        ret = emit_oa_config(stream, config,
>> +                     stream->config_context,
>>                      active, false /* global */);
>>         if (ret)
>>             goto err_active;
>>
>> -        ret = emit_oa_config(stream, config, ce,
>> +        ret = emit_oa_config(stream, config,
>> +                     stream->config_context,
>>                      active, true /* global */);
>
> I see emit_oa_config is called twice in all places (except the for 
> loop below). Maybe all those places, these 2 calls can be wrapped into 
> one function.
>
> Thanks,
> Umesh 

Good point, I'll add a helper.


Thanks,


-Lionel


--------------633AB7FE28ED48CD92268204
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 14/04/2020 02:34, Umesh Nerlige
      Ramappa wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200413233409.GC61072@orsosgc001.amr.corp.intel.com">
      <blockquote type="cite" style="color: #000000;">-         * When
        set globally, we use a low priority kernel context,
        <br>
        -         * so it will effectively take effect when idle.
        <br>
        -         */
        <br>
        -        ret = emit_oa_config(stream, config, ce,
        <br>
        +        ret = emit_oa_config(stream, config,
        <br>
        +                     stream-&gt;config_context,
        <br>
                             active, false /* global */);
        <br>
                if (ret)
        <br>
                    goto err_active;
        <br>
        <br>
        -        ret = emit_oa_config(stream, config, ce,
        <br>
        +        ret = emit_oa_config(stream, config,
        <br>
        +                     stream-&gt;config_context,
        <br>
                             active, true /* global */);
        <br>
      </blockquote>
      <br>
      I see emit_oa_config is called twice in all places (except the for
      loop below). Maybe all those places, these 2 calls can be wrapped
      into one function.
      <br>
      <br>
      Thanks,
      <br>
      Umesh
    </blockquote>
    <p>Good point, I'll add a helper.</p>
    <p><br>
    </p>
    <p>Thanks,</p>
    <p><br>
    </p>
    <p>-Lionel<br>
    </p>
  </body>
</html>

--------------633AB7FE28ED48CD92268204--

--===============0505979736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0505979736==--
