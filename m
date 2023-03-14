Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6615C6B8E6D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 10:18:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF9610E73F;
	Tue, 14 Mar 2023 09:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 373E310E73F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 09:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678785507; x=1710321507;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=anSUTNcuUh7L2lR0MZ54+zVxln0YhqqcHAuPO9oKveA=;
 b=Pa5cDrhoPhetdOza7llhakx1na04FbSNQw+6OXruAiui/wIXZSIkBa3i
 LPoViwc4M4UpgGxMg81kDHVEMwf234CUpTvtJey7QRKDmnv+1Y5Pn8Avs
 4Ke9m8VUhkuOO6VBsxicNi/1+IxAY1OAAqvlcvm8TNZiuj25+S3zpIwU6
 8nWjDwqO8gDi+i87OAMuP7L9OakbdD+wF08V4fDWgqLIp8EioEDmnG5rG
 PEXh2fgjUAA+/N72FxN4whUj4grO7TRMAbxTcvIJd8cWSMnF/gEovvhUR
 QAAoM8FFC29e0PJpD4Q3G6w9uVUpimfzAcrAIY5TAS0qHLixPRKZiObdL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="339738091"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="339738091"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="709214533"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="709214533"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.33.210])
 ([10.252.33.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:18:17 -0700
Message-ID: <42be0620-031b-55f8-2ed7-fc8b9ae31865@linux.intel.com>
Date: Tue, 14 Mar 2023 10:18:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Andi Shyti <andi.shyti@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>
References: <20230307144652.17595-1-nirmoy.das@intel.com>
 <ZA9teJEVT7CDxNd8@ashyti-mobl2.lan>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <ZA9teJEVT7CDxNd8@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] drm/i915: Add a function to mmap
 framebuffer obj
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi,

On 3/13/2023 7:37 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> [...]
>
>> +int i915_gem_fb_mmap(struct drm_i915_gem_object *obj, struct vm_area_struct *vma)
>> +{
>> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>> +	struct drm_device *dev = &i915->drm;
>> +	struct i915_mmap_offset *mmo = NULL;
>> +	enum i915_mmap_type mmap_type;
>> +	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>> +
>> +	if (drm_dev_is_unplugged(dev))
>> +		return -ENODEV;
>> +
>> +	mmap_type = i915_ggtt_has_aperture(ggtt) ? I915_MMAP_TYPE_GTT : I915_MMAP_TYPE_WC;
>> +	mmo = mmap_offset_attach(obj, mmap_type, NULL);
>> +	if (!mmo)
>> +		return -ENODEV;
>> +
>> +	obj = i915_gem_object_get(mmo->obj);
> Where do we decrease the refcount?


This actually needs some comment even for the existing code.


We install vm_ops for the mmap which comes with vm_ops_cpu.open() and 
vm_ops_cpu.close()

where we do i915_gem_object_get()  on open and i915_gem_object_put() on 
close.

static const struct vm_operations_struct vm_ops_cpu = {
         .fault = vm_fault_cpu,
         .access = vm_access,
         .open = vm_open,
         .close = vm_close,
};

But when we install the vm_ops we are too late for vm_ops_cpu.open() so 
to account for the missing we are doing a i915_gem_object_get()  in mmap 
call.


Regards,

Nirmoy

>
> Andi
>
>> +	return i915_gem_object_mmap(obj, mmo, vma);
>> +}
>> +
