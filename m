Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A4345909C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 15:54:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A653389EAE;
	Mon, 22 Nov 2021 14:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6C289EAE
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 14:54:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="222019202"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; 
 d="scan'208,217";a="222019202"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 06:54:19 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; 
 d="scan'208,217";a="739230768"
Received: from vanderss-mobl.ger.corp.intel.com (HELO [10.249.254.58])
 ([10.249.254.58])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 06:54:19 -0800
Content-Type: multipart/alternative;
 boundary="------------KiwA38yCfKy00NrYfxZVQF0Z"
Message-ID: <591c2917-43a0-0eb4-e923-b50096aa30e6@linux.intel.com>
Date: Mon, 22 Nov 2021 15:54:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 ", Lakshminarayana Vudum" <lakshminarayana.vudum@intel.com>
References: <20211122082252.223689-1-thomas.hellstrom@linux.intel.com>
 <163758976063.5692.8038393009445053738@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <163758976063.5692.8038393009445053738@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Async_migration_=28rev7=29?=
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
--------------KiwA38yCfKy00NrYfxZVQF0Z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/22/21 15:02, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/ttm: Async migration (rev7)
> *URL:* 	https://patchwork.freedesktop.org/series/96798/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21651/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10913 -> Patchwork_21651
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21651 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21651, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21651/index.html
>
>
>     Participating hosts (43 -> 34)
>
> Missing (9): bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-icl-u2 fi-bsw-cyan 
> bat-adlp-6 bat-adlp-4 bat-jsl-2 bat-jsl-1
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_21651:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_exec_suspend@basic-s3:
>       o fi-skl-6600u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10913/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21651/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html>
>
>
Lakshmi,

This failure is unrelated, and occurs on the same machine with a more or 
less identical signature on CI_DRM_10901

Thanks,
Thomas

--------------KiwA38yCfKy00NrYfxZVQF0Z
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/22/21 15:02, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:163758976063.5692.8038393009445053738@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/ttm: Async migration (rev7)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/96798/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/96798/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21651/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21651/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10913 -&gt; Patchwork_21651</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_21651 absolutely
        need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_21651, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21651/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21651/index.html</a></p>
      <h2>Participating hosts (43 -&gt; 34)</h2>
      <p>Missing (9): bat-dg1-6 fi-tgl-u2 bat-dg1-5 fi-icl-u2
        fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-jsl-2 bat-jsl-1 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_21651:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_exec_suspend@basic-s3:
          <ul>
            <li>fi-skl-6600u: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10913/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21651/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <br>
    </blockquote>
    <p>Lakshmi,</p>
    <p>This failure is unrelated, and occurs on the same machine with a
      more or less identical signature on CI_DRM_10901<br>
    </p>
    <p>Thanks,<br>
      Thomas<br>
    </p>
  </body>
</html>
--------------KiwA38yCfKy00NrYfxZVQF0Z--

