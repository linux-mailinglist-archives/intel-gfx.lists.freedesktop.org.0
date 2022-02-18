Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7414BC167
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 21:53:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4A910E4DD;
	Fri, 18 Feb 2022 20:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A72210E4B9;
 Fri, 18 Feb 2022 20:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645217595; x=1676753595;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=/Q0qGLiYS/JaHsB9YHE5r7P9AoVmGgvqbuPOW7pO04Q=;
 b=I24Fsv4IVVV+hlf1NeVCRurr5vBYQs1JrKvl27qGio/MRstVSNdQYzID
 gqZldDm+9HpAgz9vf5fDLd5ncRuyOADtjMF5/McY8335tSzMkX0X4c2JU
 R01dMGu3ECoGKnashgYrZ3NGdjlHsmlqUPblfZoGjtyMP04w/eeJ3cMhQ
 mBGgQHt71vCBr1HlCL8tHxK3N6LnMO1b66GeqFbD5m1naTGOQAYOawTla
 OOJhU4FDnmeUyQHHbqxJDkmqv1oaULpOWr7zj59ui6PWgqJ0TpgTJfuai
 vjXnlOb0Kz/mS5dtVw3YX9psScULd6bihWsttm1glY/o2ZYDtwI1AVV65 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="231839180"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="231839180"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 12:53:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="506876684"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.21.225])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 12:53:12 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <22539233.6Emhk5qWAg@jkrzyszt-mobl1.ger.corp.intel.com>
References: <20220218151935.31688-1-janusz.krzysztofik@linux.intel.com>
 <164520018148.26182.14140261608114027724@build.alporthouse.com>
 <22539233.6Emhk5qWAg@jkrzyszt-mobl1.ger.corp.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Fri, 18 Feb 2022 20:53:09 +0000
Message-ID: <164521758947.26182.2962174760241670421@build.alporthouse.com>
User-Agent: alot/0.9
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
Cc: intel-gfx@lists.freedesktop.org, Michał Winiarski <michal.winiarski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2022-02-18 17:08:41)
> Hi Chris,
>=20
> On Friday, 18 February 2022 17:03:01 CET Chris Wilson wrote:
> > Quoting Janusz Krzysztofik (2022-02-18 15:19:35)
> > > @@ -206,15 +229,19 @@ static struct pci_device *__igt_device_get_pci_=
device(int fd)
> > >                 igt_warn("Couldn't find PCI device %04x:%02x:%02x:%02=
x\n",
> > >                          pci_addr.domain, pci_addr.bus,
> > >                          pci_addr.device, pci_addr.function);
> > > -               return NULL;
> > > +               goto cleanup;
> > >         }
> > > =20
> > >         if (pci_device_probe(pci_dev)) {
> > >                 igt_warn("Couldn't probe PCI device\n");
> > > -               return NULL;
> > > +               goto cleanup;
> > >         }
> > > =20
> > >         return pci_dev;
> > > +
> > > +cleanup:
> > > +       pci_system_cleanup();
> >=20
> > This is a global cleanup of libpciaccess iirc, such that if anyone else
> > was using the library they would be affected.
>=20
> Right, but shouldn't we also drop pci_system_init() from here and request=
=20
> users to manage initialization and cleanup of that data themselves?  On e=
ach=20
> call pci_system_init() abandons existing data and overwrites a pointer to=
 it=20
> with that of newly allocated memory, then tests calling=20
> igt_device_get_pci_device() multiple times are going to suffer from=20
> significant memory leaking.

Right, I thought it only inited once -- I just remember the issue with
calling pci_system_cleanup() while others were still using it.

Stick the call to init in an __attribute__((constructor)) or pthread_once.
-Chris
