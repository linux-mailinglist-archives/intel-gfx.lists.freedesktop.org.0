Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEC260AC36
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 16:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E8410E745;
	Mon, 24 Oct 2022 14:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A5F10E745
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 14:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666620281; x=1698156281;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jaEvPANn7ik7+2RnvNJZacfB8LiZylvP/dbi+4cFGhY=;
 b=gnRmltwCLAqIx1f3pZfXoNmbiat5YvX6qwd680NOkZhJ+4DbNgD/rcoQ
 XQu0GkhBw6L2GGYbcL3VILSI2UaShyPdRYiahHIXwYYNuMExrFPPveZer
 Kx+YnednuLdv4OvzzvISEKrDns+EDuJNvjTTJvZBlLquCKthBhekprrXV
 HGZuGDdjlEET3kncQAMXLhYYCDPIph4+gZPELsbv+g/XwE0O0qXBiLLvn
 GDNfileYraG6PHGoGpSkxgcJnO91DR/WQIjVsOWTzntV0dBKrbgwjjb7J
 dt+YETBtMZUn4R351om48c3Jqbte4RN1qKH8FArqZuMjBrODolQenRsYS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="309110342"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="309110342"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 07:03:56 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="773825322"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="773825322"
Received: from cwilso3-mobl.fi.intel.com (HELO [10.252.13.22]) ([10.252.13.22])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 07:03:51 -0700
Message-ID: <06019ccb-2833-0906-47e0-c30879ff5ec2@intel.com>
Date: Mon, 24 Oct 2022 15:03:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-GB
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220923143125.5768-1-anshuman.gupta@intel.com>
 <20221021095525.788221-1-anshuman.gupta@intel.com>
 <20221021095525.788221-2-anshuman.gupta@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20221021095525.788221-2-anshuman.gupta@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/dgfx: Grab wakeref at
 i915_ttm_unmap_virtual
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/10/2022 10:55, Anshuman Gupta wrote:
> We had already grabbed the rpm wakeref at obj destruction path,
> but it also required to grab the wakeref when object moves.
> When i915_gem_object_release_mmap_offset() gets called by
> i915_ttm_move_notify(), it will release the mmap offset without
> grabbing the wakeref. We want to avoid that therefore,
> grab the wakeref at i915_ttm_unmap_virtual() accordingly.
> 
> While doing that also changed the lmem_userfault_lock from
> mutex to spinlock, as spinlock widely used for list.
> 
> Also changed if (obj->userfault_count) to
> GEM_BUG_ON(!obj->userfault_count).
> 
> v2:
> - Removed lmem_userfault_{list,lock} from intel_gt. [Matt Auld]
> 
> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
