Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48544185564
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 11:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA886E2B4;
	Sat, 14 Mar 2020 10:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9549F6E291
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 10:33:58 +0000 (UTC)
IronPort-SDR: 1+2tkjCX6xHkHBVdipyRfnIMubX6dAEM2BvdWgFWy2skPpMTUQhiGb33G0vPOyPRAtwQbqHmA8
 1Wg9ANFwImaA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2020 03:33:58 -0700
IronPort-SDR: 5CHqXC4oYqqV5j/00Wjr+GAxCcKPV6YUKjdVbfidYZJuKiFJS5FJbxBdwn6Qu582xeEds4fI2a
 ZbjjRQvLXeAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,552,1574150400"; 
 d="scan'208,217";a="444584003"
Received: from rdota-mobl1.ti.intel.com (HELO [10.249.40.30]) ([10.249.40.30])
 by fmsmga006.fm.intel.com with ESMTP; 14 Mar 2020 03:33:56 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200313143440.2476876-1-lionel.g.landwerlin@intel.com>
 <20200313143440.2476876-3-lionel.g.landwerlin@intel.com>
 <10ecf815-71b1-bdcf-1588-df726698c119@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b0596c46-cdde-bcad-f233-27b1464363ea@intel.com>
Date: Sat, 14 Mar 2020 12:33:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <10ecf815-71b1-bdcf-1588-df726698c119@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 3/3] drm/i915/perf: introduce global sseu
 pinning
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
Content-Type: multipart/mixed; boundary="===============1658242351=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1658242351==
Content-Type: multipart/alternative;
 boundary="------------C0F9057073F4F39A28D992E7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C0F9057073F4F39A28D992E7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/03/2020 17:26, Tvrtko Ursulin wrote:
>
> On 13/03/2020 14:34, Lionel Landwerlin wrote:
>> On Gen11 powergating half the execution units is a functional
>> requirement when using the VME samplers. Not fullfilling this
>> requirement can lead to hangs.
>>
>> This unfortunately plays fairly poorly with the NOA requirements. NOA
>> requires a stable power configuration to maintain its configuration.
>>
>> As a result using OA (and NOA feeding into it) so far has required us
>> to use a power configuration that can work for all contexts. The only
>> power configuration fullfilling this is powergating half the execution
>> units.
>>
>> This makes performance analysis for 3D workloads somewhat pointless.
>>
>> Failing to find a solution that would work for everybody, this change
>> introduces a new i915-perf stream open parameter that punts the
>> decision off to userspace. If this parameter is omitted, the existing
>> Gen11 behavior remains (half EU array powergating).
>>
>> This change takes the initiative to move all perf related sseu
>> configuration into i915_perf.c
>>
>> v2: Make parameter priviliged if different from default
>>
>> v3: Fix context modifying its sseu config while i915-perf is enabled
>>
>> v4: Always consider global sseu a privileged operation (Tvrtko)
>>      Override req_sseu point in intel_sseu_make_rpcs() (Tvrtko)
>>      Remove unrelated changes (Tvrtko)
>>
>> v5: Some typos (Tvrtko)
>>      Process sseu param in read_properties_unlocked() (Tvrtko)
>
> git add ? :)
>
> Regards,
>
> Tvrtko


Oh dear...

Sorry for that.


-Lionel


--------------C0F9057073F4F39A28D992E7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 13/03/2020 17:26, Tvrtko Ursulin
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:10ecf815-71b1-bdcf-1588-df726698c119@linux.intel.com"><br>
      On 13/03/2020 14:34, Lionel Landwerlin wrote:
      <br>
      <blockquote type="cite" style="color: #000000;">On Gen11
        powergating half the execution units is a functional
        <br>
        requirement when using the VME samplers. Not fullfilling this
        <br>
        requirement can lead to hangs.
        <br>
        <br>
        This unfortunately plays fairly poorly with the NOA
        requirements. NOA
        <br>
        requires a stable power configuration to maintain its
        configuration.
        <br>
        <br>
        As a result using OA (and NOA feeding into it) so far has
        required us
        <br>
        to use a power configuration that can work for all contexts. The
        only
        <br>
        power configuration fullfilling this is powergating half the
        execution
        <br>
        units.
        <br>
        <br>
        This makes performance analysis for 3D workloads somewhat
        pointless.
        <br>
        <br>
        Failing to find a solution that would work for everybody, this
        change
        <br>
        introduces a new i915-perf stream open parameter that punts the
        <br>
        decision off to userspace. If this parameter is omitted, the
        existing
        <br>
        Gen11 behavior remains (half EU array powergating).
        <br>
        <br>
        This change takes the initiative to move all perf related sseu
        <br>
        configuration into i915_perf.c
        <br>
        <br>
        v2: Make parameter priviliged if different from default
        <br>
        <br>
        v3: Fix context modifying its sseu config while i915-perf is
        enabled
        <br>
        <br>
        v4: Always consider global sseu a privileged operation (Tvrtko)
        <br>
             Override req_sseu point in intel_sseu_make_rpcs() (Tvrtko)
        <br>
             Remove unrelated changes (Tvrtko)
        <br>
        <br>
        v5: Some typos (Tvrtko)
        <br>
             Process sseu param in read_properties_unlocked() (Tvrtko)
        <br>
      </blockquote>
      <br>
      git add ? <span class="moz-smiley-s1" title=":)"><span>:)</span></span>
      <br>
      <br>
      Regards,
      <br>
      <br>
      Tvrtko
      <br>
    </blockquote>
    <p><br>
    </p>
    <p>Oh dear...</p>
    <p>Sorry for that.</p>
    <p><br>
    </p>
    <p>-Lionel<br>
    </p>
  </body>
</html>

--------------C0F9057073F4F39A28D992E7--

--===============1658242351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1658242351==--
