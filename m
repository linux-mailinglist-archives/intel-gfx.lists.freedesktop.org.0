Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A880668960
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 03:05:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82BE10E1C4;
	Fri, 13 Jan 2023 02:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6336F10E1C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 02:05:19 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 q23-20020a17090a065700b002290913a521so3283739pje.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 18:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=imvHeHfSB76NKxqNg7yS5d0bnfZ/68ukGArZSjXXLbU=;
 b=gfL4hh/PAfTWoPxrgPNOjugdRQT6/WV65DgBrSnpV5ljD3nsqQZO//RzEo7T4oLQqx
 c4Q0mI405eGfoj8LuS0wI2sQdlqaeNnCgTAsK9ojs6iEaCaHua6vjwZaKDc+OIsKFBm9
 w5TSAgwjkuR9lTRDlbRtIxIeYn77XVQL36m+j6TNN1IPYFjq7eERVWltVZh8xI+AuS6x
 Ebb8o0T31ad1vrZqKXtO581o4RiY7HqEeVSqH6w/J7bYR6aLkGoMN3t0S7fDWdcn2JdL
 sRmydefKjnfHqNzBKp647Hzmqgin/vcHPGOfInZ9RvBNC86xV/kMej7ry3nwiPeZw8Hm
 rb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=imvHeHfSB76NKxqNg7yS5d0bnfZ/68ukGArZSjXXLbU=;
 b=7TyPJ5J1A5hNfuqatb20Hce3Qb0E/WA4YQm+5V7PjokAGKRi5iqNNRsbYgLnVmpIOR
 9O3jQrhprU5zcgSDKijFHyjZ6lyaFZUshh5ae3FdmxXjyQyGzHTqzlf4hbaEO/oeIwfK
 baWpnGZ61W6KbaBuoz2d9MHk4U2hFTbv0Q9fN94d2av+xDYnip/5jy5K7NdKrqgS0YxZ
 lUMo55Vd5Px/WVUna2tGR36hogHoSEzi1TswgR0sN7n9KLRzi3TWTU3j4Vj/3HAuvimR
 RcrrjFR4Q7Y80OqRRSXhndqEX09HpG4Qv2yBY14rDEhgkM9Na5nAoRmUrkkBdoJRz6zN
 91NQ==
X-Gm-Message-State: AFqh2krbCyn67Ab8urSnDPWXQOvAAXHIiz/oeaUpiKKqlDAV5MY4JCnu
 flcxqEZ4XZGuz6TruWznHLUQ9w==
X-Google-Smtp-Source: AMrXdXt5UhWv4+gCCOg9vsmsrXhYZBecqcoz5x+/Oa5eI3PEct7oPHliTdSgvAqHMlV57ui5SVshog==
X-Received: by 2002:a17:902:b10e:b0:191:4367:7fde with SMTP id
 q14-20020a170902b10e00b0019143677fdemr994708plr.0.1673575518755; 
 Thu, 12 Jan 2023 18:05:18 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 d22-20020a170902aa9600b001871461688esm12835625plr.175.2023.01.12.18.05.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Jan 2023 18:05:18 -0800 (PST)
Date: Fri, 13 Jan 2023 02:05:14 +0000
From: Sean Christopherson <seanjc@google.com>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <Y8C8WpkjgFelldTQ@google.com>
References: <20230112203844.41179-1-mjrosato@linux.ibm.com>
 <20230112140517.6db5b346.alex.williamson@redhat.com>
 <bce7912a-f904-b5a3-d234-c3e2c42d9e54@linux.ibm.com>
 <Y8CX8YwT/T9v4U/D@google.com>
 <20230112175648.158dca5f.alex.williamson@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230112175648.158dca5f.alex.williamson@redhat.com>
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

On Thu, Jan 12, 2023, Alex Williamson wrote:
> On Thu, 12 Jan 2023 23:29:53 +0000
> Sean Christopherson <seanjc@google.com> wrote:
> 
> > On Thu, Jan 12, 2023, Matthew Rosato wrote:
> > > On 1/12/23 4:05 PM, Alex Williamson wrote:  
> > > > On Thu, 12 Jan 2023 15:38:44 -0500
> > > > Matthew Rosato <mjrosato@linux.ibm.com> wrote:  
> > > >> @@ -344,6 +345,35 @@ static bool vfio_assert_device_open(struct vfio_device *device)
> > > >>  	return !WARN_ON_ONCE(!READ_ONCE(device->open_count));
> > > >>  }
> > > >>  
> > > >> +static bool vfio_kvm_get_kvm_safe(struct kvm *kvm)
> > > >> +{
> > > >> +	bool (*fn)(struct kvm *kvm);
> > > >> +	bool ret;
> > > >> +
> > > >> +	fn = symbol_get(kvm_get_kvm_safe);
> > > >> +	if (WARN_ON(!fn))  
> > 
> > In a related vein to Alex's comments about error handling, this should not WARN.
> > WARNing during vfio_kvm_put_kvm() makes sense, but the "get" is somewhat blind.
> 
> It's not exactly blind though, we wouldn't have a kvm pointer if the
> kvm-vfio device hadn't stuffed one into the group.  We only call into
> here if we have a non-NULL pointer, so it wouldn't simply be that the
> kvm module isn't available for this to fire, but more that we have an
> API change to make the symbol no longer exist.  A WARN for that doesn't
> seem unreasonable.  Thanks,

Hmm, I was thinking that it might be possible for kvm.ko to be on its way out,
but barring use of force module unload, which breaks things left and right, kvm.ko
can only be going if all VMs have been destroyed.

Agreed, WARN is fine.
