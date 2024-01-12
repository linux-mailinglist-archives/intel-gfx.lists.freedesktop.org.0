Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CF882C393
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 17:31:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786D710E130;
	Fri, 12 Jan 2024 16:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B04B510E130
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 16:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705077074; x=1736613074;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to;
 bh=W8uEQI7sGqQLJy2w9antotSa2XPVwlR/wISAYhWjcbU=;
 b=M/BJklmlJ2Oe88DuaPqgWwjsHsnFskX/Vdn8jpgOK7li3F3aWbMc0Ti2
 Qf94kvxkwcQ+Z/EqJ3T9zHctSx+oJv9/5SiwZsiDtjX4KLPeB+XvAly/1
 yYOL7orFt3wYuYH9GrNVbsDkxRXEGOJ8MZMluXlpvuYkkc+vHjyuvSZsB
 6yEvTMSSHcy43y7B6+E1ZdR4KW5tqtj4g1bxfLXpkkJ8Fwdv+Pvub87AC
 gfo9VHHJGjI/IIlqW2WYfIVEdmWoyrP6ggYTfK4fyO0cb/h1c7pnEbYsu
 Mbe+umjBldnrU7DqfvW+Mu0XvT9gPyJMNiaFtUeLIkTWNj7MkwZIBQYdA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="398896630"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; 
 d="scan'208,217";a="398896630"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 08:31:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208,217";a="25036915"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.32.218])
 ([10.246.32.218])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 08:31:13 -0800
Content-Type: multipart/alternative;
 boundary="------------RPFolYhZnuOMbx5DCpS0jdyq"
Message-ID: <d512219a-5c89-46ad-8335-91c43d54c24f@linux.intel.com>
Date: Fri, 12 Jan 2024 17:31:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/15] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-5-ville.syrjala@linux.intel.com>
 <b266f56d-ddad-4836-b888-800c213e842f@linux.intel.com>
 <ZaFW2arHcLdDLTK-@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <ZaFW2arHcLdDLTK-@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------RPFolYhZnuOMbx5DCpS0jdyq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 1/12/2024 4:12 PM, Ville Syrjälä wrote:
> On Wed, Jan 10, 2024 at 11:49:47AM +0100, Nirmoy Das wrote:
>> Hi Ville,
>>
>> Apologies, but I lost track of this series after I returned from sick leave.
>>
>>
>> On 12/15/2023 11:59 AM, Ville Syrjala wrote:
>>> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>>
>>> On MTL accessing stolen memory via the BARs is somehow borked,
>>> and it can hang the machine. As a workaround let's bypass the
>>> BARs and just go straight to DSMBASE/GSMBASE instead.
>>>
>>> Note that on every other platform this itself would hang the
>>> machine, but on MTL the system firmware is expected to relax
>>> the access permission guarding stolen memory to enable this
>>> workaround, and thus direct CPU accesses should be fine.
>>>
>>> TODO: add w/a numbers and whatnot
>>>
>>> Cc: Paz Zcharya<pazz@chromium.org>
>>> Cc: Nirmoy Das<nirmoy.das@intel.com>
>>> Cc: Radhakrishna Sripada<radhakrishna.sripada@intel.com>
>>> Cc: Joonas Lahtinen<joonas.lahtinen@linux.intel.com>
>>> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
>>>    drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
>>>    2 files changed, 22 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>>> index ee237043c302..252fe5cd6ede 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
>>> @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>>>    		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
>>>    	}
>>>    
>>> -	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
>>> +	if (IS_METEORLAKE(i915)) {
>>> +		/*
>>> +		 * Workaround: access via BAR can hang MTL, go directly to DSM.
>>> +		 *
>>> +		 * Normally this would not work but on MTL the system firmware
>>> +		 * should have relaxed the access permissions sufficiently.
>>> +		 */
>>> +		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
>>> +		io_size = dsm_size;
>> This will work well on host driver but I am afraid this will not work on
>> VM when someone tries to do direct device assignment of the igfx.
>>
>> GSMBASE/DSMBASE is reserved region so won't show up in VM, last I checked.
> Hmm. So BARs get passed over but other regions won't be? I wonder if
> there's a way to pass them explicitly...

Yes, when a user ask qemu to pass though a pci device then qemu will 
ensure to map those

BARs.

>
>> This is an obscure usages but are we suppose to support that? If so then
>> we need to detect that and fall back to binder approach.
> I suppose some people may attempt it. But I'm not sure how well that
> will work in practice even on other platforms. I don't think we've
> ever really considered that use case any kind of priority so bug
> reports tend to go unanswered.
>
> My main worry with the MI_UPDATE_GTT stuff is:
> - only used on this one platform so very limited testing coverage
> - async so more opprtunities to screw things up
> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
>    to finish?
> - requires working command submission, so even getting a working
>    display now depends on a lot more extra components working correctly
>
> hence the patch to disable it. During testing my MTL was very unstable
> so I wanted to eliminate all potential sources of new bugs.

Valid concerns but unfortunately MI_UPDATE_GTT is the only generic 
solution came up in the discussions

which supports host, vm, also SRIOV case.

>
> Hmm. But we can't even use MI_UPDATE_GTT until command submission is
> up and running, so we still need the direct CPU path for early ggtt
> setup no?

It is very unlikely for the bug to appear when there is only single user 
of the GPU. So the HW team is fine with

having a small window where we do modify GTT using stolen.


How about a modparam which defaults to your approach and have a doc 
saying to use binder on VM ?

It would be nice if i915 could detect if it is running in virtualized 
environment but I don't have any ideas for that.


Regards,

Nirmoy


>   So if we can't pass the stolen directly to the VM the only
> option would be to use the BARs for that and risk hanging the machine.
Question how would i915 detect if it is running in VM environment
>
--------------RPFolYhZnuOMbx5DCpS0jdyq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/12/2024 4:12 PM, Ville Syrjälä
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:ZaFW2arHcLdDLTK-@intel.com">
      <pre class="moz-quote-pre" wrap="">On Wed, Jan 10, 2024 at 11:49:47AM +0100, Nirmoy Das wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hi Ville,

Apologies, but I lost track of this series after I returned from sick leave.


On 12/15/2023 11:59 AM, Ville Syrjala wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">From: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>

On MTL accessing stolen memory via the BARs is somehow borked,
and it can hang the machine. As a workaround let's bypass the
BARs and just go straight to DSMBASE/GSMBASE instead.

Note that on every other platform this itself would hang the
machine, but on MTL the system firmware is expected to relax
the access permission guarding stolen memory to enable this
workaround, and thus direct CPU accesses should be fine.

TODO: add w/a numbers and whatnot

Cc: Paz Zcharya <a class="moz-txt-link-rfc2396E" href="mailto:pazz@chromium.org">&lt;pazz@chromium.org&gt;</a>
Cc: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com">&lt;nirmoy.das@intel.com&gt;</a>
Cc: Radhakrishna Sripada <a class="moz-txt-link-rfc2396E" href="mailto:radhakrishna.sripada@intel.com">&lt;radhakrishna.sripada@intel.com&gt;</a>
Cc: Joonas Lahtinen <a class="moz-txt-link-rfc2396E" href="mailto:joonas.lahtinen@linux.intel.com">&lt;joonas.lahtinen@linux.intel.com&gt;</a>
Signed-off-by: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
---
  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
  2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index ee237043c302..252fe5cd6ede 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
  		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
  	}
  
