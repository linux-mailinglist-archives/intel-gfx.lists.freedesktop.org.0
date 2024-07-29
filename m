Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD5E93F1D4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 11:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FFE10E049;
	Mon, 29 Jul 2024 09:56:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hG55Hc7k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D13810E049
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 09:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722246987; x=1753782987;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bjqYLFy0GFhoWh/3mwybyykX+4o6BrTzLxC47I3+nDc=;
 b=hG55Hc7kf+swvFS8ZxsOUsnFMhFPkdRmlIl16IA+xU7ZBw2WMhNqSgUE
 d5NRB8/VbKjom8P8gJUSKkANsbPyyveVxVanKJbBqg8VQJ9rKvUqfz1NN
 vHR1ypq/l2xrHfDnxGIkFf1gJwdez017XOPr0a3yJnmZW/tjzYx9k3se1
 pNEagxYAiPX0mwriwn1LgwFaYOjCI0Way58lw8PkMhaFjhoWeTMd8tCEj
 9g1RrowvEDU6c9MM8fsVS1XHGwlldtFAofwvVQx7MBs1t5zgmqKilyaqj
 FtKE4kgaaeYf/IbuEyx6e9RvuOW64LBEQ2x3aUpqSFs5BFrTn8N5f0O1c Q==;
X-CSE-ConnectionGUID: w0CfWe42QT681Be6qeDD3g==
X-CSE-MsgGUID: Kq4pXCWsT6KmxE9kCtPF/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="31141185"
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="31141185"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 02:56:25 -0700
X-CSE-ConnectionGUID: b4WJs7A8Sxerl8UDq4dtqQ==
X-CSE-MsgGUID: dMgPg+PsTVabdli8ASnrnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="53839921"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 02:56:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
In-Reply-To: <20240729040829.3753012-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240729040829.3753012-1-suraj.kandpal@intel.com>
Date: Mon, 29 Jul 2024 12:56:20 +0300
Message-ID: <871q3czfln.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 29 Jul 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Fix HDCP2_STREAM_STATUS macro, it called pipe instead of port never
> threw a compile error as no one used it.

Fixes: ?

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_regs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> index a568a457e532..f590d7f48ba7 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> @@ -251,7 +251,7 @@
>  #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
>  					(TRANS_HDCP(dev_priv) ? \
>  					 TRANS_HDCP2_STREAM_STATUS(trans) : \
> -					 PIPE_HDCP2_STREAM_STATUS(pipe))
> +					 PIPE_HDCP2_STREAM_STATUS(port))
>  
>  #define _PORTA_HDCP2_AUTH_STREAM		0x66F00
>  #define _PORTB_HDCP2_AUTH_STREAM		0x66F04

-- 
Jani Nikula, Intel
