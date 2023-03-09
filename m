Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 786526B3083
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 23:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8686010E21D;
	Thu,  9 Mar 2023 22:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C74F8825E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 22:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678400752; x=1709936752;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4JaexIee8VCPbL5ojpcBd3e6A6flNcHNnm/dgoUJsVc=;
 b=mZum24Zf0T76F1mAa3ucoFPJw1yOwcRkSTz8YCluKiKJucy8DLOxS2uu
 +lChTHrI/41f2kVutK2rtPP8FB7PtcX4t7HL0AdE4LZZ2tnGKOQI2C1cb
 puG4r13C97NM/wMglbXuKCtjx0+Sjb2gsFXnOLIDbSUFd9r0Wwk63D6iq
 O7ja4t0nLlsbCcxXNFbc8gKDkFAN0by9FkvTpn6V2HhvAzxdgbnRvZ4/M
 QkUMgvx3BDRsgJ/4TTGEm0gFK39eol/9qf23FJYc25r0s1uQroMfrK5I4
 i7V2KeePTDakqZcvm7/V6rcBI/vn88SxFA0+B8YHAB1urE8yfKhBYEcXt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="364237110"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="364237110"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 14:25:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="654943235"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="654943235"
Received: from pmezinca-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.219.71])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 14:25:13 -0800
Date: Thu, 9 Mar 2023 23:25:10 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZApcxlaM6vrITILC@ashyti-mobl2.lan>
References: <20230309165852.1251-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230309165852.1251-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Update engine_init_common
 documentation
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

Hi Nirmoy,

On Thu, Mar 09, 2023 at 05:58:52PM +0100, Nirmoy Das wrote:
> Change the function doc to reflect updated name.
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index ad3413242100..83532630b639 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1429,7 +1429,7 @@ create_kernel_context(struct intel_engine_cs *engine)
>  }
>  
>  /**
> - * intel_engines_init_common - initialize cengine state which might require hw access
> + * engines_init_common - initialize engine state which might require hw access

You had one change to make and you missed it :-D

/engines_init_common/engine_init_common/

Andi

>   * @engine: Engine to initialize.
>   *
>   * Initializes @engine@ structure members shared between legacy and execlists
> -- 
> 2.39.0
