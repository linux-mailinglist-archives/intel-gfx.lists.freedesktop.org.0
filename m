Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F56B3060DE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 17:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A1326E855;
	Wed, 27 Jan 2021 16:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 593326E855
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 16:19:38 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id u16so1295312qvo.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 08:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wu6lGcCFtNdXIdxA5a0pH0IjTBNSAZIxSyIAUtzKdwI=;
 b=ozt0UOlGL1mlPK0lOQkjr2Kc+zV8IWfZHhQS+8B9zKr1ErhWDn/9KrOIqRmgdQ4Am1
 GVpHcZuuvsHxhFg4gJhN/z7sIeYhzXPe1Z7ig5mU/X18a38oWHIHZ14XgWCV19Bkvtvf
 9MM4dkNBqF0ehWqmIQleJXPha7iL5rkD4SiBy/Lu0N1pz15uCXAa0g9mq3WVp4hCijRb
 fQPCDmSecZ13z+a+/jOYXIiREWy7pFryPXplb/RrwDfP38G8KxKbAWfXNRyIlMkQN4j1
 sXMjXQ6knIuZRQjW8sKsaXRAZmjW/Q+9xkA1ek3zE2YuE85sL9JmT8kHrixt6y9F8EbR
 F3ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wu6lGcCFtNdXIdxA5a0pH0IjTBNSAZIxSyIAUtzKdwI=;
 b=A6+9zeNOitkKZSGIs4DnBbNyYS8cLyQ+6Jciyta6u6d0JZSxftIa2ZujKi3CMs8eWz
 ZMmEYUlXdctvCikIssqWVQLVC0642l1kzlzGD4IEP0VkN51pU6UVuldou/52IyhrNomX
 Gq71hJJ4eNqR8DaoFdei4cptQX4DLdqml4d6I/E1tnWk6Qj76tWS+gkz3zihWZSdWVb1
 ZvYo2YRiN0OTJ1HLcxQviunhGuPDoX7RHaSF5gMBejlJftjbfuHeuuETmgoYlxNHI10y
 iabYTNT/JSPeTSRiNu8zwujIM2D2MmSEcCoYWZH3eTAZpAIGPHN/aK/trEKHD7VxBmec
 tj8w==
X-Gm-Message-State: AOAM533621O/pU6RbFIaJmoxo7DLB7pEGvRg3gdzKkFxAJ1go7J/qAYd
 ZXo2rgFYHng2XY9vy31EwVP6/CVUeppJ/06fxU9d+v6AYc4=
X-Google-Smtp-Source: ABdhPJz/z0DGsHL284xfXv/nekcBCwqoUdUPvv430NRiXSiocdGUiLj8ZH/T+wzju6Ia5KoUSZxtAWRg9KRWhY8lwmk=
X-Received: by 2002:a0c:c30e:: with SMTP id f14mr11063234qvi.48.1611764377643; 
 Wed, 27 Jan 2021 08:19:37 -0800 (PST)
MIME-Version: 1.0
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
 <20210125141803.14378-5-chris@chris-wilson.co.uk>
In-Reply-To: <20210125141803.14378-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 27 Jan 2021 16:19:11 +0000
Message-ID: <CAM0jSHM9ODuBLhgzjKHysg7be7Ribexzk=_CsqGEvjg3w-P8EA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/selftests: Replace unbound
 set-domain waits with explicit timeouts
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
> Let's prefer to use explicit request tracking and bounded timeouts in
> our selftests.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
