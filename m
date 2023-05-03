Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3869A6F59AD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A673F10E2C2;
	Wed,  3 May 2023 14:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B5F10E2C2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:20:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3A74F61986;
 Wed,  3 May 2023 14:20:19 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id A04ACC433EF;
 Wed,  3 May 2023 14:20:17 +0000 (UTC)
Date: Wed, 3 May 2023 10:20:14 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJtnpDvPWRVcZ6x@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <80c96863b7a0755aaa07efb49bcccd9ba620c6d7.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80c96863b7a0755aaa07efb49bcccd9ba620c6d7.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/24] drm/i915/gem: fix
 i915_gem_object_lookup_rcu() kernel-doc parameter name
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

On Tue, May 02, 2023 at 06:37:26PM +0300, Jani Nikula wrote:
> drivers/gpu/drm/i915/gem/i915_gem_object.h:94: warning: Function parameter or member 'file' not described in 'i915_gem_object_lookup_rcu'
> drivers/gpu/drm/i915/gem/i915_gem_object.h:94: warning: Excess function parameter 'filp' description in 'i915_gem_object_lookup_rcu'
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 885ccde9dc3c..bc1291887d4f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -80,7 +80,7 @@ __i915_gem_object_unset_pages(struct drm_i915_gem_object *obj);
>  
>  /**
>   * i915_gem_object_lookup_rcu - look up a temporary GEM object from its handle
> - * @filp: DRM file private date
> + * @file: DRM file private date
>   * @handle: userspace handle
>   *
>   * Returns:
> -- 
> 2.39.2
> 