-	if (pci_resource_len(pdev, GEN12_LMEM_BAR) &lt; lmem_size) {
+	if (IS_METEORLAKE(i915)) {
+		/*
+		 * Workaround: access via BAR can hang MTL, go directly to DSM.
+		 *
+		 * Normally this would not work but on MTL the system firmware
+		 * should have relaxed the access permissions sufficiently.
+		 */
+		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) &amp; GEN12_BDSM_MASK;
+		io_size = dsm_size;
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
This will work well on host driver but I am afraid this will not work on 
VM when someone tries to do direct device assignment of the igfx.

GSMBASE/DSMBASE is reserved region so won't show up in VM, last I checked.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Hmm. So BARs get passed over but other regions won't be? I wonder if
there's a way to pass them explicitly...</pre>
    </blockquote>
    <p>Yes, when a user ask qemu to pass though a pci device then qemu
      will ensure to map those</p>
    <p>BARs.<br>
    </p>
    <blockquote type="cite" cite="mid:ZaFW2arHcLdDLTK-@intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
This is an obscure usages but are we suppose to support that? If so then 
we need to detect that and fall back to binder approach.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
I suppose some people may attempt it. But I'm not sure how well that
will work in practice even on other platforms. I don't think we've
ever really considered that use case any kind of priority so bug
reports tend to go unanswered.

My main worry with the MI_UPDATE_GTT stuff is:
- only used on this one platform so very limited testing coverage
- async so more opprtunities to screw things up
- what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
  to finish?
- requires working command submission, so even getting a working
  display now depends on a lot more extra components working correctly

hence the patch to disable it. During testing my MTL was very unstable
so I wanted to eliminate all potential sources of new bugs.</pre>
    </blockquote>
    <p>Valid concerns but <span style="white-space: pre-wrap">unfortunately MI_UPDATE_GTT </span>is
      the only generic solution came up in the discussions</p>
    <p>which supports host, vm, also SRIOV case.<br>
    </p>
    <blockquote type="cite" cite="mid:ZaFW2arHcLdDLTK-@intel.com">
      <pre class="moz-quote-pre" wrap="">

Hmm. But we can't even use MI_UPDATE_GTT until command submission is
up and running, so we still need the direct CPU path for early ggtt
setup no?</pre>
    </blockquote>
    <p>It is very unlikely for the bug to appear when there is only
      single user of the GPU. So the HW team is fine with </p>
    <p>having a small window where we do modify GTT using stolen. </p>
    <p><br>
    </p>
    <p>How about a modparam which defaults to your approach and have a
      doc saying to use binder on VM ? <br>
    </p>
    <p>It would be nice if i915 could detect if it is running in
      virtualized environment but I don't have any ideas for that.<br>
    </p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Nirmoy<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:ZaFW2arHcLdDLTK-@intel.com">
      <pre class="moz-quote-pre" wrap=""> So if we can't pass the stolen directly to the VM the only
option would be to use the BARs for that and risk hanging the machine.</pre>
    </blockquote>
    Question how would i915 detect if it is running in VM environment <br>
    <blockquote type="cite" cite="mid:ZaFW2arHcLdDLTK-@intel.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
    </blockquote>
  </body>
</html>

--------------RPFolYhZnuOMbx5DCpS0jdyq--
