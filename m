Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 250F044345B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 18:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7704473407;
	Tue,  2 Nov 2021 17:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2071273407
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 17:11:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="230035444"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
 d="scan'208,217";a="230035444"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:28:45 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; 
 d="scan'208,217";a="467799010"
Received: from vanderss-mobl.ger.corp.intel.com (HELO [10.249.254.234])
 ([10.249.254.234])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:28:43 -0700
Content-Type: multipart/alternative;
 boundary="------------ZNv6IV9Sg1yscMaiwKj1gqBX"
Message-ID: <4767cf8b-7c53-72fe-a781-1d7223ab6e50@linux.intel.com>
Date: Tue, 2 Nov 2021 17:28:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 ", Lakshminarayana Vudum" <lakshminarayana.vudum@intel.com>
References: <20211102102827.442902-1-thomas.hellstrom@linux.intel.com>
 <163586892316.15504.7857015548691913286@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <163586892316.15504.7857015548691913286@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Prepare_error_capture_for_asynchronous_migration?=
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
--------------ZNv6IV9Sg1yscMaiwKj1gqBX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/2/21 17:02, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: Prepare error capture for asynchronous migration
> *URL:* 	https://patchwork.freedesktop.org/series/96493/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10827_full -> Patchwork_21503_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21503_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21503_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 10)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_21503_full:
>
>
>       Piglit changes
>
>
>         Possible regressions
>
>   * spec@arb_gpu_shader5@texturegather@fs-r-0-unorm-2darray (NEW):
>       o pig-kbl-iris: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/pig-kbl-iris/spec@arb_gpu_shader5@texturegather@fs-r-0-unorm-2darray.html>
>         +5 similar issues
>
Lakshmi, This failure is unrelated.

Thanks,

Thomas


--------------ZNv6IV9Sg1yscMaiwKj1gqBX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/2/21 17:02, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:163586892316.15504.7857015548691913286@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915: Prepare error capture for asynchronous
              migration</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/96493/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/96493/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10827_full -&gt;
        Patchwork_21503_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_21503_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_21503_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (10 -&gt; 10)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_21503_full:</p>
      <h3>Piglit changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>spec@arb_gpu_shader5@texturegather@fs-r-0-unorm-2darray
          (NEW):
          <ul>
            <li>pig-kbl-iris: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21503/pig-kbl-iris/spec@arb_gpu_shader5@texturegather@fs-r-0-unorm-2darray.html"
                moz-do-not-send="true">INCOMPLETE</a> +5 similar issues</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>Lakshmi, This failure is unrelated.</p>
    <p>Thanks,</p>
    <p>Thomas</p>
    <p><br>
    </p>
  </body>
</html>
--------------ZNv6IV9Sg1yscMaiwKj1gqBX--

