Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC8E4EC818
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 17:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CFB710E315;
	Wed, 30 Mar 2022 15:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4242310E315
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 15:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648653743; x=1680189743;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=a2BhT8VZXxxcnyDxj6tBJk5SQoJ6y8vdzkIRCnWiQ0o=;
 b=HidCX8zw/c7EjzINmnSr/z2V6mq3r4rtRGx+bNHLt641fNrCGp7oOBrm
 r4c5g3vOkqj7ppiRUeaZoPjtI3LOzDIgDC76mJUwziLQ9sh2DCcuWg3BZ
 lT02osFprnUGwQ/10RyUPKP9DTEhX4wWK0P1ErhKOy8hcVvQFWwbbzQl5
 SqYx8i0ChXnJQQzFhVxGRL7oEviFkVYhZyjAtHC1MX6HfKevNFN+n8A51
 RzPHE2PeRobuMvJsQpetRhy71xOCY9Cp82jsogYs2oZvwmzgpGtYZiWzO
 ysqc7A+N9PVONSpIhPjF3JLdi/4DTf2Ax4UzsQjwxWubSgqIhazGOi0bg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="346006473"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="346006473"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:22:22 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="521929153"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:22:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, "Sarvela, Tomi P"
 <tomi.p.sarvela@intel.com>
In-Reply-To: <164864512219.8653.2654209743690297581@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220330124119.224966-1-jani.nikula@intel.com>
 <164864512219.8653.2654209743690297581@emeril.freedesktop.org>
Date: Wed, 30 Mar 2022 18:22:18 +0300
Message-ID: <87o81nbh3p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Mar 2022, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: series starting with [RESEND,1/3] drm/i915/dmc: abstract GPU error state dump
> URL   : https://patchwork.freedesktop.org/series/101957/
> State : failure

I don't get why this doesn't apply.

It applies for me.


BR,
Jani.


>
> == Summary ==
>
> Applying: drm/i915/dmc: abstract GPU error state dump
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/display/intel_dmc.c
> M	drivers/gpu/drm/i915/display/intel_dmc.h
> M	drivers/gpu/drm/i915/i915_gpu_error.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/i915_gpu_error.c
> Auto-merging drivers/gpu/drm/i915/display/intel_dmc.h
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dmc.h
> Auto-merging drivers/gpu/drm/i915/display/intel_dmc.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dmc.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0001 drm/i915/dmc: abstract GPU error state dump
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
>
>

-- 
Jani Nikula, Intel Open Source Graphics Center
