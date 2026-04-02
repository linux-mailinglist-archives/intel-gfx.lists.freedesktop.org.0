Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHKcGEmOzmkbogYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 17:42:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9126738B5BF
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 17:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D6610E08E;
	Thu,  2 Apr 2026 15:41:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fw4mnC8s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA6010E08E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2026 15:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775144516; x=1806680516;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=/Fr+BNdWDeTthmbrGNI1qer0GJGB+hsrgy+fOdoUTJ0=;
 b=Fw4mnC8s9jRLpgsiGpipnmVHnyMzO1mkGCQKBiXgIDtiYFgwwKyffBGS
 B6V//dJNYVwXpa27urPuGk0D0lifopuOWuTIdTt6tXJGuGvBy5W4Z8vgU
 EMoXTZlBqcZ04ns+iv04BrbTQioYBzVgyoKfrEq0oveQQ0cdtilFDTAMv
 SCHkRwTjjdPoyPX3TYpCqnCogJZVzidZP1cZgH1z5zHJkFDmZHbdzMfyC
 vMe7v+UcIeSfllwdhzaXCjXAixVgRp+WnJtIEnC2P5lcbnX/UkJI5Oppt
 tP3541P/J1Xm0WCpkulS+qEVaxCm2CaiDz8IA2CmA6erLl496TGj6Aw4h A==;
X-CSE-ConnectionGUID: mToADaqCRKaBOfvNz9cl1g==
X-CSE-MsgGUID: N4FE9t+IRDuPjc6zpxAJUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="76088035"
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208,217";a="76088035"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 08:41:56 -0700
X-CSE-ConnectionGUID: P3yDx962Q8O9YRMkf9ygPg==
X-CSE-MsgGUID: VL6sjsHLRta7qYxWeiZ9kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; 
 d="scan'208,217";a="264942767"
Received: from vpanait-mobl.ger.corp.intel.com (HELO [10.245.245.116])
 ([10.245.245.116])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 08:41:55 -0700
Content-Type: multipart/alternative;
 boundary="------------iBmZ1clcUsXuEN5JbeWxGKWH"
Message-ID: <4d0e3bfe-d3e3-43fb-8964-b9647e914a61@intel.com>
Date: Thu, 2 Apr 2026 17:41:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/?=
 =?UTF-8?Q?display=3A_stop_using_the_configurable_fence_timeout_=28rev2=29?=
To: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <20251112155612.8320-1-jani.nikula@intel.com>
 <176310680567.54560.8073003092226406962@10055242dc62>
 <3692f126b907c442d76a93957073660d7d9ffd12@intel.com>
 <aSXmTMWeOXjnYNSB@intel.com> <dc4d04b4-2d29-4a19-8d11-58051673e0a6@intel.com>
 <44f9b69d23678458f0ab3ff4bec5c45cb05535b8@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@intel.com>
In-Reply-To: <44f9b69d23678458f0ab3ff4bec5c45cb05535b8@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[maarten.lankhorst@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url,extended-modeset-hang-newfb-with-reset:email,emeril.freedesktop.org:email]
X-Rspamd-Queue-Id: 9126738B5BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.
--------------iBmZ1clcUsXuEN5JbeWxGKWH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



Den 2026-04-02 kl. 11:40, skrev Jani Nikula:
> On Wed, 03 Dec 2025, Maarten Lankhorst <maarten.lankhorst@intel.com> wrote:
>> Hey,
>>
>> Den 2025-11-25 kl. 18:24, skrev Ville Syrjälä:
>>> On Tue, Nov 25, 2025 at 03:55:02PM +0200, Jani Nikula wrote:
>>>> On Fri, 14 Nov 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>>>>> == Series Details ==
>>>>>
>>>>> Series: drm/i915/display: stop using the configurable fence timeout (rev2)
>>>>> URL   : https://patchwork.freedesktop.org/series/157441/
>>>>> State : failure
>>>>>
>>>>> == Summary ==
>>>>>
>>>>> CI Bug Log - changes from CI_DRM_17544_full -> Patchwork_157441v2_full
>>>>> ====================================================
>>>>>
>>>>> Summary
>>>>> -------
>>>>>
>>>>>   **FAILURE**
>>>>>
>>>>>   Serious unknown changes coming with Patchwork_157441v2_full absolutely need to be
>>>>>   verified manually.
>>>>>   
>>>>>   If you think the reported changes have nothing to do with the changes
>>>>>   introduced in Patchwork_157441v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>>>>>   to document this new failure mode, which will reduce false positives in CI.
>>>>>
>>>>>   
>>>>>
>>>>> Participating hosts (10 -> 11)
>>>>> ------------------------------
>>>>>
>>>>>   Additional (1): shard-dg2-set2 
>>>>>
>>>>> Possible new issues
>>>>> -------------------
>>>>>
>>>>>   Here are the unknown changes that may have been introduced in Patchwork_157441v2_full:
>>>>>
>>>>> ### IGT changes ###
>>>>>
>>>>> #### Possible regressions ####
>>>>>
>>>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a:
>>>>>     - shard-mtlp:         [PASS][1] -> [DMESG-WARN][2] +5 other tests dmesg-warn
>>>>>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-mtlp-7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html
>>>>>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-mtlp-3/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html
>>>>>
>>>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b:
>>>>>     - shard-snb:          [PASS][3] -> [DMESG-WARN][4] +3 other tests dmesg-warn
>>>>>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
>>>>>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
>>>>>
>>>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d:
>>>>>     - shard-dg2:          [PASS][5] -> [DMESG-WARN][6] +5 other tests dmesg-warn
>>>>>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg2-6/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html
>>>>>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg2-5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html
>>>>>
>>>>>   * igt@kms_busy@extended-modeset-hang-oldfb-with-reset:
>>>>>     - shard-dg1:          [PASS][7] -> [DMESG-WARN][8] +2 other tests dmesg-warn
>>>>>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg1-12/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
>>>>>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg1-18/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
>>>> Maarten, Ville, any ideas what to do about these?
>>> Looks like we need the timeout to unbreak the modeset vs. reset
>>> deadlock in a timely fashion.
>>>
>>> I'm not where we signal/error the fences the modeset is waiting
>>> for, but I guess that must be happening after the whole reset
>>> sequence is done. Doing that earlier would seem like another
>>> solution, but dunno what other fallout it would have.
>> intel_prepare_plane_fb() adds all dma-resv fences for old_obj on
>> intel_crtc_needs_modeset(), does it change anything if we remove that,
>> at least for the GPU reset commit?
> We dropped the ball here a bit, and I'm a bit clueless as to what to
> do. Except we'll need to unify i915 and xe here somehow.
>
> Alternatives:
>
> - Remove the timeout from i915 (the patch at hand), and fix the fallout
>   somehow.
>
> - Add the timeout to xe, and fix the fallout, if any.
>
> - Add the timeout to display parent interface, which is a bit meh.
>
>
The mention in the commit is old_obj needs to be wait for flip_done, I do not believe this
is the case that it was ever used in hardware supported by xe, so for xe the wait can be dropped entirely.

