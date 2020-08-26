Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1880025311B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 16:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70BF6EAA0;
	Wed, 26 Aug 2020 14:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F1D6EA57
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 14:20:32 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id d20so594167ual.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 07:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sjSOraiR4FbGG6Ur2UAs6+vtqCNJ1lx1JCgkMDPitTk=;
 b=qYue+NH8i/tJVUCVEI+sdB9jN4sluLwOQTwn3irlruHy2HpMFXOsBpCYc/Tgeyy5yH
 oSg9162QKzEbGZLczKXME7pZuJmWluphLspCvFuBtLcgbM+9gPVPZnonhwNp0dsvDPCE
 B78Z8OX4PRggahWB8DtA/TkU+zVZhJ1o9Ydw2iGMapErf0pMB1sjf8LK0CKc+Ve7BHVc
 V1eshEuRFWHmt3DH8OctSKkSHmTyDJL26AvoRPUtX03END81DrT9jqg7x0gZ7SHIOZub
 rjyueVimwAGawJD/kbqy4eNyP2Cl2K4d2fIlIEhl24W45vJpHvFyzRi4om4floqHTLMM
 eGLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sjSOraiR4FbGG6Ur2UAs6+vtqCNJ1lx1JCgkMDPitTk=;
 b=ocXAn34R7TjxN6/62DXCaY6meo948bWkb80n7WX6okfzIsYxufrUNbJuvinaT6YQzr
 kP9MpqOju5I2UJIzE3PZOQpxjcRWOdxdc6YdXXaIcAP/QbJMWhK4+ou1K0YgDNcHJPhv
 J4r94FK/viIrxPlnNgvi2OqGg0XtxBj4DcqL2htKzI0ATNV6SmQy4d+a8kt5+pQkimrN
 6gYkoxoO/z1mRnkZfo3zsgcyh2X51ukj9TCVzUkUxOe7+8dWB0UTZHphA89tskLBwOYY
 hAL4HJXWDD1NDn9vyB4bac8KRqk++WF2b8/HV+bCEqGC37krTJukd0mY1UUn2kG4dRog
 slrw==
X-Gm-Message-State: AOAM5335swUxJS9qkND9u+Dm6QhIbpZ1PNFlT33J6xgvBwDAR7qtARXZ
 JuRgDM87qIfeFlnU3fs0RU5c0JwyGzVvXZyzClk=
X-Google-Smtp-Source: ABdhPJxDqVMfk7ziG4e8i8XJU3zSsypVAXFKQYM2rdK1GF+a2S6Pl1Y5mpPV4XCaVjJUOW8bVQczn2r+UlJUU3NQqOY=
X-Received: by 2002:ab0:64c3:: with SMTP id j3mr8755084uaq.129.1598451631838; 
 Wed, 26 Aug 2020 07:20:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 26 Aug 2020 15:20:05 +0100
Message-ID: <CAM0jSHNx0vL2y617r1xSdY3UnwBcCjuTmkz8nJjaEahqWM6WJQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915/gem: Avoid implicit vmap for
 highmem on x86-32
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
 Harald Arnesen <harald@skogtun.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Aug 2020 at 14:29, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> On 32b, highmem uses a finite set of indirect PTE (i.e. vmap) to provide
> virtual mappings of the high pages. As these are finite, map_new_virtual()
> must wait for some other kmap() to finish when it runs out. If we map a
> large number of objects, there is no method for it to tell us to release
> the mappings, and we deadlock.
>
> However, if we make an explicit vmap of the page, that uses a larger
> vmalloc arena, and also has the ability to tell us to release unwanted
> mappings. Most importantly, it will fail and propagate an error instead
> of waiting forever.
>
> Fixes: fb8621d3bee8 ("drm/i915: Avoid allocating a vmap arena for a single page") #x86-32
> References: e87666b52f00 ("drm/i915/shrinker: Hook up vmap allocation failure notifier")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Harald Arnesen <harald@skogtun.org>
> Cc: <stable@vger.kernel.org> # v4.7+
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
