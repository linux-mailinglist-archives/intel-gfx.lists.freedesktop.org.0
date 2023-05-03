Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D006D6F5A45
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5C210E13C;
	Wed,  3 May 2023 14:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0833C10E13C
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:39:44 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6F1BA60F23;
 Wed,  3 May 2023 14:39:44 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id AA668C433EF;
 Wed,  3 May 2023 14:39:42 +0000 (UTC)
Date: Wed, 3 May 2023 10:39:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJyLPP98StaIv1g@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <7656b8f58b088c108a2a32f7089329740efabba1.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7656b8f58b088c108a2a32f7089329740efabba1.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 20/24] drm/i915/pmu: drop kernel-doc
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

On Tue, May 02, 2023 at 06:37:37PM +0300, Jani Nikula wrote:
> The comments are closer to not being kernel-doc.
> 
> drivers/gpu/drm/i915/i915_pmu.h:21: warning: cannot understand function prototype: 'enum i915_pmu_tracked_events '
> drivers/gpu/drm/i915/i915_pmu.h:32: warning: cannot understand function prototype: 'enum '
> drivers/gpu/drm/i915/i915_pmu.h:41: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  * How many different events we track in the global PMU mask.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pmu.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index 449057648f39..c30f43319a78 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -14,7 +14,7 @@
>  
>  struct drm_i915_private;
>  
> -/**
> +/*
>   * Non-engine events that we need to track enabled-disabled transition and
>   * current state.
>   */
> @@ -25,7 +25,7 @@ enum i915_pmu_tracked_events {
>  	__I915_PMU_TRACKED_EVENT_COUNT, /* count marker */
>  };
>  
> -/**
> +/*
>   * Slots used from the sampling timer (non-engine events) with some extras for
>   * convenience.
>   */
> @@ -37,7 +37,7 @@ enum {
>  	__I915_NUM_PMU_SAMPLERS
>  };
>  
> -/**
> +/*
>   * How many different events we track in the global PMU mask.
>   *
>   * It is also used to know to needed number of event reference counters.
> -- 
> 2.39.2
> 
