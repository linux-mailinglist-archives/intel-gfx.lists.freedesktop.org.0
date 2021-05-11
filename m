Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5808C379DDB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 05:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8618B89C1A;
	Tue, 11 May 2021 03:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE3B89C1A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 03:33:25 +0000 (UTC)
Received: from mail-lf1-f69.google.com ([209.85.167.69])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <kai.heng.feng@canonical.com>) id 1lgJ99-0006FO-ML
 for intel-gfx@lists.freedesktop.org; Tue, 11 May 2021 03:33:23 +0000
Received: by mail-lf1-f69.google.com with SMTP id
 e13-20020a19674d0000b02901d04c8e125aso3880929lfj.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 20:33:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ip8+k4Q+8oYoZf8LzKq65TnS2j8rrqsqavYRFDb50M4=;
 b=iTRfIv2DlU0jaHjQOftVYJOnDUia5VpF4bGeTgF5Sp7XmT1Web/foKt/kvlq2n0x9Y
 17uQmegn5SZQQu7Lvui4wlOTAeucwk3MRLjdbqYiv9+xm8pHX5lXndzq7HTX3W+PQct8
 4/sRD9Dc5B/oLHXfu0CxIAn3YEwMuC7vFmszfTYtQy3iGgKLCyJKviCDmrHFf/BmUbzC
 C89evxasErdqQXzjjjEDsZyK9CBU7JNklX4V6lTCbZEKy11nneTxsJVrsSaaO53tbREo
 Yr/a2T1Lkh3fd6qhX9dJj6Ln3vDL3v0xEkgnVrXEjHRN5/EtBwsrksF2OXE8veqkTLQS
 bl5g==
X-Gm-Message-State: AOAM530iR/HAfX0Ij6FeQw3sb5IDlWhdtKHBpBltrsU03TeFWq/mnDiL
 oMuLlX9OuPlDx/LJIkPGrdEY8roo1UjurG3e0EYGfu3VmI2xRkcUkVnDYEmJiosw9bvv2VCKBfC
 WQhtyvZvDtBPkjB78p9MD+lLfhpPERtJw4uk+MxyZ/uLD7xhKDacaHyTiZ4oI7Q==
X-Received: by 2002:a05:6512:3f8c:: with SMTP id
 x12mr18725329lfa.622.1620704002974; 
 Mon, 10 May 2021 20:33:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyEqfE/8NOyvDUHxwlkXYRjY0rz57HVuO6OnwojyPBP7+xcHUEkXqdEf4uDx5MJW2t2UDMEgCnyGFvlCRTu3WQ=
X-Received: by 2002:a05:6512:3f8c:: with SMTP id
 x12mr18725318lfa.622.1620704002705; 
 Mon, 10 May 2021 20:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210426152420.359402-1-kai.heng.feng@canonical.com>
In-Reply-To: <20210426152420.359402-1-kai.heng.feng@canonical.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue, 11 May 2021 11:33:09 +0800
Message-ID: <CAAd53p4JgjAkHnBkGz20HM2uL8rCJUD6p0bZj+MLd7sbcq5=8A@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Invoke another _DSM to enable
 MUX on HP Workstation laptops
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Takashi Iwai <tiwai@suse.de>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 26, 2021 at 11:24 PM Kai-Heng Feng
<kai.heng.feng@canonical.com> wrote:
>
> On HP Fury G7 Workstations, graphics output is re-routed from Intel GFX
> to discrete GFX after S3. This is not desirable, because userspace will
> treat connected display as a new one, losing display settings.
>
> The expected behavior is to let discrete GFX drives all external
> displays.
>
> The platform in question uses ACPI method \_SB.PCI0.HGME to enable MUX.
> The method is inside the another _DSM, so add the _DSM and call it
> accordingly.
>
> I also tested some MUX-less and iGPU only laptops with that _DSM, no
> regression was found.
>
> v3:
>  - Remove BXT from names.
>  - Change the parameter type.
>  - Fold the function into intel_modeset_init_hw().
>
> v2:
>  - Forward declare struct pci_dev.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3113
> References: https://lore.kernel.org/intel-gfx/1460040732-31417-4-git-send-email-animesh.manna@intel.com/
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

A gentle ping...

> ---
>  drivers/gpu/drm/i915/display/intel_acpi.c    | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_acpi.h    |  3 +++
>  drivers/gpu/drm/i915/display/intel_display.c |  2 ++
>  3 files changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> index 833d0c1be4f1..d008d3976261 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> @@ -13,12 +13,17 @@
>  #include "intel_display_types.h"
>
>  #define INTEL_DSM_REVISION_ID 1 /* For Calpella anyway... */
> +#define INTEL_DSM_FN_PLATFORM_MUX_ENABLE 0 /* No args */
>  #define INTEL_DSM_FN_PLATFORM_MUX_INFO 1 /* No args */
>
>  static const guid_t intel_dsm_guid =
>         GUID_INIT(0x7ed873d3, 0xc2d0, 0x4e4f,
>                   0xa8, 0x54, 0x0f, 0x13, 0x17, 0xb0, 0x1c, 0x2c);
>
> +static const guid_t intel_dsm_guid2 =
> +       GUID_INIT(0x3e5b41c6, 0xeb1d, 0x4260,
> +                 0x9d, 0x15, 0xc7, 0x1f, 0xba, 0xda, 0xe4, 0x14);
> +
>  static char *intel_dsm_port_name(u8 id)
>  {
>         switch (id) {
> @@ -176,6 +181,19 @@ void intel_unregister_dsm_handler(void)
>  {
>  }
>
> +void intel_dsm_enable_mux(struct drm_i915_private *i915)
> +{
> +       struct pci_dev *pdev = i915->drm.pdev;
> +       acpi_handle dhandle;
> +
> +       dhandle = ACPI_HANDLE(&pdev->dev);
> +       if (!dhandle)
> +               return;
> +
> +       acpi_evaluate_dsm(dhandle, &intel_dsm_guid2, INTEL_DSM_REVISION_ID,
> +                         INTEL_DSM_FN_PLATFORM_MUX_ENABLE, NULL);
> +}
> +
>  /*
>   * ACPI Specification, Revision 5.0, Appendix B.3.2 _DOD (Enumerate All Devices
>   * Attached to the Display Adapter).
> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.h b/drivers/gpu/drm/i915/display/intel_acpi.h
> index e8b068661d22..def013cf6308 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.h
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.h
> @@ -11,11 +11,14 @@ struct drm_i915_private;
>  #ifdef CONFIG_ACPI
>  void intel_register_dsm_handler(void);
>  void intel_unregister_dsm_handler(void);
> +void intel_dsm_enable_mux(struct drm_i915_private *i915);
>  void intel_acpi_device_id_update(struct drm_i915_private *i915);
>  #else
>  static inline void intel_register_dsm_handler(void) { return; }
>  static inline void intel_unregister_dsm_handler(void) { return; }
>  static inline
> +void intel_dsm_enable_mux(struct drm_i915_private *i915) { return; }
> +static inline
>  void intel_acpi_device_id_update(struct drm_i915_private *i915) { return; }
>  #endif /* CONFIG_ACPI */
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a10e26380ef3..d79dae370b20 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11472,6 +11472,8 @@ void intel_modeset_init_hw(struct drm_i915_private *i915)
>  {
>         struct intel_cdclk_state *cdclk_state;
>
> +       intel_dsm_enable_mux(i915);
> +
>         if (!HAS_DISPLAY(i915))
>                 return;
>
> --
> 2.30.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
