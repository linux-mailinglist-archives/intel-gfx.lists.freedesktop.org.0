Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFDA447B95
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 09:10:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1353B6E424;
	Mon,  8 Nov 2021 08:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5776E424
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 08:10:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="219086260"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; 
 d="scan'208,217";a="219086260"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 00:10:03 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; 
 d="scan'208,217";a="491121318"
Received: from ahedstro-mobl.ger.corp.intel.com (HELO [10.249.254.89])
 ([10.249.254.89])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 00:10:02 -0800
Content-Type: multipart/alternative;
 boundary="------------J5FFaeQyRTBqPM5BFJnxmYpL"
Message-ID: <efb2ff5f-acf7-df24-e516-c2fe0df701bd@linux.intel.com>
Date: Mon, 8 Nov 2021 09:09:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 ", Lakshminarayana Vudum" <lakshminarayana.vudum@intel.com>
References: <20211105150146.834052-1-thomas.hellstrom@linux.intel.com>
 <163613135311.30622.5602659017690422551@emeril.freedesktop.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <163613135311.30622.5602659017690422551@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm/i915/selftests=3A_Use_clea?=
 =?utf-8?q?r=5Fand=5Fwake=5Fup=5Fbit=28=29_for_the_per-engine_reset_bitloc?=
 =?utf-8?q?ks?=
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
--------------J5FFaeQyRTBqPM5BFJnxmYpL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/5/21 17:55, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	series starting with [v3,1/2] drm/i915/selftests: Use 
> clear_and_wake_up_bit() for the per-engine reset bitlocks
> *URL:* 	https://patchwork.freedesktop.org/series/96615/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10846_full -> Patchwork_21526_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21526_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21526_full, please notify your bug team to 
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
> Patchwork_21526_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb3/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb6/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html>
>
Lakshmi,

This failure is unrelated.

Thanks,

Thomas


--------------J5FFaeQyRTBqPM5BFJnxmYpL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/5/21 17:55, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:163613135311.30622.5602659017690422551@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>series starting with [v3,1/2] drm/i915/selftests: Use
              clear_and_wake_up_bit() for the per-engine reset bitlocks</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/96615/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/96615/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10846_full -&gt;
        Patchwork_21526_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_21526_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_21526_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (11 -&gt; 11)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_21526_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_flip@basic-flip-vs-dpms@c-edp1:
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10846/shard-tglb3/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21526/shard-tglb6/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>Lakshmi, <br>
    </p>
    <p>This failure is unrelated.</p>
    <p>Thanks,</p>
    <p>Thomas</p>
    <p><br>
    </p>
  </body>
</html>
--------------J5FFaeQyRTBqPM5BFJnxmYpL--

