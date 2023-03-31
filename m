Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5516D1E55
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE4210E0F8;
	Fri, 31 Mar 2023 10:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F141510E0F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680259893; x=1711795893;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XRLrcfVmmydYT59ll/xdOGdI2LOQMwZH+uJr/m3ptZc=;
 b=eb/7QBkcjkaXSO/DnLPe2ZnGtWufl7VgCJjt6fgehIVbAmgmxhMFxpSf
 bJgcccrEat8jGEbDrkSX+thmntkadf1DWCkQIDL9HllJytNAY5dc2v4YG
 w5YcxcGhjy4bdsNta/WFbpN2rYU5JTrXIPYDEUa4+JlJI4Qgk72FIo6sH
 8ThR2UAUQaF9rERNM6ZMEJ6Xv/oSfLDfdlvKWFTvLHcQKzH8imWtI1GH5
 h9DPOXJ9iF75ohiFn0+57j+bzMoC4MmsGdtpHrQO4wHNWWn8Dvbf2yxz8
 Xd/4Y41ompYmvrv6938Qc+Y+4hakhOULxBSetavKHePNMbbMIWLC9Eovu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="404140977"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="404140977"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:51:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="749589475"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="749589475"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:51:32 -0700
Date: Fri, 31 Mar 2023 13:51:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZCa7MZ0P8uOO3O4a@ideak-desk.fi.intel.com>
References: <20230329190445.13456-1-ville.syrjala@linux.intel.com>
 <20230329190445.13456-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230329190445.13456-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Define cursor chicken reg
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 29, 2023 at 10:04:45PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Define CUR_CHICKEN so we don't have to remember the offset.
> Looks like it's getting introduced in mtl.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

On the patchset:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 275ec891468c..f6a6f3b6c603 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3989,6 +3989,7 @@
>  #define   CUR_FBC_EN			REG_BIT(31)
>  #define   CUR_FBC_HEIGHT_MASK		REG_GENMASK(7, 0)
>  #define   CUR_FBC_HEIGHT(h)		REG_FIELD_PREP(CUR_FBC_HEIGHT_MASK, (h))
> +#define _CUR_CHICKEN_A		0x700a4 /* mtl+ */
>  #define _CURASURFLIVE		0x700ac /* g4x+ */
>  #define _CURBCNTR		0x700c0
>  #define _CURBBASE		0x700c4
> @@ -4003,6 +4004,7 @@
>  #define CURPOS(pipe) _MMIO_CURSOR2(pipe, _CURAPOS)
>  #define CURSIZE(pipe) _MMIO_CURSOR2(pipe, _CURASIZE)
>  #define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(pipe, _CUR_FBC_CTL_A)
> +#define CUR_CHICKEN(pipe) _MMIO_CURSOR2(pipe, _CUR_CHICKEN_A)
>  #define CURSURFLIVE(pipe) _MMIO_CURSOR2(pipe, _CURASURFLIVE)
>  
>  #define CURSOR_A_OFFSET 0x70080
> -- 
> 2.39.2
> 
