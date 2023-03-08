Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F226B106B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 18:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC38110E6CF;
	Wed,  8 Mar 2023 17:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652E110E6CF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 17:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678297831; x=1709833831;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XHUkeCe4t1DOCQ6FovDB703F8cADE/3e9cP7WxATIU0=;
 b=KAb1gCZRzrHYcYznp49qHcA6OrFR9JHp0mY8kRNj2dB3fuV7L556qS+4
 n02k1+F6+y9kamVmW9b+3zasdqNTr9ep12MfT1EvcgRmQ3XITLic86EK8
 2xpkiCB9z/5iw3rOTiXTZFlkr9O1429JvKeF1KXmMluznoVmB272soPC2
 HX7IRyrqcE8yFOskAa5zABfJSFBItm62lq43CKTtvGmR99cgXbk5vse0R
 9Ls1FQZcY6UmxIO2MfhKODv+pfNYlWkK5dO4ew8oVFPCGdV4S7OExXniu
 LdKWvxlDCN7OFV/vT1j/jL+KRes40qr5zYH0L2A/M23lfLaiSPC0cvzxV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="324540420"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="324540420"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 09:50:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="741196909"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="741196909"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 08 Mar 2023 09:50:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Mar 2023 19:50:27 +0200
Date: Wed, 8 Mar 2023 19:50:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <ZAjK4yVlIV3Wwi8b@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
 <20230308165859.235520-2-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230308165859.235520-2-rodrigo.vivi@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/i9xx_wm: Prefer intel_de
 functions over intel_uncore.
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 11:58:59AM -0500, Rodrigo Vivi wrote:
>  	} else if (IS_I915GM(dev_priv)) {
>  		/*
>  		 * FIXME can't find a bit like this for 915G, and
>  		 * yet it does have the related watermark in
>  		 * FW_BLC_SELF. What's going on?
>  		 */
> -		was_enabled = intel_uncore_read(&dev_priv->uncore, INSTPM) & INSTPM_SELF_EN;
> +		was_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
>  		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
>  			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
> -		intel_uncore_write(&dev_priv->uncore, INSTPM, val);
> -		intel_uncore_posting_read(&dev_priv->uncore, INSTPM);
> +		intel_de_write(dev_priv, INSTPM, val);
> +		intel_de_posting_read(dev_priv, INSTPM);

I'm still not really convinced that we want to
use intel_de_*() for non-display registers.

-- 
Ville Syrjälä
Intel
