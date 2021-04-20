Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A59366110
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 22:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55F26E8CE;
	Tue, 20 Apr 2021 20:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB8186E8CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 20:40:21 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id y4so23306358lfl.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 13:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vt4B2QdVN1fKzKQ4g6TYtc7PesYc0tP0uNFTIDrdF40=;
 b=eEP91UX5R508Lp+3Nqr34HlAywT0WW8R0OE6RVwYBwr/YFv6tQjWZkISY/oA613h5K
 vljYXLq0BRAQ2/NZG6Cv2+Qxf5Xsy9GwhN0GG4BrIbWP7PLWIUbRYxghbzv4Mk47B6UU
 7d1uDtILD08cAM4DEwz9h2JA/aHiLywO4LnbpfWAJb3K0oLpMs0FNRc8Ngq5S9wlJ7GV
 tlMAU88SS+56ou33EKLp2aJ2Zm7Dj1tqFkkgR1C5IF3POuhyMqZSqWcC3bKTUNkZ6O5j
 guXsiySonZKbBSwNkeehWdMjgXu2dMGhk80nQGVV9GjdaobEnGkL/9ya9PB6K6Y7yOTH
 XJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vt4B2QdVN1fKzKQ4g6TYtc7PesYc0tP0uNFTIDrdF40=;
 b=JFbaSz7wD8bcsWGjuaSU6uLphYP9fcgc7HrAOq7agfFrKKsxNDoWQCurSJUvpaxbfI
 thzkrHv5unBEOIVL5fjCMT8yOtq/APsUt3A6U9vrlS8Cz/0vZnBJkf2TY+ws2cR63wsm
 sZlIrTpiLz0QsYMmizdhV53Gmbsxna0bQ/0w7YVeGu8jeWittZLn4HkyiwZYLEVbsA0w
 O2Kw07zJCneI4y8wEIm7b2MfEVgWylS51mM14oxZZST3NB0xAlq6jkhf3Ukf1A7xqogH
 Ndt66/lpMCl+IOb1tqttCnKWfSTtVeqnPuDveEN8Pw1pMWiYb9XOiBwB8conwoJVr86W
 U5Uw==
X-Gm-Message-State: AOAM530l3T2yppp2W8dRonrsAo2S+m3H6WAkcPjcl7I/URypNJZ8oZi9
 nWcxaWGw6RusiXRgKJlRrGwv3yiX/yPFhf3azUZtXrxQ
X-Google-Smtp-Source: ABdhPJypR716Mi2v64AcMmFw4uNyd1VihngcY59I/0GlCWmFB0jUJiK0V8e9UG/CQVqnT6p26hbzKrfxffJ+cJZbV+8=
X-Received: by 2002:a05:6512:455:: with SMTP id
 y21mr17833613lfk.220.1618951220077; 
 Tue, 20 Apr 2021 13:40:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
