Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EA37DDFC9
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323A310E6C5;
	Wed,  1 Nov 2023 10:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BED510E6C6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698835877; x=1730371877;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=DPWNr+h1/jOAbwxlcSi5jhgyR48NNWQjlmLxfRLUyU8=;
 b=GIINy29Nvbr6gFjTV0TlunbARKUPQnQaXSNZczufKXdUexLgEK0qZl4A
 SBeab2njxT6/uaKnoYuZwrDOO3HQXiBQTcnxdIUM3T3fM6tNyUsykjUVk
 m/Xm6Hc2DtvRLaNRrQ7t+VAxq+8DVBMfq76XcVEviThUm3a5OlwYFjkYF
 7vlD4RhgyoCFzcBA02e9StU2KtDqCZ+Ht5XmLIPRf0EL4KE2X+X+rILFX
 mGBgahto5Jsm+iDqf1z2nBiQtyt/s6sTAxVO6a3uJFlZhO4tJx3QOzZPO
 TAtk9rn0GJcOHtv+a/5vRTivOuejmFAuP8kZbH37qiA7z8SxlRIdDFf9a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="387357017"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="387357017"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:51:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="795868630"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="795868630"
Received: from sartorig-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.166])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:51:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231101103101.156505-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231101103101.156505-1-mika.kahola@intel.com>
Date: Wed, 01 Nov 2023 12:51:12 +0200
Message-ID: <87o7gd4uhr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
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

On Wed, 01 Nov 2023, Mika Kahola <mika.kahola@intel.com> wrote:
> It is possible that sticky bits or error bits are left on
> message bus status register. Reading and then writing the
> value back to messagebus status register clears all possible
> sticky bits and errors.

Note that I don't know if this is the right thing to do, or the right
place to do this, but I'll just comment on the *implementation*,
i.e. please wait for proper review before addressing my comments.

>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index b2ad4c6172f6..f439f0c7b400 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -195,6 +195,13 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
>  		return -ETIMEDOUT;
>  	}
>  
> +	/*
> +	 * write XELPDP_PORT_P2M_MSGBUS_STATUS register after read to clear
> +	 * any error sticky bits set from previous transactions
> +	 */
> +	val = intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane));
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), val);

I think it's slightly confusing to use val here, as it's then passed on
to intel_cx0_wait_for_ack() and you're left wondering if that's required
or just reuse of the val variable.

This should do the same thing in one line, without reusing val:

	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), 0, 0);

> +
>  	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       XELPDP_PORT_M2P_COMMAND_READ |
> @@ -262,6 +269,13 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
>  		return -ETIMEDOUT;
>  	}
>  
> +	/*
> +	 * write XELPDP_PORT_P2M_MSGBUS_STATUS register after read to clear
> +	 * any error sticky bits set from previous transactions
> +	 */
> +	val = intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane));
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), val);
> +
>  	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :

-- 
Jani Nikula, Intel
