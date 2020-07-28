Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC7523114B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 20:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B726E225;
	Tue, 28 Jul 2020 18:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE326E225
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 18:09:02 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id w22so6114310vsi.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 11:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UlAqnJDu8QlBzQA9UJI8pg/meooLkpX75b3ti+y2Wjk=;
 b=odD2waQeo1ANhmCVE++WNYQDCXrJg1FWwu017ri789eDQ8cU+MEHR6mtmJFgcewe/6
 G4qU2sfutWEQ9FxwgYS34i7n4c4PlpcEAEA6FlJHk5wwr5fGJPUT8d1Vav0jTzAMKEc3
 f8gOjZDMyTuItemkaYZKFvfEIS0+E5vaaHyqiPsesJ7Fw134pdMA6O7UdFzu66FX1iXq
 iGuaAS/iV5SmWj1OfxA5wdlCO5yCGyLXzZIzuS+SkFDJ7oQG4ZJy6GcGCGI3EqNHj/I1
 AetdKFkSw/O++MmPgEU4Y3uubbaJi7E8RcO2MVccE345BZDJkqJ06P8HWJ5Pgdkm041l
 dcTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UlAqnJDu8QlBzQA9UJI8pg/meooLkpX75b3ti+y2Wjk=;
 b=GzxBzrccFpNH2qkU+yyAN3o/h/HGFG6wQykDXyqcbGAZFeQZd3Mv+e9/vBJRQJmGbQ
 HGm+ng3cVVnssRSjT5Og4zd6dCZMRZT8FUluapzozTxYRFDFsD1Zp1d2cqveLq/PSmkS
 Bd8JU3GtSEfzHrEIcfeIyMf7JYZdnmi1DuB9holblY2Ndv6SniJNNRVglv0yzl8FK2wg
 rb8OQyL7hzeXPW72jdWye4SGZmzlDMRfpmbOcvAYP0klZfLhuVFu0tQ8KuwKcJ1Tg6rf
 R2slXbluJ2pB72+OcLTa0LmgFmftqxejZPRUxjM6UVsTqVrZxXrzZjpobyrccKb1gMSg
 7h6w==
X-Gm-Message-State: AOAM533bvvRpTLaLVoaeT+SdlhpLsIBl3glK5EK+urTCVrZWo2XY7b2K
 S0d5b5bKEv+MSqN5j10y29EfMETXDB1GHwHS5c7BbzX+
X-Google-Smtp-Source: ABdhPJxXXhCfsyWtsd3LCoIPQgOnxjed1Ru4uNceGEn5pNW978u9HJupVyLET4xF1YNOzLQ4l27kxoFYrArDouJEfss=
X-Received: by 2002:a67:7d81:: with SMTP id
 y123mr11790663vsc.178.1595959742016; 
 Tue, 28 Jul 2020 11:09:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200728155935.17708-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200728155935.17708-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 28 Jul 2020 19:08:35 +0100
Message-ID: <CAM0jSHM3Ncf31NSwQkXBNXu-C_Jb9fZ7_tz-pQVEYbdnWoyO2A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Delay taking the spinlock for
 grabbing from the buffer pool
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

On Tue, 28 Jul 2020 at 16:59, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Some very low hanging fruit, but contention on the pool->lock is
> noticeable between intel_gt_get_buffer_pool() and pool_retire(), with
> the majority of the hold time due to the locked list iteration. If we
> make the node itself RCU protected, we can perform the search for an
> suitable node just under RCU, reserving taking the lock itself for
> claiming the node and manipulating the list.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
