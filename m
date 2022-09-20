Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D884F5BEE8A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 22:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFA1510E78D;
	Tue, 20 Sep 2022 20:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793C710E221
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 20:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1663705604;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kTuYdzoZrrSVtqbKAPsta2mJ6sY3BJrx+736wsbe0TI=;
 b=KqyzTmh2p+Fl4jAsI0AWT/yGcpPUF7RAgyzCI4x570HItzzMTp/aCdZjdDJoWkgjmtPkRd
 snqtvnCfqK6+rx6jiIt2SGD7POlbIHbdB0/4iZoYlz/XotGGXXWA29dFREgyu5z/ztTXa8
 o/gbCKHDgtPeGDc8w7yxLHKMQt5Nf3Y=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-457-75vLLS1NOAKSOVNiHf_tYg-1; Tue, 20 Sep 2022 16:26:43 -0400
X-MC-Unique: 75vLLS1NOAKSOVNiHf_tYg-1
Received: by mail-io1-f71.google.com with SMTP id
 n23-20020a6bf617000000b0069e273eeecbso2053597ioh.16
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 13:26:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date;
 bh=kTuYdzoZrrSVtqbKAPsta2mJ6sY3BJrx+736wsbe0TI=;
 b=kyJlHiqz94uNJG0lRtidJx7JfcWwz79+8febWx+5J0inDGS161Amt00rDfAJszGJ/v
 RnfPErok6DZVAaXHY8kCMhhQwEyar7Lch7G31IXG9hbGBNkZIdAYV+YX+ECxk1qfD5Hg
 ssH9Z6AHVCOCF7eiED4K0b6ZFuTqOKT4iJtPSRI/J6TVft4K30qDIb0NoUT+TOPM7lbm
 Y4XRkghGw1Kbt2H80ix5zcWWoRIpxtxVSTIROYhSRX6pK5ae/2CJrpw2lGUMfD3svetA
 PkJ+EUab05uya4R3DrXW0/OqxZrLKvd8oUB3/I+ACOaImvtdeZAbKVOfiokIG0Hs4xHg
 x/tQ==
X-Gm-Message-State: ACrzQf1vJn82r8dqQhyR8/m6AEgF8p7CJPc8xtDViSbzE0b1qAPW+UCm
 pmRO+0t/944bwrrQ61+NxPfSiMRcoDgmE9qR5vywIk/MqsGsCgGz4Mo1k49QWLEVa9EEFLiPucu
 YXOMnHJ8EwGWOo1EJcYGl0Ts0L9Ln
X-Received: by 2002:a05:6638:379e:b0:35a:6503:453c with SMTP id
 w30-20020a056638379e00b0035a6503453cmr11604733jal.118.1663705602750; 
 Tue, 20 Sep 2022 13:26:42 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7Wn3n/ipGU1Lsd59DpS6zB424nUgnSwe6A3PA6dfJBFxnu4Ya4+9pvipnOK8j87C89TfNNcQ==
X-Received: by 2002:a05:6638:379e:b0:35a:6503:453c with SMTP id
 w30-20020a056638379e00b0035a6503453cmr11604691jal.118.1663705602488; 
 Tue, 20 Sep 2022 13:26:42 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 z18-20020a05663822b200b00359fbe10489sm269899jas.103.2022.09.20.13.26.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Sep 2022 13:26:42 -0700 (PDT)
Date: Tue, 20 Sep 2022 14:26:39 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Kevin Tian <kevin.tian@intel.com>
Message-ID: <20220920142639.29b1bdc2.alex.williamson@redhat.com>
In-Reply-To: <20220909102247.67324-16-kevin.tian@intel.com>
References: <20220909102247.67324-1-kevin.tian@intel.com>
 <20220909102247.67324-16-kevin.tian@intel.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 15/15] vfio: Add struct device to
 vfio_device
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
Cc: Matthew Rosato <mjrosato@linux.ibm.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Longfang Liu <liulongfang@huawei.com>, Christoph Hellwig <hch@infradead.org>,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, Halil Pasic <pasic@linux.ibm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Sven Schnelle <svens@linux.ibm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Abhishek Sahu <abhsahu@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  9 Sep 2022 18:22:47 +0800
Kevin Tian <kevin.tian@intel.com> wrote:

> From: Yi Liu <yi.l.liu@intel.com>
> 
> and replace kref. With it a 'vfio-dev/vfioX' node is created under the
> sysfs path of the parent, indicating the device is bound to a vfio
> driver, e.g.:
> 
> /sys/devices/pci0000\:6f/0000\:6f\:01.0/vfio-dev/vfio0
> 
> It is also a preparatory step toward adding cdev for supporting future
> device-oriented uAPI.
> 
> Add Documentation/ABI/testing/sysfs-devices-vfio-dev.
> 
> Also take this chance to rename chardev 'vfio' to 'vfio-group' in
> /proc/devices.

What's the risk/reward here, is this just more aesthetically pleasing
symmetry vs 'vfio-dev'?  The char major number to name association in
/proc/devices seems pretty obscure, but what due diligence have we done
to make sure this doesn't break anyone?  Thanks,

Alex

