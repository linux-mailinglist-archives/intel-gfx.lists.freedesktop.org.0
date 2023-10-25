Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FD47D7120
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 17:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7F410E5CD;
	Wed, 25 Oct 2023 15:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 441FB10E0F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 15:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698248688; x=1729784688;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fj+aVdIKanMjYFVLIhdM4jERHgoALp9gXxWkv6QnAnQ=;
 b=PxuOqrhXTcPpx5RlfgPE3AOntlEMCsRDPjSptSbsdgNVMogsBjVFxV/B
 E9zmuHl+415yZYbteZCOJ2nuEC25+h+Bl0OFprXX2gEajlAhMmc+ilTWe
 fcnNhd1IKthAs/Q+fpPAJR3j8z3BclP+2km7/6Hccvawvqw78eaNq6FGK
 OLWdutWrjHvNq8p5vR+UE//x+g5Jeod/ewqcTWuc2QNkdjLIhzTNfcHd6
 UFPLH8doubGNTcq5yfTOMM+bMangQIBjfiOwo76kfzI/T3S+KHJxSMCKN
 UORI38tI3r9ahIIb9bI3JVdU5SEYLOTCkbmc040fh2jlT9FUX9e+wUcN3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="114013"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="114013"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:44:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="788145370"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="788145370"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:44:41 -0700
Date: Wed, 25 Oct 2023 18:45:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZTk35V4g5IA7+8ih@ideak-desk.fi.intel.com>
References: <20231025135726.19662-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231025135726.19662-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tc: Fix -Wformat-truncation in
 intel_tc_port_init
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 25, 2023 at 03:57:26PM +0200, Nirmoy Das wrote:
> Fix below compiler warning:
> 
> intel_tc.c:1879:11: error: ‘%d’ directive output may be truncated
> writing between 1 and 11 bytes into a region of size 3
> [-Werror=format-truncation=]
> "%c/TC#%d", port_name(port), tc_port + 1);
>            ^~
> intel_tc.c:1878:2: note: ‘snprintf’ output between 7 and 17 bytes
> into a destination of size 8
>   snprintf(tc->port_name, sizeof(tc->port_name),
>   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     "%c/TC#%d", port_name(port), tc_port + 1);
>     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Fixes: fe03f637b7bd ("drm/i915/tc: Fix -Wformat-truncation in intel_tc_port_init")
> intel_tc_port struct")
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 37b0f8529b4f..0afcee279aff 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -58,7 +58,7 @@ struct intel_tc_port {
>  	struct delayed_work link_reset_work;
>  	int link_refcount;
>  	bool legacy_port:1;
> -	char port_name[8];
> +	char port_name[17];

I'd use instead kasprintf() to suppress the warn.

Imo (at one point) the 'Port %s:', tc->port_name prefix could be
replaced by the usual [ENCODER:%d:%s].

>  	enum tc_port_mode mode;
>  	enum tc_port_mode init_mode;
>  	enum phy_fia phy_fia;
> -- 
> 2.41.0
> 
