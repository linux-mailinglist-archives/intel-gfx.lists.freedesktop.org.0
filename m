Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0065320907
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Feb 2021 08:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7666E8FB;
	Sun, 21 Feb 2021 07:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F5D6E8FB
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Feb 2021 07:11:01 +0000 (UTC)
IronPort-SDR: ZCjgJheuN1KCPc1Rdr7j74LgTNcO01LufjPWh3tLY5jARm+oNF7Pkv8+GdTmIoLo0mKpSJ5wqb
 mAdzItzcElLw==
X-IronPort-AV: E=McAfee;i="6000,8403,9901"; a="184307399"
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; d="scan'208";a="184307399"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2021 23:11:00 -0800
IronPort-SDR: XzXDxqvinnUrz9XmPeC2K2Lj7SyjzKnATVfxeAUe93QnyRo9X8j2XmsSBsicyw+VdojkpN/AVx
 /vvp5SG05thA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,194,1610438400"; d="scan'208";a="582314050"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 20 Feb 2021 23:11:00 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 20 Feb 2021 23:11:00 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 20 Feb 2021 23:10:59 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Sun, 21 Feb 2021 09:10:57 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Richard Weinberger <richard.weinberger@gmail.com>
Thread-Topic: [RFC PATCH 0/9] drm/i915/spi: discrete graphics internal spi
Thread-Index: AQHXBJBTlGMG4b5GwU+w3NO1EU5QQapbRLqAgAC+HMCABjNiUA==
Date: Sun, 21 Feb 2021 07:10:57 +0000
Message-ID: <7601e7f0024c41fb9b454a3c50b02173@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <CAFLxGvwP5-O5DHQ07Fs_GnG12dsK24mer8LJfhz2z2UqW9e5cQ@mail.gmail.com>
 <cb20e706d494458a8957252eeacfb1da@intel.com>
In-Reply-To: <cb20e706d494458a8957252eeacfb1da@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 0/9] drm/i915/spi: discrete graphics
 internal spi
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> 
> 
> >
> > )On Tue, Feb 16, 2021 at 7:26 PM Tomas Winkler
> > <tomas.winkler@intel.com>
> > wrote:
> > > Because the graphic card may undergo reset at any time and basically
> > > hot unplug all its child devices, this series also provides a fix to
> > > the mtd framework to make the reset graceful.
> >
> > Well, just because MTD does not work as you expect, it is not broken.
> > :-)
> I'm not saying it's broken by design it just didn't fit this use case.
> >
> > In your case i915_spi_remove() blindly removes the MTD, this is not
> allowed.
> > You may remove the MTD only if there are no more users.
> 
> I'm not sure it's good idea to stall the removal on user space.
> This is just asking for a deadlock as user space is not getting what it needs and
> may stall I think it's better the user space will fail gracefully the hw is not
> accessible in that stage anyway.
> >
> > The current model in MTD is that the driver is in charge of all life
> > cycle management.
> > Using ->_get_device() and ->_put_device() a driver can implement
> > refcounting and deny new users if the MTD is about to disappear.
> 
> Please note that this use case you are describing is still valid, I haven't
> removed _get_device() _put_device() handlers, You can still stall the
> removal of mtd, If this is not that way it's a bug
> 
> >
> > In the upcoming MUSE driver that mechanism is used too.
> > MUSE allows to implement a MTD in userspace. So the FUSE server can
> > disappear at
> > *any* time. Just like in your case. Even worse, it can be hostile.
> > In MUSE the MTD life time is tied to the FUSE connection object,
> > muse_mtd_get_device()
> > increments the FUSE connection refcount, and muse_mtd_put_device()
> > decrements it.
> > That means if the FUSE server disappears all of a sudden but the MTD
> > still has users, the MTD will stay. But in this state no new
> > references are allowed and all MTD operations of existing users will fail
> with -ENOTCONN (via FUSE).
> > As soon the last user is gone (can be userspace via /dev/mtd* or a
> > in-kernel user such as UBIFS), the MTD will be removed.
> 
> But in our case whole i915 is taken hostage, it cannot reset because of
> misbehaving user space.
> 
> > For the full details, please see:
> > https://git.kernel.org/pub/scm/linux/kernel/git/rw/misc.git/tree/fs/fu
> > se/m
> > use.c?h=muse_v3#n1034
> >
> > Is in your case *really* not possible to do it that way?
> 
> Maybe it's possible but I don't think it's good to stall i915 removal. Also It's
> very easily to crash the kernel.
> I've posted a sniped to the mailing list that tried to do that, the kernel still has
> crashed. Can you looked at?
> 
> > On the other hand, your last patch moves some part of the life cycle
> > management into MTD core.
> > The MTD will stay as long it has users.
> > But that's only one part. The driver is still in charge to make sure
> > that all operations fail immediately and that no new users arrive.
> 
> I think that case I would need to validate every HW access to make sure it's
> still valid.
> 
> > If we want to do all in MTD core we'd have to do it like SCSI disks.
> > That means having devices states such as SDEV_RUNNING, SDEV_CANCEL,
> > SDEV_OFFLINE, ....
> > That way the MTD could be shutdown gracefully, first no new users are
> > allowed, then ongoing operations will be cancelled, next all operation
> > will fail with -EIO or such, then the device is being removed from
> > sysfs and finally if the last user is gone, the MTD can be removed.
> 
> Isn't that already that way? You cannot open new handler. That I would need
> more of your insights.
> >
> > I'm not sure whether we want to take that path.

Hi Richard is there any way we can try to unclutter this ?

Thanks
Tomas

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
