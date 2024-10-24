Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D85679ADEFB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 10:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74AC410E3A7;
	Thu, 24 Oct 2024 08:20:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LthBC4SN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616B210E3A7;
 Thu, 24 Oct 2024 08:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729758033; x=1761294033;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SiDa4WDAFhZx8PpKSQgUyw4J8EoyTEmJMngL28cDxQQ=;
 b=LthBC4SNud964JlDAUzgTuTyf+mHKhiyAPb3bK4UoL+05ozYBp5nGEVM
 hBVQ+sskBhu+fOyolVDwrCIoNkd54i5q4u/eJQboJmKHaxQGac6v6xOeN
 2vTr3U/6TLca5VcMJ6uV9/qU8P9xT9pCZ/2W5HHUwwbwLSuxC5L5Zr88b
 cXh5DuQNClNV7xYHvXOrLzzFnZ1kXsV6Joie6HqunE0CnN8bxJJResnbw
 lEb0NGC0mkFIHN+pVI5s2U1KQ1+2eXX/ydy56zXMlIxL97uLynRp1ZRJR
 Kq6FHNNZvsrWDBFvMrt6UkGLKC/+Uj6kbJrTYIOxFiS4AQg2L63d1MgGo g==;
X-CSE-ConnectionGUID: 0IDqMq+RTHy23hjAx4uxzA==
X-CSE-MsgGUID: q3XmhB7vQs+VttJVMZNPyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46843428"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46843428"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 01:20:33 -0700
X-CSE-ConnectionGUID: jxcLLh86TrCjOP1jViVRqA==
X-CSE-MsgGUID: KapMrxZMSKKqaViRXRYlBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="84493891"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.151])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 01:20:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
In-Reply-To: <20241023214701.963830-8-clinton.a.taylor@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-8-clinton.a.taylor@intel.com>
Date: Thu, 24 Oct 2024 11:20:27 +0300
Message-ID: <878qudud2s.fsf@intel.com>
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

On Wed, 23 Oct 2024, Clint Taylor <clinton.a.taylor@intel.com> wrote:
> C10 phy timeouts occur on xe3lpd if the c10 bus is reset every
> transaction. Starting with xe3lpd this is bus reset not necessary
>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index c1357bdb8a3b..a8966a7a9927 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
>  	 * down and let the message bus to end up
>  	 * in a known state
>  	 */
> -	intel_cx0_bus_reset(encoder, lane);
> +	if ((DISPLAY_VER(i915) >= 30))

Drop the extra braces.

> +		intel_cx0_bus_reset(encoder, lane);
>  
>  	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
>  }
> @@ -313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
>  	 * down and let the message bus to end up
>  	 * in a known state
>  	 */
> -	intel_cx0_bus_reset(encoder, lane);
> +	if ((DISPLAY_VER(i915) >= 30))

Ditto.

BR,
Jani.


> +		intel_cx0_bus_reset(encoder, lane);
>  
>  	return 0;
>  }

-- 
Jani Nikula, Intel
