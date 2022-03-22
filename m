Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CC94E4141
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 15:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95BD710E2FC;
	Tue, 22 Mar 2022 14:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A44410E2FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 14:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647959257; x=1679495257;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ShZIYkIzKXhlXtGlI4T+kfEh0KP0ukOq4inZaTGukkI=;
 b=npYl8Rhvkh3okqdGcFPoFG+VU4bEpmULrTg6IutxWmvZJu5FJcACK+Ma
 xGx3Rbrz9Dq4EU0laRNBVCTPM68IdhZaWF806xzC+y2p/BmL6Ds7sxyfi
 hTpjh2Mino0kbSac/VZApLBigaYKgsYQHt3Awk3SiL+KX/xCpkGXvCXc7
 NwSsh8mtG3Yujt9iaGQ0kiMRCYZoNbyuCGT35/ehCokVwyWKu+3zeVXuV
 nC//Hr9ExbpBWl227kAjJB7YcUyPmW7DUC9IJBoUJ5+StirAl85WwF7VQ
 yn1mamEbKH7eO3J9Sl9vJiOgXzUt3c4vatlkdlEQO/u1BDi6ixn7voINk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="255393987"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="255393987"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 07:27:20 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="518896655"
Received: from rtsao-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.134.54])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 07:27:19 -0700
Date: Tue, 22 Mar 2022 07:27:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220322142719.f72lpelqsw7vbnuy@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220215234146.304035-1-casey.g.bowman@intel.com>
 <20220215234146.304035-2-casey.g.bowman@intel.com>
 <f971fcd0-a95e-93c5-46c2-3cd9fe753f9e@intel.com>
 <20220322020144.thmvicqtlpcmkf6l@ldmartin-desk2>
 <87r16ujni0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <87r16ujni0.fsf@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH v3 1/1] i915/drm: Split out x86/arm64
 for run_as_guest
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 22, 2022 at 12:21:59PM +0200, Jani Nikula wrote:
>On Mon, 21 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Mon, Mar 21, 2022 at 04:34:49PM -0700, Casey Bowman wrote:
>>>Wanted to ping this older thread to find out where we stand with this patch,
>>>Are we OK with the current state of these changes?
>>>
>>>With more recent information gathered from feedback on other patches, would
>>>we prefer changing this to a more arch-neutral control flow?
>>>
>>>e.g.
>>>#if IS_ENABLED(CONFIG_X86)
>>>...
>>>#else
>>>...
>>>#endif
>>>
>>>Would we also prefer this RFC series be merged or would it be preferred to
>>>create a new series instead?
>>
>> for this specific function, that is used in only 2 places I think it's
>> ok to do:
>>
>> 	static inline bool run_as_guest(void)
>> 	{
>> 	#if IS_ENABLED(CONFIG_X86)
>> 		return !hypervisor_is_type(X86_HYPER_NATIVE);
>> 	#else	
>> 		/* Not supported yet */
>> 		return false;	
>> 	#endif
>> 	}
>>
>> For PCH it doesn't really matter as we don't execute that function
>> for discrete. For intel_vtd_active() I figure anything other than
>> x86 would be fine with false here.
>>
>> Jani, that this look good to you?
>
>It's more important to me to get this out of i915_drv.h, which is not
>supposed to be a collection of random stuff anymore. I've sent patches
>to this effect but they've stalled a bit.

do you have a patch moving this particular one? got a link?

Lucas De Marchi
