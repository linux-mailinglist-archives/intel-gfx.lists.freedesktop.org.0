Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 046741E3DC8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 11:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D806E027;
	Wed, 27 May 2020 09:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC54B6E027
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 09:43:38 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id b28so11387892vsa.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 02:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i6Ssa/L/JIU86vB8L0eO6HBz7U1NYigtktNrlPclxdY=;
 b=DJmxeEykJci8qyZGRV5N9yWmAl/+7Sd2Nbk0QTtuG6AnEP/JACYQ61hrrrvZCjpM1f
 SpnQe+Sh9n5ln5exKlcWPDnr2+vwdqjn++A22y0IEDScznFWqLVpIXwLsDl7bG36TPqt
 CcUEdyiUaMvNhdmWDXxCz+CcaNmNPZGZ/WHtpEzgG0Le9YDo0KJs225HDyWx2zL0GbXK
 17JqyBMZVMxaTjZGFu8cuCAKqOpFaAeJtQuNZBDnn/rCSCy6peM6j358fZuLY9YclC7j
 6GIssz8V9qsd9y4KniDc6N2WUJ/HHkehTrGTIlgUlFPIi7in9O0fe53ov12dkuZCb2qu
 fMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i6Ssa/L/JIU86vB8L0eO6HBz7U1NYigtktNrlPclxdY=;
 b=sTo5a+rUfR3/5DlPc4pGx4G7AaRaDUsCM2lGO4a47jWz3S4FVF+ZIykMUXG6zVR0a6
 sFfpmSFzZXJJ2J0pO3Dtx5RkNT9W7HhCjJukWTWCYrqXcux7jaKyjsomneE0aNEqLmBk
 dk4FF4ac11OMAbrph8UoTUYKKuTgA6HmnDp1rK9IQXqL5CMSYMzivrqi5O7R67GoAvEs
 V/F8Fdy41DvmOioh7NbgmFDmvuoEluiFIy4sNdDYEVMI4lXiAu0faDQz4VQgdKAD6+uC
 8f+cAuVZoHLXgSgS5lxilzKDPrEzjP5jzGvYZydkx/MEAdP5i3G+Zt7a7Uk2rHUhRC69
 7QVw==
X-Gm-Message-State: AOAM532Y85Y33UqNaOVRiTdqmsGbJ1g7JyovsRqCx4sInchylXw7OkAU
 /t7I920VQrmTxaw5fNKh5FN7PnvGrMS2hRBWysw=
X-Google-Smtp-Source: ABdhPJx23yVQpd6kihb0W68ZCCVGbUjTs841kw0t1zwufzeKyLIbvXW3fgN2+/e1Cy2PnP3MY9NN9KI3dc8cACGlEoI=
X-Received: by 2002:a05:6102:109d:: with SMTP id
 s29mr4103928vsr.119.1590572617964; 
 Wed, 27 May 2020 02:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200526150739.26147-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200526150739.26147-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 27 May 2020 10:42:46 +0100
Message-ID: <CAM0jSHNX59Axp0bzUkC4v4K1KZXi0NiqkJCo1p4zN1TqQxjKug@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Clear LOCAL_BIND from shared
 GGTT on resume
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

On Tue, 26 May 2020 at 16:07, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We only restore GLOBAL binds upon resume as we expect these to be pinned
> for use by HW, whereas the LOCAL binds can be recreated on demand once
> userspace is resumed. For the LOCAL bind to be recreated in the global
> GTT, we need to clear its presence flag on deciding not to restore the
> mapping upon resume.
>
> Fixes: bf0840cdb304 ("drm/i915/gt: Stop cross-polluting PIN_GLOBAL with PIN_USER with no-ppgtt")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
