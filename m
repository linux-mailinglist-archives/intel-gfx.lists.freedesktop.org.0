Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D1D3918F4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:36:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37766ECCD;
	Wed, 26 May 2021 13:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 493B66E50D;
 Wed, 26 May 2021 13:36:00 +0000 (UTC)
IronPort-SDR: WB7CgAoJwEiITn/EtrcNFcZ6J39AtdtoEcbrqkHXFzgE0PtO7k6kwo9BYQkfl21vaBk1hH5TdN
 OmEpFXX7peLg==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202477007"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="202477007"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:35:59 -0700
IronPort-SDR: JJ89HAYMow7WyMDMZ5hbX7mk9J8rIcGzJ/0H3BhWJbbVEUTf55SqLgOKJPCZNJ7kCQC68P378l
 0/ukW9ECcVjA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476943039"
Received: from astiegle-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.167])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:35:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
In-Reply-To: <1621927793-44545-1-git-send-email-zhangshaokun@hisilicon.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1621927793-44545-1-git-send-email-zhangshaokun@hisilicon.com>
Date: Wed, 26 May 2021 16:35:53 +0300
Message-ID: <87wnrlbosm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove the repeated declaration
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 25 May 2021, Shaokun Zhang <zhangshaokun@hisilicon.com> wrote:
> Function 'intel_dbuf_init' is declared twice, remove the
> repeated declaration.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/intel_pm.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index 669c8d505677..63938e45fc79 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -83,8 +83,6 @@ struct intel_dbuf_state {
>  	u8 active_pipes;
>  };
>  
> -int intel_dbuf_init(struct drm_i915_private *dev_priv);
> -
>  struct intel_dbuf_state *
>  intel_atomic_get_dbuf_state(struct intel_atomic_state *state);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
