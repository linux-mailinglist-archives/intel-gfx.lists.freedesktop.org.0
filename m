Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0F514732B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 22:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D18C6FE41;
	Thu, 23 Jan 2020 21:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C166A6FE41
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 21:35:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 13:35:19 -0800
X-IronPort-AV: E=Sophos;i="5.70,355,1574150400"; 
 d="scan'208,217";a="222460961"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.255.94.195])
 ([10.255.94.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 23 Jan 2020 13:35:18 -0800
To: intel-gfx@lists.freedesktop.org
References: <20200115024053.11333-1-John.C.Harrison@Intel.com>
 <157974624624.1146.4619213646517580934@emeril.freedesktop.org>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <beb5514c-37ec-e199-4353-245c7ebe2662@Intel.com>
Date: Thu, 23 Jan 2020 13:35:15 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <157974624624.1146.4619213646517580934@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_FW_v40_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1612658850=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1612658850==
Content-Type: multipart/alternative;
 boundary="------------1793BABD874817030559A904"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1793BABD874817030559A904
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/22/2020 18:24, Patchwork wrote:
> == Series Details ==
>
> Series: drm/i915/guc: Update to GuC FW v40 (rev3)
> URL   : https://patchwork.freedesktop.org/series/72032/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_7786_full -> Patchwork_16198_full
> ====================================================
>
> Summary
> -------
>
>    **FAILURE**
>
>    Serious unknown changes coming with Patchwork_16198_full absolutely need to be
>    verified manually.
>    
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_16198_full, please notify your bug team to allow them
>    to document this new failure mode, which will reduce false positives in CI.
>
>    
>
> Possible new issues
> -------------------
>
>    Here are the unknown changes that may have been introduced in Patchwork_16198_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>    * igt@kms_atomic_transition@5x-modeset-transitions-fencing:
>      - shard-tglb:         NOTRUN -> [SKIP][1]
>     [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-tglb8/igt@kms_atomic_transition@5x-modeset-transitions-fencing.html
According to the log, this test failed because it ran on a device that 
only had one display device attached and not the five required by the test:

IGT-Version: 1.24-g5cf58d947 (x86_64) (Linux: 5.5.0-rc7-CI-Patchwork_16198+ x86_64)
Starting subtest: 5x-modeset-transitions-fencing
Test requirement not met in function run_modeset_transition, file ../tests/kms_atomic_transition.c:887:
Test requirement: num_outputs >= requested_outputs
Should have at least 5 outputs, found 1
Subtest 5x-modeset-transitions-fencing: SKIP (0.000s)


I'm not sure how that could be called a regression in the GuC FW patch. 
I also don't see any reason why the test would previously have been a 
'NOTRUN' and now is being attempted. Changing the GuC FW should not 
affect which KMS tests do or do not get run!

I don't have a system with five display devices so I can't actually run 
the test myself either. However, I do not see how this could be affected 
by changes to the GuC. Especially when the GuC is only being used for 
HuC authentication.

So I think this definitely counts as an issue with CI not this patch.

John.


--------------1793BABD874817030559A904
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    On 1/22/2020 18:24, Patchwork wrote:<br>
    <blockquote type="cite"
      cite="mid:157974624624.1146.4619213646517580934@emeril.freedesktop.org">
      <pre class="moz-quote-pre" wrap="">== Series Details ==

Series: drm/i915/guc: Update to GuC FW v40 (rev3)
URL   : <a class="moz-txt-link-freetext" href="https://patchwork.freedesktop.org/series/72032/">https://patchwork.freedesktop.org/series/72032/</a>
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7786_full -&gt; Patchwork_16198_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16198_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16198_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16198_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@5x-modeset-transitions-fencing:
    - shard-tglb:         NOTRUN -&gt; [SKIP][1]
   [1]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-tglb8/igt@kms_atomic_transition@5x-modeset-transitions-fencing.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16198/shard-tglb8/igt@kms_atomic_transition@5x-modeset-transitions-fencing.html</a>
</pre>
    </blockquote>
    According to the log, this test failed because it ran on a device
    that only had one display device attached and not the five required
    by the test:<br>
    <table style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
      sans-serif; border: 0pt; border-collapse: collapse;
      border-spacing: 1px; padding: 1px; letter-spacing: normal;
      orphans: 2; text-indent: 0px; text-transform: none; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(238, 238, 238); text-decoration-style:
      initial; text-decoration-color: initial;">
      <tbody style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
        sans-serif;">
        <tr style="font-family: Roboto, Oxygen-Sans, Ubuntu, Cantarell,
          sans-serif; padding: 1px;">
          <td style="font-family: Roboto, Oxygen-Sans, Ubuntu,
            Cantarell, sans-serif; padding: 1px; white-space: nowrap;
            min-width: 0.6em; background-color: rgb(225, 225, 131);">
            <pre style="font-family: monospace; margin: 0px;">IGT-Version: 1.24-g5cf58d947 (x86_64) (Linux: 5.5.0-rc7-CI-Patchwork_16198+ x86_64)
Starting subtest: 5x-modeset-transitions-fencing
Test requirement not met in function run_modeset_transition, file ../tests/kms_atomic_transition.c:887:
Test requirement: num_outputs &gt;= requested_outputs
Should have at least 5 outputs, found 1
Subtest 5x-modeset-transitions-fencing: SKIP (0.000s)</pre>
          </td>
        </tr>
      </tbody>
    </table>
    <br>
    I'm not sure how that could be called a regression in the GuC FW
    patch. I also don't see any reason why the test would previously
    have been a 'NOTRUN' and now is being attempted. Changing the GuC FW
    should not affect which KMS tests do or do not get run! <br>
    <br>
    I don't have a system with five display devices so I can't actually
    run the test myself either. However, I do not see how this could be
    affected by changes to the GuC. Especially when the GuC is only
    being used for HuC authentication.<br>
    <br>
    So I think this definitely counts as an issue with CI not this
    patch.<br>
    <br>
    John.<br>
    <br>
  </body>
</html>

--------------1793BABD874817030559A904--

--===============1612658850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1612658850==--
