Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D035F408B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7B9310E40F;
	Tue,  4 Oct 2022 10:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F6B10E3E3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 10:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664877889; x=1696413889;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hwxg/1G4CUrQVhIyWkVGRdb7qleQV2FLKuEWI63KPLg=;
 b=F3pY0JFPIEQq8/boU2XRpf82YT3qH/Wl/PVOoiu+b8e/JWwq9vAWjIzH
 jNBkEbdPdgafjD8pdFKqT4BMmTAH561LDIEAVC4vJQfADQXkqh+pDrErb
 dNEjNZwNFoUFNbSh0dOfFg3px0qDwiVRrqp0T1cjcz5oz40vvMgOpKaGr
 NpYXxzvXHLYPAr32UAGPVM6mvipss65j53NdXBhmd5axpn45/6o41s7WY
 s1Uz2fAB3OLENx95xOkg4+bZT8P4QdGIiMcZ9+QfBBfwhBI44yLdyX3a9
 MoFJNYyXjOmgx4641sAqdVj+gLNMcf6rZJZ4ucfwu5XExq7nZuVN+Fsj7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="290092170"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="290092170"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:04:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="657073575"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="657073575"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.85])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:04:47 -0700
Date: Tue, 4 Oct 2022 12:04:44 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <YzwFPLH2OC3Dap3Q@ashyti-mobl2.lan>
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

and pushed in intel-drm-intel-gt-next!

Thank you!
Andi

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
>  static inline struct intel_gt *kobj_to_gt(struct kobject *kobj)
>  {
>  	return container_of(kobj, struct intel_gt, sysfs_gt);
> -- 
> 2.37.1
