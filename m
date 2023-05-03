Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E9E6F5A2D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5465E10E2CB;
	Wed,  3 May 2023 14:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0200410E2CB
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:34:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6544960C6C;
 Wed,  3 May 2023 14:34:30 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 837BBC433D2;
 Wed,  3 May 2023 14:34:28 +0000 (UTC)
Date: Wed, 3 May 2023 10:34:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJw8unBD1ebNw6l@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <dafd771bb75cf14965dd3b666987c58a438de134.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dafd771bb75cf14965dd3b666987c58a438de134.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 15/24] drm/i915/engine: hide preempt_hang
 selftest member from kernel-doc
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

On Tue, May 02, 2023 at 06:37:32PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/gt/intel_engine_types.h:293: warning: Function parameter or member 'preempt_hang' not described in 'intel_engine_execlists'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_types.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 960291f88fd6..e99a6fa03d45 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -289,6 +289,7 @@ struct intel_engine_execlists {
>  	 */
>  	u8 csb_head;
>  
> +	/* private: selftest */
>  	I915_SELFTEST_DECLARE(struct st_preempt_hang preempt_hang;)
>  };
>  
> -- 
> 2.39.2
> 
