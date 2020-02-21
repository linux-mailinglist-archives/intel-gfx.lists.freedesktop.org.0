Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5244B168280
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:59:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA016F492;
	Fri, 21 Feb 2020 15:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7AB96F492
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 15:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=PLDhdwm9xMtxzb+zFEzBfxbtfg6Is5D0kps6kT+tZj4=; b=kHhmH2HkMy3UfXFBsWZNppPFrM
 caSKC/uM9tpiKjwhGh7kumitd5If+l0DHBvLyoPqPYXOIuvw8J2G8eVULixx34uoRgm0rjRKCRLq2
 JwzcTjsTPyCXBmik1e1XDrny9g5Kcon8FtXMMr2zAOxddu5oQkPSbwMdCMk+PX0hxNVAp2WCMvYXc
 LEbPGB+E4tD2jlKTmqBOivH5BMBVTLspeiRqNwVZOLWEX10OILs1ECBPHz6iwATukU0nUyivYRcVA
 QLSB/IdC/DU/AxOb9Ffpph4W0trIl47DCJG8DELtAphhYHwi90kWHTOOTEU3CjOrbPwo5w5+vRUL9
 XrvaTW5A==;
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AiJ-0006xJ-M6; Fri, 21 Feb 2020 15:59:39 +0000
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200221105414.14358-1-jani.nikula@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <3d2e87f0-f42f-5217-bef3-7b07c02b3eec@infradead.org>
Date: Fri, 21 Feb 2020 07:59:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200221105414.14358-1-jani.nikula@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix header test with GCOV
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
Cc: Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/21/20 2:54 AM, Jani Nikula wrote:
> $(CC) with $(CFLAGS_GCOV) assumes the output filename with .gcno suffix
> appended is writable. This is not the case when the output filename is
> /dev/null:
> 
>   HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
> /dev/null:1:0: error: cannot open /dev/null.gcno
>   HDRTEST drivers/gpu/drm/i915/display/intel_ddi.h
> /dev/null:1:0: error: cannot open /dev/null.gcno
> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
> drivers/gpu/drm/i915/display/intel_ddi.hdrtest] Error 1
> make[5]: *** Waiting for unfinished jobs....
> make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
> drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1
> 
> Filter out $(CFLAGS_GVOC) from the header test $(c_flags) as they don't
> make sense here anyway.
> 
> References: http://lore.kernel.org/r/d8112767-4089-4c58-d7d3-2ce03139858a@infradead.org
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Fixes: c6d4a099a240 ("drm/i915: reimplement header test feature")
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thanks.

> ---
>  drivers/gpu/drm/i915/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index b314d44ded5e..bc28c31c4f78 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -301,7 +301,7 @@ extra-$(CONFIG_DRM_I915_WERROR) += \
>  		$(shell cd $(srctree)/$(src) && find * -name '*.h')))
>  
>  quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
> -      cmd_hdrtest = $(CC) $(c_flags) -S -o /dev/null -x c /dev/null -include $<; touch $@
> +      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; touch $@
>  
>  $(obj)/%.hdrtest: $(src)/%.h FORCE
>  	$(call if_changed_dep,hdrtest)
> 


-- 
~Randy

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
