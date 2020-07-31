Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C37852343BC
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 11:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B53D6EA50;
	Fri, 31 Jul 2020 09:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CCA6EA52;
 Fri, 31 Jul 2020 09:54:19 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id p25so15444035vsg.4;
 Fri, 31 Jul 2020 02:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fIgx6a0nEk2Dykey8Qk47khszuzKHoTSyZMoHdp9N5E=;
 b=BnT56yFW7eNoVzCjIFPkkoW2s8YcuKJFT3U7tQutkYZwS+/Zto7OVpfpe00bbn1k/U
 T3jqQV0TZJg7pAbLPVemRzWfCz5sLfDNvIXwiDa2LFnDF5BnMqaJAZn6ynKVmmWZshKD
 E2chS8ivtZZ5J7vXK2iov9Ch/BTML6xD8/07B23PN3RS016C8qlFRw2/xxvdATC9AYHG
 feqMVZuen6GlWyPHPW2h99/5/oBVf15uYOw+V9YwyRREEzAGMYGGlHVeFOPx1bEoZhl7
 9MJXm0KXhhWuIPFn19NPqDj8Gm0wPRkXH5tEMpgUCEfIm3oYxU1KsNiGVQdD8CbsKe3d
 lL8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fIgx6a0nEk2Dykey8Qk47khszuzKHoTSyZMoHdp9N5E=;
 b=EG7SicwXCoo/VWwcooD9n8Be8/J1914NT46CYdkVOO3OpvddqG2+WI3rLL3cBsGe1o
 VmJnMlyT5V1Bjhhk9pDm/wKsGe5fJLf2HK5piemhEggdyAw1eVUtyMQ3KzX7EuYzMfQu
 a6K0zktPuZ3mNb+bKQ24Ou1jnuM0HunmD25xMzxqbnaC+BYRy033AI4k6Vh71FBAC9aR
 XW6tEzR+mvj2vcoZU4U78aNIgh1HPZ4EiqmOAd9Mp1nuMsk7mrpe7fancnQPyXPR65IU
 q2Fe+oODgbaYsHMh/kOfpS/kmvmbCRcYEDmUgNqu4zjhua/9pQEjvF+H10lNPogeyOnN
 LKCg==
X-Gm-Message-State: AOAM531E/1m2ZwjZ0S0LRhAhBlH6TWkdkUGByft2lPG+pyqf3VLjZYme
 ztRQEGIei38B9sfWiEzfRa/pTV2T7e0jZ+wbcKaUiBax
X-Google-Smtp-Source: ABdhPJz/9CnZB1G+QeRMWkjzA/25jwCPp2xQIGfDAFyqST8TAt+19SBEi0yx9OJuhcoAKtCMNT01x/9yCp+iVagtX7k=
X-Received: by 2002:a67:d714:: with SMTP id p20mr979321vsj.119.1596189259165; 
 Fri, 31 Jul 2020 02:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200731091548.815898-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200731091548.815898-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 31 Jul 2020 10:53:52 +0100
Message-ID: <CAM0jSHOOK695iA8CpqTOnO7qPuKs5h9mBZ+zNbYC+Ai62aOseA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_ringsize:
 Manually control timeout
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 31 Jul 2020 at 10:15, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Manually setup the signal handler for SIGARLM so that we can dump some
> debug information for test failures.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
