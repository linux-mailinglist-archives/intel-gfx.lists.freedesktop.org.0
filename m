Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D2A681FFF
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 00:52:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B6510E31E;
	Mon, 30 Jan 2023 23:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC9B910E2F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 23:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1675122724;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PAdTklmEDyAgRNbObsy/Ygo6Kv9vgqHE1ov2RCXdrFg=;
 b=PO8Z4LNWuzHC87RiYru9OO29PjD8AwbUjphe0HrhAnFQPyvNTv7gpPhGAtEeETFfY+WmRi
 D+QbAEcZdY9c9o6S6sogRkP2Tox7SayO89L5ahkcQYmiqXd+4VfFNWueZa8jBpY5Ze8e3H
 x+S4JN9XCA4l9C4KnPB/XRKliILiOoQ=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-267-F7FtFoNFNiC99LPAoK9PEA-1; Mon, 30 Jan 2023 18:52:00 -0500
X-MC-Unique: F7FtFoNFNiC99LPAoK9PEA-1
Received: by mail-io1-f71.google.com with SMTP id
 z25-20020a6be019000000b00716eaf80c1dso3866605iog.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 15:52:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PAdTklmEDyAgRNbObsy/Ygo6Kv9vgqHE1ov2RCXdrFg=;
 b=oeIZEcvsk5WTHtSVZ+WHZz0UjsboVYit5XKArsF+1aSbXIKrjO5J41+bAtGt2Z6Pc2
 yC1a29pVPSfx1q3BizRGFc7H8M9nEbCWDh5LxJpqoI9bzyeGbuZxNWI2fjm5KtwppOve
 Ho1G0Wocw02OOMV88cOW5YToK90bo2qeBXf2fJVz+B2xzgNFMPne5DbsWb5/13V1nWjB
 trZ0u76joc0P3NcfjE9VDzoxgK6pv0m8YmrkGlkAEm+67TFKMdID7kzMlZxuJk30fgQg
 a6Y+ebuPRmu3zpliovk4e2c6lDeNeWsAgEygk08gwcFQd+wkRIQFQ/2IrWaS1KKoa1RF
 o7FA==
X-Gm-Message-State: AO0yUKW7yQ7xrHaAV9uANEFEq9GPM4x5O/tCsEZZDav+ykuc42LJQ2UB
 czBeF992U1KFAGhAbu5gr5VTYnt3cMHhd4lk8uFZE1gHc4TzdeDsgigbT2LD5i89qEN4FTIJfye
 MYQ4Mu+83p6W8efFUDhrNtmYJ4rQe
X-Received: by 2002:a05:6e02:190f:b0:310:eb55:3856 with SMTP id
 w15-20020a056e02190f00b00310eb553856mr6886979ilu.9.1675122720180; 
 Mon, 30 Jan 2023 15:52:00 -0800 (PST)
X-Google-Smtp-Source: AK7set+Tjuh/QLV5ACoKjB78BPy3FHiMPojdoqjURp7yFxxmHnP5uajB9G0cNMY2hpBpgzJz6u+eCQ==
X-Received: by 2002:a05:6e02:190f:b0:310:eb55:3856 with SMTP id
 w15-20020a056e02190f00b00310eb553856mr6886951ilu.9.1675122719932; 
 Mon, 30 Jan 2023 15:51:59 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 w65-20020a025d44000000b0039deb26853csm5227538jaa.10.2023.01.30.15.51.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Jan 2023 15:51:59 -0800 (PST)
Date: Mon, 30 Jan 2023 16:51:58 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <20230130165158.6993fc28.alex.williamson@redhat.com>
In-Reply-To: <20230126211211.1762319-1-arnd@kernel.org>
References: <20230126211211.1762319-1-arnd@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] [v2] vfio-mdev: add back CONFIG_VFIO
 dependency
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
Cc: Tony Krowiak <akrowiak@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Masami Hiramatsu <mhiramat@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Tomas Winkler <tomas.winkler@intel.com>,
 "Steven Rostedt \(Google\)" <rostedt@goodmis.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Miguel Ojeda <ojeda@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 26 Jan 2023 22:08:31 +0100
Arnd Bergmann <arnd@kernel.org> wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> CONFIG_VFIO_MDEV cannot be selected when VFIO itself is
> disabled, otherwise we get a link failure:
> 
> WARNING: unmet direct dependencies detected for VFIO_MDEV
>   Depends on [n]: VFIO [=n]
>   Selected by [y]:
>   - SAMPLE_VFIO_MDEV_MTTY [=y] && SAMPLES [=y]
>   - SAMPLE_VFIO_MDEV_MDPY [=y] && SAMPLES [=y]
>   - SAMPLE_VFIO_MDEV_MBOCHS [=y] && SAMPLES [=y]
> /home/arnd/cross/arm64/gcc-13.0.1-nolibc/x86_64-linux/bin/x86_64-linux-ld: samples/vfio-mdev/mdpy.o: in function `mdpy_remove':
> mdpy.c:(.text+0x1e1): undefined reference to `vfio_unregister_group_dev'
> /home/arnd/cross/arm64/gcc-13.0.1-nolibc/x86_64-linux/bin/x86_64-linux-ld: samples/vfio-mdev/mdpy.o: in function `mdpy_probe':
> mdpy.c:(.text+0x149e): undefined reference to `_vfio_alloc_device'
> 
> Fixes: 8bf8c5ee1f38 ("vfio-mdev: turn VFIO_MDEV into a selectable symbol")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: fix the s390 and drm drivers as well, in addition to the
> sample code.
> ---
>  arch/s390/Kconfig            | 4 +++-
>  drivers/gpu/drm/i915/Kconfig | 1 +
>  samples/Kconfig              | 3 +++
>  3 files changed, 7 insertions(+), 1 deletion(-)

Applied to vfio next branch for v6.3.  Thanks,

Alex

