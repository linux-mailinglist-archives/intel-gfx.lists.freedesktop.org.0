Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3654B46D6F2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 16:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAA606F54F;
	Wed,  8 Dec 2021 15:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 644986F54F;
 Wed,  8 Dec 2021 15:26:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="261933536"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="261933536"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 07:26:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="515796947"
Received: from faerberc-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.209.148])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 07:26:50 -0800
Date: Wed, 8 Dec 2021 17:26:46 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <YbDOtmWE56RYl2o0@intel.intel>
References: <20211208145800.27246-1-ramalingam.c@intel.com>
 <20211208145800.27246-4-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211208145800.27246-4-ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Test all device memory on
 probing
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ram and Chris,

>  	param(char *, guc_firmware_path, NULL, 0400) \
>  	param(char *, huc_firmware_path, NULL, 0400) \
>  	param(char *, dmc_firmware_path, NULL, 0400) \
> +	param(bool, memtest, false, 0400) \

this partially answers my previous question...

[...]

> -	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> -		err = iomemtest(mem, caller);
> +	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) || i915->params.memtest)
> +		err = iomemtest(mem, i915->params.memtest, caller);

... but still I am missing the debugging part.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
