Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7834508EAB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 19:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AA2B10EAE3;
	Wed, 20 Apr 2022 17:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C2010EAE3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 17:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650476445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N6Zu8efagxCg0qjIbj3LGsUm4V9r8EQ58X79KLBO8as=;
 b=Zb2A/CO3fS2ha+mFL1lYvbjqQDLVDYlmATQvcbMQVYzkKMxT+XNzqKQ6EK1isqlwDfCKoK
 RTB4Fdc/YhVqbIJsUmM6b4tGeZQPzQ5bCgDgzgJzoWWsd2lUFrOSUoPc7FfGJh9Qzuqy0N
 fwuUoS03kxi4294IA1ys83G3gm3XB4I=
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-410-h48I06q6NEWR3Aa210eeoQ-1; Wed, 20 Apr 2022 13:40:42 -0400
X-MC-Unique: h48I06q6NEWR3Aa210eeoQ-1
Received: by mail-oi1-f197.google.com with SMTP id
 j62-20020acaeb41000000b00322b431712cso1221882oih.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 10:40:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=N6Zu8efagxCg0qjIbj3LGsUm4V9r8EQ58X79KLBO8as=;
 b=STawnEBua5AkX0KO0rToA1IgOcN2fxP5fWCmIwHBQbhAjuY3XGSoYy9BWoZtd5x0UD
 ivCS+/xQkYZXoOWPy3fznatA9L9h6nJfxEZEEF3na/KN4+VzTbN0cNHC3WXvHozH/YDX
 Zv1QkOOTTJiJyurSEP6cqQw0tGQef4FpA3iorbHzd9YpiE77k5mgnF0kfae3f7v/kUff
 YIBviaeqI8DuseGeuR2hIqSzKY/4mouz5t+6W/27Qk/ylHKtT7IHFr9xIb09gX0zpwCE
 iN9rQDDI7L7DP3edfc3jojtcRtH0h2CsNok3vR17Nvr2xnq8d4e3Rv2+lTi0ifgChrlT
 RC7Q==
X-Gm-Message-State: AOAM530k8Js9KlOVEB4gGrWlAth4NJmoEsj8qqWvoKpChsXAFANQ1MiS
 tmENAdohZ5SAuErJ5ciW5KJaVzocATTGSPDFuM8+z94d7qwNDteOoHuP6vVDGHfTk0YBRgqUGD3
 6PIKhJqS07J2SAKJ3QkNeBrjDTXTP
X-Received: by 2002:a4a:b3c5:0:b0:324:527f:8709 with SMTP id
 q5-20020a4ab3c5000000b00324527f8709mr7558536ooo.90.1650476441819; 
 Wed, 20 Apr 2022 10:40:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQODyrfz4O2ySVJfB4AMKPDpvPokiiH++tjPxvtaenmiy7ATr53rd1FOYaFbMSL0CEN6bEdQ==
X-Received: by 2002:a4a:b3c5:0:b0:324:527f:8709 with SMTP id
 q5-20020a4ab3c5000000b00324527f8709mr7558526ooo.90.1650476441569; 
 Wed, 20 Apr 2022 10:40:41 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 c8-20020a4ad788000000b0031ce69b1640sm6870564oou.10.2022.04.20.10.40.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Apr 2022 10:40:41 -0700 (PDT)
Date: Wed, 20 Apr 2022 11:40:33 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220420114033.7f8b57c7.alex.williamson@redhat.com>
In-Reply-To: <20220420164351.GC2120790@nvidia.com>
References: <5a8b9f48-2c32-8177-1c18-e3bd7bfde558@intel.com>
 <20220420164351.GC2120790@nvidia.com>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PULL v2] gvt-next
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Apr 2022 13:43:51 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Wed, Apr 20, 2022 at 04:34:47PM +0000, Wang, Zhi A wrote:
> > Hi folks:
> > 
> > Here is the PR of gvt-next. Thanks so much for the patience.
> > 
> > Mostly it includes the patch bundle of GVT-g re-factor patches for adapting the GVT-g with the
> > new MDEV interfaces:
> > 
> > - Separating the MMIO table from GVT-g. (Zhi)
> > - GVT-g re-factor. (Christoph)
> > - GVT-g mdev API cleanup. (Jason)
> > - GVT-g trace/makefile cleanup. (Jani)
> > 
> > Thanks so much for making this happen.
> > 
> > This PR has been tested as following and no problem shows up:
> > 
> > $dim update-branches
> > $dim apply-pull drm-intel-next < this_email.eml
> > 
> > The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:
> > 
> >   Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   https://github.com/intel/gvt-linux tags/gvt-next-2022-04-20-for-christoph
> > 
> > for you to fetch changes up to ae7875879b7c838bffb42ed6db4658e5c504032e:
> > 
> >   vfio/mdev: Remove mdev drvdata (2022-04-20 03:15:58 -0400)  
> 
> This looks well constructed now! thanks
> 
> Alex you can pull this for VFIO after Jani&co grab it
> 
> I'll respin my vfio_group series on top of this branch

Sure, so just to confirm tags/gvt-next-2022-04-20-for-christoph is
pruned down to exactly the commits we're looking for now?  Thanks,

Alex

