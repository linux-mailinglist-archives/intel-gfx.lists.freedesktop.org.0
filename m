Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C262145A4EA
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 15:12:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABA66E215;
	Tue, 23 Nov 2021 14:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 538FE6F977;
 Tue, 23 Nov 2021 12:51:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 57D3560F9F;
 Tue, 23 Nov 2021 12:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637671898;
 bh=wIrWQf7YDEFEE/QQ99FQt/AhMw3wdmvSFHVUP3uKPJM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QGkZLrvRZ8KTMwcjmn6QaI1qSGzu+DoXhu8PQwdm/+cC5pDtmTATs6POIbgvzvvxo
 dvx+KAr/Q+u+JS9xVPk6U+7MmUsBqP+41x4NGLkHYCxIDvlSTvBzSwwSfjybOfj2nq
 TWRsQoUsqmsGmFLBAmPGIX/fzXnDaxy9cZciaQXE+GdZ9Q0gggepiKZXZcNrbqfcrR
 nHkhXzC+DvQ0+sPze3evyAcW6a63+vYer0kxBjG7JGzCBaYsm5sgS1HDHOjsFSlWxO
 c9lRiHDTKp2sG2VkVB8n9OMhlpaRH11oqA5Gp/3+CBjyqqPEmeO+zBNBu7sa5kiK9F
 SG13871QjbYqQ==
Date: Tue, 23 Nov 2021 20:51:08 +0800
From: Peter Chen <peter.chen@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20211123125108.GA4453@Peter>
References: <20211120035253.72074-1-kuba@kernel.org>
 <20211120073011.GA36650@Peter>
 <20211120072602.22f9e722@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211120072602.22f9e722@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-Mailman-Approved-At: Tue, 23 Nov 2021 14:12:22 +0000
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

On 21-11-20 07:26:02, Jakub Kicinski wrote:
> On Sat, 20 Nov 2021 15:30:11 +0800 Peter Chen wrote:
> > > diff --git a/drivers/usb/cdns3/host.c b/drivers/usb/cdns3/host.c
> > > index 84dadfa726aa..9643b905e2d8 100644
> > > --- a/drivers/usb/cdns3/host.c
> > > +++ b/drivers/usb/cdns3/host.c
> > > @@ -10,6 +10,7 @@
> > >   */
> > >  
> > >  #include <linux/platform_device.h>
> > > +#include <linux/slab.h>  
> > 
> > Should be "#include <linux/module.h>"?
> 
> Why? Different files are missing different includes, this one needs
> slab.h:
> 
> ../drivers/usb/cdns3/host.c: In function ‘__cdns_host_init’:
> ../drivers/usb/cdns3/host.c:86:2: error: implicit declaration of function ‘kfree’; did you mean ‘vfree’? [-Werror=implicit-function-declaration]
>   kfree(cdns->xhci_plat_data);
>   ^~~~~
>   vfree

Oh, my fault.

Acked-by: Peter Chen <peter.chen@kernel.org>

-- 

Thanks,
Peter Chen

