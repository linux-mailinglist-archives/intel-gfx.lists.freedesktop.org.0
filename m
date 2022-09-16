Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DA05BAB97
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 12:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC4510E340;
	Fri, 16 Sep 2022 10:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC28210E340
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 10:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663325335; x=1694861335;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bqcgJxdB0K6M3ciPNlMqrt/v1Cb5S/ehRtINcSzHykU=;
 b=Al3Nr5KxSiJYzbnFdk6uIAPVOwTqasVE8nLNvK+f1D1jcosEP1EZqJEV
 7fBs4Hgm82TpJnrdsXyk7mrzJfREINFRdXwe7ugb1ON6vZTpZWa6fTAMx
 Sylt4uBIHPUds56ynS3INN9UrWMMcZe6fXIetUBeh6nkkR1ojr9D4lH7V
 zpmphu3qQBhJm5U/xPaOD3F7MlPaX8NK8C+Bn3fobWiEAamPVGSRreJoB
 mtNm8qJwAP6Ie7FRPUg4+gZviZW7XIYcsCjWPhaDDvqWw7SbtPYWxur6e
 R0wo/4DsRhgr6cFwIllbxdNi1SxYJI/7oAwVOwBHheGnaf54eDqaPXtth A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="362929565"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="362929565"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 03:48:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="613220092"
Received: from agiridha-mobl1.ger.corp.intel.com (HELO [10.213.204.25])
 ([10.213.204.25])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 03:48:39 -0700
Message-ID: <f6b322d7-7950-8aae-b26e-041d92e189e1@linux.intel.com>
Date: Fri, 16 Sep 2022 11:48:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220915103311.5634-1-anshuman.gupta@intel.com>
 <20220915103311.5634-2-anshuman.gupta@intel.com>
 <e7def4d0-e0e7-2da2-f6f1-bd514672ca48@linux.intel.com>
 <CY5PR11MB621113F5EEE9FC6AB9ECA22A95489@CY5PR11MB6211.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CY5PR11MB621113F5EEE9FC6AB9ECA22A95489@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map
 against rpm
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/09/2022 11:30, Gupta, Anshuman wrote:
>> -----Original Message-----
>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Sent: Thursday, September 15, 2022 10:37 PM
>> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Auld, Matthew <matthew.auld@intel.com>; Vivi, Rodrigo
>> <rodrigo.vivi@intel.com>
>> Subject: Re: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map against
>> rpm
>>
>>
>> On 15/09/2022 11:33, Anshuman Gupta wrote:
>>> If i915 gem obj lies in lmem, then i915_gem_object_pin_map need to
>>> grab a rpm wakeref to make sure gfx PCIe endpoint function stays in D0
>>> state during any access to mapping returned by
>>> i915_gem_object_pin_map().
>>> Subsequently i915_gem_object_upin_map will put the wakref as well.
>>
>> Another thing to check are perma pinned contexts. Follow the flow from
>> intel_engine_create_pinned_context to intel_engine_destroy_pinned_context.
>> If you find out that kernel (&co) contexts are pinned for the duration of i915
>> load/bind and that they use lmem objects, that would mean wakeref is held for
>> the duration of i915 loaded state. Defeating the point and making the solution
>> effectively equal to just disabling RPM.
> That’s correct  intel_ring_pin can pin_map the lmem object.
>        if (i915_vma_is_map_and_fenceable(vma)) {
>                  addr = (void __force *)i915_vma_pin_iomap(vma);
>          } else {
>                  int type = i915_coherent_map_type(vma->vm->i915, vma->obj, false);
> 
>                  addr = i915_gem_object_pin_map(vma->obj, type);
>          }
> 
> If that is the case this RFC proposal will not work and in that case 

Right, or LRC state for perma pinned contexts is probably even more 
clear cut.

every caller of  i915_gem_object_pin_map need to grab the wakreref before
> accessing the retuned address by pin_map. Any inputs from you side for any other approach.

I didn't quite get what you meant here.

My point was that if my thinking that perma pinned contexts would hold 
the wakeref permanently is correct, that would prevent the approach from 
this patch to have a different effect from just disabling RPM. Would 
unpinning the perma pinned contexts on GT park be feasible? It's not a 5 
minute question and unfortunately I don't have enough time to go deep 
into this problem space. Like Hopefully someone else can jump in.

Regards,

Tvrtko
