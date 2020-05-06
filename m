Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B27781C7C6B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 23:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A326E8EB;
	Wed,  6 May 2020 21:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E1586E8EB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 21:27:18 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id l18so3889528wrn.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 May 2020 14:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4LHhHNlqoBvi/KCSFbCsEqyE1x6Iz53GMW9FUxl8SmA=;
 b=MqjtHDp4Ego/9GYa/m8KksjjVlWd2YXvRVYg0H3Jt+ydMAA/IbWBS07tjddAMr3o3c
 UypND8EGBF4KTwMCbyUBM7313u3p4pK0/uY1TSrgfoUrKdsw2krWWKySyHQecmcmhvOG
 F4ANJIXrut4iY13SE9eth7fErPKRVr5UkB6LUELLOZF0vPEgJBJd23JhOjoFoHrQP84g
 pfePTD+Cx6V6gCbcSHUUHyZg2K+C1zl6ekQAI9LmnPyqbCZf8LAKeuYR5c5ja9Y8Xmoi
 N5Huk1OTxkOMdgXggS1JMcuYccunzAtZnNE+zh8SuTRdBwIqJ6NfoSab4lMTjh53/qtp
 69mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4LHhHNlqoBvi/KCSFbCsEqyE1x6Iz53GMW9FUxl8SmA=;
 b=AScA+nSfWzSvelrkErh2SS2KcZGs2W6vArjhEQ5AA28EGHtrgKzIpu9iIhs5pdCPGq
 ygB5l+FfJUlEheBoKln6PULQ5kLCBjnkd6izdINMnhjCe9TEgM9tleiqvJbtDnV/vvRe
 d2NcIjsQM89RK1/IVaOZxPOdwyiGpUM7ObzBwc4tPIrfFYMhdRqaz+aVAxmMdFU7ssE1
 rBZvvO1q6IBrYdjVCnNKEFRA+eodZn9Yu2Y3H8jfZLTc0gwNwpMp2VRqAQHG12Yc6prj
 alB8YOZ/0JvgHNN6y+IPLLdfr+44YDDfbGEZ+fwP40f3eBynK5qMm/d3qEsYrIMvKHFQ
 VIsw==
X-Gm-Message-State: AGi0PuafZaL3rhOIZU38mDkvmRgaAmvZZIFRcsM5WmGxZXKGDsv2nYF5
 Y3SOyexu6PAWyyvhSPv+3SrjAZ8h3gISoh8IwtLcTQ==
X-Google-Smtp-Source: APiQypJpAZXlgBSTrPYrdFzWa4ly3s+zWQiNzUroKpy1NTRt18OcErB66/9UfIL5uqz4LpRdO4uV4winI8/hFAEZ4JM=
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr7518384wrs.276.1588800436866; 
 Wed, 06 May 2020 14:27:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200307012600.19602-1-lucas.demarchi@intel.com>
In-Reply-To: <20200307012600.19602-1-lucas.demarchi@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 6 May 2020 14:27:04 -0700
Message-ID: <CAKi4VALaoGE=ZGTEHdz9+aMLrbKi6D-AVHO_OtNd6u=-Rv=WrA@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: avoid opregion calls and
 messages
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

Some Cc to try to get it reviewed.

Lucas De Marchi

On Fri, Mar 6, 2020 at 5:26 PM Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>
> This avoids the annoying message
> "Failed to get panel details from OpRegion (-19)" while initializing.
> On DGFX there is no access to OpRegion, so just avoid any calls related
> to it.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index cc6b00959586..daadad046810 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1006,6 +1006,10 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
>         u32 panel_details;
>         int ret;
>
> +       /* No access to OpRegion */
> +       if (IS_DGFX(dev_priv))
> +               return -ENODEV;
> +
>         ret = swsci(dev_priv, SWSCI_GBDA_PANEL_DETAILS, 0x0, &panel_details);
>         if (ret) {
>                 drm_dbg_kms(&dev_priv->drm,
> --
> 2.25.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
