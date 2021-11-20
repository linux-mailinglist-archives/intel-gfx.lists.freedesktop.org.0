Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 286BB458C4A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 11:32:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C6D6EB81;
	Mon, 22 Nov 2021 10:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F8E6E040;
 Sat, 20 Nov 2021 15:26:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E5B5B60EB6;
 Sat, 20 Nov 2021 15:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637421964;
 bh=sL04+7/Tziaw15CHiE2bty/Bv6qeql7yB4oQSwHL8Rw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=N35/MX+Bk5IfQeZQiu16BeV4YuD31Ephij5WJvzDmZ2G+K+MjYa+HWqb1ahmMn5Hb
 8nTHe95BsmdqkyFWylC9DLYJd5w68+maTSegSteQm994SJN2V2euBCo7o5awfS7MX1
 1EqL1r1uDdGsdYVLkB0LepzAMd/DMg1DnO37cYnq/TOnx6T6gg4l1tr4VYZFrfdNBr
 fu07uKG0PLQcKTAn5J7IOkR76pmhpIN6NdZJHm5NPKAY2SAGobyGEmgVfnmJURZZPl
 Ncx/4o043Jc/OWEbZSwAM5dDl3KRkS71kl4wzNRFF/bIFRAmgFMC+aeEM6/O5rxXi9
 UVuYgRSm1FojA==
Date: Sat, 20 Nov 2021 07:26:02 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Peter Chen <peter.chen@kernel.org>
Message-ID: <20211120072602.22f9e722@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211120073011.GA36650@Peter>
References: <20211120035253.72074-1-kuba@kernel.org>
 <20211120073011.GA36650@Peter>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 22 Nov 2021 10:32:05 +0000
Subject: Re: [Intel-gfx] [PATCH bpf] treewide: add missing includes masked
 by cgroup -> bpf dependency
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
Cc: kw@linux.com, songliubraving@fb.com, kafai@fb.com, airlied@linux.ie,
 linux-pci@vger.kernel.org, ast@kernel.org, dri-devel@lists.freedesktop.org,
 andrii@kernel.org, a-govindraju@ti.com, ray.huang@amd.com, sbhatta@marvell.com,
 robh@kernel.org, lorenzo.pieralisi@arm.com, daniel@iogearbox.net,
 krzysztof.kozlowski@canonical.com, john.fastabend@gmail.com,
 geert@linux-m68k.org, matthew.auld@intel.com, yhs@fb.com, sgoutham@marvell.com,
 thomas.hellstrom@linux.intel.com, pawell@cadence.com, tzimmermann@suse.de,
 mani@kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, mripard@kernel.org, kpsingh@kernel.org,
 rogerq@kernel.org, linux-samsung-soc@vger.kernel.org, bhelgaas@google.com,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, linux-block@vger.kernel.org, sj@kernel.org,
 lima@lists.freedesktop.org, linux-mm@kvack.org, jingoohan1@gmail.com,
 linux-usb@vger.kernel.org, christian.koenig@amd.com, hkelam@marvell.com,
 yuq825@gmail.com, gregkh@linuxfoundation.org, bpf@vger.kernel.org,
 colin.king@intel.com, freedreno@lists.freedesktop.org, gakula@marvell.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 20 Nov 2021 15:30:11 +0800 Peter Chen wrote:
> > diff --git a/drivers/usb/cdns3/host.c b/drivers/usb/cdns3/host.c
> > index 84dadfa726aa..9643b905e2d8 100644
> > --- a/drivers/usb/cdns3/host.c
> > +++ b/drivers/usb/cdns3/host.c
> > @@ -10,6 +10,7 @@
> >   */
> > =20
> >  #include <linux/platform_device.h>
> > +#include <linux/slab.h> =20
>=20
> Should be "#include <linux/module.h>"?

Why? Different files are missing different includes, this one needs
slab.h:

../drivers/usb/cdns3/host.c: In function =E2=80=98__cdns_host_init=E2=80=99:
../drivers/usb/cdns3/host.c:86:2: error: implicit declaration of function =
=E2=80=98kfree=E2=80=99; did you mean =E2=80=98vfree=E2=80=99? [-Werror=3Di=
mplicit-function-declaration]
  kfree(cdns->xhci_plat_data);
  ^~~~~
  vfree
