Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9926345B8B4
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 11:56:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574426E223;
	Wed, 24 Nov 2021 10:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9AD86E233
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 10:56:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="232750498"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; 
 d="scan'208,217";a="232750498"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:56:13 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; 
 d="scan'208,217";a="597630506"
Received: from mikaelsk-mobl1.ger.corp.intel.com (HELO [10.249.254.77])
 ([10.249.254.77])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:56:12 -0800
Content-Type: multipart/alternative;
 boundary="------------fLBsIUe0Oud0zJZoCu1Vi3aW"
Message-ID: <a93c6a57-0c13-b6f6-6188-58e83f85d491@linux.intel.com>
Date: Wed, 24 Nov 2021 11:56:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 ", Lakshminarayana Vudum" <lakshminarayana.vudum@intel.com>
References: <20211122214554.371864-1-thomas.hellstrom@linux.intel.com>
 <163774693406.25295.4750352332692397734@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <163774693406.25295.4750352332692397734@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Async_migration_=28rev11=29?=
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
--------------fLBsIUe0Oud0zJZoCu1Vi3aW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/24/21 10:42, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/ttm: Async migration (rev11)
> *URL:* 	https://patchwork.freedesktop.org/series/96798/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10921_full -> Patchwork_21672_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21672_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21672_full, please notify your bug team to 
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
> Patchwork_21672_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_exec_capture@pi@rcs0:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl7/igt@gem_exec_capture@pi@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl2/igt@gem_exec_capture@pi@rcs0.html>
>  *
>
>     igt@gem_exec_create@forked@smem:
>
>       o shard-kbl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@gem_exec_create@forked@smem.html>
>  *
>
>     igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl1/igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a.html>
>         +2 similar issues
>
Lakshmi,

These failures are unrelated. The first one appears also elsewhere, The 
other two appears to be a general problem with shard-kbl. Lots of random 
hangs from that one.

/Thomas


--------------fLBsIUe0Oud0zJZoCu1Vi3aW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/24/21 10:42, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:163774693406.25295.4750352332692397734@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/ttm: Async migration (rev11)</td>
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
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10921_full -&gt;
        Patchwork_21672_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_21672_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_21672_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (11 -&gt; 11)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_21672_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_exec_capture@pi@rcs0:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl7/igt@gem_exec_capture@pi@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-skl2/igt@gem_exec_capture@pi@rcs0.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_create@forked@smem:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@gem_exec_create@forked@smem.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl1/igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-kbl7/igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a.html"
                moz-do-not-send="true">INCOMPLETE</a> +2 similar issues</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>Lakshmi,</p>
    <p>These failures are unrelated. The first one appears also
      elsewhere, The other two appears to be a general problem with
      shard-kbl. Lots of random hangs from that one.</p>
    <p>/Thomas</p>
    <p><br>
    </p>
  </body>
</html>
--------------fLBsIUe0Oud0zJZoCu1Vi3aW--

