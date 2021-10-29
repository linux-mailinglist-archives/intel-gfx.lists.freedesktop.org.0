Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9A4440047
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 18:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9934F6EA75;
	Fri, 29 Oct 2021 16:26:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555D06EA75
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 16:26:33 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id bk22so3160152qkb.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 09:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2JoNPwbJP5ul9ftyYl/ctkBp91iI4BlLOY9wfyngQjQ=;
 b=GMK6rHsyuue22Ji2n2BgJf3y+81bgy9CMlBc0/pK7CssIgwn2cXUbCJoenCQoqgSP0
 nIHWcNVzh3MWDxRyQ4+Av+bvRQPR0IvC/eTxa9neS7rtY8udm7wxKm9ILb/kZp0pwvM2
 abl4u/+F/90JUmWBl2LGhsK5Oz9AkFFMoSn9eLpF0mbYDqYT89DEExsCmNlDgzEMT+wQ
 u/tLF0ExnNbrujtWUvXY5UqZmkybNiAmGhsDyiQ42wblLiqEA5Pt0nj71E1BdarIvIKl
 U80OeWOHsTk9JJRSvDhe0m2nBIrSYuXk9jgs//Ja5xAdo5PjxfmXFjz1po0YMc227Rvk
 48YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2JoNPwbJP5ul9ftyYl/ctkBp91iI4BlLOY9wfyngQjQ=;
 b=qxFv8kGSg2sPEz4law+TRnJsATKVSbzPpsyLEfnwgWtyuepO4zMlUOZjnlTR9e0/Hg
 hXCXS7um27bcO4UHcR27RJfMRG/Y7mUV1gQSlSBLIXuUGBw4eFBiel5Wuydmd2BMKauU
 SSYHdxDlXW0YV/HxlcKaCnCKnmI1kPOQVIMgGMjWgkehjbmvUGXJEfK3XC+cXNtmEzpd
 +j4CNt8uRsijYuDA0GMAGPlU9uYm7CdckDP1CqIV+yvScUrDl/JSxNyTTW7jNHDkDXLM
 DL3XDwtLv5eZwWFBUnhZWFi22aaps4HTG+4iJw8p55a8Zqf2osImp0D3GJhxTppBb1QD
 843w==
X-Gm-Message-State: AOAM531f23UDCd1zdotWYupdSqmyobTHqclLsTKbRxZiiCDr7oAJSuCl
 YI7pt7lz3qjm9xZJYX/wqcovBbfAJERlMXVjjRk=
X-Google-Smtp-Source: ABdhPJze7q7xiegrwzg2X07UbYEL39g3IXDAnk9jndS4hbbpqm7sR1fSemtjKN9aPvYMXoIzALsHyuy8rnZmwZy6w4k=
X-Received: by 2002:a37:ae84:: with SMTP id x126mr9788460qke.334.1635524792311; 
 Fri, 29 Oct 2021 09:26:32 -0700 (PDT)
MIME-Version: 1.0
References: <20211026225105.2783797-1-imre.deak@intel.com>
 <20211026225105.2783797-4-imre.deak@intel.com>
In-Reply-To: <20211026225105.2783797-4-imre.deak@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 29 Oct 2021 17:26:05 +0100
Message-ID: <CAM0jSHPnGZO86DEi6X8D_bs_CqDVED1TGuzgoOeOTnOtnKXWuQ@mail.gmail.com>
To: Imre Deak <imre.deak@intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/fb: Factor out functions to
 remap contiguous FB obj pages
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

On Tue, 26 Oct 2021 at 23:51, Imre Deak <imre.deak@intel.com> wrote:
>
> Factor out functions needed to map contiguous FB obj pages to a GTT/DPT
> VMA view in the next patch.
>
> No functional changes.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 110 +++++++++++++++------------
>  1 file changed, 60 insertions(+), 50 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 57c97554393b9..a30366d4965b6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1387,6 +1387,25 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
>         return ERR_PTR(ret);
>  }
>
> +static struct scatterlist *
> +add_padding_pages(unsigned int count,
> +                 struct sg_table *st, struct scatterlist *sg)
> +{
> +       st->nents++;
> +
> +       /*
> +        * The DE ignores the PTEs for the padding tiles, the sg entry
> +        * here is just a convenience to indicate how many padding PTEs
> +        * to insert at this spot.
> +        */
> +       sg_set_page(sg, NULL, count * 4096, 0);

s/4096/I915_GTT_PAGE_SIZE ?

> +       sg_dma_address(sg) = 0;

I guess maybe a little bit scary, since that might be a valid address.
Using the vma->vm scratch might be annoying though, since it could be
a different type than the object, plus this is only the GGTT.

Looks fine I think,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
