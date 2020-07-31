Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 339C7234B7A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 21:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D52C6EB3E;
	Fri, 31 Jul 2020 19:11:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CED6EB3E
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 19:11:08 +0000 (UTC)
IronPort-SDR: km7ylXEf/yMmtrAJIkNw3RbBJnvqDPlhqZ2uPhKz8w+D64qaMX6oR8fRx44D32AAt55m0UN7gS
 9fe216cLWZ6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="216296256"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="216296256"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:11:07 -0700
IronPort-SDR: x/qcFG/bKBZ0BEMlbw5IQK+bl6J+TE7UrH/emkDLvoVLBOOIdrxOfFSqN7sgW/dwTjp5BR/tZY
 9GGyWew2VMWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="274578261"
Received: from nk4-mobl1.gar.corp.intel.com (HELO [10.252.37.207])
 ([10.252.37.207])
 by fmsmga008.fm.intel.com with ESMTP; 31 Jul 2020 12:11:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200731134553.156492-1-lionel.g.landwerlin@intel.com>
 <20200731134553.156492-3-lionel.g.landwerlin@intel.com>
 <159620596470.21624.386540668077781122@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <321c335c-35a4-381f-c9d1-42221d6cad41@intel.com>
Date: Fri, 31 Jul 2020 22:11:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159620596470.21624.386540668077781122@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: add syncobj timeline support
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 31/07/2020 17:32, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-07-31 14:45:52)
>> Introduces a new parameters to execbuf so that we can specify syncobj
>> handles as well as timeline points.
>>
>> v2: Reuse i915_user_extension_fn
>>
>> v3: Check that the chained extension is only present once (Chris)
>>
>> v4: Check that dma_fence_chain_find_seqno returns a non NULL fence (Lionel)
>>
>> v5: Use BIT_ULL (Chris)
>>
>> v6: Fix issue with already signaled timeline points,
>>      dma_fence_chain_find_seqno() setting fence to NULL (Chris)
>>
>> v7: Report ENOENT with invalid syncobj handle (Lionel)
>>
>> v8: Check for out of order timeline point insertion (Chris)
>>
>> v9: After explanations on
>>      https://lists.freedesktop.org/archives/dri-devel/2019-August/229287.html
>>      drop the ordering check from v8 (Lionel)
>>
>> v10: Set first extension enum item to 1 (Jason)
> The other unaddressed issue here is that we do not need to arbitrarily
> limit the caller to only a single extension. The code to handle multiple
> invocations is actually smaller...
> -Chris

You mean an application could send multiple 
DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES items in the chain of 
extensions?

That's somewhat different than how the current fences are handled.

If other extension want to support that, that's up to them.

We don't have any use for multiple arrays of timeline fences for a given 
execbuf in our userspace driver.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
