Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B3D6F598E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D284710E2C2;
	Wed,  3 May 2023 14:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6771610E2C2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:10:03 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AC16861720;
 Wed,  3 May 2023 14:10:02 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id CE1FCC433EF;
 Wed,  3 May 2023 14:10:00 +0000 (UTC)
Date: Wed, 3 May 2023 10:09:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJrNo2BLzIA4ehk@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <e6e33a7f03c4a78739fa96e6ae74eb272ae147e7.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e6e33a7f03c4a78739fa96e6ae74eb272ae147e7.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/24] drm/i915/utils: drop kernel-doc from
 __wait_for()
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

On Tue, May 02, 2023 at 06:37:20PM +0300, Jani Nikula wrote:
> The parameters aren't documented, and the file isn't included in Sphinx
> build anyway, so demote the kernel-doc to a regular comment.
> 
> drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'OP' not described in '__wait_for'
> drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'COND' not described in '__wait_for'
> drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'US' not described in '__wait_for'
> drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'Wmin' not described in '__wait_for'
> drivers/gpu/drm/i915/i915_utils.h:284: warning: Function parameter or member 'Wmax' not described in '__wait_for'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_utils.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 2c430c0c3bad..c61066498bf2 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -250,7 +250,7 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
>  	}
>  }
>  
> -/**
> +/*
>   * __wait_for - magic wait macro
>   *
>   * Macro to help avoid open coding check/wait/timeout patterns. Note that it's
> -- 
> 2.39.2
> 
