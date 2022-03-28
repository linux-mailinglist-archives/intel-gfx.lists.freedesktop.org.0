Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF844E9E87
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 20:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3D510E035;
	Mon, 28 Mar 2022 18:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F64310E035;
 Mon, 28 Mar 2022 18:00:17 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id 1so12086789qke.1;
 Mon, 28 Mar 2022 11:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nHWC7om6iD5W8tyT1vhbY+GXQMpipwIioTbSJCBrQ4Q=;
 b=T+8+RJzDUlmrd+04kSjsbsqg0/o3Ohv3so2CvccenYJd18nzGTONFPUPm9mywABG1b
 CQGw0W4H91yikvNoSf1Hyqz9Y/iA/V2QgUtvoDa6Wi6J7STfaVUVtPPvbm66vtFF8vqI
 WCJiVmkkFLWJOae84mXwoMA145aweDZb4dpUdeKMqX6sDIN3IliIf+pbj3vtKSE8U9OK
 jXQiAudmMEnlZ4NII/eBcpgaAB8DihVkj88Tu67KddvMGGE6weW8G1Rmudq7TgoC9EgI
 SUrbXKX9s6iGFWfIYNhWlOhgeCE3T5M9opk+/7fVvOis5IioCrstcxBvqW04XTkgcSuU
 wHEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nHWC7om6iD5W8tyT1vhbY+GXQMpipwIioTbSJCBrQ4Q=;
 b=tI727L92TF+mHPZSZeWy5HlWnoN/46xqEz82rJkZJu6Xp05hqax+RXYMFHM5L08qg/
 NIHNYZi3VoqY0oZE9lHVRnI2lf0QzKGmHfQIFT6Ef2uoi34jDnolsm3z7hMwbvKarRbQ
 utZUIZ1AaYwoPGZ9E9d4T5hesSSTcf59Fvx0XZOwAKTcM6y16Z3lweV2/dLZvSfLrRj+
 5j5FOKP/dvTOFuYeIcKn3BlJwgC+GK3mwIlUoF43lPlKqWVXW02rx/J9D6KwQ8b+mquL
 EeW8CRb3IyLpFyjJcAEcdWL83r7k12NleJbNshN5gboaNa1J3mjSdFzd913Sj/tuOghB
 7MbQ==
X-Gm-Message-State: AOAM532vRTYuWDfRL4H4fj9/QxmbSfX86N2baJueuyteVfhx9PF3VzTJ
 FePDptw+GrGmnzA6vJcBQg7Y4VBUTKisF/IvHVo=
X-Google-Smtp-Source: ABdhPJzXxxLGh3B1cRskmrUAph2FsusJAHAXr08Upf/XI1JAzLmxeGT+maHBVTe6XORGHt862Ni9azMZc9VPZcnGWu0=
X-Received: by 2002:a05:620a:1a87:b0:680:cba9:ed5c with SMTP id
 bl7-20020a05620a1a8700b00680cba9ed5cmr5785637qkb.482.1648490416300; Mon, 28
 Mar 2022 11:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1648477901.git.jani.nikula@intel.com>
In-Reply-To: <cover.1648477901.git.jani.nikula@intel.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Mon, 28 Mar 2022 19:00:05 +0100
Message-ID: <CACvgo53Mx7qMt7_xC32vG+yQu8xEOF9N-iruS1FDRmVMUKaHDQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v3 00/12] drm/edid: constify EDID parsing,
 with fixes
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 28 Mar 2022 at 15:34, Jani Nikula <jani.nikula@intel.com> wrote:
>
> v3 of https://patchwork.freedesktop.org/series/101787/ and
> https://patchwork.freedesktop.org/series/101862/
>
> I screwed up with the struct renamings in v2, so there's some falling
> back to v1 and general confusion here. Sorry.
>

The mutation and casting was doing my head - thanks for sorting this out.

IMHO in the future we might want to (re)move the final mutation -
header fixup - out of drm_edid_is_valid (drm_edid_block_valid really).
Say by making it explicit and applying on DP only (as per the inline
spec mention).
But that is for another day.

As-is the series is:
Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>

HTH
Emil
