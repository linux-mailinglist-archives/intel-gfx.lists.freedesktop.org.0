Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA0531D2ED
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 00:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7956E200;
	Tue, 16 Feb 2021 23:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB556E200
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 23:01:55 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id v19so5458810qvl.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 15:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j1mH25i+5j4AS5RGeOCsMNfIPg+OKcyjjs55ZXJKVEA=;
 b=j53dJJLXFVcltwxep4/sPJtJgEwrRlGVOVzWzOMamhER9IsJQ9OAsdvw3av7kl+l4v
 il9t5nshG2w/b4/WSw4WJgai0empDG7c0FiHA39O26H8l4tO16Fo+YteIeMPaYC1SPFk
 oq+tSqNJOqP1IoEuFEeM5Wv6ja9PRzHaXg6j1QS7v8A40Yyzlt+0ssKY5Hp2hQhxCJVQ
 d/prFPxoZOKUAeEEIxSu50B1MqrY7uFUBa+V+uG1HjkBgi9YyxMd+HrFnPmII/9uxEDH
 U0Fi0jEdWYBMyv0F9l0E8RuE9y3xBnFm2YyjHEukQ8cijJ7OsZ4mjoeGFqnboSrVTB6f
 9KrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j1mH25i+5j4AS5RGeOCsMNfIPg+OKcyjjs55ZXJKVEA=;
 b=ighbYqvUq1lFWTvAt5PisciiFnDQnRGKQvJeYHNKh0hQQpwoBMJiilDffe1LsEnkUl
 DiTKzBOUyPRZkHroqw13dGOp0ZP1vhBaYKCrwIlx+gGIxlfUYZxuU5lEFIpjdPkwnSh4
 Uv6Gh7GEgamVFra5F370b5XvaOpZv7P/zKy8eJVJHHum3eMtfulOcDD6bj+LMUoZLMH0
 4ThJ42j/eGWHPtabgslJFOOH/HbGcP7PSZyrdR0huqe6VRWjcGjejUizTjYe4bHcIlEY
 MfnDIEpq72mSS4KHxD+BmsXtPwgGgoXnQAayv/XJYkimICAsa6c2xGPPVHXDnDcVf4nm
 h1Qw==
X-Gm-Message-State: AOAM533IFdx91vqP6doTN6LOP2/cXFdV3HJX4i008CquI9Pl/ZRN7Hai
 c5sw1kKjPL2JNk0JLPRdVCWE3qy43enS7SisuAc=
X-Google-Smtp-Source: ABdhPJyTRThkQBHfeQxXbwJ3vmuF8znKW8qhz/X3H4YttohuY+V+RmPy9O0bK8Vodfy1/UG2Kt5Jmg5AV/xX0caP0sE=
X-Received: by 2002:ad4:544b:: with SMTP id h11mr22001531qvt.24.1613516514944; 
 Tue, 16 Feb 2021 15:01:54 -0800 (PST)
MIME-Version: 1.0
References: <20210216181925.650082-1-tomas.winkler@intel.com>
In-Reply-To: <20210216181925.650082-1-tomas.winkler@intel.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Wed, 17 Feb 2021 00:01:43 +0100
Message-ID: <CAFLxGvwP5-O5DHQ07Fs_GnG12dsK24mer8LJfhz2z2UqW9e5cQ@mail.gmail.com>
To: Tomas Winkler <tomas.winkler@intel.com>
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
 intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-mtd@lists.infradead.org,
 Vitaly Lubart <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

)On Tue, Feb 16, 2021 at 7:26 PM Tomas Winkler <tomas.winkler@intel.com> wrote:
> Because the graphic card may undergo reset at any time and basically hot
> unplug all its child devices, this series also provides a fix to the mtd
> framework to make the reset graceful.

Well, just because MTD does not work as you expect, it is not broken. :-)

In your case i915_spi_remove() blindly removes the MTD, this is not allowed.
You may remove the MTD only if there are no more users.

The current model in MTD is that the driver is in charge of all life
cycle management.
Using ->_get_device() and ->_put_device() a driver can implement
refcounting and deny
new users if the MTD is about to disappear.

In the upcoming MUSE driver that mechanism is used too.
MUSE allows to implement a MTD in userspace. So the FUSE server can disappear at
*any* time. Just like in your case. Even worse, it can be hostile.
In MUSE the MTD life time is tied to the FUSE connection object,
muse_mtd_get_device()
increments the FUSE connection refcount, and muse_mtd_put_device()
decrements it.
That means if the FUSE server disappears all of a sudden but the MTD
still has users,
the MTD will stay. But in this state no new references are allowed and
all MTD operations
of existing users will fail with -ENOTCONN (via FUSE).
As soon the last user is gone (can be userspace via /dev/mtd* or a
in-kernel user such as UBIFS),
the MTD will be removed.
For the full details, please see:
https://git.kernel.org/pub/scm/linux/kernel/git/rw/misc.git/tree/fs/fuse/muse.c?h=muse_v3#n1034

Is in your case *really* not possible to do it that way?

On the other hand, your last patch moves some part of the life cycle
management into MTD core.
The MTD will stay as long it has users.
But that's only one part. The driver is still in charge to make sure
that all operations
fail immediately and that no new users arrive.
If we want to do all in MTD core we'd have to do it like SCSI disks.
That means having devices states such as SDEV_RUNNING, SDEV_CANCEL,
SDEV_OFFLINE, ....
That way the MTD could be shutdown gracefully, first no new users are
allowed, then ongoing operations
will be cancelled, next all operation will fail with -EIO or such,
then the device is being removed from sysfs
and finally if the last user is gone, the MTD can be removed.

I'm not sure whether we want to take that path.

-- 
Thanks,
//richard
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
