Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EC92FF17F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 18:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A38D6E91C;
	Thu, 21 Jan 2021 17:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B6AD6E91D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 17:12:33 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id c7so2368476qke.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 09:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3uivCpUWgx/9a2iJHAA06Q5LNNUEEiHcHz0uMUglKYE=;
 b=O40DGk71DOYTKwQRrwCm+pf0H0adlAketyKg0zEufbYXslsFId79SSIuIHCAK02SKH
 zSB05RwWPHFiTdBDqcZOobOSSL/Vu6q6Yfr53ulaDeWINnS51zkDKClAZFzawBtKRab6
 otWQB/wquW8bJSyMtkTFPz+0FQ+bqehUkB9H10n79r0uHA1rEBUuEoxeihxgZEewZ8Jh
 MN61xkj7n614XEUrXKfRhyTYp4DLpQNSTo/NNTjjY3THflrTSeKyoqAVn665n6moKDVi
 5mjf5HI87FQ13qqBPrr1EXR8n6tQv6MWeZLP1L90Z7IC3xuos3KkAKie4/9/v0BbQAW6
 ZbpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3uivCpUWgx/9a2iJHAA06Q5LNNUEEiHcHz0uMUglKYE=;
 b=Gfq/GxOqAxKKSy+87TttFTtQwOW8TXjHR9H7g+I+oPcdSndpp2Ne8zu6PcRNyANfiT
 73A/4vBQCP4c+CbhMA9VsHWxdgnDwmUk3RHKPbdbsBCuQdO01N2H6p1JnuzwiQd29U5i
 WcT/J5TzBb8cbGPtPGqvCkUVUJc9uGsRTu2YaulWnBnhRvuyI6Ri8zqIT6OnvjfhMmMX
 6w//Ax5STi25MrkGcdfLfWKELNxfBfXsL9/mfVO8OS0kiMAkXGTt70IsvMfvD3b+c01l
 f+YNVeIc9Tl2y8on4YP7wykCKZx7tuWOmNcX8GfCC5VelVDivBuu+q+b3gXj8/rBCkqz
 pvDw==
X-Gm-Message-State: AOAM531P+35UgOibzHZqtcp2FEqHzzlICt7zFzKSyyUb1H1FbYCFsMgo
 6o6FnvzPPAeJ9oKeqJBIuEC/CTc+ak5gq8PhEn7xkfUdsfU=
X-Google-Smtp-Source: ABdhPJwRz3J3WMjGZSh4U2q67tyjaiXT3seIHSbS3xAovDRBTDLL5+AH9irt/7U8KOb6PWogFL7DRE6wXVlk4c+TAeo=
X-Received: by 2002:a37:a516:: with SMTP id o22mr740344qke.17.1611249152234;
 Thu, 21 Jan 2021 09:12:32 -0800 (PST)
MIME-Version: 1.0
References: <20210121124932.2143-1-chris@chris-wilson.co.uk>
 <20210121124932.2143-2-chris@chris-wilson.co.uk>
In-Reply-To: <20210121124932.2143-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 21 Jan 2021 17:12:05 +0000
Message-ID: <CAM0jSHNwHm3pc6=CG2VNw6uPbeuhJL8_uhotqm5qEbQiVXieAw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gvt: Acutally use the map
 interface
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

On Thu, 21 Jan 2021 at 12:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since we acquire the i915_gem_object_pin_map() to write into the shadow
> buffer, we only need to flush the map after writing to ensure the buffer
> is coherent.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
