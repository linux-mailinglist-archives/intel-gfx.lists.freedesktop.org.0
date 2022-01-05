Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FBF485A06
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 21:29:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 815E710E5CC;
	Wed,  5 Jan 2022 20:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C336310E5CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 20:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641414538; x=1672950538;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OlELdqxnQq7sxZF73SRRHISvYFB1+0j+1vroKCF+PxM=;
 b=D2zPjJYn0WL7JU2YIHQHq9pXw0JW8w513nsHT2LodzQPdPCJs6Ih5dwN
 CLQpa5ic8ZVVlh7fp8uzOQJKtNb4Mka619Rc1fXBiA40fnOhDz+qhKn1q
 6CcE1a5usXS3DfZ3VfIlIOaLXpVGywut0ZFchfojfEJy2+GkCEtjKbJk8
 lM93WW0nSBoZL9FiwfFfz/NX54RLRRPLgNc0tTHZ0nLWgeNlyNYzEp1oD
 2y1W1lBKZXTzC56bnRpuonku04jBGrFn21HmKtJUbbsSJ80xWIvYrTQS2
 hT6cwAiL5eWlLTuS+L9LCAOGrxPcUG+fEwU2PQTeUCZuwSJZ5S1WH8Mlr g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229854839"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="229854839"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 12:28:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="526689076"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 12:28:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
In-Reply-To: <164141342082.25402.15604951649221430139@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1641411696.git.jani.nikula@intel.com>
 <164141342082.25402.15604951649221430139@emeril.freedesktop.org>
Date: Wed, 05 Jan 2022 22:28:54 +0200
Message-ID: <875yqyj5a1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_clean_up_i915=5Fdrv=2Eh?=
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

On Wed, 05 Jan 2022, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: clean up i915_drv.h
> URL   : https://patchwork.freedesktop.org/series/98515/
> State : failure
>
> == Summary ==
>
> Applying: drm/i915: split out i915_getparam.h from i915_drv.h
> Applying: drm/i915: split out i915_cmd_parser.h from i915_drv.h
> Applying: drm/i915: split out i915_gem_evict.h from i915_drv.h
> Applying: drm/i915: split out gem/i915_gem_userptr.h from i915_drv.h
> Applying: drm/i915: split out gem/i915_gem_tiling.h from i915_drv.h
> Applying: drm/i915: split out i915_gem.h declarations from i915_drv.h
> Applying: drm/i915: split out i915_gem_internal.h from i915_drv.h
> error: sha1 information is lacking or useless (drivers/gpu/drm/i915/i915_drv.h).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0007 drm/i915: split out i915_gem_internal.h from i915_drv.h
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

Don't know what gives, the series rebases just fine without conflicts.

I guess let's review first, and I'll split smaller series for CI because
this is going to be painful.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
