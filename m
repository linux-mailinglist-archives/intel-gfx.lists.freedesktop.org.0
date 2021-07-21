Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7633D0B09
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 11:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DAA96E897;
	Wed, 21 Jul 2021 09:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E6DF6E8CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 09:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626859150;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=G4uKQ+XyDIPq8miRvKW7FnGQDeOllxOEPIevz0G83IY=;
 b=PI40o/WmZ9u2QbId0skrXLcWM4M1KFir3bygM5QcJvC6DCIORfSgqjtUErzRmtVSISOeUz
 tcJmvXO4QtKTsIByAvz94wlDzXjhhDIYcMMSV92xvo7D65JQJeSB0w+fk51Dsl2VUWSrxU
 9CweWp7FZCh06ZYFndJ6q4oHSWWr4ZQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-126-xTK1UUNpPL-Yt-rmTuormw-1; Wed, 21 Jul 2021 05:19:07 -0400
X-MC-Unique: xTK1UUNpPL-Yt-rmTuormw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5ED63760C8;
 Wed, 21 Jul 2021 09:19:03 +0000 (UTC)
Received: from localhost (ovpn-112-135.ams2.redhat.com [10.36.112.135])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D6F1360C59;
 Wed, 21 Jul 2021 09:18:55 +0000 (UTC)
From: Cornelia Huck <cohuck@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Alex Williamson
 <alex.williamson@redhat.com>
In-Reply-To: <20210720224955.GD1117491@nvidia.com>
Organization: Red Hat GmbH
References: <0-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
 <2-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
 <20210720160127.17bf3c19.alex.williamson@redhat.com>
 <20210720224955.GD1117491@nvidia.com>
User-Agent: Notmuch/0.32.1 (https://notmuchmail.org)
Date: Wed, 21 Jul 2021 11:18:54 +0200
Message-ID: <87a6mg81oh.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: Re: [Intel-gfx] [PATCH v2 02/14] vfio/mbochs: Fix missing error
 unwind in mbochs_probe()
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
 Kirti Wankhede <kwankhede@nvidia.com>, Max Gurtovoy <mgurtovoy@nvidia.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 Matthew Rosato <mjrosato@linux.ibm.com>, Jonathan Corbet <corbet@lwn.net>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 intel-gvt-dev@lists.freedesktop.org, "Raj, Ashok" <ashok.raj@intel.com>,
 Tony Krowiak <akrowiak@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 20 2021, Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Jul 20, 2021 at 04:01:27PM -0600, Alex Williamson wrote:
>> Hmm, doesn't this suggest we need another atomic conversion?  (untested)
>
> Sure why not, I can add this as another patch

Yes, I think that should be another patch.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
