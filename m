Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BFAA18097
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 15:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CFD10E061;
	Tue, 21 Jan 2025 14:56:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VUhBbu73";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0A410E061;
 Tue, 21 Jan 2025 14:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737471414; x=1769007414;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=wDQSvxNofjDsI+G9J/jhSLaF184q/KePwAFFX1l/Pd4=;
 b=VUhBbu73xjn3slO0a423yrfq4UDB5im0wfrCSuN/RgrMkVuDqKSnoZzi
 DuZ4J+F6FTc0GgRWMzRZrM8mrTZBQub2S+T6wJKTY9JYorFVBKKdHeOiu
 EdK5JzbUSSvZUByDsQMNqjXzhaCR8QTeqohaxnKYMYDmy9gFNudX/sY7h
 16Hgq50c6gKpHBPR96QmI02/14/EDBEl4YoKoUTfjoSivizzhuBdok2xb
 TnNaW/kOQ8Fs+EL8t+KZ3p6AGzGMQLmm9ohu/Qdyp+NVzGVArjcoYOoxe
 V4sxMah7Z/TORYkcGYOhlF/nyVhDY+avm6a/0c8EYXBE3De8CJP711JPB g==;
X-CSE-ConnectionGUID: SHFhzYxMRwS3FW3b1Y/cAw==
X-CSE-MsgGUID: xLMvA77+QK2G3yxFS40hOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="55436616"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="55436616"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 06:56:54 -0800
X-CSE-ConnectionGUID: N/La51MKR5yalK1MJ3liww==
X-CSE-MsgGUID: lIxe3/85THuqXFzBvCSz1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106655390"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 06:56:52 -0800
Date: Tue, 21 Jan 2025 16:57:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: Re: [PATCH] drm/xe/dp: Fix non-display builds with DP tunnelling
 incorrectly enabled
Message-ID: <Z4-16NeQg7m4YSd2@ideak-desk.fi.intel.com>
References: <20250117153843.1312303-1-imre.deak@intel.com>
 <SN7PR11MB6750D685E73BDAFC75FE733EE3E62@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750D685E73BDAFC75FE733EE3E62@SN7PR11MB6750.namprd11.prod.outlook.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 21, 2025 at 06:37:54AM +0200, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Friday, January 17, 2025 9:09 PM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; De Marchi, Lucas
> > <lucas.demarchi@intel.com>
> > Subject: [PATCH] drm/xe/dp: Fix non-display builds with DP tunnelling
> > incorrectly enabled
> >
> > Code for the DP tunnelling functionality in the xe driver can be built only if
> > the display code is also built, adjust the kconfig dependency accordingly.
> >
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Fixes: 73900dce57e4 ("drm/xe/dp: Enable DP tunneling")
> > Reported-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks, patch is pushed to drm-intel-next.

> > ---
> >  drivers/gpu/drm/xe/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig index
> > 50cf80df51900..99219c16e8aac 100644
> > --- a/drivers/gpu/drm/xe/Kconfig
> > +++ b/drivers/gpu/drm/xe/Kconfig
> > @@ -61,7 +61,7 @@ config DRM_XE_DISPLAY
> >
> >  config DRM_XE_DP_TUNNEL
> >       bool "Enable DP tunnel support"
> > -     depends on DRM_XE
> > +     depends on DRM_XE_DISPLAY
> >       depends on USB4
> >       select DRM_DISPLAY_DP_TUNNEL
> >       default y
> > --
> > 2.44.2
> 
