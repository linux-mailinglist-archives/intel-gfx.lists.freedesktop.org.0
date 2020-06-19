Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1CE201B9F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 21:50:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43D76E97A;
	Fri, 19 Jun 2020 19:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B0D6E97A
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 19:50:05 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id v25so3584886uau.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 12:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZFYUMHWUizwVIvwn062cNJkAKYIl3dpYBWqbYddbq5k=;
 b=Hx/JeXmvD3OyWLOSU/Y5rof7a/y0ba8DhGe+xsdI8EDkLHcb3y6W4bNYhAMRXv8zBP
 /7XhYffjbwTAHI6B6ytPb0H2A3/N47EwR0q8XvQgRYlrD6rvmw9FqvkCChUzXX74iAAI
 hLyd6EfWBZzaRv+onYA7kzlkFr6pwDLoPbUVk0Ke9skyCpbDAylngYXnKvc6TIVqh5Q5
 DM5iGYAju9WZcGjTtwSi2E+xJfsgn3N9yoAzjlgM7rh9Fc8JGvfGy8Wp4Jy5t7s+RonX
 H47XO+JuFgGX3leZasPzPsGQVNMZegd8c8ILTldmy6SPOoqqutllEUUG5Nuis/4dSOJc
 jmfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZFYUMHWUizwVIvwn062cNJkAKYIl3dpYBWqbYddbq5k=;
 b=PSohilZ8YF5uSaZ78MaUTXgld1/IqG0PuWPbE5srr2Y1Me8ZpO3QCztYZ6ofWaf2z3
 Q6cSoyrobaWM/04oe6jwQkLsBKfFgDI1tz5bnkx6zR3IeiDzZDcH4mPN9lyJ/+sRxhhQ
 NpzgkR78zGrqJdHO4wBpyB37rcuKThi5YEZtN1t9TErpv5JRRWsql0hLrpLCK2DuXiwm
 RHXwHqBOIo1q1m+CGItAbJmsd0aEGJmTL0WfDUaM20SKV/YduV+pZBiF7KTQmVj2td2L
 8ERdzp82Ns1zrUZrEAc58HK7fsmCrz6AOwY0U8it9F66gb2nB70gPsdfADubKhREVJRO
 AryQ==
X-Gm-Message-State: AOAM533D9yrwcu/cDBxxiQi8CHnUcNLbJebyij7MeVRSNKu4IgmupX2k
 8rJCaVlnq4T8P1RHG903/R+3N5JnWQYpFcG0uqB1hsbR
X-Google-Smtp-Source: ABdhPJx7y2+AShL6uqYt4pMIqqo2T9fbZ2wxtZd5ER3fdYylXHA6rRXFezA4pXvHWsiuKPyuJ++vJwBeoI+vmWIMzUo=
X-Received: by 2002:a9f:3791:: with SMTP id q17mr4151938uaq.95.1592596204345; 
 Fri, 19 Jun 2020 12:50:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200619191053.9654-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200619191053.9654-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 19 Jun 2020 20:49:37 +0100
Message-ID: <CAM0jSHOWs56vFOFojEJLQbTBA3ohzToy-h3FiduimK4LuSDU2Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Show the culmative runtime as
 part of the engine info
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

On Fri, 19 Jun 2020 at 20:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since we always enable the busy-stats, the culmulative runtime should be
> accurate, and might be useful for diagnosing issues with the engine.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
