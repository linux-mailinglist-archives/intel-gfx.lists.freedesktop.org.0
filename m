Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6AF3D9E72
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 09:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7F9E6ECC4;
	Thu, 29 Jul 2021 07:30:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B832C6ECC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 07:30:23 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id d8so5628109wrm.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 00:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Tb+0rRKuqDnjOL1ASnfrRF1A89N4P92fMWjclPMkDss=;
 b=DOm1OvhgzgwgHgDIrraZ03XoHOA+d6dH762ZTJo+E6S39/5h6jRhFRd+nsUazfCfLf
 S2Lkxsdk7hwdmUXxR5OwXDEk4YRTKj7sadSS89ys7t7SG5QJL5cy5+h4oeCB0txEXIsE
 dEHc7JF5fJepkGCz2g+EKTUszzyxAsZeEzsgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=Tb+0rRKuqDnjOL1ASnfrRF1A89N4P92fMWjclPMkDss=;
 b=ppMZHyjgFIeubQgosQ5dPTYMIvI/F8Myfzi4B1pseHSYLRI4YfRCn3ROXMLEC2YRRY
 qjANGawqSIdEccdnn0aef14r/koqDtozHpWugYO6ysFIdTNA/4dGIsoI6eyFLTLukXtI
 UmEEqE/BKvPnS8DIrkIrL8gjS70mwCaiLCIowUYMhdbzknjmI2omjoAGxzr0U5W8w61L
 JW4yelW+1gbIpXNX6bhWK+0I9uapQ32ZHu0w4OhiYhjPPWvRYPw+CgesxUkM4d5tjWVW
 CaAXnTzUaRkoqiz64Jjiy93CITDKLoF2gAKZnuxNP4crkwnYjF3qu9AYM5XYAkC7Is7z
 e2lA==
X-Gm-Message-State: AOAM531RUEHf07BwNsHdu110xKPVh1JIpLveQFV7k9ctNfBnbEO/U6GH
 DseCrBckFTPVGmfoB9Omyvpq1g==
X-Google-Smtp-Source: ABdhPJzVoNhNuWzyJb6b5KpqveRPXRf80R7n4sTS1a3iK3O41OT/IBBs23MW0vHKeYXlErBFvWWpYQ==
X-Received: by 2002:a5d:53ca:: with SMTP id a10mr1549831wrw.197.1627543822183; 
 Thu, 29 Jul 2021 00:30:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q22sm2207751wmc.16.2021.07.29.00.30.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 00:30:21 -0700 (PDT)
Date: Thu, 29 Jul 2021 09:30:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YQJZCwyT9YSZWLnO@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Jason Gunthorpe <jgg@nvidia.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Gerd Hoffmann <kraxel@redhat.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>
References: <20210721155355.173183-1-hch@lst.de>
 <DM4PR11MB55496531B246A4604FC86998CAE49@DM4PR11MB5549.namprd11.prod.outlook.com>
 <20210722112636.wj277vqhg4dez5ug@sirius.home.kraxel.org>
 <20210727121224.GA2145868@nvidia.com>
 <DM4PR11MB5549EC882AA6076F3468274DCAEA9@DM4PR11MB5549.namprd11.prod.outlook.com>
 <20210728175925.GU1721383@nvidia.com>
 <20210729072022.GB31896@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729072022.GB31896@lst.de>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] refactor the i915 GVT support
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 29, 2021 at 09:20:22AM +0200, Christoph Hellwig wrote:
> On Wed, Jul 28, 2021 at 02:59:25PM -0300, Jason Gunthorpe wrote:
> > On Wed, Jul 28, 2021 at 01:38:58PM +0000, Wang, Zhi A wrote:
> > 
> > > I guess those APIs you were talking about are KVM-only. For other
> > > hypervisors, e.g. Xen, ARCN cannot use the APIs you mentioned. Not
> > > sure if you have already noticed that VFIO is KVM-only right now.
> > 
> > There is very little hard connection between VFIO and KVM, so no, I
> > don't think that is completely true.
> 
> The only connection is the SET_KVM notifier as far as I can tell.
> Which is used by a total of two drivers, including i915/gvt.  That
> being said gvt does not only use vfio, but also does quite a few
> direct cals to KVM.
> 
> > In an event, an in-tree version of other hypervisor support for GVT
> > needs to go through enabling VFIO support so that the existing API
> > multiplexers we have can be used properly, not adding a shim layer
> > trying to recreate VFIO inside a GPU driver.
> 
> Yes.  And if we go back to actually looking at the series a lot of
> it just removes entirely pointless indirect calls that go to generic
> code and not even the kvm code, or questionable data structure designs.
> If we were to support another upstream hypervisor we'd just need to
> union a few fields in struct intel_gpu and maybe introduce a few
> methods.  Preferably in a way that avoids expensive indirect calls
> in the fast path.

fwiw I concur with the direction of this series. gvt landed 5 years ago,
that should have been plenty of time to merge at least one of the other
backends that float around. If it didn't happen in 5 years it aint
suddenly happening in the next few, and the abstraction layer should be
sunset.

Also yes structuring it more as a helper layer with some
unions/subclassing than full blown backend abstractor layer would be a
good idea too I guess (it usually is the right thing to do).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
