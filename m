Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5961CD4BB
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9618B6E400;
	Mon, 11 May 2020 09:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11DE16E400
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:19:34 +0000 (UTC)
IronPort-SDR: qaRKaCqNfcbGCnFfIox2Ag4azuG24AUAWss5FSKIJRBkoUEkb++7L+Y/DE0mLhEpCpkpQTy2Yi
 WYsm7RBum5QA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 02:19:33 -0700
IronPort-SDR: sRghqhedUbTNN9LcMSNl20wzJbUuOymLgnLmdKaFPEHAOg3bgFVg4jAJ+joG6445xx8HksmzIA
 PPIosyC93aFA==
X-IronPort-AV: E=Sophos;i="5.73,379,1583222400"; 
 d="scan'208,217";a="436630436"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.215.120.34])
 ([10.215.120.34])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 02:19:30 -0700
To: Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200506131112.19581-1-animesh.manna@intel.com>
 <22382e1c-e5e1-f8c8-74f3-83bd6b649978@linux.intel.com>
 <a8a54264-6fa0-1b21-a467-cd3a5e47761b@intel.com> <87mu6e6eky.fsf@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <91097a91-aee2-babc-520c-2721c764f6f0@intel.com>
Date: Mon, 11 May 2020 14:49:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <87mu6e6eky.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/dsb: Pre allocate and late
 cleanup of cmd buffer
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============1527372819=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1527372819==
Content-Type: multipart/alternative;
 boundary="------------AC1F27AEBC5AEF7C18A699E8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AC1F27AEBC5AEF7C18A699E8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11-05-2020 14:19, Jani Nikula wrote:
> On Mon, 11 May 2020, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> On 08-05-2020 16:44, Maarten Lankhorst wrote:
>>> Op 06-05-2020 om 15:11 schreef Animesh Manna:
>>>> -	struct intel_dsb *dsb = intel_dsb_get(crtc);
>>>> +	struct intel_dsb *dsb = (struct intel_dsb *)&crtc_state->dsb;
>>> Why the cast? Unconstify crtc_state as it's obviously not const any more.
>> Dsb cmd buffer filling is done in load_lut function, so need to
>> unconstify. Otherwise throwing warning during compilation.
> You shouldn't just throw the const away like that using a cast. It's a
> bad idea. Don't do it.

Hi Jani/Maarten,

DSB instance was kept under intel_crtc to avoid typecasting. I do not know a way out to keep dsb-instance in intel_crtc_state and fill the dsb-cmd-buf using load-lut api.
Maybe avoid using current load-lut api and create a separate api to fill the cmd_buf can be a solution. Can you please suggest.

Regards,
Animesh

>
> BR,
> Jani.
>
>

--------------AC1F27AEBC5AEF7C18A699E8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11-05-2020 14:19, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:87mu6e6eky.fsf@intel.com">
      <pre class="moz-quote-pre" wrap="">On Mon, 11 May 2020, "Manna, Animesh" <a class="moz-txt-link-rfc2396E" href="mailto:animesh.manna@intel.com">&lt;animesh.manna@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On 08-05-2020 16:44, Maarten Lankhorst wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Op 06-05-2020 om 15:11 schreef Animesh Manna:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">-	struct intel_dsb *dsb = intel_dsb_get(crtc);
+	struct intel_dsb *dsb = (struct intel_dsb *)&amp;crtc_state-&gt;dsb;
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">Why the cast? Unconstify crtc_state as it's obviously not const any more.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Dsb cmd buffer filling is done in load_lut function, so need to
unconstify. Otherwise throwing warning during compilation.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
You shouldn't just throw the const away like that using a cast. It's a
bad idea. Don't do it.</pre>
    </blockquote>
    <pre>Hi Jani/Maarten,

DSB instance was kept under intel_crtc to avoid typecasting. I do not know a way out to keep dsb-instance in intel_crtc_state and fill the dsb-cmd-buf using load-lut api.
Maybe avoid using current load-lut api and create a separate api to fill the cmd_buf can be a solution. Can you please suggest.

Regards,
Animesh
</pre>
    <blockquote type="cite" cite="mid:87mu6e6eky.fsf@intel.com">
      <pre class="moz-quote-pre" wrap="">

BR,
Jani.


</pre>
    </blockquote>
  </body>
</html>

--------------AC1F27AEBC5AEF7C18A699E8--

--===============1527372819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1527372819==--
