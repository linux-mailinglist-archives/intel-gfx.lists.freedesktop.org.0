Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2A06F59A1
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0418710E2C2;
	Wed,  3 May 2023 14:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8AE10E2C2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:15:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E0A6E61465;
 Wed,  3 May 2023 14:15:12 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 3014DC433D2;
 Wed,  3 May 2023 14:15:11 +0000 (UTC)
Date: Wed, 3 May 2023 10:15:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJsbbKwvqUYAHqA@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <20524292b002800975d82d23b5bd47da878f1733.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20524292b002800975d82d23b5bd47da878f1733.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/24] drm/i915/error: fix
 i915_capture_error_state() kernel-doc
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

On Tue, May 02, 2023 at 06:37:24PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/i915_gpu_error.c:2174: warning: Function parameter or member 'dump_flags' not described in 'i915_capture_error_state'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index f020c0086fbc..04ad30274896 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -2162,7 +2162,7 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
>   * i915_capture_error_state - capture an error record for later analysis
>   * @gt: intel_gt which originated the hang
>   * @engine_mask: hung engines
> - *
> + * @dump_flags: dump flags
>   *
>   * Should be called when an error is detected (either a hang or an error
>   * interrupt) to capture error state from the time of the error.  Fills
> -- 
> 2.39.2
> 
