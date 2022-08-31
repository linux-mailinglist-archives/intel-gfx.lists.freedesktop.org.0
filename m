Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C5E5A7778
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 09:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D565410E20B;
	Wed, 31 Aug 2022 07:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D405810E20C;
 Wed, 31 Aug 2022 07:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661930939; x=1693466939;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=x0/1oiQ6qUVRKhdil/YKFBIwfMXQCR9gSdI7IT3ZaZA=;
 b=mPC7tyr412xvxrrcK5Be9yK+Xh+hko9cp79RrEctsb6x+jZzPx54mL83
 4OAmhOENdTl+Ysnwsmsx9aS75rbHdECiWaGu1MLaT6RPCkHx0Dp4d6wlA
 bTK8MFxa0YyNaRyr83YacJAacY8hA9zQoz+44DGSRVt+yNwFzYmKu2lNP
 3HwAarhcLbRaj74hREYJzVzGWtfgurUwDxmGD78civb5Q1MJVIL03dRVB
 lzjqNnhYwi+rCRK9dMgw2kTTszd8SMAHXZdJOWokICBpv+oEaYH5R1Zec
 5R+zWibn2l1Fsv8AgwPIcOb0W++YrwMxYfmv3LFPYxTVFu4ceQfHlWRkr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="275140945"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="275140945"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 00:28:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="715607355"
Received: from rishidub-mobl.amr.corp.intel.com (HELO [10.209.163.109])
 ([10.209.163.109])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 00:28:55 -0700
Message-ID: <e2dcbe63-ef17-b7e1-30c2-6d529eac7c4d@linux.intel.com>
Date: Wed, 31 Aug 2022 08:28:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20220827194403.6495-1-andi.shyti@linux.intel.com>
 <20220827194403.6495-5-andi.shyti@linux.intel.com>
 <620182f7-847b-fcba-88d5-ae8d803d4bd1@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <620182f7-847b-fcba-88d5-ae8d803d4bd1@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH v3 04/17] drm/i915: Implement bind and
 unbind of object
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
Cc: Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Ramalingam C <ramalingampc2008@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/08/2022 19:19, Matthew Auld wrote:
> On 27/08/2022 20:43, Andi Shyti wrote:
>> From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
>>
>> Implement the bind and unbind of an object at the specified GPU virtual
>> addresses.
>>
>> Signed-off-by: Niranjana Vishwanathapura 
>> <niranjana.vishwanathapura@intel.com>
>> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
>> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>

[snip]

>> +static struct i915_vma *vm_bind_get_vma(struct i915_address_space *vm,
>> +                    struct drm_i915_gem_object *obj,
>> +                    struct drm_i915_gem_vm_bind *va)
>> +{
>> +    struct i915_ggtt_view view;
> 
> Should that be renamed to i915_gtt_view? So all of this just works with 
> ppgtt insertion, as-is? I'm impressed.

Yes please, do refactor first in the series. It is my standing request 
since January 2021. See 
ab307584-d97b-4fcf-7d4e-4d7de2d943fd@linux.intel.com from a ~month ago.

Regards,

Tvrtko