Is this required for i915 still? In that case you can just eliminate the wait only for xe.

Kind regards,
~Maarten Lankhorst
--------------iBmZ1clcUsXuEN5JbeWxGKWH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">Den 2026-04-02 kl. 11:40, skrev Jani
      Nikula:<br>
    </div>
    <blockquote type="cite"
      cite="mid:44f9b69d23678458f0ab3ff4bec5c45cb05535b8@intel.com">
      <pre wrap="" class="moz-quote-pre">On Wed, 03 Dec 2025, Maarten Lankhorst <a class="moz-txt-link-rfc2396E" href="mailto:maarten.lankhorst@intel.com">&lt;maarten.lankhorst@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">Hey,

Den 2025-11-25 kl. 18:24, skrev Ville Syrjälä:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">On Tue, Nov 25, 2025 at 03:55:02PM +0200, Jani Nikula wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="" class="moz-quote-pre">On Fri, 14 Nov 2025, Patchwork <a class="moz-txt-link-rfc2396E" href="mailto:patchwork@emeril.freedesktop.org">&lt;patchwork@emeril.freedesktop.org&gt;</a> wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="" class="moz-quote-pre">== Series Details ==

Series: drm/i915/display: stop using the configurable fence timeout (rev2)
URL   : <a class="moz-txt-link-freetext" href="https://patchwork.freedesktop.org/series/157441/">https://patchwork.freedesktop.org/series/157441/</a>
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17544_full -&gt; Patchwork_157441v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_157441v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_157441v2_full, please notify your bug team (<a class="moz-txt-link-abbreviated" href="mailto:I915-ci-infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -&gt; 11)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_157441v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a:
    - shard-mtlp:         [PASS][1] -&gt; [DMESG-WARN][2] +5 other tests dmesg-warn
   [1]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-mtlp-7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-mtlp-7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html</a>
   [2]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-mtlp-3/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-mtlp-3/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html</a>

  * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b:
    - shard-snb:          [PASS][3] -&gt; [DMESG-WARN][4] +3 other tests dmesg-warn
   [3]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html</a>
   [4]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html</a>

  * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d:
    - shard-dg2:          [PASS][5] -&gt; [DMESG-WARN][6] +5 other tests dmesg-warn
   [5]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg2-6/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg2-6/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html</a>
   [6]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg2-5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg2-5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html</a>

  * igt@kms_busy@extended-modeset-hang-oldfb-with-reset:
    - shard-dg1:          [PASS][7] -&gt; [DMESG-WARN][8] +2 other tests dmesg-warn
   [7]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg1-12/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg1-12/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html</a>
   [8]: <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg1-18/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg1-18/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html</a>
</pre>
            </blockquote>
            <pre wrap="" class="moz-quote-pre">Maarten, Ville, any ideas what to do about these?
</pre>
          </blockquote>
          <pre wrap="" class="moz-quote-pre">Looks like we need the timeout to unbreak the modeset vs. reset
deadlock in a timely fashion.

I'm not where we signal/error the fences the modeset is waiting
for, but I guess that must be happening after the whole reset
sequence is done. Doing that earlier would seem like another
solution, but dunno what other fallout it would have.
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">intel_prepare_plane_fb() adds all dma-resv fences for old_obj on
intel_crtc_needs_modeset(), does it change anything if we remove that,
at least for the GPU reset commit?
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
We dropped the ball here a bit, and I'm a bit clueless as to what to
do. Except we'll need to unify i915 and xe here somehow.

Alternatives:

- Remove the timeout from i915 (the patch at hand), and fix the fallout
  somehow.

- Add the timeout to xe, and fix the fallout, if any.

- Add the timeout to display parent interface, which is a bit meh.


</pre>
    </blockquote>
    The mention in the commit is old_obj needs to be wait for flip_done,
    I do not believe this<br>
    is the case that it was ever used in hardware supported by xe, so
    for xe the wait can be dropped entirely.<br>
    <br>
    Is this required for i915 still? In that case you can just eliminate
    the wait only for xe.<br>
    <br>
    Kind regards,<br>
    ~Maarten Lankhorst
  </body>
</html>

--------------iBmZ1clcUsXuEN5JbeWxGKWH--
