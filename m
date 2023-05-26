Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C540B712BDB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 19:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C7410E1DF;
	Fri, 26 May 2023 17:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD8810E1DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 17:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685122549; x=1716658549;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kdaZWTC5yntidoD7o7Xt97ZnMLZICMlL69IPOwuIKNc=;
 b=eW+tgUas8+D71azk+G5Frlsucl1ZZAeSEaQqcuHaWxtuXXbxneN/cIRH
 IaUgSiVKSKWBXn5Brn/aC9DbEqhN7Z4ZfBz+j14hi0HTK/1BXPDK8yCgW
 ajtniE/27Qw7HLQgoOQOPAWQ2CYx0Df+elvq7j0El3PU1KvJE8+rT+3aJ
 SW+C6XC2Y937vvATw3ixEUD0nwV4n4umw/pnVW7mLGW6+KuDWmeMSvnPB
 wHq51wYZM1Ei1kGJONiCgCxT74SGkuo6oscerBG9AAOsWhAOcsovnBxzB
 MdY7w562XN/s/JPWs/P5iiVyrwTay2i9xNVGXpUDLv8KnqyhHgfFTXWaw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="334614230"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="334614230"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="829579031"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="829579031"
Received: from cyrillet-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.219])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:35:39 -0700
Date: Fri, 26 May 2023 19:35:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZHDt53BpMdgdwyVq@ashyti-mobl2.lan>
References: <cover.1685119006.git.jani.nikula@intel.com>
 <6831c21567e8e84da424f32a8b7b48932803ab7b.1685119007.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6831c21567e8e84da424f32a8b7b48932803ab7b.1685119007.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/15] drm/i915/gem: drop unused but set
 variable unpinned
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

Hi Jani,

On Fri, May 26, 2023 at 07:38:02PM +0300, Jani Nikula wrote:
> Prepare for re-enabling -Wunused-but-set-variable.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 5fb459ea4294..cfd7929587d8 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -736,7 +736,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
>  	struct eb_vma *ev;
>  	unsigned int pass;
>  	int err = 0;
> -	bool unpinned;
>  
>  	/*
>  	 * We have one more buffers that we couldn't bind, which could be due to
> @@ -776,7 +775,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
>  			pin_flags |= PIN_NONBLOCK;
>  
>  		if (pass >= 1)
> -			unpinned = eb_unbind(eb, pass >= 2);
> +			eb_unbind(eb, pass >= 2);

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

A next patch can make eb_unbind() a void function.

Andi

>  
>  		if (pass == 2) {
>  			err = mutex_lock_interruptible(&eb->context->vm->mutex);
> -- 
> 2.39.2
