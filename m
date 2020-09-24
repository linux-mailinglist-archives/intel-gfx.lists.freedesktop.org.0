Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A299276CB0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 11:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE556EABE;
	Thu, 24 Sep 2020 09:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FB66EABE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 09:02:03 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id n193so699742vkf.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 02:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RPNX/Jntc8uqMJoV2v4tqGUSdeJxRL7jFSbZHVhhU/o=;
 b=EvWOqfYE84WNYRR+R+Jyq0/XuUfQqOONnjHwuaHy8cgZCTqKPknjAQs4vxdfggMEo2
 4hkXBvR2OoGpss99jpbqrkVmAkrBL1WKsoLzb5xB7R/wC2EOiDlm6YbPvr6m7G3O9tKi
 5Yz5RjKvMOv2UmjaH6zVOGXCwW4+wPvZOPjx6ZY3801vJw4E0mBfrXjUi2AmZLnJIrMp
 w4v2MxN0S4dXVrbmDS2GhjU+DZwmbYgevY9g4cPvwOr8+e711mAeRhEZ6q+v1ChjYr2t
 6QJ6CK1wXcchvT/1EASxwCVv40iHSmaGYiVREyADqHtXiyn4yQ1/ffVu+Kec/LnCwFeX
 rksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RPNX/Jntc8uqMJoV2v4tqGUSdeJxRL7jFSbZHVhhU/o=;
 b=UYXj39fIKxxD+CtpjYv+YrQjns/V0AWqiyqvTJAHf0cm9c252g9kiAcNzP/cVN6ETJ
 d5nyFp58dXYXxW7LhCdE34bqjuGLjWyID6XA7uXFIQRvDBX5slHw1bmXUJL6enGqtVnZ
 ZvqVf35vMQ+hplu7iBNrOEbd/eGTG2oGyJRi4Do2dP72dMGu2Z14Pw+hWzuOGdA0Z4VZ
 uOkZh2ltDRJVuXvp+J5ctiD134EUZHo18IqyUTQ4BTAjDLgvT2p+SBgwJzjEqmIybcMI
 lIOs33eIIEir8Qzxiv+uo37DZ4mDjcYzOShy6pbtfmHmXqk58KpyxbsXcK/ygjvEBIYw
 R8HA==
X-Gm-Message-State: AOAM533d2qaEnlAV5Ez1PbdQZxLNNwnVu7u1xxNSVA/6Spu1u04bDaq8
 ESCOJtHcj8DKIcgpgfwpgPIFryMXqSE1eypiTfyqoYxq0Bg=
X-Google-Smtp-Source: ABdhPJz+/3TQiT/8tys66GWxsyQ+oU5+bI/Phf8beW37pZ4Ilo01dCKcPElfeG5eMukWAfHKm5fCGj/pJv0LCQpQ168=
X-Received: by 2002:a1f:2450:: with SMTP id k77mr2911956vkk.13.1600938122837; 
 Thu, 24 Sep 2020 02:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200923114156.17749-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200923114156.17749-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 24 Sep 2020 10:01:36 +0100
Message-ID: <CAM0jSHPNeYy5+kY4Bhj-Vh77fKnHq6uQ0DAiuJ0GyxSMbo3xHA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Switch 4k kmalloc to
 use get_free_page for alignment
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, "Gote,
 Nitin R" <nitin.r.gote@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Sep 2020 at 12:42, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> In generating the reference LRC, we want a page-aligned address for
> simplicity in computing the offsets within. This then shares the
> computation for the HW LRC which is mapped and so page aligned, making
> the comparison straightforward. It seems that kmalloc(4k) is not always
> returning from a 4k-aligned slab cache (which would give us a page aligned
> address) so force alignment by explicitly allocating a page.
>
> Reported-by: "Gote, Nitin R" <nitin.r.gote@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: "Gote, Nitin R" <nitin.r.gote@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
