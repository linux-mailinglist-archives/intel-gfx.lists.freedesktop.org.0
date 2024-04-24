Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D13FC8B10A8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 19:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D598113CAF;
	Wed, 24 Apr 2024 17:06:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMizfJ1l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91D23113CBE
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713978414; x=1745514414;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jbuWyJcYafn5nB3dtNVMPF0aSTEvLMhGVJD7xhtGZGw=;
 b=OMizfJ1lWDsBC8hpENLJpdsTZvg+JPjQDsaiDHjXJPYyuORDN6tW8EFy
 qsiGE0Ujsb5eeZ2Pr9RyTt7QLBRsPPbfHG6YYiKnC0XRIjG0CQ555dUoM
 boYGJBig6YYBzz4EFT+fdprmNZf58IqBgjo0c9JLODaPVvpdojmCuw/pX
 eypj/uYqv6AOb5cL14BOyYN8v6weD6pebTsk3lZ0OgAehPtg51yiu5JI7
 9DMkVCfhcd2nsCKko4twCNHQ4xJzdvqVSRfRehc07JbeqexfM5bp+yJr0
 0D+0B2GZV4rhOOLKflY/s69R1/9J2HF5JYOLJAVtwtktCaNfRLYHdrGc8 w==;
X-CSE-ConnectionGUID: tQoPKjK0TPynqqB1MFLFsg==
X-CSE-MsgGUID: dBiQovfOS+O2TzyOEhwpHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11054"; a="32115200"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="32115200"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 10:06:53 -0700
X-CSE-ConnectionGUID: 19Eab9D8T3ypiyFvwZZIZg==
X-CSE-MsgGUID: bKlDRmLDRGe3+vcskTEpqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="24732518"
Received: from unknown (HELO intel.com) ([10.247.119.87])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 10:06:48 -0700
Date: Wed, 24 Apr 2024 19:06:38 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_series_starting_with_=5Bv2=2C1=2F2?= =?utf-8?Q?=5D?=
 drm/i915: Refactor confusing __intel_gt_reset() (rev2)
Message-ID: <Zik8Hr-UxY4LxGfT@ashyti-mobl2.lan>
References: <20240422201951.633-1-nirmoy.das@intel.com>
 <171394657048.1628979.1495409636175588912@8e613ede5ea5>
 <c0350600-db5d-46eb-a9e8-9ca6188a5a66@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c0350600-db5d-46eb-a9e8-9ca6188a5a66@linux.intel.com>
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

Hi Nirmoy,

On Wed, Apr 24, 2024 at 10:56:36AM +0200, Nirmoy Das wrote:
> 
> On 4/24/2024 10:16 AM, Patchwork wrote:
> 
>     Patch Details
> 
>     Series:  series starting with [v2,1/2] drm/i915: Refactor confusing
>              __intel_gt_reset() (rev2)
>     URL:     https://patchwork.freedesktop.org/series/132731/
>     State:   failure
>     Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/
>              index.html
> 
>     CI Bug Log - changes from CI_DRM_14633_full -> Patchwork_132731v2_full
> 
>     Summary
> 
>     FAILURE
> 
>     Serious unknown changes coming with Patchwork_132731v2_full absolutely need
>     to be
>     verified manually.
> 
>     If you think the reported changes have nothing to do with the changes
>     introduced in Patchwork_132731v2_full, please notify your bug team ('
>     I915-ci-infra@lists.freedesktop.org') to allow them
>     to document this new failure mode, which will reduce false positives in CI.
> 
>     External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/
>     index.html
> 
>     Participating hosts (9 -> 8)
> 
>     Missing (1): shard-dg2-set2
> 
>     Possible new issues
> 
>     Here are the unknown changes that may have been introduced in
>     Patchwork_132731v2_full:
> 
>     IGT changes
> 
>     Possible regressions
> 
>       □ igt@gem_exec_await@wide-all:
> 
>           ☆ shard-dg1: NOTRUN -> INCOMPLETE
>       □ igt@gem_exec_gttfill@engines@ccs0:
> 
>           ☆ shard-dg2: NOTRUN -> INCOMPLETE
> 
> These are unrelated as the change only effects where GuC submission disabled.
> 
> Andi, could you please help me merge this one. My dev machine is still broken.

merged into drm-intel-gt-next.

Thanks,
Andi
