Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E348419693
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 16:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8F289FBC;
	Mon, 27 Sep 2021 14:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B6F89FBC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 14:42:40 +0000 (UTC)
Received: by mail-il1-x12b.google.com with SMTP id a11so8190646ilk.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 07:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qvtZBZ+cLSMTupAyX2ZKGNNGtfrOCy1D4m7ug1Iv9X0=;
 b=FoMhf7fbYbBHrVsX94BuI5a4xIeWR401smJ1jgv4AMdBDP7eETvTkECdzoAIfy84gR
 uEtEaHGmIkJ50ww2IBTfO31HvsgASAV5T9/IBhedUO+md2ElfKEb1ht1YMOyJs+b+O6z
 nw44azCCLeZ8Xsm5V4J0cx4XySUVHvNNX+zPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qvtZBZ+cLSMTupAyX2ZKGNNGtfrOCy1D4m7ug1Iv9X0=;
 b=FqbcP7+5Z0UGhC6oVMUKex0Kxp7MkIiEgmU/mPLfJRceTMV75e2qWGKDLMJxw2osSO
 +BlOikWeRs2pXGsoswBj8vZHKtibno0WQmIVFSt1UkyNJcc5ds2YS87l1HfqgijFuQvG
 gMuOMxvD/EZROptiHqaqW8cJh6b5fEFAdY3rsP/c57pyQJrGLeHZTJnT8RaVPfJVKVOz
 IPqvXuE6AhJcaU/oPJTRAOD35EwLP9WMz/g6/7Atq6ovhs0tQIj/DK1l2XhmjbIHO29i
 rmW7MVOv0L2k1J5SutzCDtBS4Vz7Vq//U2NyYaU59qQ1pSg/QhPZOx8VpiW+9P3aUM5i
 R2Iw==
X-Gm-Message-State: AOAM5320B8L76G68u9BaTaLl8+FksAj89DRJAFV21d0wn/qF3PWxLVdr
 ZQROzUIRN064Ni42p3fmWfU8iZanCMeRUw==
X-Google-Smtp-Source: ABdhPJx/ByTSTfaozewk+vKdB+nL1DGc/F435+SkFeaculydLQ2BXoCovQaX3cDScrtLjuC4KXMuiw==
X-Received: by 2002:a05:6e02:14d3:: with SMTP id
 o19mr320911ilk.156.1632753759592; 
 Mon, 27 Sep 2021 07:42:39 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com.
 [209.85.166.46])
 by smtp.gmail.com with ESMTPSA id a16sm9228291ili.64.2021.09.27.07.42.39
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 07:42:39 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id q3so22911886iot.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 07:42:39 -0700 (PDT)
X-Received: by 2002:a6b:f915:: with SMTP id j21mr81319iog.98.1632753758718;
 Mon, 27 Sep 2021 07:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210927154422.605920fd@canb.auug.org.au>
In-Reply-To: <20210927154422.605920fd@canb.auug.org.au>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 27 Sep 2021 07:42:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VrkmTDA-zLFW=1f1RAAVB_P=kJDQtAx+tng6+ZkhkCSA@mail.gmail.com>
Message-ID: <CAD=FV=VrkmTDA-zLFW=1f1RAAVB_P=kJDQtAx+tng6+ZkhkCSA@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, 
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
 drm-misc tree
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

Hi,

On Sun, Sep 26, 2021 at 10:44 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> After merging the drm-misc tree, today's linux-next build (htmldocs)
> produced these warnings:
>
> include/drm/drm_edid.h:530: warning: Function parameter or member 'vend_chr_1' not described in 'drm_edid_encode_panel_id'
> include/drm/drm_edid.h:530: warning: Excess function parameter 'vend_chr_3' description in 'drm_edid_encode_panel_id'
>
>
> Introduced by commit
>
>   7d1be0a09fa6 ("drm/edid: Fix EDID quirk compile error on older compilers")

Thanks for the report! Fix posted.

https://lore.kernel.org/r/20210927074104.1.Ibf22f2a0b75287a5d636c0570c11498648bf61c6@changeid