In-Reply-To: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 20 Apr 2021 13:40:08 -0700
Message-ID: <CAKi4VA+Rn+XNJNooWGrve+9+07fo7_gDKZD4j0gz3K_LdvMZ-g@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Let's abstract the dmc path.
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 20, 2021 at 12:12 PM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
> Although this abstraction removes the convenience of grepping
> for the file name, it:
> - makes addition easier.
> - makes it easier to tweak global path when experiments are needed.
> - get in sync with guc/huc, without getting overly abstracted.
> - allows future junction with CSR_VERSION for simplicity.
> - Enforces dmc file will never change this standard.
>
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_csr.c | 20 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_csr.h |  6 ++++++
>  2 files changed, 16 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
> index 26a3c6787e9e..ad68bcc611c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -40,48 +40,48 @@
>
>  #define GEN12_CSR_MAX_FW_SIZE          ICL_CSR_MAX_FW_SIZE
>
> -#define ADLS_CSR_PATH                  "i915/adls_dmc_ver2_01.bin"
> +#define ADLS_CSR_PATH                  DMC_PATH(adls, 2, 01)
>  #define ADLS_CSR_VERSION_REQUIRED      CSR_VERSION(2, 1)
>  MODULE_FIRMWARE(ADLS_CSR_PATH);
>
> -#define DG1_CSR_PATH                   "i915/dg1_dmc_ver2_02.bin"
> +#define DG1_CSR_PATH                   DMC_PATH(dg1, 2, 02)
>  #define DG1_CSR_VERSION_REQUIRED       CSR_VERSION(2, 2)
>  MODULE_FIRMWARE(DG1_CSR_PATH);
>
> -#define RKL_CSR_PATH                   "i915/rkl_dmc_ver2_02.bin"
> +#define RKL_CSR_PATH                   DMC_PATH(rkl, 2, 02)
>  #define RKL_CSR_VERSION_REQUIRED       CSR_VERSION(2, 2)
>  MODULE_FIRMWARE(RKL_CSR_PATH);
>
> -#define TGL_CSR_PATH                   "i915/tgl_dmc_ver2_08.bin"
> +#define TGL_CSR_PATH                   DMC_PATH(tgl, 2, 08)
>  #define TGL_CSR_VERSION_REQUIRED       CSR_VERSION(2, 8)
>  MODULE_FIRMWARE(TGL_CSR_PATH);
>
> -#define ICL_CSR_PATH                   "i915/icl_dmc_ver1_09.bin"
> +#define ICL_CSR_PATH                   DMC_PATH(icl, 1, 09)
>  #define ICL_CSR_VERSION_REQUIRED       CSR_VERSION(1, 9)
>  #define ICL_CSR_MAX_FW_SIZE            0x6000
>  MODULE_FIRMWARE(ICL_CSR_PATH);
>
> -#define CNL_CSR_PATH                   "i915/cnl_dmc_ver1_07.bin"
> +#define CNL_CSR_PATH                   DMC_PATH(cnl, 1, 07)
>  #define CNL_CSR_VERSION_REQUIRED       CSR_VERSION(1, 7)
>  #define CNL_CSR_MAX_FW_SIZE            GLK_CSR_MAX_FW_SIZE
>  MODULE_FIRMWARE(CNL_CSR_PATH);
>
> -#define GLK_CSR_PATH                   "i915/glk_dmc_ver1_04.bin"
> +#define GLK_CSR_PATH                   DMC_PATH(glk, 1, 04)
>  #define GLK_CSR_VERSION_REQUIRED       CSR_VERSION(1, 4)
>  #define GLK_CSR_MAX_FW_SIZE            0x4000
>  MODULE_FIRMWARE(GLK_CSR_PATH);
>
> -#define KBL_CSR_PATH                   "i915/kbl_dmc_ver1_04.bin"
> +#define KBL_CSR_PATH                   DMC_PATH(kbl, 1, 04)
>  #define KBL_CSR_VERSION_REQUIRED       CSR_VERSION(1, 4)
>  #define KBL_CSR_MAX_FW_SIZE            BXT_CSR_MAX_FW_SIZE
>  MODULE_FIRMWARE(KBL_CSR_PATH);
>
> -#define SKL_CSR_PATH                   "i915/skl_dmc_ver1_27.bin"
> +#define SKL_CSR_PATH                   DMC_PATH(skl, 1, 27)
>  #define SKL_CSR_VERSION_REQUIRED       CSR_VERSION(1, 27)
>  #define SKL_CSR_MAX_FW_SIZE            BXT_CSR_MAX_FW_SIZE
>  MODULE_FIRMWARE(SKL_CSR_PATH);
>
> -#define BXT_CSR_PATH                   "i915/bxt_dmc_ver1_07.bin"
> +#define BXT_CSR_PATH                   DMC_PATH(bxt, 1, 07)
>  #define BXT_CSR_VERSION_REQUIRED       CSR_VERSION(1, 7)
>  #define BXT_CSR_MAX_FW_SIZE            0x3000
>  MODULE_FIRMWARE(BXT_CSR_PATH);
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.h b/drivers/gpu/drm/i915/display/intel_csr.h
> index 03c64f8af7ab..fbfdaa3df07e 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.h
> +++ b/drivers/gpu/drm/i915/display/intel_csr.h
> @@ -8,6 +8,12 @@
>
>  struct drm_i915_private;
>
> +#define DMC_PATH(platform, major, minor) \
> +       "i915/"                          \
> +       __stringify(platform) "_dmc_ver" \
> +       __stringify(major) "_"           \
> +       __stringify(minor) ".bin"


contrary to the macros below that are used in other places, I don't
expect DMC_PATH to be ever used outside intel_csr.c.
Why are you adding it to the header?

thanks
Lucas De Marchi

> +
>  #define CSR_VERSION(major, minor)      ((major) << 16 | (minor))
>  #define CSR_VERSION_MAJOR(version)     ((version) >> 16)
>  #define CSR_VERSION_MINOR(version)     ((version) & 0xffff)
> --
> 2.30.2
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
