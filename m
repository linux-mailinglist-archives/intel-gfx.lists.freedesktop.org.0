Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C9B137470
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 18:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D78986EA5F;
	Fri, 10 Jan 2020 17:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B186EA5F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 17:08:32 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id t12so1665291vso.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 09:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8p8naM6DjOMKCqqoA2DkGJOeaiLwDHRo+ig3qZAve7s=;
 b=RsaIcb62NXmgPZ7cdtvtVYzjatF6rcF5fSY9nG6E6ZhonczdD3swua1WiQhNAGNqgR
 173Lt2gSXac8/sTJpr7luYYyYtVN6FEjv9dYx0L1vPgB5reQEjVpmGF+tleF5eOlsDpl
 YAAu1hQm4+sxo6spav1rgcktu9VlowCNlTpHABDraa9hnWLy5cOgkRgZihpD9xd9H+9/
 /cfkAHyHW3PQYkSGbDxFhdXlTghrKL/kY1hxQZxSmJG7kHES9ctyMDGIaalSihSPNhVK
 vsVWttpU3n//y/bBwIxx69Tywdy2rl6w1Qht3VutyZGlnm4nwjeu3me471hIeUjIrUZD
 7TbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8p8naM6DjOMKCqqoA2DkGJOeaiLwDHRo+ig3qZAve7s=;
 b=i5nnBpklc1+vNkgifcgk0WqsI40roG8L3iUHYwgFdZQEYCh9MaRfxk7HTZoSqizUeP
 SzmSgPTTDUlv+C/54kizI3oixyN3D6+PrettwLhQH5SDPyPZzM+vv2wTwcdxIeWxUAlW
 grFSaY/vvKTjvhivEa03JAptLbqZ78cpufJB7L9SQCMNP+XMXHKBIEFbjmeo4THvzzyI
 felxEJAWhQv7IkfsAG363gMShgGpc/+3D1F6TFkDzTenaWe7CsgnZzFRYON/cbV44DnO
 6GGNk4E8zdJ8z9jRMuh0odDOOf18vHxTSi2jAHQKC0K1bEb5z0tOw0t0MIsP8LBQY/WM
 alDw==
X-Gm-Message-State: APjAAAWFZbwNvuSSeImzAwOYqFi8ungYf6R/mxBX+ArNytBdl8y+Cl31
 HPr6h6Y8EJ5RNR0M9GDeDCpDKE/IZu2EfUyTSaM=
X-Google-Smtp-Source: APXvYqxIIZ2cINkc8vta4uJShWNNr6cnXpbFaw1kr/eEOULH8XSbAk+OPWAE+D3PxlDPacOZ/hFKRMQJXt1WJzMQzqE=
X-Received: by 2002:a67:d39a:: with SMTP id b26mr2607950vsj.119.1578676112070; 
 Fri, 10 Jan 2020 09:08:32 -0800 (PST)
MIME-Version: 1.0
References: <20200110144418.1415639-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200110144418.1415639-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 10 Jan 2020 17:08:05 +0000
Message-ID: <CAM0jSHNrzBuhZvKVLB-+C5PL5q_-+N8w1sUN+bP2_w4WJbjRNg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Hold rpm wakeref before taking
 ggtt->vm.mutex
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jan 2020 at 14:44, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We need to hold the runtime-pm wakeref to update the global PTEs (as
> they exist behind a PCI BAR). However, some systems invoke ACPI during
> runtime resume and so require allocations, which is verboten inside the
> vm->mutex. Ergo, we must not use intel_runtime_pm_get() inside the
> mutex, but lift the call outside.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/958
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
