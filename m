Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C405716BA99
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 08:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7676E9F1;
	Tue, 25 Feb 2020 07:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CED96E9F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 07:30:23 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z15so5058723wrl.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 23:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EQMT6lDKStyiOUIYBwkRHyQecoL65OHS2/xGbDrARdU=;
 b=vgSELXD8DgGTQSv5a9IRoU2vtK9mb9ywLlrNtNTfRByEKonxyGGQfz/bGiGZIVWhSg
 BzzgxbqaG//TC38gDoGSIy5avusNbIPE6sjoLz84rZF2c2wFoHfBQ3iwVQrMI5PauN8B
 EAyxHujlLgelVEI1uF2NJcG412aR9yLyioUc3bc4J9XUPxsxMjPPgwc5OcIaWUqLI2Q7
 93jeIzpMQ8sP011Rr83RsF8dVv7vVtfmAIMXl3AGtQRoUT8SByWxj0tGM9EvZUu+4B82
 QpmP/9+h9DlZJurP/vlC3xHOf1o+C66VkrjeuC0eaU2/2gJuU+gCwyy0uf8Rvnn/L0fp
 ZjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EQMT6lDKStyiOUIYBwkRHyQecoL65OHS2/xGbDrARdU=;
 b=P5hI9V3BZvxe75u7lDueCNrz+CtNzZ4OgZYZMKCtIxBGzSSHVh64csqT21TvLRiObg
 3Nwt7a9qHgSTENkL5K0cP94XM6LnFqkaCmigxxQV1fBOi6MrqgmGx9GLUA1WZGIXUXbb
 cPRoqtsUokBCblEMDq7rkohUdWTYD4hJ9hph9gMMHIQ+PoDnaYYllZsFvyYLiEK+Dc/k
 lyYv9MzWD5rlL+DDjnUatZ32mXwg5SQy1eTdTT2oue5wBFGNdsvAPlSjvKlNZ40xyjyD
 2QUUt24EB0vlCu5WgA0pqvrM7sPEHGToF+JPlSmveKAatUltoaR27S83P1AaqLnqsDVz
 dpjg==
X-Gm-Message-State: APjAAAVKvtQKzx7m/w++2whfoQZi3ojNEz+0n2CKBy6jOR8B0ZmpZ5ve
 129HxLp7dSnUK2kCJPqD4qnsHE71qCt0Gf4LWvq2/A==
X-Google-Smtp-Source: APXvYqxwdub7/sbabb0IU0ArscIZ++rPosDp5bcpc1f1YhP3DV42pWo8sOtcmqMfJnBEAUHeeC6p36vrruaZ75Dn9nA=
X-Received: by 2002:adf:fc12:: with SMTP id i18mr12634989wrr.354.1582615821594; 
 Mon, 24 Feb 2020 23:30:21 -0800 (PST)
MIME-Version: 1.0
References: <20200225070545.4482-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200225070545.4482-6-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200225070545.4482-6-pankaj.laxminarayan.bharadiya@intel.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 25 Feb 2020 07:29:44 +0000
Message-ID: <CAPj87rPHFCntSOCx=92HitNxRBkXx3xSft0krkFLzdM2FrDSRw@mail.gmail.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
Subject: Re: [Intel-gfx] [RFC][PATCH 5/5] drm/i915/display: Add
 Nearest-neighbor based integer scaling support
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
Cc: Maxime Ripard <mripard@kernel.org>, tzimmermann@suse.de,
 David Airlie <airlied@linux.ie>, Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>, mihail.atanassov@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, 25 Feb 2020 at 07:17, Pankaj Bharadiya
<pankaj.laxminarayan.bharadiya@intel.com> wrote:
> @@ -415,18 +415,26 @@ skl_program_scaler(struct intel_plane *plane,
>         u16 y_vphase, uv_rgb_vphase;
>         int hscale, vscale;
>         const struct drm_plane_state *state = &plane_state->uapi;
> +       u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
> +       u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
>         u32 scaling_filter = PS_FILTER_MEDIUM;
> +       struct drm_rect dst;
>
>         if (state->scaling_filter == DRM_SCALING_FILTER_NEAREST_NEIGHBOR) {
>                 scaling_filter = PS_FILTER_PROGRAMMED;
> +               skl_setup_nearest_neighbor_filter(dev_priv, pipe, scaler_id);
> +
> +               /* Make the scaling window size to integer multiple of source
> +                * TODO: Should userspace take desision to round scaling window
> +                * to integer multiple?
> +                */
> +               crtc_w = rounddown(crtc_w, src_w);
> +               crtc_h = rounddown(crtc_h, src_h);

The kernel should absolutely not be changing the co-ordinates that
userspace requested.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
