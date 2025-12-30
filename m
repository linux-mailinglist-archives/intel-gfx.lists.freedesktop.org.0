Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1D2CEA107
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 16:29:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B814610E911;
	Tue, 30 Dec 2025 15:29:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JM4haG3V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41C210E911;
 Tue, 30 Dec 2025 15:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767108572; x=1798644572;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BRydKcpDs26YemeA6M/dtOc/vy7KuqT8LiQy/2JTKio=;
 b=JM4haG3VX1EYPLw9vYX5+2ejHnbKrV9GcfHJSFfoK/+hcpNwECwiLf20
 zWf4C+5M5NnBTGAEINBjBuFkwHP2ZtKPMKxuHipjmWANSvc01fD9JMQnk
 /h7Gxk3sluFzly33ZSFqk4uApe9AHhoFNjm+Nk6ruegGDYGiiipDrVxFd
 rHbsxNwknuqoOxk+VZWNl+EbZskqn2r+TDEnYT0GzxIudBu7902OXc0QC
 zP3xfqH1k0f3pcZP6p9tp1xbBw6wshETxbg6FejsBdgGgRxIwSWALsPnG
 EL0X+EX3X931iumRVh1k9iOTmRDyLwAG8LRu6OjS413Il3zKp44EXwcaj g==;
X-CSE-ConnectionGUID: JxydWfFoQQy00qFM2S9Pcg==
X-CSE-MsgGUID: /W8glLOrSUmK7UkaHqggEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="80069206"
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="80069206"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 07:29:31 -0800
X-CSE-ConnectionGUID: chDeC9WoTxuiC0TH6bDxVw==
X-CSE-MsgGUID: NImSVSHIQ1ut6pqR4WoH2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="201493818"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.171])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 07:29:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, mika.kahola@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
In-Reply-To: <20251230083142.70064-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-4-suraj.kandpal@intel.com>
Date: Tue, 30 Dec 2025 17:29:25 +0200
Message-ID: <9cc99447d45269c91b9d7cb43a07dd829f6f7c95@intel.com>
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

On Tue, 30 Dec 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Clear the response ready and error bit of PORT_P2M_MESSAGE_BUS_STATUS
> before writing the transaction pending bit of
> PORT_M2P_MSGBUS_CTL as that is a hard requirement. If not done
> we find that the PHY hangs since it ends up in a weird state if left
> idle for more than 1 hour.
>
> Bspec: 65101
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 5edd293b533b..5ebc3404eee2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -222,6 +222,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
>  		return -ETIMEDOUT;
>  	}
>  
> +	intel_clear_response_ready_flag(encoder, lane);
> +

Please rename the non-static function. Nobody knows what that's related
to without looking at the function.

BR,
Jani.

>  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       XELPDP_PORT_M2P_COMMAND_READ |
> @@ -293,6 +295,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
>  		return -ETIMEDOUT;
>  	}
>  
> +	intel_clear_response_ready_flag(encoder, lane);
> +
>  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :

-- 
Jani Nikula, Intel
