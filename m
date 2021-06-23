Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABE63B1151
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 03:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC7456E883;
	Wed, 23 Jun 2021 01:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 898FE6E84B
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 01:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624411280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6WZjidwpALD0+6okLjRpzpQCZxBF9g0JCe+CU6OJZxo=;
 b=cZHnSC89gbIAWWcRT9UJhnH41wDlBldJwiBRVp2bpErPQXDJFv/TzXDuTGgGfI7dD+tilt
 CehZBb/iOjBosGe6umczxrlVrwVBqftwJUUu4kPMvXT+oiPHaR+Y0Fn6fQfQVdgA2VMvk9
 1qRvE084CPFlTxBPiIhF1VdjhhNO8wE=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-387-XbFrfG8pO-aBvolS04C-8g-1; Tue, 22 Jun 2021 21:21:18 -0400
X-MC-Unique: XbFrfG8pO-aBvolS04C-8g-1
Received: by mail-ot1-f71.google.com with SMTP id
 e16-20020a0568302010b02903feaaa5cf10so223078otp.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 18:21:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=6WZjidwpALD0+6okLjRpzpQCZxBF9g0JCe+CU6OJZxo=;
 b=dzI8jAxPI36d0MvPAFOBmftxIl0RF/g3IxMtQ6V3vNbmgh0rUmQKf7KZzFkm6T6u3z
 sJUL5IqS0LB3lFFohTUhkE3369YRUmd3IiNnMQkxijoG6iskeKgrocrklq0FGXy0UJDV
 nx9a32aXEeAInSn2BeE46y787MFM7Cm8yEgDOy29M3jgC0zL1RI5o8sbQ/YqDzwLLldt
 fdVoBDTbDOlaLoE5VwdTxnL7XIjvuGJMUTDfEu4nZnuxFEhZ1PiYoSep1K/zK6btF4fu
 auzeNRW75GY3wvz9eoTrGTzgPggbxSf5dAEWnSmveJrBfB0sFOIjOH8rGZLdpU4Ak3M2
 Korw==
X-Gm-Message-State: AOAM5322WEOL/mKkGeFES5wUjf1+sTQazVALVgDoV9zKmko1/MnDLNMq
 MHjDYgCBdKwfcfJiIuYAiJ2MhIvS6TMnD99dqa4+GdlWDLDAH47FU0AGfh1t4Q1f8nhY/MuZrYU
 K99fHWdQQ56EbkP3pZKxqpirTRmJb
X-Received: by 2002:a9d:c04:: with SMTP id 4mr5426565otr.245.1624411278071;
 Tue, 22 Jun 2021 18:21:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIMydhH4YIk5UlsJLWeyye09J8NdqydLo549hleKoU/i5XuOd4xS2Z30zIrGFONsoACRmAyw==
X-Received: by 2002:a9d:c04:: with SMTP id 4mr5426545otr.245.1624411277887;
 Tue, 22 Jun 2021 18:21:17 -0700 (PDT)
Received: from redhat.com ([198.99.80.109])
 by smtp.gmail.com with ESMTPSA id q18sm239916otf.72.2021.06.22.18.21.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 18:21:17 -0700 (PDT)
Date: Tue, 22 Jun 2021 19:21:15 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20210622192115.71e7e333.alex.williamson@redhat.com>
In-Reply-To: <20210623000550.GI2371267@nvidia.com>
References: <20210617142218.1877096-1-hch@lst.de>
 <20210623000550.GI2371267@nvidia.com>
Organization: Red Hat
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] Allow mdev drivers to directly create the
 vfio_device (v4)
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Tony Krowiak <akrowiak@linux.ibm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 22 Jun 2021 21:05:50 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Thu, Jun 17, 2021 at 04:22:08PM +0200, Christoph Hellwig wrote:
> > This is my alternative take on this series from Jason:
> > 
> > https://lore.kernel.org/dri-devel/87czsszi9i.fsf@redhat.com/T/
> > 
> > The mdev/vfio parts are exactly the same, but this solves the driver core
> > changes for the direct probing without the in/out flag that Greg hated,
> > which cause a little more work, but probably make the result better.  
> 
> I did some testing and it looks good, thanks
> 
> I see Alex has this in hch-mdev-direct-v4 in linux-next now, so
> expecting this to be in the next merge window?

Yeah, sorry I didn't send out an "applied" note, end of the day
yesterday and forgot today.  My bad.  I expect this to go into v5.14
given the acks and Greg's deferral for the driver-core changes to go
through the vfio tree.  Speak now, or... Thanks,

Alex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
