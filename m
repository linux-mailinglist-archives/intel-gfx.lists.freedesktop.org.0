Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 548104BBE07
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 18:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC68710EE47;
	Fri, 18 Feb 2022 17:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CE010EE47;
 Fri, 18 Feb 2022 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645204287; x=1676740287;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c+73WNFKk072hE9GspSRT4gQfDPRnbx9B+Hj5oBlGvo=;
 b=n3hwV0nZKXE8P13xbTltcWNjbr1ni+xHWY6v7m0ph/P5wh3vS88m55++
 GdknBv93Bl0ViplJp43S10zw40acvaDlx6eNK0dUbpcVUze+0O3T1roWC
 D0jTZHh1ZB93eTOHSOQbHKJP4/Fe8jRd8aqCyyBsnVVdIG1S9/bvn5WII
 k/Iep0Uumta2rtizmClErrCQbRIWjfCfic8yvdXkLUrsXkWgFK66l/DsI
 a4HahayDsoje04QJtMTnRt3Hf0OgeLzar6e2hwp0j+Mhc6Rs8HH0OZcdB
 7mQPqtgT+dXBsLdWaOQX1OJqfY5dAHBj6eJqlDCU0qWfqyDUYIlJb4gNc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="238570445"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="238570445"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 09:09:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="546358325"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.21.24])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 09:09:39 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Date: Fri, 18 Feb 2022 18:08:41 +0100
Message-ID: <22539233.6Emhk5qWAg@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <164520018148.26182.14140261608114027724@build.alporthouse.com>
References: <20220218151935.31688-1-janusz.krzysztofik@linux.intel.com>
 <164520018148.26182.14140261608114027724@build.alporthouse.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib/igt_device: Add support
 for accessing unbound VF PCI devices
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
Cc: intel-gfx@lists.freedesktop.org,
 =?utf-8?B?TWljaGHFgsKC?= Winiarski <michal.winiarski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Friday, 18 February 2022 17:03:01 CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2022-02-18 15:19:35)
> > @@ -206,15 +229,19 @@ static struct pci_device *__igt_device_get_pci_device(int fd)
> >                 igt_warn("Couldn't find PCI device %04x:%02x:%02x:%02x\n",
> >                          pci_addr.domain, pci_addr.bus,
> >                          pci_addr.device, pci_addr.function);
> > -               return NULL;
> > +               goto cleanup;
> >         }
> >  
> >         if (pci_device_probe(pci_dev)) {
> >                 igt_warn("Couldn't probe PCI device\n");
> > -               return NULL;
> > +               goto cleanup;
> >         }
> >  
> >         return pci_dev;
> > +
> > +cleanup:
> > +       pci_system_cleanup();
> 
> This is a global cleanup of libpciaccess iirc, such that if anyone else
> was using the library they would be affected.

Right, but shouldn't we also drop pci_system_init() from here and request 
users to manage initialization and cleanup of that data themselves?  On each 
call pci_system_init() abandons existing data and overwrites a pointer to it 
with that of newly allocated memory, then tests calling 
igt_device_get_pci_device() multiple times are going to suffer from 
significant memory leaking.

Thanks,
Janusz

> 
> > +       return NULL;
> >  }
> 




