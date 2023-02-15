Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96199697F8B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 16:33:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B4F910E14D;
	Wed, 15 Feb 2023 15:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7751410E144
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 15:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676475186;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Dh5NdUXXqt2OwKe+bgzJIjOdCZFOJ5LseD3HaKSZilk=;
 b=a5QEqliyXu40M6w6kpYtTJjJMaLdCu1uXqrwYB+Vhd5kRvkQh7CR88faQsJhRRsIujzEz5
 GMnNDmayKp6mNGSY7/O9oQonvWP0DdtsKzShet5igctOYWaHAm//S17XsVOqelYPvPJyu6
 SOqFn82prYhB6WzNlHEkGO+sHOpYCGM=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-21-fCr2Vl0ONI6l5NVZkVhwiA-1; Wed, 15 Feb 2023 10:32:48 -0500
X-MC-Unique: fCr2Vl0ONI6l5NVZkVhwiA-1
Received: by mail-il1-f198.google.com with SMTP id
 a4-20020a056e0208a400b003157c7e623cso38749ilt.14
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 07:32:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Dh5NdUXXqt2OwKe+bgzJIjOdCZFOJ5LseD3HaKSZilk=;
 b=Eq40H+mrKkQn9XJ6SjdLf5wmmaPck0GdJzQ5yQaDZX5daVKnMgh7vs/DlG04gc1IVO
 VqMfV9buJXFFrwnUkpYfEFDaq6eZJ82fpmK04hMETBxtm7GUXjGGFodpzcrW7JkyJxgm
 vK3sgrpvxziFgg7VJpzonjd8PAI7sJDyLkQ5gFMjpsisrYE2WzGyGurp5xjeq+UWLBuM
 2GB4mBXYJKv5GQGVTJE+7eo/ZoE3sHmY8Ug025FzkoFcvEFrqWYet/wFXFtPcgaW/Qfg
 Z6xc8nwprjxqxxuW9wYJYswxq0jvQMobhwHTHCMBFpZ9v8+urcRxZQPd0+CywRpAsZ0a
 1cjA==
X-Gm-Message-State: AO0yUKV8piDPN1V+KOeJ1HT/sOilp+OXJn8v2KAeB5fuW+OknIqVA4qz
 AwbFBICtIwQTuxpoTj08fiVjOBLbZu8KAt+Xxtn9gwqEhyWZyCFi0Cu5SPOXoK5Sb0+sDx/PBbq
 ZveRH3bckty1U1uZ+xbzXBuHyjLyi
X-Received: by 2002:a05:6e02:180a:b0:315:3036:4da with SMTP id
 a10-20020a056e02180a00b00315303604damr2903346ilv.30.1676475157568; 
 Wed, 15 Feb 2023 07:32:37 -0800 (PST)
X-Google-Smtp-Source: AK7set9dYhmZ8agTRUin0PWV3DETcyMYPO5GFEHe0t1hXDUe9MWRtba6M7F5v8HJtVUnNqr1Vxo/uA==
X-Received: by 2002:a05:6e02:180a:b0:315:3036:4da with SMTP id
 a10-20020a056e02180a00b00315303604damr2903310ilv.30.1676475157275; 
 Wed, 15 Feb 2023 07:32:37 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 u6-20020a02aa86000000b0038a822f87c3sm5723739jai.159.2023.02.15.07.32.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Feb 2023 07:32:36 -0800 (PST)
