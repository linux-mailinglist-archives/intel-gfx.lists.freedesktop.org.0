Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A10445FCD
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 07:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5EC6E039;
	Fri,  5 Nov 2021 06:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16CF6E039
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 06:40:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="231698087"
X-IronPort-AV: E=Sophos;i="5.87,210,1631602800"; 
 d="scan'208,217";a="231698087"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 23:40:26 -0700
X-IronPort-AV: E=Sophos;i="5.87,210,1631602800"; 
 d="scan'208,217";a="532508746"
Received: from inechita-mobl1.ger.corp.intel.com (HELO [10.249.254.167])
 ([10.249.254.167])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 23:40:26 -0700
Content-Type: multipart/alternative;
 boundary="------------IrO6k1Lzk0OHEVoFRNhKuT1U"
Message-ID: <99e04830-a92b-11bb-ece9-a5c6065b802b@linux.intel.com>
Date: Fri, 5 Nov 2021 07:40:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 ", Lakshminarayana Vudum" <lakshminarayana.vudum@intel.com>
References: <20211104215813.738524-1-thomas.hellstrom@linux.intel.com>
 <163606687271.6351.10288462232537670965@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <163606687271.6351.10288462232537670965@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Use_clear=5Fa?=
 =?utf-8?q?nd=5Fwake=5Fup=5Fbit=28=29_for_the_per-engine_reset_bitlocks?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------IrO6k1Lzk0OHEVoFRNhKuT1U
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/5/21 00:01, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	series starting with [1/2] drm/i915/selftests: Use 
> clear_and_wake_up_bit() for the per-engine reset bitlocks
> *URL:* 	https://patchwork.freedesktop.org/series/96593/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21521/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10841 -> Patchwork_21521
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21521 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21521, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21521/index.html
>
>
>     Participating hosts (38 -> 35)
>
> Additional (2): fi-tgl-1115g4 fi-tgl-u2
> Missing (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-icl-u2 bat-adlp-4
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_21521:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live@migrate:
>       o fi-bsw-nick: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10841/fi-bsw-nick/igt@i915_selftest@live@migrate.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21521/fi-bsw-nick/igt@i915_selftest@live@migrate.html>
>
Lakshmi, this failure is unrelated.

--------------IrO6k1Lzk0OHEVoFRNhKuT1U
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/5/21 00:01, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:163606687271.6351.10288462232537670965@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>series starting with [1/2] drm/i915/selftests: Use
              clear_and_wake_up_bit() for the per-engine reset bitlocks</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/96593/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/96593/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21521/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21521/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10841 -&gt; Patchwork_21521</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_21521 absolutely
        need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_21521, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21521/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21521/index.html</a></p>
      <h2>Participating hosts (38 -&gt; 35)</h2>
      <p>Additional (2): fi-tgl-1115g4 fi-tgl-u2 <br>
        Missing (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-icl-u2
        bat-adlp-4 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_21521:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_selftest@live@migrate:
          <ul>
            <li>fi-bsw-nick: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10841/fi-bsw-nick/igt@i915_selftest@live@migrate.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21521/fi-bsw-nick/igt@i915_selftest@live@migrate.html"
                moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>Lakshmi, this failure is unrelated.</p>
  </body>
</html>
--------------IrO6k1Lzk0OHEVoFRNhKuT1U--

