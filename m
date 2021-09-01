Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2FB3FD6D8
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 11:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289D76E165;
	Wed,  1 Sep 2021 09:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FD76E165
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 09:33:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218706131"
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; 
 d="scan'208,217";a="218706131"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 02:33:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; 
 d="scan'208,217";a="645660916"
Received: from ntaiyeby-mobl1.ger.corp.intel.com (HELO [10.249.254.114])
 ([10.249.254.114])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 02:33:55 -0700
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>,
 jaswanthx.kattamanchi@intel.com
References: <20210831122931.157536-1-thomas.hellstrom@linux.intel.com>
 <163043588758.10660.354234617896530827@emeril.freedesktop.org>
 <a1c0b106-3ba4-1859-f5be-27d29cf2cc0f@linux.intel.com>
Message-ID: <66685f52-1adb-0966-774e-4bc6bec8cc74@linux.intel.com>
Date: Wed, 1 Sep 2021 11:33:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a1c0b106-3ba4-1859-f5be-27d29cf2cc0f@linux.intel.com>
Content-Type: multipart/alternative;
 boundary="------------2091CEB6E15A2D51AF4A26F5"
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
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
--------------2091CEB6E15A2D51AF4A26F5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

+ jaswanthx.kattamanchi@intel.com

On 9/1/21 10:33 AM, Thomas Hellström wrote:
>
>
> On 8/31/21 8:51 PM, Patchwork wrote:
>> Project List - Patchwork *Patch Details*
>> *Series:* 	drm/i915/gem: Fix the mman selftest (rev2)
>> *URL:* 	https://patchwork.freedesktop.org/series/94062/ 
>> <https://patchwork.freedesktop.org/series/94062/>
>> *State:* 	failure
>> *Details:* 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html 
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/index.html>
>>
>>
>>   CI Bug Log - changes from CI_DRM_10539_full -> Patchwork_20928_full
>>
>>
>>     Summary
>>
>> *FAILURE*
>>
>> Serious unknown changes coming with Patchwork_20928_full absolutely 
>> need to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_20928_full, please notify your bug team to 
>> allow them
>> to document this new failure mode, which will reduce false positives 
>> in CI.
>>
>>
>>     Possible new issues
>>
>> Here are the unknown changes that may have been introduced in 
>> Patchwork_20928_full:
>>
>>
>>       IGT changes
>>
>>
>>         Possible regressions
>>
>>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>>       o shard-skl: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html>
>>         -> WARN
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vcs0.html>
>>
>>
> Lakshmi, this failure is unrelated.
>
> Thanks,
>
> Thomas
>
>

--------------2091CEB6E15A2D51AF4A26F5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>+ <span style="font-family:&quot;Segoe UI&quot;,sans-serif"><a class="moz-txt-link-abbreviated" href="mailto:jaswanthx.kattamanchi@intel.com">jaswanthx.kattamanchi@intel.com</a></span></p>
    <div class="moz-cite-prefix">On 9/1/21 10:33 AM, Thomas Hellström
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:a1c0b106-3ba4-1859-f5be-27d29cf2cc0f@linux.intel.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p><br>
      </p>
      <div class="moz-cite-prefix">On 8/31/21 8:51 PM, Patchwork wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:163043588758.10660.354234617896530827@emeril.freedesktop.org">
        <meta http-equiv="Content-Type" content="text/html;
          charset=UTF-8">
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
        <h1>CI Bug Log - changes from CI_DRM_10539_full -&gt;
          Patchwork_20928_full</h1>
        <h2>Summary</h2>
        <p><strong>FAILURE</strong></p>
        <p>Serious unknown changes coming with Patchwork_20928_full
          absolutely need to be<br>
          verified manually.</p>
        <p>If you think the reported changes have nothing to do with the
          changes<br>
          introduced in Patchwork_20928_full, please notify your bug
          team to allow them<br>
          to document this new failure mode, which will reduce false
          positives in CI.</p>
        <h2>Possible new issues</h2>
        <p>Here are the unknown changes that may have been introduced in
          Patchwork_20928_full:</p>
        <h3>IGT changes</h3>
        <h4>Possible regressions</h4>
        <ul>
          <li>igt@sysfs_heartbeat_interval@mixed@vcs0:
            <ul>
              <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10539/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20928/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vcs0.html"
                  moz-do-not-send="true">WARN</a></li>
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
    </blockquote>
  </body>
</html>

--------------2091CEB6E15A2D51AF4A26F5--
