Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 214CB32D0A5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 11:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7BE6EA16;
	Thu,  4 Mar 2021 10:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF32B6EA16
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 10:27:40 +0000 (UTC)
IronPort-SDR: XRFDa+zxU1XsSTbAtYB0I9FFXNhczPiP3bldL11rhzzw6f6S7mv4asimccMn3pklCE2qu9kwYd
 oxMMYw8jo00w==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="207095284"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; 
 d="scan'208,217";a="207095284"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 02:27:40 -0800
IronPort-SDR: zMdZhMoeutGsQ9yxtir2m6qiwJa4hYv6aMAu8pW/tvEyytTcEyNJHI6WrlUzScOC9ljpMfR5AY
 bGLBb36YEuSg==
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; 
 d="scan'208,217";a="407720735"
Received: from mtelelek-mobl.ger.corp.intel.com (HELO [10.249.41.65])
 ([10.249.41.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 02:27:38 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210303212800.43787-1-umesh.nerlige.ramappa@intel.com>
 <161481659467.25897.2525788939236038076@build.alporthouse.com>
 <81d17b5e-5b32-69b9-67bb-00da8469d88a@intel.com>
 <161484828635.28586.889038613448637986@build.alporthouse.com>
 <1e257505-83a5-2d4a-5f0b-7d0fc939cb9b@intel.com>
 <161485169130.28586.8322916604277505617@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d74a97a5-d5a7-aacb-ec5b-4067a91b673b@intel.com>
Date: Thu, 4 Mar 2021 12:27:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <161485169130.28586.8322916604277505617@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] i915/query: Correlate engine and cpu
 timestamps with better accuracy
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
Content-Type: multipart/mixed; boundary="===============0439469155=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============0439469155==
Content-Type: multipart/alternative;
 boundary="------------1513490E046159DA44C43228"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1513490E046159DA44C43228
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/2021 11:54, Chris Wilson wrote:
>>>> Actually if we want the best accuracy we can just deal with the lower dword.
>>> Accuracy of what? The lower dword read perhaps, or the accuracy of the
>>> sample point for the combined reads for the timestamp, which is closer
>>> to an external observer (cpu_clock() implies reference to an external
>>> observer).
>>>
>>> The two clock samples are not even necessarily closely related due to the
>>> nmi adjustments. If you wanted an unadjusted elapsed time for the read
>>> you can use local_clock() then return the chosen cpu_clock() before plus
>>> the elapsed delta from around the read as the estimated error.
>>>
>>> cpu_ts[1] = local_clock();
>>> cpu_ts[0] = cpu_clock();
>>> lower = intel_uncore_read_fw(uncore, lower_reg);
>>> cpu_ts[1] = local_clock() - cpu_ts[1];
>>> -Chris
>> Thanks,
>>
>>
>> I meant the accuracy of having 2 samples GPU/CPU as close as possible.
>>
>> Avoiding to account another register read in there is nice.
>>
>>
>> My testing was also mostly done with CLOCK_MONOTONIC_RAW which doesn't
>> seem to be adjusted like CLOCK_MONOTONIC so maybe that why I didn't see
>> the issue.
> _RAW is still adjusted for skews, just not coupled into the ntp feedback.
> That is less obvious than the other clocks, and why it's preferred for
> comparing against other HW sources. But two reads of _RAW are only
> monotonic, not necessarily on the same time base. local_clock() is
> tsc/arat, so counting the CPU cycles between the two reads with the
> frequency (at least on x86) held constant (and arat should be frequency
> invariant).
>
> If we want much better accuracy, we are supposed to use cyclecounter_t
> and the system_device_crosststamp.
> -Chris

Thanks for the pointers.

I think people are mostly trying to map what's coming out of OA or 
queries from the various command streamers back to perf/ftrace.

As far I know perf will only let you select a clockid.


So maybe cyclecounter_t is not that useful atm.


-Lionel


--------------1513490E046159DA44C43228
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 04/03/2021 11:54, Chris Wilson
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:161485169130.28586.8322916604277505617@build.alporthouse.com">
      <blockquote type="cite" style="color: #007cff;">
        <blockquote type="cite" style="color: #007cff;">
          <blockquote type="cite" style="color: #007cff;">
            <pre class="moz-quote-pre" wrap="">Actually if we want the best accuracy we can just deal with the lower dword.
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">Accuracy of what? The lower dword read perhaps, or the accuracy of the
sample point for the combined reads for the timestamp, which is closer
to an external observer (cpu_clock() implies reference to an external
observer).

The two clock samples are not even necessarily closely related due to the
nmi adjustments. If you wanted an unadjusted elapsed time for the read
you can use local_clock() then return the chosen cpu_clock() before plus
the elapsed delta from around the read as the estimated error.

cpu_ts[1] = local_clock();
cpu_ts[0] = cpu_clock();
lower = intel_uncore_read_fw(uncore, lower_reg);
cpu_ts[1] = local_clock() - cpu_ts[1];
-Chris
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">Thanks,


I meant the accuracy of having 2 samples GPU/CPU as close as possible.

Avoiding to account another register read in there is nice.


My testing was also mostly done with CLOCK_MONOTONIC_RAW which doesn't 
seem to be adjusted like CLOCK_MONOTONIC so maybe that why I didn't see 
the issue.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">_RAW is still adjusted for skews, just not coupled into the ntp feedback.
That is less obvious than the other clocks, and why it's preferred for
comparing against other HW sources. But two reads of _RAW are only
monotonic, not necessarily on the same time base. local_clock() is
tsc/arat, so counting the CPU cycles between the two reads with the
frequency (at least on x86) held constant (and arat should be frequency
invariant).

If we want much better accuracy, we are supposed to use cyclecounter_t
and the system_device_crosststamp.
-Chris
</pre>
    </blockquote>
    <p>Thanks for the pointers.</p>
    <p>I think people are mostly trying to map what's coming out of OA
      or queries from the various command streamers back to perf/ftrace.</p>
    <p>As far I know perf will only let you select a clockid.</p>
    <p><br>
    </p>
    <p>So maybe cyclecounter_t is not that useful atm.</p>
    <p><br>
    </p>
    <p>-Lionel<br>
    </p>
  </body>
</html>

--------------1513490E046159DA44C43228--

--===============0439469155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0439469155==--
