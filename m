Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 965F04CF7C1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 10:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD48110E1A6;
	Mon,  7 Mar 2022 09:51:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B18B710E1A6
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 09:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646646662; x=1678182662;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=KfOiQeED3aDcX+GEx/YVrIDRyeZoi8elORcGmHqeBFo=;
 b=PeDMrrEfauBL+Jny2fN56QTDeg+ANb4TWUqyAPWJUB2mrRud5qitn83B
 rfp6CkJRnl5m6ZXxe6yu8gttBtmqHaIb8T008HgWU+m3jI3Cm/XKfaRYD
 Qq7QnUrv1s9tjwmCPVFRmBSGoieVH0SkGjcKhcsEIcgqmel2XPBqWvmia
 J5UURebxfddr4ivrVmdu6CdyZ6CScRKZS6aKjgyf7a9jZwUh2W0dvKnk5
 pAng08GhQbfl83q+9F2sioGTc7aoZhbRKrYlHAFAN/nQorYh0pl3Cipn8
 YVjJPkE6GaLEaQL8agbxqrIUVkThl9JNrYvuAelF/Mj7Mf/nWUJYIEesi A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="315065666"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="315065666"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 01:51:02 -0800
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="553089362"
Received: from kennedym-mobl.ger.corp.intel.com (HELO [10.213.196.214])
 ([10.213.196.214])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 01:51:01 -0800
Message-ID: <07ca7e36-5691-e81c-968a-c32c522819fe@linux.intel.com>
Date: Mon, 7 Mar 2022 09:50:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20220305233615.126109-1-vivek.kasireddy@intel.com>
 <164652560497.16579.12634250542569546323@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <164652560497.16579.12634250542569546323@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/mm=3A_Add_an_iterator_to_optimally_walk_over_holes_suit?=
 =?utf-8?q?able_for_an_allocation?=
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



On 06/03/2022 00:13, Patchwork wrote:

> -:157: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'mode' may be better as '(mode)' to avoid precedence issues
> #157: FILE: include/drm/drm_mm.h:430:
> +#define drm_mm_for_each_suitable_hole(pos, mm, range_start, range_end, \
> +				      size, mode) \
> +	for (pos = __drm_mm_first_hole(mm, range_start, range_end, size, \
> +				       mode & ~DRM_MM_INSERT_ONCE); \
> +	     pos; \
> +	     pos = mode & DRM_MM_INSERT_ONCE ? \
> +	     NULL : __drm_mm_next_hole(mm, pos, size, \
> +				       mode & ~DRM_MM_INSERT_ONCE))

CI results are good I think but please do fix this warning.

Regards,

Tvrtko
