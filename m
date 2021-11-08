Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF9544821F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 15:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3004E6E0DA;
	Mon,  8 Nov 2021 14:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 834AC6E1B6
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 14:48:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="232078773"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; 
 d="scan'208,217";a="232078773"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 06:48:07 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; 
 d="scan'208,217";a="641425013"
Received: from yiwenfan-mobl.ccr.corp.intel.com (HELO [10.249.254.199])
 ([10.249.254.199])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 06:48:06 -0800
Content-Type: multipart/alternative;
 boundary="------------5lfNkecqvNZ2bCMjsPPwFEJ9"
Message-ID: <2246f410-93e7-9a0a-344a-39265b0e89a4@linux.intel.com>
Date: Mon, 8 Nov 2021 15:48:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 ", Lakshminarayana Vudum" <lakshminarayana.vudum@intel.com>
References: <20211108123637.929617-1-thomas.hellstrom@linux.intel.com>
 <163638266473.32037.3362771461032699139@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <163638266473.32037.3362771461032699139@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Fix_gem=5Fmadvise_for_ttm+shmem_objects_=28rev2=29?=
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
--------------5lfNkecqvNZ2bCMjsPPwFEJ9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/8/21 15:44, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/gem: Fix gem_madvise for ttm+shmem objects (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/96611/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10853_full -> Patchwork_21533_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21533_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21533_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (11 -> 11)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_21533_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10853/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html>
>

Lakshmi, This failure is unrelated.

Thanks,

Thomas


--------------5lfNkecqvNZ2bCMjsPPwFEJ9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/8/21 15:44, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:163638266473.32037.3362771461032699139@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/gem: Fix gem_madvise for ttm+shmem objects
              (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/96611/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/96611/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10853_full -&gt;
        Patchwork_21533_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_21533_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_21533_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (11 -&gt; 11)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_21533_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10853/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21533/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p><br>
    </p>
    <p>Lakshmi, This failure is unrelated.</p>
    <p>Thanks,</p>
    <p>Thomas</p>
    <p><br>
    </p>
  </body>
</html>
--------------5lfNkecqvNZ2bCMjsPPwFEJ9--

