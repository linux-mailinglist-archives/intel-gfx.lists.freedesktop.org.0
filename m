Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A12242A28AF
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 12:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18ABF6E4AE;
	Mon,  2 Nov 2020 11:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2AC96E4AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 11:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604315119;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=r+Q0QGef/Chloit35akJAvp2UK5y4+Yr2p6vISWEuwM=;
 b=K3mlqsA/dkP5D4qaZi6cjFjeil2ud2jZUJhbaka55N8L2QdIg/vDMuebea1xzE/5iJ3kHn
 GTJjxrU/uuFh7UT4H+xIalfgFoPptvzzgznfwZJ7ZDNIq8391qbNxKP8fPa9kTWxY0nLRV
 z51Lwgsz+zW0Jaefhrw3budLwDqAiMQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-69-GdRH_hlRPRqG54s5KfOFfg-1; Mon, 02 Nov 2020 06:05:18 -0500
X-MC-Unique: GdRH_hlRPRqG54s5KfOFfg-1
Received: by mail-wm1-f69.google.com with SMTP id l16so1757687wmh.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Nov 2020 03:05:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=r+Q0QGef/Chloit35akJAvp2UK5y4+Yr2p6vISWEuwM=;
 b=Hh/52KaKLjGWz+P4zCgoQBJgvglArS0UzvcCqWGBjM3LdLjCQ2Fu9bhohY8dldwmoI
 nFy0VApSpbTjNF8k6jOZrv9hQWuruCvzag+L9BcSEQc43eTp2RXte7Vji+IXssg7lRgA
 uA9kdRmsvAM9ynbRutaIOdggjMRmItMm+Nxk9hqEFlr13JEoPbOOC0xA2cdEhfVuBggu
 e3wEyzyN7a+Eg3iQDfa7cEKxm8/olnwhnZFiSc+o3TyNnmdqnJqyc7FevoKDzVWLNFw9
 HbQR8t+87N8I86c5M8VOE4dqvX2+ljOwabgRFzrssbLRZdAvsrCW/CbSQ0HqAMu+/8dR
 lkbQ==
X-Gm-Message-State: AOAM532tM/nsyTbYegg+dxJK1AttbrGXwjhrFp0U35FVfUCz78BstMuE
 NIX19YaHPe1TCupGnXyicPHRtMYvmrS09VVYiWFL86TMHyYFayhb1+Tpwee42SC3OeEJs45Pjy3
 Kae4n/ILKNOYJCzUyrj1BR5dljgs5
X-Received: by 2002:a1c:4054:: with SMTP id n81mr12021231wma.48.1604315117006; 
 Mon, 02 Nov 2020 03:05:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxmEIqLJMyDiiIjNpv7lb80eabtXHYd5HB0MoVHivQmdUJd1PBVcw8MORSBRsifC7fHtfm/vg==
X-Received: by 2002:a1c:4054:: with SMTP id n81mr12021212wma.48.1604315116864; 
 Mon, 02 Nov 2020 03:05:16 -0800 (PST)
Received: from redhat.com (bzq-79-181-134-187.red.bezeqint.net.
 [79.181.134.187])
 by smtp.gmail.com with ESMTPSA id y4sm21531180wrp.74.2020.11.02.03.05.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Nov 2020 03:05:16 -0800 (PST)
Date: Mon, 2 Nov 2020 06:05:12 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20201102060422-mutt-send-email-mst@kernel.org>
References: <20201102124327.2f82b2a7@canb.auug.org.au>
 <CAKMK7uHopZfa1vJ2++OQC8z=GKdDcJ=9=sKWJAcSfguec2UgyA@mail.gmail.com>
 <20201102102711.GA28511@infradead.org>
MIME-Version: 1.0
In-Reply-To: <20201102102711.GA28511@infradead.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Joerg Roedel <jroedel@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Christian K??nig <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 02, 2020 at 10:27:11AM +0000, Christoph Hellwig wrote:
> On Mon, Nov 02, 2020 at 10:28:34AM +0100, Daniel Vetter wrote:
> > > --- a/include/linux/swiotlb.h
> > > +++ b/include/linux/swiotlb.h
> > > @@ -5,6 +5,9 @@
> > >  #include <linux/dma-direction.h>
> > >  #include <linux/init.h>
> > >  #include <linux/types.h>
> > > +#ifndef CONFIG_SWIOTLB
> > > +#include <linux/limits.h>
> > > +#endif
> 
> No conditional includes please.  And the proper fix for the reported
> issue is to stop poking into swiotlb internals in random drivers..

Meaning?

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
