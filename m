Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7523714DE2E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 16:48:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD6CA6F9E6;
	Thu, 30 Jan 2020 15:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B29B6F9E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 15:48:36 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id u17so1316323uap.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 07:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wZYrR2FJyBc0hoTANVaghH/qY0odWmPik1ZHjFqBeNo=;
 b=WWWu/bhKbJrTDSOULR4Fx7rFXduvUvPwAO5w3vM1gfOZB2PAgy5HGYEU2m2R20TBcN
 wgqREW9QRLFdJzDm9GHdI1otp3O3k5yLOJ2QpU9YwocztuSmXnA4V7C1CCKc2VpBWx5o
 DPihOYLhPW2Jz79SP+7Tu5GKK+WCaFkpsvn6xVi5dzIZYgw3/p2v2/mz8EnQdhdNJsb4
 jVxMlY4XxKme3HfdRVMX7QwiV/nD/+GlnHTPcrPanlitnCvjyU0NcuJztN0YFefFEEYX
 5oCiY7DoRozyzIaG3Z06ZszszldG5Mh36kaKwlPkPAkxC8qUv+o+ahFsn7VJjmD8IajB
 ghYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZYrR2FJyBc0hoTANVaghH/qY0odWmPik1ZHjFqBeNo=;
 b=inysAlk5SVaxWBsM8LMAzm7Uaz7yaC95wsOhoya9gpMMjCbeHMSstd87lkDAEENOgB
 rluCMBO1z7D8smNJMH3KuaU2P80Q89oFP7y+W0ohamy2h+y/OLfctfIuV0zjPPFEKaN1
 xiWsvd5VwaFeYs0guqJmT5qhuONOG+/uVv9q/PMx9Q0b4GUNExKyX7wq89SMZh9X69F1
 6qSgnYmj9wWFrVWoyaue7I+JQg1PG4G0WNrsIT8hn2Axf/bUoCFD/LpHZ3ZAYb71TmOG
 ypnvp1JfHgwxVj0IomrltGODPRIrc6h5djkjh1mrWdxxjpxyrMrZHY+ukHfdB26+PL00
 OT+g==
X-Gm-Message-State: APjAAAXm+4kEPsViNWeJAEcC/UrXV1V/c1bUT0alUgTRCJrq+WofErUa
 HW/XhL8EO+/NVgEiv1Qd+QUngpl9JSr8wc+Vknw=
X-Google-Smtp-Source: APXvYqzXQ1vTb3dlQ15LuAHFWvYX8aV270SODtgKdvvB+5F9vqEjNkcH0RjIPbP4hbeb5/vRkJNR8JG6VwcpZBAPFC0=
X-Received: by 2002:ab0:2881:: with SMTP id s1mr2815013uap.95.1580399315438;
 Thu, 30 Jan 2020 07:48:35 -0800 (PST)
MIME-Version: 1.0
References: <20200130143931.1906301-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130143931.1906301-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 30 Jan 2020 15:48:08 +0000
Message-ID: <CAM0jSHOhWgqmCNO37frd703Bp7CddpOUVxaNx-NtqSvsiKyWrA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Tighten checks and acquiring
 the mmap object
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

On Thu, 30 Jan 2020 at 14:40, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Make sure we hold the rcu lock as we acquire the rcu protected reference
> of the object when looking it up from the associated mmap vma.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1083
> Fixes: cc662126b413 ("drm/i915: Introduce DRM_I915_GEM_MMAP_OFFSET")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
