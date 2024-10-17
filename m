Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AB29A16F9
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 02:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597FB10E133;
	Thu, 17 Oct 2024 00:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="IKwO1TkJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com
 [209.85.215.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758A310E08A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2024 00:26:50 +0000 (UTC)
Received: by mail-pg1-f202.google.com with SMTP id
 41be03b00d2f7-7db8197d431so483322a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 17:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1729124810; x=1729729610;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=PC4Hs0E5dBLkCnCinTPyvf/aLxRI0UAFEABy+KMCotw=;
 b=IKwO1TkJe+Wi+aYQIlBP3YMbSXxPFV0pSF+tgtdYl+JFnCjVJMs6euloEPqB3xiznP
 RMhZewZT243ttTL80bGdySDtpx38+5+tQ7yZ80aLRu8O3m2aCGThIIbkp6X7PZJsxp43
 ZjTzwmjha0+0adVpaqOMNoke7oxmrnvM+Zoxx6R0dgkTSfZ0OFm8tbFB9ViqPnyybXDg
 LJszCrl2yEPiL6fQ7yxZ1h4pueOSGDRFAXN9jyJFNSJL1vgGc/ceghnmdGTGE8Gf37JM
 ImSCqbzRSB+qfAs5vyeKrQZWunjPKs2WrLHJxImmMjgmINrgJGRKtYxyVen1QgvS2yIV
 w2pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729124810; x=1729729610;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PC4Hs0E5dBLkCnCinTPyvf/aLxRI0UAFEABy+KMCotw=;
 b=ae4WDdo7O9qVVWwyd4qF4keG6zUVTKDviPKGaT0zk8oQzOvIuFtDxfIxG968uySBUq
 3FDp2uG5Bz8cbedZFaxITnivTdxTcS8kqU3LaKFtLtQAbQaJCXduqjwBe3Ezbvp4lJlZ
 aHzHCb6Ot8pTZXgeiIu5wI/vExR+HoHbQMNAnioNd5HR3k8pi/DW8zIPuzmotzeRp0ry
 gVvdXTmjZN8CSdNRzs9fYJUbHOtRYQcGYc8v3iwxo9CJPi2lLSk7ohmjNUBAQDdsjD8a
 bL/Bdlyy10Vry/auQZdZ/VqASTU7bijZv0xESVEuZDaDCzYGbdv+e0uqXvLa8epidEV5
 tw2A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVo3swtDK8mniyVebZY3FWvoyclxJlKfq3KbZpB1CNXz5Xamoli7zpDxTZjH1beE0DHgJD+kVjUjyU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxPex6iFUoOg/ujZ66cRFybr3Szq+oHVgPdBhKEMEdTjCOrnm1V
 qQn0mHS0mn94caU+uYrhaxTzNQy5l4miwTd/vZPPRglR5Qe1XkGu6+N6gWey08zH4si5g1PwOHq
 BDg==
X-Google-Smtp-Source: AGHT+IHcZEDYoFZqO9vMeq+B+EvG4lcuq/J99qdXry7nLvP1k/6cQ8eP6ZnNUNNOwC4IGrsVzTHyGmuCdRY=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:9d:3983:ac13:c240])
 (user=seanjc job=sendgmr) by 2002:a63:ef50:0:b0:7ea:7907:7076 with SMTP id
 41be03b00d2f7-7eaa6c965a9mr6883a12.6.1729124809640; Wed, 16 Oct 2024 17:26:49
 -0700 (PDT)
Date: Wed, 16 Oct 2024 17:26:47 -0700
In-Reply-To: <20241015152157.2955229-1-arnd@kernel.org>
Mime-Version: 1.0
References: <20241015152157.2955229-1-arnd@kernel.org>
Message-ID: <ZxBZx5EUhJFjTcXP@google.com>
Subject: Re: [PATCH] i915: fix DRM_I915_GVT_KVMGT dependencies
From: Sean Christopherson <seanjc@google.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Paolo Bonzini <pbonzini@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
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

On Tue, Oct 15, 2024, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Depending on x86 and KVM is not enough, as the kvm helper functions
> that get called here are controlled by CONFIG_KVM_X86, which is
> disabled if both KVM_INTEL and KVM_AMD are turned off.
> 
> ERROR: modpost: "kvm_write_track_remove_gfn" [drivers/gpu/drm/i915/kvmgt.ko] undefined!
> ERROR: modpost: "kvm_page_track_register_notifier" [drivers/gpu/drm/i915/kvmgt.ko] undefined!
> ERROR: modpost: "kvm_page_track_unregister_notifier" [drivers/gpu/drm/i915/kvmgt.ko] undefined!
> ERROR: modpost: "kvm_write_track_add_gfn" [drivers/gpu/drm/i915/kvmgt.ko] undefined!
> 
> Change the dependency to CONFIG_KVM_X86 instead.
> 
> Fixes: ea4290d77bda ("KVM: x86: leave kvm.ko out of the build if no vendor module is requested")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/i915/Kconfig | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 46301c06d18a..985cb78d8256 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -118,9 +118,8 @@ config DRM_I915_USERPTR
>  config DRM_I915_GVT_KVMGT
>  	tristate "Enable KVM host support Intel GVT-g graphics virtualization"
>  	depends on DRM_I915
> -	depends on X86
> +	depends on KVM_X86

Can GVT-g even work on non-Intel CPUs?  I.e. would it make sense to take a
dependency on KVM_INTEL?

>  	depends on 64BIT
> -	depends on KVM
>  	depends on VFIO
>  	select DRM_I915_GVT
>  	select KVM_EXTERNAL_WRITE_TRACKING
> -- 
> 2.39.5
> 
