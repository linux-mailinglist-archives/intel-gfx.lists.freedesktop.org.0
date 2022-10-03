Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E35E25F3731
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 22:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2390B10E406;
	Mon,  3 Oct 2022 20:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A5310E406
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 20:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664829463; x=1696365463;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=r+YRwB/ioVMLtRps3OuakOCgt61jTHQQpDtHaZKV2SY=;
 b=ax9j5u5BY8EeS6TORX4MH2lLtM/qAhr8LdD9Btd9ykRKmJev0RnWdugu
 OadonCAapCh3SUKuTWDo3SQYJiA54gsei+Ah/eadfM1sMK8Uq4Dtw9i/z
 aKhJbUuqCO1ywXlOUGLxbe04TTbHljzDA2OxjprjR9SWez1658GdMCNyk
 HV0bFQYuZ34TwTqGCTDMXw4gtduiX5kBS5R5yODOhF4VzfyRT39jhUfd3
 VFnYxWcw0qoVSd3ecmhLwHFABvZ6RnCUqWGFkHxvDmww6xF+698EA8Ahm
 PMNOyQEFe3pc0uKeq1J3bb+Uvg2ItKY+tB43/clgSo1H+/rqOJlZ0s2qY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="285945652"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="285945652"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 13:37:42 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="623690831"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="623690831"
Received: from kbalinsk-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.213.7.91])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 13:37:41 -0700
Date: Mon, 3 Oct 2022 22:37:38 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <YztIEmJKIjgb7R6A@ashyti-mobl2.lan>
References: <20221003170242.1246830-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003170242.1246830-1-gwan-gyeong.mun@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove unused function
 prototype
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

Hi G.G.

On Mon, Oct 03, 2022 at 08:02:42PM +0300, Gwan-gyeong Mun wrote:
> Remove unused function prototype; intel_gt_create_kobj()
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs.h | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> index 6232923a420d..d637c6c3a69f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> @@ -18,11 +18,6 @@ bool is_object_gt(struct kobject *kobj);
>  
>  struct drm_i915_private *kobj_to_i915(struct kobject *kobj);
>  
> -struct kobject *
> -intel_gt_create_kobj(struct intel_gt *gt,
> -		     struct kobject *dir,
> -		     const char *name);
> -

this must be some leftover after some refactoring. Thanks for
spotting it:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

>  static inline struct intel_gt *kobj_to_gt(struct kobject *kobj)
>  {
>  	return container_of(kobj, struct intel_gt, sysfs_gt);
> -- 
> 2.37.1
