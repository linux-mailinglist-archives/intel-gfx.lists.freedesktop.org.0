Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8559E4A5BA4
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 12:57:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AACD10E8C3;
	Tue,  1 Feb 2022 11:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C79210E8C5
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 11:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643716624; x=1675252624;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=/zLcLzrtCgdT6yYrTONRpK7Gid07JAvYbt9PFbehqDc=;
 b=aeTcjsjRYGl73WTUqK0sESm7vkshcZcMQqMhcqoAqCB4NI8qKXLilUxF
 vubXMOwk31NuIbSKbkkPyjIjqa42Gifa596nXbFDFstM0ffGGwmlUuaKP
 4P1DV0nauC/++J8iBYXR5MfA2zwZMa7nxR7zM+/7O5fX+I7/MOixPaln0
 g7fhrmmntCuBO9PG0U0BAbFOISsI/K7S6mflUABvLD0q6CjkW4I2NWVcs
 fWJK8c1R/wMJZtr9lC/3Z9/BVKoW13ByaRLS3fJLLOzDYN8KOHYFCvz+C
 zvLdAgCrT9CFUzWvCnI3lh9TwfangEg8XY0RggzjEvVTAkcFaY0qVwdDT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="228334146"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; 
 d="scan'208,217";a="228334146"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:56:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; 
 d="scan'208,217";a="565570032"
Received: from djustese-mobl.ger.corp.intel.com (HELO [10.249.254.242])
 ([10.249.254.242])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:56:33 -0800
Content-Type: multipart/alternative;
 boundary="------------4XojMkVGEF0HAzFRHcU1l06R"
Message-ID: <17de8da6-4a11-cc64-78dc-6f770076ded4@linux.intel.com>
Date: Tue, 1 Feb 2022 12:56:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220201070340.16457-1-thomas.hellstrom@linux.intel.com>
 <164370698925.2608.657579910841728715@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <164370698925.2608.657579910841728715@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Return_some_errors_instead_of_trying_memcpy_move?=
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
--------------4XojMkVGEF0HAzFRHcU1l06R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2/1/22 10:16, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/ttm: Return some errors instead of trying memcpy move
> *URL:* 	https://patchwork.freedesktop.org/series/99553/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11168_full -> Patchwork_22145_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_22145_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22145_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (11 -> 13)
>
> Additional (2): shard-rkl shard-dg1
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_22145_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_ctx_persistence@smoketest:
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11168/shard-apl6/igt@gem_ctx_persistence@smoketest.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/shard-apl4/igt@gem_ctx_persistence@smoketest.html>
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@kms_scaling_modes@scaling-mode-full-aspect:
>
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/shard-rkl-1/igt@kms_scaling_modes@scaling-mode-full-aspect.html>
>  *
>
>     igt@kms_scaling_modes@scaling-mode-none:
>
>       o {shard-dg1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/shard-dg1-15/igt@kms_scaling_modes@scaling-mode-none.html>
>
These are unrelated.

/Thomas


--------------4XojMkVGEF0HAzFRHcU1l06R
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2/1/22 10:16, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:164370698925.2608.657579910841728715@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/ttm: Return some errors instead of trying
              memcpy move</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/99553/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/99553/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11168_full -&gt;
        Patchwork_22145_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_22145_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_22145_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (11 -&gt; 13)</h2>
      <p>Additional (2): shard-rkl shard-dg1 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_22145_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_ctx_persistence@smoketest:
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11168/shard-apl6/igt@gem_ctx_persistence@smoketest.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/shard-apl4/igt@gem_ctx_persistence@smoketest.html"
                moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
          <ul>
            <li>{shard-rkl}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/shard-rkl-1/igt@kms_scaling_modes@scaling-mode-full-aspect.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_scaling_modes@scaling-mode-none:</p>
          <ul>
            <li>{shard-dg1}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22145/shard-dg1-15/igt@kms_scaling_modes@scaling-mode-none.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>These are unrelated.</p>
    <p>/Thomas</p>
    <br>
  </body>
</html>
--------------4XojMkVGEF0HAzFRHcU1l06R--