Date: Wed, 15 Feb 2023 08:32:34 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230215083234.194d07a9.alex.williamson@redhat.com>
In-Reply-To: <Y+zwSn63eA7HrefO@nvidia.com>
References: <20230213151348.56451-1-yi.l.liu@intel.com>
 <20230213151348.56451-4-yi.l.liu@intel.com>
 <Y+rLKvCMivND0izd@nvidia.com>
 <DS0PR11MB7529B43C7D357D8A0C2438C7C3A29@DS0PR11MB7529.namprd11.prod.outlook.com>
 <Y+zSRklKkL3rc2FB@nvidia.com>
 <DS0PR11MB75299F5D92AAC33FD8690694C3A39@DS0PR11MB7529.namprd11.prod.outlook.com>
 <Y+zwSn63eA7HrefO@nvidia.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 03/15] vfio: Accept vfio device file in
 the driver facing kAPI
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
Cc: "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>,
 "yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
 "mjrosato@linux.ibm.com" <mjrosato@linux.ibm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "joro@8bytes.org" <joro@8bytes.org>, "cohuck@redhat.com" <cohuck@redhat.com>,
 "peterx@redhat.com" <peterx@redhat.com>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
 "lulu@redhat.com" <lulu@redhat.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[Cc +Paolo]

On Wed, 15 Feb 2023 10:46:34 -0400
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Wed, Feb 15, 2023 at 02:43:20PM +0000, Liu, Yi L wrote:
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > Sent: Wednesday, February 15, 2023 8:39 PM
> > > 
> > > On Tue, Feb 14, 2023 at 02:02:37AM +0000, Liu, Yi L wrote:  
> > > > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > > > Sent: Tuesday, February 14, 2023 7:44 AM
> > > > >
> > > > > On Mon, Feb 13, 2023 at 07:13:36AM -0800, Yi Liu wrote:  
> > > > > > +static struct vfio_device *vfio_device_from_file(struct file *file)
> > > > > > +{
> > > > > > +	struct vfio_device_file *df = file->private_data;
> > > > > > +
> > > > > > +	if (file->f_op != &vfio_device_fops)
> > > > > > +		return NULL;
> > > > > > +	return df->device;
> > > > > > +}
> > > > > > +
> > > > > >  /**
> > > > > >   * vfio_file_is_valid - True if the file is usable with VFIO APIS
> > > > > >   * @file: VFIO group file or VFIO device file
> > > > > >   */
> > > > > >  bool vfio_file_is_valid(struct file *file)
> > > > > >  {
> > > > > > -	return vfio_group_from_file(file);
> > > > > > +	return vfio_group_from_file(file) ||
> > > > > > +	       vfio_device_from_file(file);
> > > > > >  }
> > > > > >  EXPORT_SYMBOL_GPL(vfio_file_is_valid);  
> > > > >
> > > > > This can only succeed on a device cdev that has been fully opened.  
> > > >
> > > > Actually, we cannot. This is used in the kvm-vfio code to see if the
> > > > user-provided fd is vfio fds in the SET_KVM path. And we don't
> > > > have the device cdev fully opened until BIND_IOMMUFD. But we do
> > > > need to invoke SET_KVM before issuing BIND_IOMMUFD as the device
> > > > open needs kvm pointer. So if we cannot apply fully opened limit to this
> > > > interface. Maybe an updated function comment is needed.  
> > > 
> > > This also seems sketchy, KVM is using the VFIO fd as a "proof" to
> > > enable the wbinvd stuff. A half opened cdev should not be used as that
> > > proof.  
> > 
> > From this angle, the group path seems has the same concern. Device is not
> > opened until VFIO_GROUP_GET_DEVICE_FD.   
> 
> Well, classically the device was DMA ownership claimed at least.
> 
> > But group path has one advantage, which make it ok. Group can only be
> > opened by one application. So once it is opened, the devices within the
> > group are somehow obtained by the application until group fd close.  
> 
> It depends on what do we want the KVM proof to actually mean.
> 
> Is simply having permissions on the cdev node sufficient proof for
> wbinvd?
> 
> I admit I poorly understand the threat model for this in kvm beyond
> that kvm doesn't want everyone to use wbinvd.

We've discussed this with Paolo before and I believe the bar of proof
is not very high.  I suspect it's not a problem that the device itself
is not yet accessible, so long as the user can prove they have the
ability to access the device, such as access to a restricted file.  In
most cases this isn't going to turn on wbinvd anyway since DMA will be
coherent.  Thanks,

Alex

