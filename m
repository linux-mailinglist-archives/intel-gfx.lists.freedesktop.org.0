Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B670D2AF136
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 13:48:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E0789F45;
	Wed, 11 Nov 2020 12:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EABBD89F45
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 12:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605098924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zGXJ8V4La1S/QeUFBtdnXjusm+8Mn5insAGmUISpfHs=;
 b=F1PZsI4a6hTKkBvvX/ZppGYJoY5vAo+DeBNUieutbG+qSQl07V3bNko6OnLkEZPg2w7XmQ
 mpwv3wzSJqHa0iDkcmhY0RhqY3+1N06gCV7qw7WOgAgMPYz8cuQ8s5kgE2amRbBHl/hL8E
 8j6nrQEh5oXFpEYzf41h7FI4KITPKss=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-ylk4u9fWMaOHZJZJsOBM3w-1; Wed, 11 Nov 2020 07:48:42 -0500
X-MC-Unique: ylk4u9fWMaOHZJZJsOBM3w-1
Received: by mail-wm1-f72.google.com with SMTP id h2so873156wmm.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 04:48:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zGXJ8V4La1S/QeUFBtdnXjusm+8Mn5insAGmUISpfHs=;
 b=ReTzWaxVuI2o3x9QbYOLYVs8vg4zgLzaZVezcFAeWda92u3S+nFi0ytBP7NsOnqniR
 2AS4GuC9smM0+uZwNr29i4B6NwnT0uaTkfD0LfC8Lhi7RdvyA6JlYTEsrNKV3jUTFemz
 /9VZcRzT0lVir118H3G+y8uz1EvvvxlHdLxDg4Q5qmzFMPAMG3DR0bG+as65mukAVWiZ
 IHzueUD6OSXqWepfujR14IWraysSdltMp0qEVxUoSfvAhh9tUJo9L8OGE7V18kGFTVxw
 UTA1HXhtJpt0+rwymX69L81+/almzNMgRxHYnBY5l3ZI9gkzzmNbjrlVCXGs+Fc3fsNi
 S8UQ==
X-Gm-Message-State: AOAM5313k7Lg866WtcSO2bZJA1V4KGh2c5yNSRxI3Imofjfu8vZ1eIP4
 i9qxHY95inIx+Zu1tXxBRjeHkKDtVxrADYch8u8dtlsyISo8/fWRE59qcD/r3ZREkidmDjdiUd6
 Xv7IdnIjSNH6duhaRjQFfdJOidfgj
X-Received: by 2002:a5d:5446:: with SMTP id w6mr20336609wrv.122.1605098921358; 
 Wed, 11 Nov 2020 04:48:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzBamKw/bg5c7+XjuuJx3l1SVoJhclL/t8sfniS6v7UD+Th0hPny5TfD72A5b6eS01hmH1NbQ==
X-Received: by 2002:a5d:5446:: with SMTP id w6mr20336594wrv.122.1605098921214; 
 Wed, 11 Nov 2020 04:48:41 -0800 (PST)
Received: from redhat.com (bzq-79-181-34-244.red.bezeqint.net. [79.181.34.244])
 by smtp.gmail.com with ESMTPSA id y11sm2305471wmj.36.2020.11.11.04.48.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Nov 2020 04:48:40 -0800 (PST)
Date: Wed, 11 Nov 2020 07:48:36 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20201111074811-mutt-send-email-mst@kernel.org>
References: <20201102124327.2f82b2a7@canb.auug.org.au>
 <20201102051822-mutt-send-email-mst@kernel.org>
 <20201111171015.631ffd0e@canb.auug.org.au>
MIME-Version: 1.0
In-Reply-To: <20201111171015.631ffd0e@canb.auug.org.au>
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
Cc: Joerg Roedel <jroedel@suse.de>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 11, 2020 at 05:10:15PM +1100, Stephen Rothwell wrote:
> Hi Michael,
> 
> On Mon, 2 Nov 2020 05:19:06 -0500 "Michael S. Tsirkin" <mst@redhat.com> wrote:
> >
> > On Mon, Nov 02, 2020 at 12:43:27PM +1100, Stephen Rothwell wrote:
> > > 
> > > After merging the drm-misc tree, today's linux-next build (arm
> > > multi_v7_defconfig) failed like this:
> > > 
> > > In file included from drivers/gpu/drm/nouveau/nouveau_ttm.c:26:
> > > include/linux/swiotlb.h: In function 'swiotlb_max_mapping_size':
> > > include/linux/swiotlb.h:99:9: error: 'SIZE_MAX' undeclared (first use in this function)
> > >    99 |  return SIZE_MAX;
> > >       |         ^~~~~~~~
> > > include/linux/swiotlb.h:7:1: note: 'SIZE_MAX' is defined in header '<stdint.h>'; did you forget to '#include <stdint.h>'?
> > >     6 | #include <linux/init.h>
> > >   +++ |+#include <stdint.h>
> > >     7 | #include <linux/types.h>
> > > include/linux/swiotlb.h:99:9: note: each undeclared identifier is reported only once for each function it appears in
> > >    99 |  return SIZE_MAX;
> > >       |         ^~~~~~~~
> > > 
> > > Caused by commit
> > > 
> > >   abe420bfae52 ("swiotlb: Introduce swiotlb_max_mapping_size()")
> > > 
> > > but only exposed by commit
> > > 
> > >   4dbafbd30aef ("drm/nouveu: fix swiotlb include")
> > > 
> > > I applied the following fix for today:
> > > 
> > > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > > Date: Mon, 2 Nov 2020 12:34:57 +1100
> > > Subject: [PATCH] swiotlb: using SIZE_MAX needs limits.h included
> > > 
> > > Fixes: abe420bfae52 ("swiotlb: Introduce swiotlb_max_mapping_size()")
> > > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>  
> > 
> > Acked-by: Michael S. Tsirkin <mst@redhat.com>
> > 
> > I guess it makes sense to pick this up for this release directly.
> > I'll merge this unless there are any objections.
> 
> Christoph is right that the include should not be conditional.  But I
> have not tested that that does not introduce some other problems.

If there's a problem it will be a build failure - I'll put
it in next for a while, this way we'll find out.

> -- 
> Cheers,
> Stephen Rothwell


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
