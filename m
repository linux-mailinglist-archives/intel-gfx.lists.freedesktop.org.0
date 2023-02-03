Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAABA68A4B8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 22:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1401710E8E6;
	Fri,  3 Feb 2023 21:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28FF310E8E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 21:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675460155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5k+UxZR8AqVwDwvK/Db4g0V588SY+VI2pB0owqXny0I=;
 b=Sy6gvVesgHw7JxfnxTUTJECI7a1/7v9QkOzDrmZ5HhXcqHmsPEI72aJiaUX2dciATLWJtD
 nF9cGZi65knzhsQyjRiddsecXmugw6Eu+IIm6/uOZ23foFdRtIkT/34/qRK3P4ZNkPCYQH
 0eeQf9bbrUBY6nqF04Ur91kUikd/Hys=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-593-5AgKa6mnOoGrk_r3xCMQvw-1; Fri, 03 Feb 2023 16:35:53 -0500
X-MC-Unique: 5AgKa6mnOoGrk_r3xCMQvw-1
Received: by mail-io1-f70.google.com with SMTP id
 r11-20020a6b8f0b000000b0071853768168so3759603iod.23
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Feb 2023 13:35:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5k+UxZR8AqVwDwvK/Db4g0V588SY+VI2pB0owqXny0I=;
 b=BumjB5jgiBtTxF3mzdcdctzBKPlXWJNuix1EoL0/o1SUtfTBsRvwUwFfskbLylwQs1
 o3HEqlmzWBb7eucVmNsviT/wo6NgdeGD8vwzTNv58Jd6RGl3Qr5BdTpEI1lUvi2e7mvO
 FJLfcKeGEvEjdjve0xonOtla35eTQ+aMooOCVo/xFYAeHSQ3RqERAwFnfRzmjcWag9LF
 QK4goCXGaBr/KJTK2XtARkekpi4rY9LKZSTJ1ypvr6TdHq5BBLzXMq5JyaY/gFQkOINk
 f1MMrx65ieyxKJGm3oNebTmPHbQ0clgrJecNKElwOnsL3l+FpYWzjxDzXBDjsudWWci5
 +x6g==
X-Gm-Message-State: AO0yUKXYNUHtWpmku1FGcXdfwyXWRqbjea5HNXHcOQKoHQ0Vj+5OCmRO
 /qdO5GoFLM3xG49S1r8TRQqG8X4vuMAHU66g09SPQSsT4A7qKHp8E70SxtiGVbMqWXu3AAdswwm
 3Q6AciHjf/xYi4pZBFkQqRcj96Oe5
X-Received: by 2002:a05:6e02:148c:b0:312:7bbf:94f5 with SMTP id
 n12-20020a056e02148c00b003127bbf94f5mr9262274ilk.3.1675460153339; 
 Fri, 03 Feb 2023 13:35:53 -0800 (PST)
X-Google-Smtp-Source: AK7set8GiBZNAUhnppz+3LpmWjBO/5Dhk61WY57QRLNeBIn7RbRA8vBDcQoGmES9jBCpRxioDalZzw==
X-Received: by 2002:a05:6e02:148c:b0:312:7bbf:94f5 with SMTP id
 n12-20020a056e02148c00b003127bbf94f5mr9262252ilk.3.1675460153111; 
 Fri, 03 Feb 2023 13:35:53 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 a16-20020a924450000000b0031264571bd8sm1103072ilm.18.2023.02.03.13.35.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Feb 2023 13:35:52 -0800 (PST)
Date: Fri, 3 Feb 2023 14:35:51 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Matthew Rosato <mjrosato@linux.ibm.com>
Message-ID: <20230203143551.2f349702.alex.williamson@redhat.com>
In-Reply-To: <b5e64413-0374-edd8-9bfd-8bb613ab04f9@linux.ibm.com>
References: <20230202162442.78216-1-mjrosato@linux.ibm.com>
 <20230202124210.476adaf8.alex.williamson@redhat.com>
 <BN9PR11MB527618E281BEB8E479ABB0418CD69@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230202161307.0c6aa23e.alex.williamson@redhat.com>
 <BN9PR11MB5276017F9CEBB4BAE58C40E88CD79@BN9PR11MB5276.namprd11.prod.outlook.com>
 <DS0PR11MB7529050661FCE4A5AC4B17C3C3D79@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230203064940.435e4d65.alex.williamson@redhat.com>
 <DS0PR11MB75297154376388A3698C5CCAC3D79@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230203081942.64fbf9f1.alex.williamson@redhat.com>
 <ed030aa5-b3af-638e-6e26-4e3a20b98ef4@linux.ibm.com>
 <20230203133503.4d8fb3e8.alex.williamson@redhat.com>
 <b5e64413-0374-edd8-9bfd-8bb613ab04f9@linux.ibm.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] vfio: fix deadlock between group lock
 and kvm lock
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
Cc: "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "david@redhat.com" <david@redhat.com>,
 "farman@linux.ibm.com" <farman@linux.ibm.com>,
 "imbrenda@linux.ibm.com" <imbrenda@linux.ibm.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "frankja@linux.ibm.com" <frankja@linux.ibm.com>,
 "pasic@linux.ibm.com" <pasic@linux.ibm.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
 "borntraeger@linux.ibm.com" <borntraeger@linux.ibm.com>,
 "jjherne@linux.ibm.com" <jjherne@linux.ibm.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "akrowiak@linux.ibm.com" <akrowiak@linux.ibm.com>,
 "pmorel@linux.ibm.com" <pmorel@linux.ibm.com>, "Christopherson, ,
 Sean" <seanjc@google.com>, "cohuck@redhat.com" <cohuck@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 3 Feb 2023 16:19:10 -0500
Matthew Rosato <mjrosato@linux.ibm.com> wrote:
> > @@ -350,32 +350,25 @@ void vfio_device_get_kvm_safe(struct vfio_device *device)
> >  
> >  	lockdep_assert_held(&device->dev_set->lock);
> >  
> > -	spin_lock(&device->group->kvm_ref_lock);
> > -	if (!device->group->kvm)
> > -		goto unlock;
> > -
> >  	pfn = symbol_get(kvm_put_kvm);
> >  	if (WARN_ON(!pfn))
> > -		goto unlock;
> > +		return;
> >  
> >  	fn = symbol_get(kvm_get_kvm_safe);
> >  	if (WARN_ON(!fn)) {
> >  		symbol_put(kvm_put_kvm);
> > -		goto unlock;
> > +		return;
> >  	}  
> >  >  	ret = fn(device->group->kvm);  
> 
> s/device->group->kvm/kvm/

Oops, yes.

> With that small change, this looks good to me too (and testing looks
> good too).  Do you want me to send a v4 for one last round of review?

Please do.  Thanks,

Alex

