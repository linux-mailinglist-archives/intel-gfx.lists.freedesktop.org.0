Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF462FBB3D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 16:34:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD39A6E3DA;
	Tue, 19 Jan 2021 15:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD1EE6E3DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 15:34:34 +0000 (UTC)
Received: by mail-qt1-x829.google.com with SMTP id h19so13893936qtq.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z8BdSlguMnQpEc7EVbcM2A/DhHj72X5FnIvB6MLxdzw=;
 b=lxShGiABdIJi4F5i3U85DlQzIGhownwWbAP7G9SHqmw8dyqiYvtpb4qT6+yD1RPkLP
 Yf3vHFNBFFkhoY/fElIWqY6tGgE7YzRGEJRNrFuCfPVRlrOAHOapBYseEKhXWDQPQdMw
 mD7giwTal3s5c7T5rzrIKWtQy9CnBLBfhSuFiZVRwdcipiG04rgqm5/FJ5nck/Jb7xEF
 aMG7V1OgMMq6ojg/3RqW2YC7MLe1V9Ir4JRlADWIGKbYFiejHIgtkiJySFiulISiHmcF
 +BQiPuaonf2jfL5nO+pUH0Igwr71ZugBoL+NGfoo57DWGxERVCRdMbaua5GsnwHuEGex
 cRTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z8BdSlguMnQpEc7EVbcM2A/DhHj72X5FnIvB6MLxdzw=;
 b=pw+RZI69W/kgnAhV5l2q2tVwovhBIN2t1wbE8JdXQ5bztX1QDGREsYolVOzhGKjunX
 O5th3oWqSvh3b9YsL/7QNOVUzKQCTDkMjUQQ7x5tJdIE73d4kx8ehp2+mm8vMnP0N3tz
 QzE2xNKdBsWIYUM/ez6SnH6dK9134Nl395XOSRMjX6EM6CL6a+mMlvOrkw+GgGgnWXtZ
 M1TDhOojt7bKO/5T1L13zDsZvsPCrnqHtRhcv5Vswhg18X7m8/syG0NmMmXfXnanZ8I8
 P1uRiRp28Pm92dNESaGgBdkTTazTRqYK4pW70xJ8lXb9DzTlu5BmwsHYjUGvS10ml5+K
 cmLQ==
X-Gm-Message-State: AOAM533p3KU3FxKMfGNYZHnChAQlCZDEp4hKfhMFIF9BGZA7dCuh7tHD
 8ea/781QupuxzKRkbo3gCrIUqdayDOdb/AjROPk=
X-Google-Smtp-Source: ABdhPJy3c4++pEbz1jPf5WSuMtYxD3SzdMMb6JRnxBBOy8bzaheLewn5GgaHjwXOLB9Er7WuXYVKcQQP/o41zx5Lw4g=
X-Received: by 2002:ac8:76d5:: with SMTP id q21mr2062076qtr.341.1611070474020; 
 Tue, 19 Jan 2021 07:34:34 -0800 (PST)
MIME-Version: 1.0
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-2-chris@chris-wilson.co.uk>
In-Reply-To: <20210119144912.12653-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 15:34:07 +0000
Message-ID: <CAM0jSHN1sqXNjZtB3Pnr4RGPUvU+t3O+gfkci9C8AxbcssK1og@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gem: Almagamate clflushes on
 freeze
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> When flushing objects larger than the CPU cache it is preferrable to use
> a single wbinvd() rather than overlapping clflush(). At runtime, we
> avoid wbinvd() due to its system-wide latencies, but during
> singlethreaded suspend, no one will observe the imposed latency and we
> can opt for the faster wbinvd to clear all objects in a single hit.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
