Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DC4467407
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 10:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E740F73ADF;
	Fri,  3 Dec 2021 09:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5321F73ADD;
 Fri,  3 Dec 2021 09:27:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="237170527"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="237170527"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 01:27:05 -0800
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="610333853"
Received: from barrettd-mobl.ger.corp.intel.com (HELO [10.213.208.70])
 ([10.213.208.70])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 01:27:03 -0800
Message-ID: <7576de4a-fbd9-ea5c-2d3d-1c5ada9f30e1@linux.intel.com>
Date: Fri, 3 Dec 2021 09:27:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211203063545.2254380-1-anusha.srivatsa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211203063545.2254380-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [v3 0/3] Introduce Raptor Lake S
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, x86@kernel.org,
 dri-devel@lists.freedesktop.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/12/2021 06:35, Anusha Srivatsa wrote:
> Raptor Lake S(RPL-S) is a version 12
> Display, Media and Render. For all i915
> purposes it is the same as Alder Lake S (ADL-S).
> 
> The series introduces it as a subplatform
> of ADL-S. The one difference is the GuC
> submission which is default on RPL-S but
> was not the case with ADL-S.

As a side note, not a blocker of any kind, I am slightly disheartened 
but the confusion of ADL_P and ADL_S being separate platforms, but then 
RPL_S is subplatform of ADL_S. Maybe it is just me not being able to 
keep track of things.

> All patches are reviewed. Jani has acked the series.
> Looking for other acks in order to merge these to
> respective branches.

Which branches would that be for this series? First two to 
drm-intel-next and last one to drm-intel-gt-next? Is that complication 
needed and/or worth the effort?

Regards,

Tvrtko

> Cc: x86@kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> 
> Anusha Srivatsa (3):
>    drm/i915/rpl-s: Add PCI IDS for Raptor Lake S
>    drm/i915/rpl-s: Add PCH Support for Raptor Lake S
>    drm/i915/rpl-s: Enable guc submission by default
> 
>   arch/x86/kernel/early-quirks.c           | 1 +
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 2 +-
>   drivers/gpu/drm/i915/i915_drv.h          | 2 ++
>   drivers/gpu/drm/i915/i915_pci.c          | 1 +
>   drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
>   drivers/gpu/drm/i915/intel_device_info.h | 3 +++
>   drivers/gpu/drm/i915/intel_pch.c         | 1 +
>   drivers/gpu/drm/i915/intel_pch.h         | 1 +
>   include/drm/i915_pciids.h                | 9 +++++++++
>   9 files changed, 26 insertions(+), 1 deletion(-)
> 
