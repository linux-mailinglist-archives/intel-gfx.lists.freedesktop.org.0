Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F01316165F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 16:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90EA96E063;
	Mon, 17 Feb 2020 15:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD1E6E063
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 15:40:40 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id y184so4661260vkc.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 07:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QXC37PoFdE3eH2dTa7Ij89gbpkCp7vFaYNxYeHIvWH0=;
 b=VuqnQOGLSb+6zMKDouecMjYAPCGPgpoTQt/jcVB+6JwJRJwNooN7ys9S2dDr79qBns
 e7iBvZeATUc6JyYSWxzEcVQVTFubYVEmXOMEA9UUTir1XCxTLM2OFgfuWZx/OldJ8f22
 vmwlJfCXxjxaI67L2sALpDebUSyHN2C/Q6Kt+YrW9mMBhNlv5mma7Qjn8F9B4ANNAy8j
 SjT+TZdDEJgA06yEFrMsm/Cw8NSmVHW0fzLfU9EqiYw+YMvDlO2nNVy5epkCWLAeeg2g
 4YI/UXW4kdio0jSbVIP7U0ZI03hSelS5PV6Oh1O7kld48VaXLe2O1rWDtn5oCqFP7xlu
 lDjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QXC37PoFdE3eH2dTa7Ij89gbpkCp7vFaYNxYeHIvWH0=;
 b=r+VvVmzpBkpIvyrnJSbrjZ01/9IiVxb+fBDa29JyMTbYqJSzk8LD/03PpvOpoFlp01
 M67lPoj4jNk8ZSyTUaFzuSQ2/qysB+QHTZpZQYxmBTjC6F+iBUBTdqnhuqN71q0Tmom6
 OlDJtQGY27tnKj1EHB066JedzKThoXaVvtBPGWcO0PZyZdNlkZwKNgiXNEzMm1m0ReYa
 zuZrFO+sAM5RrcdmHmdDgz4rGU64ucBsJ3xzxeLKIC7b05m7ZSjxo3mI5uwASgSGuqCE
 71bzCzt7ejnJhQtH9/JLrWaP1n9KpYj2QmhJs8VpEIpmTtbKt+dTJpqPq3rOBig1l9hA
 vdJg==
X-Gm-Message-State: APjAAAWCtflSkUyVCCUmUsNPaNCLP0gUD+m8TisVzRiIUa8Ufr2EBidp
 lMLix1yCfcvYTgzv9gDtBN1VU4YoLrD9etM2Kk5YE/Tj
X-Google-Smtp-Source: APXvYqxfjqck2dAvhknBiekQKHOp5m8aqvv4iK6B851pEe7ESDkftvfnerhBCzijuO0O3ysQaJaHOKIYkHNqC04etvk=
X-Received: by 2002:a1f:5fc1:: with SMTP id t184mr5777930vkb.57.1581954039312; 
 Mon, 17 Feb 2020 07:40:39 -0800 (PST)
MIME-Version: 1.0
References: <20200215092902.4131132-1-chris@chris-wilson.co.uk>
 <20200215205927.4170144-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200215205927.4170144-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 17 Feb 2020 15:40:12 +0000
Message-ID: <CAM0jSHMZjEHYcpi3HGAHczxNerT3V14S3MzBZTnc9e-3+uhxug@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Mark the mock ring->vma
 as being in the GGTT
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

On Sat, 15 Feb 2020 at 20:59, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> The ringbuffer's vma is expected to be in the GGTT and that is now being
> checked, so make sure the mocked ring declares it so.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
