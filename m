Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE87140A91
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 14:19:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5F76E514;
	Fri, 17 Jan 2020 13:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F056E514
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 13:18:59 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id s16so14773426vsc.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 05:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4mrP/nYvCX4ky0EKe8wOGuQDArv1P4RwF3FomgvaFE8=;
 b=ggQfXprwiyIi6I+lH0rQIpsPnguF46EmG0IdNXvqXzmGBcZTdI9pKrlX8/rLwkKA9g
 E5Zu7dW2s4YPqDQK+air95uG7Yhmh7ahtZe3L8kauXgCkUzGYYCk6jgwv9uUVMb/lzeC
 GwFq/T812rv1ZAa8ZCCEDFteWRHk203gRiGCnfpXgFQWtE8p5gmE9wlROxn/kl9khhfX
 aRvgSrR5Gp7teNPCl9k3Pd9M/r2IUGckYGTXkLrXjLHeXUzVSBdvKVmZyhsqETF7R5hu
 7a/aPyYVZWhqECzOIg3HEW/BL0OI3VZTlO3c+0olASZhY9nCaSN/0nVO4+jrWU73vJ03
 VNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4mrP/nYvCX4ky0EKe8wOGuQDArv1P4RwF3FomgvaFE8=;
 b=jHv7aKxlkTGkylnxyX0IUb6wr6DUKccgalDpvXa/Lx12soC8teP641SCrmf4R787J/
 +UNL+a/wIihO9mgNj7x5L9MPv1PlRCSk1tvKVru7Fyly9YgMluGrU55dmDn0csY0FCq9
 hcxy2FJ0cNSg2ZHtLsstlecfYe/4EI7t6/tXPDADSdm5wan5GcshckFNvVBQYpuz46eG
 fElMnxs1ofeW70ZhxKXAai3J6XQXUjCmnDDQcgxXByUlLjz8beEIrcjI5oQ+qLUQsp8o
 5O5C7X0e8FQ1wlV3e+KZTATAXkHoNbWbPeO0YEQerz+7udIXnzilUE1sKmwSLXAR4nSq
 DQQA==
X-Gm-Message-State: APjAAAXzgYwlRk3tAFwWukLM0upu+F2WY0BQf/baHSjVw4Kz2ea5TlXD
 4OoOwMeHaJ7Lgxr+ArQ7kTlJ7yTPDsLuWf0TE8Uc2w==
X-Google-Smtp-Source: APXvYqwWHZbbeCdrX9OgGK5bVSd2jKCc/rmt2kuiFjUHwwXfGf3bjdFi/G8v2/EaD9HVIEHNseRZRWQn5aeGTP2iWe4=
X-Received: by 2002:a67:c90d:: with SMTP id w13mr4699957vsk.164.1579267138718; 
 Fri, 17 Jan 2020 05:18:58 -0800 (PST)
MIME-Version: 1.0
References: <20200117101639.2908469-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117101639.2908469-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 17 Jan 2020 13:18:33 +0000
Message-ID: <CAM0jSHM+SBtSSYZ59O2sM=ZKiJUenjz367C2Xx7j7jAkkqJV=Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix typo in kerneldoc function
 name
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

On Fri, 17 Jan 2020 at 10:16, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> A forgetful copy'n'paste left the name of the old function intact, and
> did not introduce the new function 'i915_request_is_ready'
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
