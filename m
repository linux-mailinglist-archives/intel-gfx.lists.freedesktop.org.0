Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E00D305FF9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:45:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87FE16E84D;
	Wed, 27 Jan 2021 15:45:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE4096E84D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:45:11 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id l27so2086544qki.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 07:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=18IWfhNYSpJQldiTTRAj6NitptO9QZpB58pP2A4MhQ4=;
 b=EEvO9x5Hg47syrhfJmNWBdBhF/Iw6JPxiSftPVvLnB/3L31b74zEVDrCJ6F6sJq6mw
 QMJ8ABgrLO802ivsjU/FUwdU1VmSXXrp8ZiBihdqqs/PBhvD0BoPQGKY2KMtCqt34kEa
 BLJURMKk/T/Loc56PLqtU6w/lT2BKvejhHgte7jm+2ASlvYBVwwXKox03bZsnOHgE6jO
 WiVz003JWNE5eUXAe5/6YjlJFQSe5xHzIPGsPgSI9fiRs1RI+LAN5y/Nf/5xtgA3mW/e
 DMnP9PLrkYvBbXUHb5zCVJzXAGsyQCuUghlWn9ZusXxRzg5xu3r3dbek3hlT8jXCs93T
 PDvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=18IWfhNYSpJQldiTTRAj6NitptO9QZpB58pP2A4MhQ4=;
 b=Yd2ihluGtjn0H3O6L4IA2+6KjptyPuup6NrtcSkdRDKdGEQfHnawXBsbgFXHyyE4nI
 dxw+jlzX9mI3HFpOCdXvG8UHzkd5wezWiGUkL7w393qlWZ6+kxtLg/iaJYGx6+Oi5PAd
 e7brYQTbU5UuCQuAIIG7uYYqJbz+oCgzzTFqwfNM6ZfaRVNJBE0ymaSg1cslB9mE4ogu
 u7xAleclABnwLEguvlwF0g3UV8mAA2QW11T277FntPA606FQx6fGe6n0zXT4g+UlNUEv
 AUG4ltQZrzdZL2flUqsCpVaAFMHwU1TOmh3L4Xh1oXPP0j38Dh7mKvnjzpzYA+YHr7Jf
 gehw==
X-Gm-Message-State: AOAM532TyPX242oViRNyV55Egtqz+ETLGzudqFMVfoJbvYkaVW/UTFv1
 ZntrCi3LD7jDG78ARPr1sNYqLx3QFZ+jQKvGuCJyc8l7lIw=
X-Google-Smtp-Source: ABdhPJyZiWKPx1d10WA5i1eJCOFYc9trmhi0mVIKRAyWeTGi1FZXlZIXT/dFEZeaL9AD7je2hGmuHJCZ9AlgO5IfZPw=
X-Received: by 2002:a37:418d:: with SMTP id
 o135mr11127257qka.426.1611762310919; 
 Wed, 27 Jan 2021 07:45:10 -0800 (PST)
MIME-Version: 1.0
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210125141803.14378-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 27 Jan 2021 15:44:44 +0000
Message-ID: <CAM0jSHO0_sVc2s9mVqZ7zHynXGa_wbSe0qaKptY+ghqB0biHdg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/selftests: Set cache status
 for huge_gem_object
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

On Mon, 25 Jan 2021 at 14:18, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Set the cache coherency and status using the set-coherency helper.
> Otherwise, we forget to mark the new pages as cache dirty.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
