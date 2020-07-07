Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A694216927
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 11:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA3E89B29;
	Tue,  7 Jul 2020 09:35:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60FCB89CDE
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 09:35:37 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id m25so22117664vsp.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 02:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PbbA9beaLiSF4O3UrzLrvqCnm4COG/0M5t0WZEIdpEw=;
 b=er0HyREMkupG/3EJW0otUUNH+mYwIa48wMQbDFQyhoqit9SfsQstmJzLJP9gV66UMU
 PXyILl3zeyd/T4fr+taPHEZCIcaE/8NJ0bESFC4/c88te3TTwLJ2IFbiSWjNee6/P0xZ
 GwvSRWPrPiKaHGZya4ngA2IoCCFPRj1ryTcrejdpP4Ii0EqmVNgEdKVX6NLJR/cD4YB5
 PtDbGSWPs7dQOo2j+uFj3xokJVtUFwH271F6TUtT88yogG/gI07n5pDMFk9FnGjwHR9s
 32DadFAalVdCcrKgCsttAWMMXDlUO8DH6SDzMr2s/HliCth23TrRFiiB36lbx27OYqWb
 jUiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PbbA9beaLiSF4O3UrzLrvqCnm4COG/0M5t0WZEIdpEw=;
 b=oRwsee4Y53aAkMWjfmY3E2Mf1m/4cSFCd0T25KshJ7AuFLABwjWOQB0uNxBeEcJvTv
 NyGdYSGPpCPAIjm3tiOtsEYVEroAh6tL+6b4PM0jqD6pxioUZi+MgTbyu4WMi7HW35HC
 VZUTc7g9wAwSDtqMiLQfGAIkjSdHCNquxFFhybuU53l6MmBo8Ifjr5Gf7wmRHARkYbS6
 Ul5xA3NJBQIuHUZPp0USKFZ55EKYWw2y4fhXeYO7SFEU0bYe4DcMOdit9Hxjm21CNVJX
 y5HvFzjUjvA70ZIsZF8pPx7e+XybUbrsqi6Jpl5J/uUCI8J4cOdpPOmSj5k57SSCVNzK
 0OQA==
X-Gm-Message-State: AOAM5307nx0i5XZf49iUUYk4mHxyV+kektf6ephXHyLNdoU6lgr0e0oA
 Ko3sGA/TfcSHVfRO2EIdQlW8FGfi4NYl/zTxfFC6e5/9
X-Google-Smtp-Source: ABdhPJwZOetY8BVjMzl+jBcJlK6Ym1lxGnf0Se8pyTHxI7NalaPDsFjMC0/0wKB8qMeicT22YJk7o6CcNCR3EXAScrI=
X-Received: by 2002:a67:ca03:: with SMTP id z3mr31895947vsk.34.1594114536435; 
 Tue, 07 Jul 2020 02:35:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200706170021.8832-1-chris@chris-wilson.co.uk>
 <20200706170138.8993-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200706170138.8993-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 7 Jul 2020 10:35:10 +0100
Message-ID: <CAM0jSHM6m4k1rk2Y7Q5S4e2x-K88xZK6ZP9hHTprWp=KGa0yJg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Pin the rings before marking
 active
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
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 6 Jul 2020 at 18:01, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> On eviction, we acquire the vm->mutex and then wait on the vma->active.
> Thereore when binding and pinning the vma, we must follow the same
> sequence, lock/pin the vma then mark it active. Otherwise, we mark the
> vma as active, then wait for the vm->mutex, and meanwhile the evictor
> holding the mutex waits upon us to complete our activity.
>
> Fixes: 8ccfc20a7d56 ("drm/i915/gt: Mark ring->vma as active while pinned")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.6+
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
