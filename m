Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D497C34ECBE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 17:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12AB16E92E;
	Tue, 30 Mar 2021 15:40:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com
 [IPv6:2607:f8b0:4864:20::72f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6666C6E92E;
 Tue, 30 Mar 2021 15:40:32 +0000 (UTC)
Received: by mail-qk1-x72f.google.com with SMTP id y18so16229845qky.11;
 Tue, 30 Mar 2021 08:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NhG83lxST+6vzOnd6KbewBGt427NzWEwUCSZRNeVIbo=;
 b=KTVN2M9F0dnXkzObPfG5f/JOrUAfYlysbSDemxpI5WvWUNCuvi9cOBj0Nwm9D2/OHa
 0qr4uyneEpTLWVaqh9b8uJuPa2/06ep+IESPimvGTJIexfb0mKSrTAElq1AMD1bfUH3t
 IZDH6sSp515ypYk4kjjYR4uqjMtOtvlXIpU+BQpDlGLmznryWFyfRtL2EqxjVeR0n/Vr
 tlknVhkKUBLbO+sJ85wq+oDlhK5VLNJH9m7/1I2fnADKX6nEKNNOIEg++PfRQZbGe48+
 JISRlRwVlbrRSfJgLP9FXINmyADsthIu/0iJwwjTqNTf5uvOT3yK4TSSUR3sTQIjXWDb
 2gsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NhG83lxST+6vzOnd6KbewBGt427NzWEwUCSZRNeVIbo=;
 b=fARrTTUgcUbedMVCfSgw5BULBFQdQD7xXLHfTaF8CsbmucQMpZ9mECm/PfwcwGxr0o
 dSTa+WXpGgEzSH15UravkANQzzmhdvsv0uL/bN8rNCq8mjC6/tPerKAP2dVmhfRyZrXk
 KrZch2kxCWnkUL/A06Q80dwYmx+3qxieeo8eqcwDRyx7Ya8UU64rtrKa5OIpZr/hkKpM
 io5TJOSpB6nqxx07564MxmBKyrprcPPr/gqHtuM6fWMRd7L/1SDBS4f7fjbWfKA69f2u
 4jZ/x4eod41M/x8MJ6LX0pZwVRoTaZ82hNtVBIMReUcMY6Io/a5ZZ1teveQrRlzXnkK4
 768Q==
X-Gm-Message-State: AOAM530wiPDyEdU/xMBJ/7t7a80sWT8k7kgpo2M/GCJQlEZqsbQ6xnJN
 dfT8heQWmkxdCNzpMUQbwkl5q7NCm898hqDPJC8=
X-Google-Smtp-Source: ABdhPJymFdQRmTiNz1BTZCXG9pyIW9qsNsNDVvwzEzRqgASIVF5/OYbyVGJWHdjn+uJ3PbMl9cAJKgh8EbWRspsmEw8=
X-Received: by 2002:a37:a0d1:: with SMTP id
 j200mr31105262qke.426.1617118830533; 
 Tue, 30 Mar 2021 08:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210318162400.2065097-1-tvrtko.ursulin@linux.intel.com>
 <20210318162400.2065097-4-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210318162400.2065097-4-tvrtko.ursulin@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 30 Mar 2021 16:40:04 +0100
Message-ID: <CAM0jSHMw1UfU4RghdeWW16fXzbVu40QkAMip+RXMkQ-C9hXXxw@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/3]
 tests/i915/gem_watchdog: Exercise long rendering chains
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
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 18 Mar 2021 at 16:24, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Test to demonstrate a problem with the proposed default fence expiry
> semantics where long rendering chain get silently broken.
>
> If we had fence error propagation (no clear agreement whether to do it or
> not) maybe userspace would see if, assuming fence status is looked at, but
> overall potential rendering corruption is the story in any case.
>
> Note that this is not a single long batch but just a long queue of work
> which. Could be viewed as heavy system load as well (like virtualisation
> or other types of resource sharing).
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
