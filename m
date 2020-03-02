Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C69D31760D5
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 18:14:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182416E5BF;
	Mon,  2 Mar 2020 17:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552F26E5BF
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 17:14:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 09:14:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="233235825"
Received: from unknown (HELO localhost) ([10.252.41.44])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 09:14:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200302145254.520447-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200302145254.520447-1-chris@chris-wilson.co.uk>
Date: Mon, 02 Mar 2020 19:14:07 +0200
Message-ID: <87pnduptls.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix doclinks
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 02 Mar 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Update locations for
>
> ./drivers/gpu/drm/i915/i915_vma.h:1: warning: 'Virtual Memory Address' not found
> ./drivers/gpu/drm/i915/i915_gem_gtt.c:1: warning: 'Global GTT views' not found
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  Documentation/gpu/i915.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index e539c42a3e78..becb648bd958 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -332,7 +332,7 @@ This process is dubbed relocation.
>  GEM BO Management Implementation Details
>  ----------------------------------------
>  
> -.. kernel-doc:: drivers/gpu/drm/i915/i915_vma.h
> +.. kernel-doc:: drivers/gpu/drm/i915/i915_vma_types.h
>     :doc: Virtual Memory Address
>  
>  Buffer Object Eviction
> @@ -382,7 +382,7 @@ Logical Rings, Logical Ring Contexts and Execlists
>  Global GTT views
>  ----------------
>  
> -.. kernel-doc:: drivers/gpu/drm/i915/i915_gem_gtt.c
> +.. kernel-doc:: drivers/gpu/drm/i915/i915_vma_types.h
>     :doc: Global GTT views
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/i915_gem_gtt.c

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
