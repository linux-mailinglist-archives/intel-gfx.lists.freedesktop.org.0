Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B61866688C7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 01:57:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6761B10E1CD;
	Fri, 13 Jan 2023 00:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACC310E1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 00:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673571413;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XG7oCthi1cz9qA5sCXs+Yfwmmh8peH0gCPI3GPwykJs=;
 b=JvzreIi9alzklcFGDRo5do/TjaanqVRFieRK+1vcvdF4hQc2FinhJ6JljbyeHcsahp9I3X
 cBusJ9zsSZhTE7Pjqn/8vdKmL/8UOqEFu9sgFYoWuee55JjsKmt7cIZn3spoyWM64yZ1Tj
 w6X57Ufu0FRPQalsckXK1UPljTzkQo4=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-175-V9QPTDlePYup9QvhWFxZyg-1; Thu, 12 Jan 2023 19:56:52 -0500
X-MC-Unique: V9QPTDlePYup9QvhWFxZyg-1
Received: by mail-il1-f198.google.com with SMTP id
 x8-20020a056e021ca800b0030c075dc55dso14666923ill.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 16:56:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XG7oCthi1cz9qA5sCXs+Yfwmmh8peH0gCPI3GPwykJs=;
 b=nH/j+Ol5OPFgAPG688Arnx/MRuLA0PvhKkelQtY3WfF7ZIgTlbT6pwIcaUA4JxrbY9
 3NaR0z4Jt6UpOCbGdqMrEju5z1HpW/aovWT616ajBABCraErMvMxdhwAVV8ULrS9nEAm
 j7VgNGzcC729GPRBm1xxa/pt/jNfLAw1VLfLQHlh7kS3FOrJaMVE1TuZ7PjRw8Osz48l
 kx8FxzkhwKMzQBFMApT26/43JeWO7WYMyG3ZQ5n14wqQ5JML4k4gOdRbwkTDxvac0itP
 M4jD25/j+jTAMcRVMqVsrL7WdGuKUg2aLT2adof8h+AZG2zkViqbOOmkWFyzoupr+tFG
 DfEA==
X-Gm-Message-State: AFqh2kqQKQu6nLQ8YuE7f3EAntx0+XjOamGTVKIxxnjOnFBrnc5qONdS
 fLz407RQcAx7NyVM2p98qxFRl49gln1T0X6CYPK0TAA0/OvLTI8yudBusCaihsdmt8xhlsX9r9C
 GtQ+qYFiRoR4CVY0Cl7TPXh7NyQ7M
X-Received: by 2002:a5d:8c88:0:b0:6f1:f493:7240 with SMTP id
 g8-20020a5d8c88000000b006f1f4937240mr6277501ion.3.1673571411523; 
 Thu, 12 Jan 2023 16:56:51 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvsA3h8dnBWYocee5XN2BqUQKDNeUrvNWtFiPzDqbJBlxeKo+IUAua2OcaVeTDIIuJpIjdmug==
X-Received: by 2002:a5d:8c88:0:b0:6f1:f493:7240 with SMTP id
 g8-20020a5d8c88000000b006f1f4937240mr6277474ion.3.1673571411216; 
 Thu, 12 Jan 2023 16:56:51 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 e18-20020a022112000000b0039e048ad8e7sm5624918jaa.59.2023.01.12.16.56.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Jan 2023 16:56:50 -0800 (PST)
Date: Thu, 12 Jan 2023 17:56:48 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Sean Christopherson <seanjc@google.com>
Message-ID: <20230112175648.158dca5f.alex.williamson@redhat.com>
In-Reply-To: <Y8CX8YwT/T9v4U/D@google.com>
References: <20230112203844.41179-1-mjrosato@linux.ibm.com>
 <20230112140517.6db5b346.alex.williamson@redhat.com>
 <bce7912a-f904-b5a3-d234-c3e2c42d9e54@linux.ibm.com>
 <Y8CX8YwT/T9v4U/D@google.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] vfio: fix potential deadlock on vfio
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
Cc: akrowiak@linux.ibm.com, jjherne@linux.ibm.com, farman@linux.ibm.com,
 imbrenda@linux.ibm.com, Matthew Rosato <mjrosato@linux.ibm.com>,
 pmorel@linux.ibm.com, david@redhat.com, linux-s390@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, cohuck@redhat.com,
 linux-kernel@vger.kernel.org, pasic@linux.ibm.com, jgg@nvidia.com,
 kvm@vger.kernel.org, pbonzini@redhat.com, borntraeger@linux.ibm.com,
 intel-gvt-dev@lists.freedesktop.org, frankja@linux.ibm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 12 Jan 2023 23:29:53 +0000
Sean Christopherson <seanjc@google.com> wrote:

> On Thu, Jan 12, 2023, Matthew Rosato wrote:
> > On 1/12/23 4:05 PM, Alex Williamson wrote:  
> > > On Thu, 12 Jan 2023 15:38:44 -0500
> > > Matthew Rosato <mjrosato@linux.ibm.com> wrote:  
> > >> @@ -344,6 +345,35 @@ static bool vfio_assert_device_open(struct vfio_device *device)
> > >>  	return !WARN_ON_ONCE(!READ_ONCE(device->open_count));
> > >>  }
> > >>  
> > >> +static bool vfio_kvm_get_kvm_safe(struct kvm *kvm)
> > >> +{
> > >> +	bool (*fn)(struct kvm *kvm);
> > >> +	bool ret;
> > >> +
> > >> +	fn = symbol_get(kvm_get_kvm_safe);
> > >> +	if (WARN_ON(!fn))  
> 
> In a related vein to Alex's comments about error handling, this should not WARN.
> WARNing during vfio_kvm_put_kvm() makes sense, but the "get" is somewhat blind.

It's not exactly blind though, we wouldn't have a kvm pointer if the
kvm-vfio device hadn't stuffed one into the group.  We only call into
here if we have a non-NULL pointer, so it wouldn't simply be that the
kvm module isn't available for this to fire, but more that we have an
API change to make the symbol no longer exist.  A WARN for that doesn't
seem unreasonable.  Thanks,

Alex

> > >> +		return false;
> > >> +
> > >> +	ret = fn(kvm);
> > >> +
> > >> +	symbol_put(kvm_get_kvm_safe);
> > >> +
> > >> +	return ret;
> > >> +}
> > >> +
> > >> +static void vfio_kvm_put_kvm(struct kvm *kvm)
> > >> +{
> > >> +	void (*fn)(struct kvm *kvm);
> > >> +
> > >> +	fn = symbol_get(kvm_put_kvm);
> > >> +	if (WARN_ON(!fn))
> > >> +		return;
> > >> +
> > >> +	fn(kvm);
> > >> +
> > >> +	symbol_put(kvm_put_kvm);
> > >> +}  
> 

