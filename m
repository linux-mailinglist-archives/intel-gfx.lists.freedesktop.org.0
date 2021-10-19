Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B82334330FD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 10:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A816EB4D;
	Tue, 19 Oct 2021 08:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816D66EB4D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 08:24:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="225915838"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="225915838"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 01:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="483131466"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 19 Oct 2021 01:24:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 11:24:08 +0300
Date: Tue, 19 Oct 2021 11:24:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Message-ID: <YW6AqDkpiqkEhEQN@intel.com>
References: <20211017234106.2412994-1-airlied@gmail.com>
 <20211017234106.2412994-5-airlied@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211017234106.2412994-5-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: drop some unused
 includes
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

On Mon, Oct 18, 2021 at 09:41:06AM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> 
> These aren't used since refactoring.
> 
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ff598b6cd953..73f8c893d52e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -65,11 +65,8 @@
>  #include "display/intel_vdsc.h"
>  #include "display/intel_vrr.h"
>  
> -#include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_object.h"
>  
> -#include "gt/gen8_ppgtt.h"
> -

I was wonder who even added that to a display file.
Turns out it was me :)

I guess the pte_encode() was there. Hmm, looks like it
still is actually.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  #include "pxp/intel_pxp.h"
>  
>  #include "g4x_dp.h"
> -- 
> 2.25.4

-- 
Ville Syrjälä
Intel
