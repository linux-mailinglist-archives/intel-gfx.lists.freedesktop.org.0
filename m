Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7739F306087
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 17:06:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3106E853;
	Wed, 27 Jan 2021 16:06:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C486E853
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 16:06:31 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id a1so1255758qvd.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 08:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sy9iNyq9GX0O4k8dVWots1iFvUQuV3o1bKb8wETV1uI=;
 b=vJmKvS8nxLIERxP5G7gFqKFRZlVTLQ1qKV5b75H3Py5Dr2gplUNJP1Cjlk/iZvrh7W
 X8bZHk8j6LyxUhNoBv3JiVjhW1zA+ND/oti6SyZHKw0kOP/E4//gkWm7Vc6yKvhJKeI9
 llkdiyz4vudSBDVW1Hztb0prUS2RtIdVVa7gbDHbnuObvhbld4VNLUO8sPnV0akTFfd7
 XW7/O9Nk8uQgsrocHDDOOzNkyWmFnVA7LV9vLMCo0i1/VY9xRCM5Tl8VCtTV+b7PWEFc
 D6azbYjRjdeA6pJbaAAZRAhhinWivzx9d5lw5ba0rzYD9d0DsBlmTc56EjkGXSHj7EGv
 gd6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sy9iNyq9GX0O4k8dVWots1iFvUQuV3o1bKb8wETV1uI=;
 b=DrN5A+3WWgF2cUo0UfG7Qgmv76jHxjQnvLyKRs6ik/oI5ufRH2cpwZq9XJr/rRLkXZ
 EDM8ywtsw17Q2FUD+RYbXdqU3hFMcCeNPpMsw1PLv3K7swYs3BpNKdx3yoxIR/ggndy+
 g9JgqdvgM30DMU+zUyDP1LUJ7rwkRsaa355uPB3nsP1e3O+uzPK1GahijL7mlXXwEzpe
 Q8mUW4qjT5IQjVmARdTkfut+CWYPS3b1/Kc7FrMWuHnn7sSt69MPd//l5ffuYVvS5KUh
 kj9g9+6ZCACdmDPbV6sT7JS6uY3zXb01xVLfSpc/OfjA98L2XWCkJsjwSewPvU0EQihM
 p5qw==
X-Gm-Message-State: AOAM532Y18I65gAu1HiViGWXyMYeTzJfDzw3jKs4Y1lYVH9UVz1LhhRt
 nSnfTExa2HQbsSbMeowBcrJBlkoogoaeaIEP3ig=
X-Google-Smtp-Source: ABdhPJyDFO/R2G1m8dQTASTXbH47skUkajRk4e+EjclJ2QaPoX4IYMIvgJEha1Nn/joJ6mmpSDY8lrENplFNsV9IBvQ=
X-Received: by 2002:a05:6214:20a1:: with SMTP id 1mr569628qvd.30.1611763590948; 
 Wed, 27 Jan 2021 08:06:30 -0800 (PST)
MIME-Version: 1.0
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
 <20210125141803.14378-6-chris@chris-wilson.co.uk>
In-Reply-To: <20210125141803.14378-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 27 Jan 2021 16:06:04 +0000
Message-ID: <CAM0jSHNpaKic8QRifSyt6DEQL06FRWv-ha=0QY+aaCS=OjpOBw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/selftests: Replace an
 unbounded set-domain wait with a timeout
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
> After the memory-region test completes, it flushes the test by calling
> set-to-cpu-domain. Use the igt_flush_test as it includes a timeout,
> recovery and reports and error for miscreant tests.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
