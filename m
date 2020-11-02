Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80B02A25CD
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 09:05:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2326A6E416;
	Mon,  2 Nov 2020 08:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8BFC6E413;
 Mon,  2 Nov 2020 08:05:30 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 29BA01F44AE2;
 Mon,  2 Nov 2020 08:05:29 +0000 (GMT)
Date: Mon, 2 Nov 2020 09:05:26 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20201102090526.39c7a38c@collabora.com>
In-Reply-To: <20201102124637.1e846861@canb.auug.org.au>
References: <20201102124637.1e846861@canb.auug.org.au>
Organization: Collabora
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
 drm-misc tree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, Steven Price <steven.price@arm.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Stephen,

On Mon, 2 Nov 2020 12:46:37 +1100
Stephen Rothwell <sfr@canb.auug.org.au> wrote:

> Hi all,
> 
> After merging the imx-drm tree, today's linux-next build (arm
> multi_v7_defconfig) produced this warning:
> 
> drivers/gpu/drm/panfrost/panfrost_job.c: In function 'panfrost_job_close':
> drivers/gpu/drm/panfrost/panfrost_job.c:617:28: warning: unused variable 'js' [-Wunused-variable]
>   617 |  struct panfrost_job_slot *js = pfdev->js;
>       |                            ^~
> 
> Introduced by commit
> 
>   a17d609e3e21 ("drm/panfrost: Don't corrupt the queue mutex on open/close")
> 

Thanks for this report. I posted a patch [1] to fix that yesterday, and
I plan to apply it soon.

Regards,

Boris

[1]https://patchwork.kernel.org/project/dri-devel/patch/20201101173817.831769-1-boris.brezillon@collabora.com/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
