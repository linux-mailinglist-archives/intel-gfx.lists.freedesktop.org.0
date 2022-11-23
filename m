Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFB0634FAE
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 06:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A41D10E4E9;
	Wed, 23 Nov 2022 05:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC8810E4E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 05:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1669181765;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Fm2z95zFBkrJo+OG+cEbfJqfzc4sPwppotEwP4eeDhQ=;
 b=N7kLE4VeS8QFm7mjblaBNzsXSLk1iVJZDGGN8cJC9GArIkWEmUpSJYGrvUhru3qAPPwynI
 Bb/R1S5m4rXoKeoJ+aLt7R5u8qNYFzV2k1JeFXoSqZ7bZGyfnr+Z+dx/qC3s7O2RPKzyq9
 j/QegTqWk1F/qw0PMFxRdv/TK4/hpCU=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-122-JlehnTenMBaIE4NYzL3k1w-1; Wed, 23 Nov 2022 00:36:04 -0500
X-MC-Unique: JlehnTenMBaIE4NYzL3k1w-1
Received: by mail-lj1-f197.google.com with SMTP id
 h5-20020a2ea485000000b0027937d00c35so3996108lji.21
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 21:36:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Fm2z95zFBkrJo+OG+cEbfJqfzc4sPwppotEwP4eeDhQ=;
 b=E+l8x7HLA9Rwk2kX/6FXznwvCVkNuhccTs57cDJE9aPfTzFzJDp4h9UfDQJQ0iiurL
 5isDJs7uEg59ycc42y5eYnpgaDf5DYybpvskOgyiWdspceOrGTTUNyN1sTeCISGUv7o7
 oBer4oVuhJzRbMPKdFWzcV3Ke+H1pK3ypQBqhssctdRljRPwMUT35JyBctEr2w2FCWD4
 gck6PhVRa2tHFYMhHvOpUt1LB1iPfVTQivMpSlQJOzYQ84x/zm1kPiMsS28ITgg188WT
 uYfjssXk5TlsrAcLj/fNXrs4DfFyY3L/iZ5Gf9iNkQhmamYTqpRZDI/HS3+lYydLpsxr
 Ondg==
X-Gm-Message-State: ANoB5pn9fboS1FleQDCF7PugqfLcCyhn3/LKWYGkIygAOqSC4Fgs+HVF
 6iyhpef76E/N+Ge7Kh6k6WulJVnb2LMR3gp9r5oxyRJaNNzKcvWu9i6D9hzFvrNJsLXefCuh45B
 On0z3b7q8kysEfnPsmVLNYNpMwkTNd7Si1jnGAgd5MDgu
X-Received: by 2002:ac2:5921:0:b0:4b3:cdf5:93f3 with SMTP id
 v1-20020ac25921000000b004b3cdf593f3mr8507179lfi.99.1669181762623; 
 Tue, 22 Nov 2022 21:36:02 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7EmAdgaB8z6/XlFfL3GYcrmaPlXFkV2QFwJYrqaxkfAnHDIeaFh8pRTCR3xvg4c2PyDsw5HZNh73j3bDrQq70=
X-Received: by 2002:ac2:5921:0:b0:4b3:cdf5:93f3 with SMTP id
 v1-20020ac25921000000b004b3cdf593f3mr8507165lfi.99.1669181762300; Tue, 22 Nov
 2022 21:36:02 -0800 (PST)
MIME-Version: 1.0
References: <20221117183214.2473e745@canb.auug.org.au>
 <20221123162033.02910a5a@canb.auug.org.au>
In-Reply-To: <20221123162033.02910a5a@canb.auug.org.au>
From: David Airlie <airlied@redhat.com>
Date: Wed, 23 Nov 2022 15:35:50 +1000
Message-ID: <CAMwc25pz4mBYJUK5_GX01X0_5CCCrzfrGS=HoFTtrVRrqF13kA@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 23, 2022 at 3:21 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> On Thu, 17 Nov 2022 18:32:14 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >
> > After merging the drm-misc tree, today's linux-next build (powerpc
> > ppc44x_defconfig) failed like this:
> >
> > ld: drivers/video/fbdev/core/fbmon.o: in function `fb_modesetting_disabled':
> > fbmon.c:(.text+0x1e4): multiple definition of `fb_modesetting_disabled'; drivers/video/fbdev/core/fbmem.o:fbmem.c:(.text+0x1bac): first defined here
> > ld: drivers/video/fbdev/core/fbcmap.o: in function `fb_modesetting_disabled':
> > fbcmap.c:(.text+0x478): multiple definition of `fb_modesetting_disabled'; drivers/video/fbdev/core/fbmem.o:fbmem.c:(.text+0x1bac): first defined here
> > ld: drivers/video/fbdev/core/fbsysfs.o: in function `fb_modesetting_disabled':
> > fbsysfs.c:(.text+0xb64): multiple definition of `fb_modesetting_disabled'; drivers/video/fbdev/core/fbmem.o:fbmem.c:(.text+0x1bac): first defined here
> > ld: drivers/video/fbdev/core/modedb.o: in function `fb_modesetting_disabled':
> > modedb.c:(.text+0x129c): multiple definition of `fb_modesetting_disabled'; drivers/video/fbdev/core/fbmem.o:fbmem.c:(.text+0x1bac): first defined here
> > ld: drivers/video/fbdev/core/fbcvt.o: in function `fb_modesetting_disabled':
> > fbcvt.c:(.text+0x0): multiple definition of `fb_modesetting_disabled'; drivers/video/fbdev/core/fbmem.o:fbmem.c:(.text+0x1bac): first defined here
> >
> > Caused by commit
> >
> >   0ba2fa8cbd29 ("fbdev: Add support for the nomodeset kernel parameter")
> >
> > This build does not have CONFIG_VIDEO_NOMODESET set.
> >
> > I applied the following patch for today.
> >
> > From 63f957a050c62478ed1348c5b204bc65c68df4d7 Mon Sep 17 00:00:00 2001
> > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > Date: Thu, 17 Nov 2022 18:19:22 +1100
> > Subject: [PATCH] fix up for "fbdev: Add support for the nomodeset kernel parameter"
> >
> > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > ---
> >  include/linux/fb.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/linux/fb.h b/include/linux/fb.h
> > index 3a822e4357b1..ea421724f733 100644
> > --- a/include/linux/fb.h
> > +++ b/include/linux/fb.h
> > @@ -807,7 +807,7 @@ extern int fb_find_mode(struct fb_var_screeninfo *var,
> >  #if defined(CONFIG_VIDEO_NOMODESET)
> >  bool fb_modesetting_disabled(const char *drvname);
> >  #else
> > -bool fb_modesetting_disabled(const char *drvname)
> > +static inline bool fb_modesetting_disabled(const char *drvname)
> >  {
> >       return false;
> >  }
> > --
> > 2.35.1
>
> This commit went away for a couple of linux-next releases, but now has
> reappeared in the drm tree :-(  What went wrong?

Nothing gone wrong as such, just the drm-misc-next pull request was
sent on a regular weekly cadence, then I merged it a few days later.
The fix for this is still in the drm-misc-next queue for the next PR
which I will get this week.

Dave.

