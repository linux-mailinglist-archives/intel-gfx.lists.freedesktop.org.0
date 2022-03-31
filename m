Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5424ED5BB
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 10:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118FB10F6DC;
	Thu, 31 Mar 2022 08:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0668710F6DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 08:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648715759; x=1680251759;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fq+9mYvok5PEj99jmJGYiPz+s1lfAo2BoI6FYHuLcPI=;
 b=YV6Byfh+FoOloHUFo37bJBmD8/OIoMLcl+2hJlO+Lgi599EAxBqItJTN
 sHP7smYmP/mMD7feJiIaPwngh6FJ2i3uyZzlh4BJOArtfQ8Z9VNi9TBML
 UYix4FbY0Iso41SB5IXjIsamj1IkXqnzjfWdbBvOnSdM1H9Qzqpgcsk4W
 6AalI+3U34HeeaATzllZ7Cl9ks5scuveN8yTUj4Dz8kjcnA/zeIyd+HCz
 6cmgMbug2n3KE7icqi9pevVGcRCtdPPtCK6sUtZKEVdYuO9POdIwI+hb+
 huA8fMe5eI7DF9o9ob5Eath9fSOuAyLo6RF8VlJHRXlooVzzsfqZKT+7o Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="284673610"
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="284673610"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 01:35:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,224,1643702400"; d="scan'208";a="503647561"
Received: from vvendra-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.255.230.104])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 01:35:49 -0700
Date: Thu, 31 Mar 2022 01:35:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Message-ID: <20220331083544.ygz24w235rxrjnyi@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220330124119.224966-1-jani.nikula@intel.com>
 <164864512219.8653.2654209743690297581@emeril.freedesktop.org>
 <87o81nbh3p.fsf@intel.com>
 <CO6PR11MB563617D3D6FA4472A9FB66A4DEE19@CO6PR11MB5636.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CO6PR11MB563617D3D6FA4472A9FB66A4DEE19@CO6PR11MB5636.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BRESEND=2C1/3=5D_drm/i915/dmc=3A_abstract?=
 =?utf-8?q?_GPU_error_state_dump?=
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 31, 2022 at 08:28:09AM +0000, Tomi Sarvela wrote:
>The latest CI_DRM built is 11416; after that, there is build error:
>drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c: In function 'amdgpu_gtt_mgr_recover':
>drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c:200:31: error: 'struct ttm_range_mgr_node' has no member named 'tbo'
>   amdgpu_ttm_recover_gart(node->tbo);
>                               ^~
>  CC [M]  drivers/net/ethernet/intel/igb/e1000_mbx.o
>scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.o' failed

just fixed that

>
>The patch is applied against latest working build commit. Can you try your patch against
> CI_DRM_11416 1dc2c6953e2689a0e5b7cca8450da14059d35f03
>and see if you get the same error?

so maybe just a re-trigger should work?

Lucas De Marchi

>
>Tomi
>
>> From: Nikula, Jani <jani.nikula@intel.com>
>>
>> On Wed, 30 Mar 2022, Patchwork <patchwork@emeril.freedesktop.org>
>> wrote:
>> > == Series Details ==
>> >
>> > Series: series starting with [RESEND,1/3] drm/i915/dmc: abstract GPU error
>> state dump
>> > URL   : https://patchwork.freedesktop.org/series/101957/
>> > State : failure
>>
>> I don't get why this doesn't apply.
>>
>> It applies for me.
>>
>>
>> BR,
>> Jani.
>>
>>
>> >
>> > == Summary ==
>> >
>> > Applying: drm/i915/dmc: abstract GPU error state dump
>> > Using index info to reconstruct a base tree...
>> > M	drivers/gpu/drm/i915/display/intel_dmc.c
>> > M	drivers/gpu/drm/i915/display/intel_dmc.h
>> > M	drivers/gpu/drm/i915/i915_gpu_error.c
>> > Falling back to patching base and 3-way merge...
>> > Auto-merging drivers/gpu/drm/i915/i915_gpu_error.c
>> > Auto-merging drivers/gpu/drm/i915/display/intel_dmc.h
>> > CONFLICT (content): Merge conflict in
>> drivers/gpu/drm/i915/display/intel_dmc.h
>> > Auto-merging drivers/gpu/drm/i915/display/intel_dmc.c
>> > CONFLICT (content): Merge conflict in
>> drivers/gpu/drm/i915/display/intel_dmc.c
>> > error: Failed to merge in the changes.
>> > hint: Use 'git am --show-current-patch=diff' to see the failed patch
>> > Patch failed at 0001 drm/i915/dmc: abstract GPU error state dump
>> > When you have resolved this problem, run "git am --continue".
>> > If you prefer to skip this patch, run "git am --skip" instead.
>> > To restore the original branch and stop patching, run "git am --abort".
>> >
>> >
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center
