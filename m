Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1400F1509F6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 16:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C676E3C1;
	Mon,  3 Feb 2020 15:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07AE6E3C1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 15:41:33 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id b69so3961057vke.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Feb 2020 07:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Cb6N1DIh++z2qqzQK8ehodVNdPT6+ZSMyWd28gmuZk=;
 b=hK7xEMFStBwghj8mLxttzKlmr1xRJmFgkF3bkHX4ZC6kQT4DbWiosaFGFUyI0NBR8U
 +wR0P8OUiv4cRDSmzRHKJVlXjruyqevZwa6sidagciTCf48f3wiNPIlsOsKqyOAzOpNz
 sh82dTOqCGbJagnePCnvNUWNl7pIbQXmIeVRZLwOhj2lrlBvLF4tf7VzDvmWLpUNHEae
 ldnZVg/SlncN8ZCKRL74QDbotvmuHkY+4PsgJBys/4yYAHUtKKkpR3Yw+9wvxB/ga33s
 FTMiVa18DbBukDn4PVKh6spTwg7F5hn9FmS43Cw6kxIV0f4RLK+pQSYRt0OrnxzYr8kS
 BbGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Cb6N1DIh++z2qqzQK8ehodVNdPT6+ZSMyWd28gmuZk=;
 b=R/Hq3zxsEch8d8WAlPGxbpWqoKZwNn5KAFEF8x8o/R4vhbVQA69Oc7d80PTiR0OCmr
 ehIQoF+wUGIyghcLAh0x5sNAIzfmL94kjhFtUfMlQ5r4RUw1vBSsAdMgybYdoJc195gs
 PeImk0XJWBRuuXhms0AQfNCpXPqGXD29BAPAoSjL1QzIp5BTqNtfREDnaLyzXWmu4Lpl
 5Nu65o04S0js23M5Mromdy4j+uC/Ty8DCtrdZIoZUQP81KkNt6L8S/p5kKgjWc2uSvgI
 YPOlnuvWC4wErEFt7pYbflhr7UK3VjAjqgLQZ4edL3EaMfhgoVUfYr9k/OeNg9jIKDom
 rvhg==
X-Gm-Message-State: APjAAAVENLEKqZ7FUCB5sbCyAYkAx8q+k+qkclCpIxghUV6nEaP2tTvK
 qZsWomSAqyELB7KNaRsjmpzBvJMZXt5Uth8mPtt4YA==
X-Google-Smtp-Source: APXvYqxOR9IKzjW84bsdXri4k+pYja2b6ErvASWFv0pVn621pcdNerVFuhVipUkOzJ5ckxqMUsdrssFcnfd9YCKnzUk=
X-Received: by 2002:a1f:604e:: with SMTP id u75mr8735194vkb.78.1580744493034; 
 Mon, 03 Feb 2020 07:41:33 -0800 (PST)
MIME-Version: 1.0
References: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
 <20200131104548.2451485-6-chris@chris-wilson.co.uk>
In-Reply-To: <20200131104548.2451485-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 3 Feb 2020 15:41:06 +0000
Message-ID: <CAM0jSHNC+6rfw+7xv0yG0gq-cNjN5ZLwycb01Ow0ZF9CEPc-kw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915/gt: Pull sseu context
 updates under gt
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

On Fri, 31 Jan 2020 at 10:46, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Lift the routines to emit a request to update the SSEU on the
> intel_context out of i915_gem_context.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
