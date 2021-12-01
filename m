Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10202464DCA
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 13:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6446FBA0;
	Wed,  1 Dec 2021 12:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C640C6FB9F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 12:21:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236390721"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236390721"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 04:21:44 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="512687072"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 04:21:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211201103320.2211867-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211201103320.2211867-1-anusha.srivatsa@intel.com>
Date: Wed, 01 Dec 2021 14:21:37 +0200
Message-ID: <878rx4ikha.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v3 0/3]  Introduce Raptor Lake S
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

On Wed, 01 Dec 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Raptor Lake S(RPL-S) is a version 12
> Display, Media and Render. For all i915
> purposes it is the same as Alder Lake S (ADL-S).
>
> The series introduces it as a subplatform
> of ADL-S. The one difference is the GuC
> submission which is default on RPL-S but
> was not the case with ADL-S.

Acked-by: Jani Nikula <jani.nikula@intel.com>

on the series, did not check the pci ids in spec.

>
> Anusha Srivatsa (3):
>   drm/i915/rpl-s: Add PCI IDS for Raptor Lake S
>   drm/i915/rpl-s: Add PCH Support for Raptor Lake S
>   drm/i915/rpl-s: Enable guc submission by default
>
>  arch/x86/kernel/early-quirks.c           | 1 +
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
>  drivers/gpu/drm/i915/i915_pci.c          | 1 +
>  drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
>  drivers/gpu/drm/i915/intel_device_info.h | 3 +++
>  drivers/gpu/drm/i915/intel_pch.c         | 1 +
>  drivers/gpu/drm/i915/intel_pch.h         | 1 +
>  include/drm/i915_pciids.h                | 9 +++++++++
>  9 files changed, 26 insertions(+), 1 deletion(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
