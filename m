Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B29C3ACA99
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 14:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062BD6E9F5;
	Fri, 18 Jun 2021 12:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCAD86E9F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 12:07:55 +0000 (UTC)
IronPort-SDR: HbvkvCOX+Z/AQ5FRL+01bnrUItqvR+pJBHhz3r6gH90Ojpu/TlKE0IyT8eIw+90UW0kYB5JBgU
 Xf2kdINq32Fw==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="206582532"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; 
 d="scan'208,217";a="206582532"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:07:54 -0700
IronPort-SDR: XB5UKFpPfu731H92H0AbqmrBQA3KdcSdiLs0WDJLYyVgeuvb+RjfSmgiPGgcpo5ud/LhcJoNiG
 EGEFWMM+L+Jg==
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; 
 d="scan'208,217";a="479803062"
Received: from jhogberg-mobl1.ger.corp.intel.com (HELO [10.249.254.60])
 ([10.249.254.60])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 05:07:54 -0700
To: intel-gfx@lists.freedesktop.org
References: <20210618083117.158081-1-thomas.hellstrom@linux.intel.com>
 <162401200861.1292.1141140048329292644@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <fc17611c-7ac2-87de-a039-4b1a7b4b8fa0@linux.intel.com>
Date: Fri, 18 Jun 2021 14:07:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <162401200861.1292.1141140048329292644@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Fix_incorrect_assumptions_about_ttm=5Fbo=5Fvalidat?=
 =?utf-8?q?e=28=29_semantics?=
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
Content-Type: multipart/mixed; boundary="===============1018133332=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1018133332==
Content-Type: multipart/alternative;
 boundary="------------2908B3E56A8C87BF3906F108"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2908B3E56A8C87BF3906F108
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 6/18/21 12:26 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/ttm: Fix incorrect assumptions about 
> ttm_bo_validate() semantics
> *URL:* 	https://patchwork.freedesktop.org/series/91661/ 
> <https://patchwork.freedesktop.org/series/91661/>
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20407/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20407/index.html>
>
>
>   CI Bug Log - changes from CI_DRM_10242_full -> Patchwork_20407_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_20407_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20407_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_20407_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_exec_reloc@basic-wide-active@vcs1:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20407/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html>
>  *
>
>     igt@kms_big_fb@x-tiled-8bpp-rotate-0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-glk3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20407/shard-glk1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html>
>
Failures not related AFAICT.



--------------2908B3E56A8C87BF3906F108
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/18/21 12:26 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:162401200861.1292.1141140048329292644@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/ttm: Fix incorrect assumptions about
              ttm_bo_validate() semantics</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/91661/"
                moz-do-not-send="true">https://patchwork.freedesktop.org/series/91661/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20407/index.html"
                moz-do-not-send="true">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20407/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10242_full -&gt;
        Patchwork_20407_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_20407_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_20407_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_20407_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20407/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html"
                moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-glk3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20407/shard-glk1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html"
                moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>Failures not related AFAICT.</p>
    <br>
  </body>
</html>

--------------2908B3E56A8C87BF3906F108--

--===============1018133332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1018133332==--
