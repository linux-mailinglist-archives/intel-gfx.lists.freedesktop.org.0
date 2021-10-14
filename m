Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF26342D1F2
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 07:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24C456E12A;
	Thu, 14 Oct 2021 05:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06D16E12B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 05:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634190146;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VY03GubPFVDdkvSR8SdXXqCAVaPVrTzhj7NluBAU388=;
 b=McaNinSH1tySYbnWs6zNh2hcJPkwECpsneQ6/5gd8pYHN4HrNbVH15ykF63fu4onpNOKYJ
 5uOp1GcYs7ssnUg2I0b1rO/sBz3LQtwnIuQCVb1Cl/5LNWniRaP2Dh9vVO/kneyz17FvF9
 2X6qvjSviOIcKMvcRWrOYlof/DHlivA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-bxpE_Z0_P8WwkkfWJDivGg-1; Thu, 14 Oct 2021 01:42:21 -0400
X-MC-Unique: bxpE_Z0_P8WwkkfWJDivGg-1
Received: by mail-wr1-f71.google.com with SMTP id
 c2-20020adfa302000000b0015e4260febdso3626238wrb.20
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 22:42:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VY03GubPFVDdkvSR8SdXXqCAVaPVrTzhj7NluBAU388=;
 b=l2XpIB5wKdyzTOB/aYGgEvlFSeeJCDL/bzMRSAkWmT7XzMczkOqm8Lmct1IwajSHHc
 oKWfebKUINa7O2Pzn+59WbzZXF2dQoMkuyqN0/zSw6zh+GM5rxzAkMMD/89ks2blvzK2
 3rsH+9v5iIdbcrUebAQdb7QJt1fhx1/e3RcBhawkKUJwVVhAQ2E31+xfFvmKDToXvKak
 lDJbK/3CaDv5+Gm76ltsXoiz5qNFGmMKL4A5ODzTVQ5lL+c7/1T+6cS3cNcPeJD1Fdee
 k0Jxnl8oqTM0vrhgZOIFvyzd3qla/IIRQuaedKFj2q4E0SZBME/zoaIHZ62SF5itdkuh
 4JNw==
X-Gm-Message-State: AOAM531q7rVvUl/v/p/U3QzzN7DcWhLVHOR8Nuadtb30d8pZ4PbstwW4
 vobcRmHIW6yxgZnqxpCFz5lqAqbdxal3chJ9pQetTsJcA9GX7zcl4UYXfOzJ1FAolq4DhoIFs/I
 bO/Gb/YfgkYeoKGoFb2ptKdu6SCo0vfEp7QWgEAgruZfr
X-Received: by 2002:adf:a29c:: with SMTP id s28mr4104546wra.116.1634190140691; 
 Wed, 13 Oct 2021 22:42:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQovMuuTmLhj35z2utXaPHJV063AsII3FyccF8wXMMb7viJYHRoQqfSWAqErXYbz1US8DF/BzbxkOaXmWnGMg=
X-Received: by 2002:adf:a29c:: with SMTP id s28mr4104529wra.116.1634190140520; 
 Wed, 13 Oct 2021 22:42:20 -0700 (PDT)
MIME-Version: 1.0
References: <20211012131836.4e17a031@canb.auug.org.au>
 <202110141102364478237@zte.com.cn>
In-Reply-To: <202110141102364478237@zte.com.cn>
From: Karol Herbst <kherbst@redhat.com>
Date: Thu, 14 Oct 2021 07:42:09 +0200
Message-ID: <CACO55tsyrnta4z=K_vARsQTTD1t4o8sHA4Svr=Z+sDnvv0jHCQ@mail.gmail.com>
To: Luo penghao <luo.penghao@zte.com.cn>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Linux Next Mailing List <linux-next@vger.kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kherbst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the
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

On Thu, Oct 14, 2021 at 5:02 AM <luo.penghao@zte.com.cn> wrote:
>
> Hi,
>
> I review the code.
>
> It seems I forget to delete the definition of the variable "inst",I'm sry for that.: (
>
> I'll submit another patch soon.
>

I already wrote the patch and pushed it:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit?id=381ba6a6baf104b572379c6b2deab884555104d4

>
> > Hi all,
> >
> > After merging the drm-misc tree, today's linux-next build (x86_64
> > allmodconfig) failed like this:
> >
> > drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c: In function 'gp100_vmm_fault_cancel':
> > drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c:491:6: error: unused variable 'inst' [-Werror=unused-variable]
> >   491 |  u32 inst, aper;
> >       |      ^~~~
> > cc1: all warnings being treated as errors
> >
> > Caused by commit
> >
> >   404046cf4805 ("drm/nouveau/mmu/gp100-: drop unneeded assignment in the if condition.")
> >
> > I have used the drm-misc tree from next-20211011 for today.
> >
> > --
> > Cheers,
> > Stephen Rothwell

