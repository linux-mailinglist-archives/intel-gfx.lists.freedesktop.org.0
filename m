Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBC0437FA9
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 22:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB0F6E5B9;
	Fri, 22 Oct 2021 20:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C5576E5B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 20:53:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="210171278"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="210171278"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 13:53:15 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="495830107"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 13:53:14 -0700
Date: Fri, 22 Oct 2021 23:53:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211022205310.GB1980572@ideak-desk.fi.intel.com>
References: <20211006204547.669464-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211006204547.669464-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] i915/display/dmc: Add Support for PipeC and
 PipeD DMC
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 06, 2021 at 01:45:47PM -0700, Anusha Srivatsa wrote:
> So far we had support for main, PipeA and PipeB
> DMC. If we find a binary from PipeA-D, lets load it.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index c3c00ff03869..b20f3441ca60 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -20,6 +20,8 @@ enum {
>  	DMC_FW_MAIN = 0,
>  	DMC_FW_PIPEA,
>  	DMC_FW_PIPEB,
> +	DMC_FW_PIPEC,
> +	DMC_FW_PIPED,
>  	DMC_FW_MAX
>  };
>  
> -- 
> 2.25.1
> 
