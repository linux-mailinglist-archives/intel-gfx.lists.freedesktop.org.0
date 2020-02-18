Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98883163331
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 21:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03DF989BCD;
	Tue, 18 Feb 2020 20:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07DF89BCD
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 20:39:08 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id n27so13986226vsa.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 12:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MMT53wxq4oIiiy7G6zYkmt/ksi5ImRHCTM0009pNDiY=;
 b=iTt6FnagYc+TBQV+rL4DxUaa+zhFVhOPK49t7daKQFYM/dehQcpXOyhkja0mj8TBRo
 2VZWSjLjMAKWAuR1Z8aKmKf5T9Sai87wGaEX4q1FS2Y6Zgd/8PbM8ckW7wk5rXSzd8IU
 5eD9MGEuFQR2ioq+KcwdTrhD7kABMil5cqPiD9/P5v/vacVCZVH9gtRGbdP4ovUs1iRe
 1qUOAdrn69JgQw1jilbg5rcQj6h5KMKZUh/9cnVHEW5lF9fEt7Wlqh/i9ZYh1byaIhlU
 +Xa2LTlmES5LINyev7jHPhnDt8MtMYVEl8gBZ38WWPqaHmgzhazv6+sF/sqhsgQXL6Ta
 PDMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MMT53wxq4oIiiy7G6zYkmt/ksi5ImRHCTM0009pNDiY=;
 b=rO6h4M8uiE91O7NMhCyZN+mH5wLeV5QYSSpJroUKtuRH0ZUDF4O1YVJltyl5uaSh96
 Gfpu0Xw0h702vf90fzAj8YsSKiKwd9SPsUNTas34UlHFFAoi8tTLbd0+8mYbZkk/C4zQ
 muQT81zhWwodpsTdBF+rJEXIkIqtMBzt9fqYtfsI1gDgWX8FCwZbR25XacB5c6XtElpd
 Hnwd4te8POJf1P+Mw/M6wLwFrljNBuoVAVUv4TE1JhuTt2Sgv7O4zif9gCA4h+haOxmJ
 r8gF+k9+uKYO4gvDnCyuy/xObPv2gDy+jAnqPUBpXPI39oSvfKrh5NeGOY82r4CDYuW8
 Mv4g==
X-Gm-Message-State: APjAAAXui899iLl+mL0ftEQzT8fsW2jn0WaM6JFgxTdEnNsSCYjrycV9
 TY7h2iXe/rgr6isrDqiozGCVFjO47VmBwhaWKJDxv3Hu
X-Google-Smtp-Source: APXvYqxkU/NEnbi/k59TcsiUlmHlZ4bNtL1B1Gr8F5vOnyB+YO3th6nIV+r1gBHf5QkHaBBS0MLo7+QTkIic+yFKPXY=
X-Received: by 2002:a67:15c7:: with SMTP id 190mr12136192vsv.178.1582058347769; 
 Tue, 18 Feb 2020 12:39:07 -0800 (PST)
MIME-Version: 1.0
References: <20200218162150.1300405-1-chris@chris-wilson.co.uk>
 <20200218162150.1300405-6-chris@chris-wilson.co.uk>
In-Reply-To: <20200218162150.1300405-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Feb 2020 20:38:41 +0000
Message-ID: <CAM0jSHO4Yn_gKYiBa0Vz6tVJ6MJ+yxMQVdhYwUzMJoiLCLOZLw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915/gem: Check that the context
 wasn't closed during setup
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

On Tue, 18 Feb 2020 at 16:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> As setup takes a long time, the user may close the context during the
> construction of the execbuf. In order to make sure we correctly track
> all outstanding work with non-persistent contexts, we need to serialise
> the submission with the context closure and mop up any leaks.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
