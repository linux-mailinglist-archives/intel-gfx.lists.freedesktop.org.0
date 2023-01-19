Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 024D267420D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 20:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7E910E9C8;
	Thu, 19 Jan 2023 19:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB84710E9C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 19:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674155118;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xI3gAlOvH6+nGCjjMQeJA8j8339HePE6Q0SOl9Tovc0=;
 b=b7jScc39S9l7yl45iPZPvlXoeOaJB8ub+XOSnKTpqnoGbj+/XTLwMvWhx41EQEqSr7Otd6
 r82vwReWt7/EREtUn+xFzqmgwtNSluzEzLSjsMjbnzz02gR22517fQCbHV+dq8WNff7Sm0
 oYf3X/RWE9lt4M3A+LShDbc/JI1YVqs=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-110-96fKBgg6M6O04DiQTZqr8Q-1; Thu, 19 Jan 2023 14:05:17 -0500
X-MC-Unique: 96fKBgg6M6O04DiQTZqr8Q-1
Received: by mail-io1-f72.google.com with SMTP id
 n8-20020a6bf608000000b007048850aa92so1634705ioh.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 11:05:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qxwOPOgGhsGm2CilOB8QktAtozAzPUo8tE7EUr+QkN4=;
 b=7Z7OSFcF5EljKPTtmFLaqeb7ldbeqq2CcUdthPCMtKKZJqaW1OXuix+Ha0zt2N1Nz/
 2ABIes62eOzgltC5jOyLkSN2RqLuwDl0XDtCE8DMnVMt/Om1qjJVSSVnIOviegaY1a9u
 ELSY2iazz6G0OLFv9e8KvruODJ9zEC0E/txxmzJaNgLxBcc4TqmYu3tLXLPxqhQxf84V
 9JClVMva1QeVhIi3fwQkRcwlTuBi+oBiYCUsg0pRPpzo3u2QeVc3sHeo8WPIW5m5cHwL
 e8zzJOxgJRZUNiVep8pdRM2uL6RrBgggaQ6IiRyOkZBKwsjNQTKZgY9iWixurfnp7zwT
 iMRg==
X-Gm-Message-State: AFqh2kpuMDgkvwqveNyig4RvS8hWchXiY5y/UF7EoBLwDkvTTE1if+o3
 JpxHxhHPeahvzLt9Ae2MBkOKGszlfabxj+opyk8TiXaY6oCP+8Fvj78aHv3o8/pSIF891NbOQvd
 qr79oQmSi7n74Fyxe1xbI9XALBuQV
X-Received: by 2002:a6b:dc12:0:b0:707:5b8d:745 with SMTP id
 s18-20020a6bdc12000000b007075b8d0745mr5702692ioc.15.1674155116316; 
 Thu, 19 Jan 2023 11:05:16 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtAMnL3Goqn5o+Ir8AcCe1SjWgVNFXCOrdiM/sijKRrcXt8wW9+Bm8x+wiDCw846gf100RgOg==
X-Received: by 2002:a6b:dc12:0:b0:707:5b8d:745 with SMTP id
 s18-20020a6bdc12000000b007075b8d0745mr5702666ioc.15.1674155116049; 
 Thu, 19 Jan 2023 11:05:16 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 m4-20020a056638224400b0036c8a246f54sm11646670jas.142.2023.01.19.11.05.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Jan 2023 11:05:15 -0800 (PST)
Date: Thu, 19 Jan 2023 12:05:13 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20230119120513.3976cda7.alex.williamson@redhat.com>
In-Reply-To: <BN9PR11MB5276CC29F17B87D14D1E61FF8CC49@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20230114000351.115444-1-mjrosato@linux.ibm.com>
 <20230117142252.70cc85c7.alex.williamson@redhat.com>
 <BN9PR11MB52763D861C254248FD33F65C8CC79@BN9PR11MB5276.namprd11.prod.outlook.com>
 <b5a7efc9-7cfa-3314-fe36-b8da4a25265d@linux.ibm.com>
 <BN9PR11MB5276CC29F17B87D14D1E61FF8CC49@BN9PR11MB5276.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4] vfio: fix potential deadlock on vfio
 group lock
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
Cc: Matthew Rosato <mjrosato@linux.ibm.com>,
 "david@redhat.com" <david@redhat.com>,
 "imbrenda@linux.ibm.com" <imbrenda@linux.ibm.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "frankja@linux.ibm.com" <frankja@linux.ibm.com>,
 "pasic@linux.ibm.com" <pasic@linux.ibm.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
 "borntraeger@linux.ibm.com" <borntraeger@linux.ibm.com>,
 "jjherne@linux.ibm.com" <jjherne@linux.ibm.com>,
 "farman@linux.ibm.com" <farman@linux.ibm.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "akrowiak@linux.ibm.com" <akrowiak@linux.ibm.com>,
 "pmorel@linux.ibm.com" <pmorel@linux.ibm.com>, "Christopherson, ,
 Sean" <seanjc@google.com>, "cohuck@redhat.com" <cohuck@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 19 Jan 2023 03:43:36 +0000
