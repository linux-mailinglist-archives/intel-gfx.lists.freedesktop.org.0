Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8A43FC83C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 15:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E1989F5F;
	Tue, 31 Aug 2021 13:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7DE089F5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 13:29:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="198030462"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
 d="scan'208,217";a="198030462"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 06:29:25 -0700
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
 d="scan'208,217";a="509939708"
Received: from vanderss-mobl.ger.corp.intel.com (HELO [10.249.254.185])
 ([10.249.254.185])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 06:29:23 -0700
To: intel-gfx@lists.freedesktop.org,
 ", Lakshminarayana Vudum" <lakshminarayana.vudum@intel.com>
References: <20210831122931.157536-1-thomas.hellstrom@linux.intel.com>
 <163041595730.10657.17383745822852397722@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <0ad4df77-b0f6-8782-be2f-7235199b3165@linux.intel.com>
Date: Tue, 31 Aug 2021 15:29:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <163041595730.10657.17383745822852397722@emeril.freedesktop.org>
Content-Type: multipart/alternative;
 boundary="------------1667DB095C30B46D94B1D3AE"
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Fix_the_mman_selftest_=28rev2=29?=
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
--------------1667DB095C30B46D94B1D3AE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 8/31/21 3:19 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/gem: Fix the mman selftest (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/94062/ 
> <https://patchwork.freedesktop.org/series/94062/>
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html>
>
>
>   CI Bug Log - changes from CI_DRM_10539 -> Patchwork_20928
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_20928 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20928, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_20928:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
>       o fi-rkl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html>
>
>
Lakshmi, this failure is unrelated.

Thanks,

Thomas



--------------1667DB095C30B46D94B1D3AE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/31/21 3:19 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:163041595730.10657.17383745822852397722@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/gem: Fix the mman selftest (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/94062/"
                moz-do-not-send="true">https://patchwork.freedesktop.org/series/94062/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html"
                moz-do-not-send="true">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10539 -&gt; Patchwork_20928</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_20928 absolutely
        need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_20928, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html</a></p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_20928:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
          <ul>
            <li>fi-rkl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
      </ul>
      <br>
    </blockquote>
    <p>Lakshmi, this failure is unrelated.</p>
    <p>Thanks,</p>
    <p>Thomas</p>
    <p><br>
    </p>
  </body>
</html>

--------------1667DB095C30B46D94B1D3AE--
