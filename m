Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 508511A1D0E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F986E997;
	Wed,  8 Apr 2020 08:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9CBF6E997
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:02:59 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id d202so4407206wmd.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=MPNhFeXAq7o9dLbBTsSJ03Ja5Ug/a1E5ob2OxpbvRgc=;
 b=oRMuLj8eykGhogc7QEmRVBzoSqUrhJWzw/NoNfj2IIzwWa92EpTMvQ+OFnpSk4N33Q
 RsSPhrOD5fyvowEMZl0XaPqnjhXOUSq/b9K/UxSEMMU/SC5dTmvN9eQmY+gIPdFv8Rxf
 RM7/K4kNC9z20wUkP0ykroNMZUs++HeIXL1h0cg/YZ/DHeC5aTTBhHMu71oWMIEy7Qwo
 yAtIsbi8PNs6JrQKbUaxzoxjDv91abvMNnQVifWFMxVa/+yZh8+tfvLvQmBHVkbT3bE7
 Mlofh2c9B02Xktumj+42bTax6j8uRSRiAE4/CgZkdGTF0UT8ouhvA6zSFXl8MA+9roH8
 UHng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=MPNhFeXAq7o9dLbBTsSJ03Ja5Ug/a1E5ob2OxpbvRgc=;
 b=kxt7TYUG8ZbgshvWCFuyyn7cSsmqUwPQr7f0oRGnDfUB0GFqN9tVfeCva009LVj4uG
 qEoJIaTXkyc/587HVZWG3Ud/dWkMSi5G26qHDOEHUoK3N1bnIks08FeXiOyLjIluXTJ6
 KlXyB1sTCTJ72OxHhV5xVYgQNxbZ5oJI1JGSI5cPMTikBAMol8lcXf9dSaPYsrj42owu
 pTJiVvCD2IXHEZBRerKGs45LR+O5EqOJ+7PTmzpRQJAx3JK0W2fmtVicYuAOLVmjxnm0
 OaocnQjOeAAxMKEk1+Ytp+Dis/SK10j2G/28Bzcelrn5veYWibG5SRC7+bAtuV45Wjs+
 pDsQ==
X-Gm-Message-State: AGi0PubB15oZ1WqYtR+qaR6Z2eRSjJYYfGV4iyy4D1VlIg4qflRKxoUW
 B+YIcftc+3MHpUnaz0NGKMvf6Ks9
X-Google-Smtp-Source: APiQypLLqia21uz+WrStAh/DP0Vu4OazmcJJJPCK0kzRZDuy5gmnjBirbW8KcMjV+ELc9UFFsYaVmw==
X-Received: by 2002:a1c:9aca:: with SMTP id c193mr3274529wme.38.1586332978300; 
 Wed, 08 Apr 2020 01:02:58 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id g9sm4002713wrr.15.2020.04.08.01.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:02:57 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 10:59:38 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-8-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081005180.20922@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-8-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/17] drm/i915/state: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
> drivers/gpu/drm/i915/display/intel_global_state.c | 5 +++--
> 1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
> index a0cc894c3868..6f72feb14f3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_global_state.c
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
> @@ -71,6 +71,7 @@ struct intel_global_state *
> intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
> 				  struct intel_global_obj *obj)
> {
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> 	int index, num_objs, i;
> 	size_t size;
> 	struct __intel_global_objs_state *arr;
> @@ -106,8 +107,8 @@ intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
>
> 	state->num_global_objs = num_objs;
>
> -	DRM_DEBUG_ATOMIC("Added new global object %p state %p to %p\n",
> -			 obj, obj_state, state);
> +	drm_dbg_atomic(&i915->drm, "Added new global object %p state %p to %p\n",

I think this line can be split to fix the checkpatch warning as it's over 
80 characters.

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> +		       obj, obj_state, state);
>
> 	return obj_state;
> }
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