"Tian, Kevin" <kevin.tian@intel.com> wrote:

> > From: Matthew Rosato <mjrosato@linux.ibm.com>
> > Sent: Wednesday, January 18, 2023 10:56 PM
> >=20
> > On 1/18/23 4:03 AM, Tian, Kevin wrote: =20
> > >> From: Alex Williamson
> > >> Sent: Wednesday, January 18, 2023 5:23 AM
> > >>
> > >> On Fri, 13 Jan 2023 19:03:51 -0500
> > >> Matthew Rosato <mjrosato@linux.ibm.com> wrote:
> > >> =20
> > >>>  void vfio_device_group_close(struct vfio_device *device)
> > >>>  {
> > >>> +=09void (*put_kvm)(struct kvm *kvm);
> > >>> +=09struct kvm *kvm;
> > >>> +
> > >>>  =09mutex_lock(&device->group->group_lock);
> > >>> +=09kvm =3D device->kvm;
> > >>> +=09put_kvm =3D device->put_kvm;
> > >>>  =09vfio_device_close(device, device->group->iommufd);
> > >>> +=09if (kvm =3D=3D device->kvm)
> > >>> +=09=09kvm =3D NULL; =20
> > >>
> > >> Hmm, so we're using whether the device->kvm pointer gets cleared in
> > >> last_close to detect whether we should put the kvm reference.  That'=
s a
> > >> bit obscure.  Our get and put is also asymmetric.
> > >>
> > >> Did we decide that we couldn't do this via a schedule_work() from th=
e
> > >> last_close function, ie. implementing our own version of an async pu=
t?
> > >> It seems like that potentially has a cleaner implementation, symmetr=
ic
> > >> call points, handling all the storing and clearing of kvm related
> > >> pointers within the get/put wrappers, passing only a vfio_device to =
the
> > >> put wrapper, using the "vfio_device_" prefix for both.  Potentially
> > >> we'd just want an unconditional flush outside of lock here for
> > >> deterministic release.
> > >>
> > >> What's the downside?  Thanks,
> > >> =20
> > >
> > > btw I guess this can be also fixed by Yi's work here:
> > >
> > > https://lore.kernel.org/kvm/20230117134942.101112-6-yi.l.liu@intel.co=
m/
> > >
> > > with set_kvm(NULL) moved to the release callback of kvm_vfio device,
> > > such circular lock dependency can be avoided too. =20
> >=20
> > Oh, interesting...  It seems to me that this would eliminate the report=
ed call
> > chain altogether:
> >=20
> > kvm_put_kvm =20
> >  -> kvm_destroy_vm
> >   -> kvm_destroy_devices
> >    -> kvm_vfio_destroy (starting here -- this would no longer be execut=
ed)
> >     -> kvm_vfio_file_set_kvm
> >      -> vfio_file_set_kvm
> >       -> group->group_lock/group_rwsem =20
> >=20
> > because kvm_destroy_devices now can't end up calling kvm_vfio_destroy
> > and friends, it won't try and acquire the group lock a 2nd time making =
a
> > kvm_put_kvm while the group lock is held OK to do.  The vfio_file_set_k=
vm
> > call will now always come from a separate thread of execution,
> > kvm_vfio_group_add, kvm_vfio_group_del or the release thread:
> >=20
> > kvm_device_release (where the group->group_lock would not be held since
> > vfio does not trigger closing of the kvm fd) =20
> >  -> kvm_vfio_destroy (or, kvm_vfio_release)
> >   -> kvm_vfio_file_set_kvm
> >    -> vfio_file_set_kvm
> >     -> group->group_lock/group_rwsem =20
>=20
> Yes, that's my point. If Alex/Jason are also OK with it probably Yi can
> send that patch separately as a fix to this issue. It's much simpler. =F0=
=9F=98=8A

If we can extract that flow separate from the cdev refactoring, ideally
something that matches the stable kernel backport rules, then that
sounds like the preferred solution.  Thanks,

Alex

