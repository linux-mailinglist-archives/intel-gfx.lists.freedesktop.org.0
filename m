Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8C010D3C8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 11:18:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 240A4892D2;
	Fri, 29 Nov 2019 10:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E330892D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 10:18:43 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id x21so19180670vsp.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 02:18:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oZ3B7sODik4KyG8aoqIFQ/D5vhDf4rbbjvH0ka2aGWo=;
 b=XYcZrhFYUDWIdUumHUv24yDgS/UFeCwiCc+1ArKHnotRbMRzkYVaYznz5jrlXhh+v4
 UdEp3P6feqKeeHKfME6A9ivjDxCIp+MilV304enR8VWD0c6ggsW5kYBoCc4hBu0jEak6
 MQ+wzxPzeYrBJibDe/o/TP4Yd14wYP1gXwDVrLx4O7NM7Pnz6X+a5EJ/T9uKRWVQ/vlq
 dDeX0IxO8RzPtTKAr0/wzupQBWqbH33L2cnXBNd0omRZrP0A2CMUw3SrZpIau5/+x1Ul
 jqLnaYwbMe9swuIbI7gEpTBeoR0fOLanVm7+oS5MsUu6Wvj8EtWIMrzokPb7x+gA+Wre
 DmKg==
X-Gm-Message-State: APjAAAWk74RC3oj0d6+MhTlHIMd1InjOjFttcBCHw2yztOntPajxvc4Z
 qozxkFeYthz7Xk4OYjZag3x+U8+vLKQDJBSGGJrHhQ==
X-Google-Smtp-Source: APXvYqzijzZuxiBMuIzXUdWEGhnVWj0X5mGGNg9e0Azy61ssOtbCGZFTc0P6hR4UK/0pSiL5db1qyuwlj/SLGTGQl4E=
X-Received: by 2002:a05:6102:50c:: with SMTP id
 l12mr31701469vsa.178.1575022722268; 
 Fri, 29 Nov 2019 02:18:42 -0800 (PST)
MIME-Version: 1.0
References: <20191129095659.665381-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191129095659.665381-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 29 Nov 2019 10:18:15 +0000
Message-ID: <CAM0jSHOogvhNHh9V4Nj9iq7i7jQ3vtHeENjJP2_UT1NmvkYKRg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=oZ3B7sODik4KyG8aoqIFQ/D5vhDf4rbbjvH0ka2aGWo=;
 b=ZbdOWj7zRzsykJXabKWIAUYe36v0I82mKit1AOqVLexwVrlwnjMmFUOy+XuHFEwmhH
 Ypyu9c8TYUdAyVURL2ML8OL0+Iqhg/EZZnb04Imtp7UnifAVReoso+bzrF7YYv7F2QwA
 ZKxAxWKaRO1hC3mLzDmktpJmUiuhEERLkL2QXqfHDwcN7efKLi0XPE3BCyr2lBBhuh7P
 k1A5pfIM2LQnfdVW37Kp+/4FVbpI4bBfJvwvkURcoI1Dx6CFcNT8/0+wMCvdIKOycaPQ
 5E6Zh/tC4npbKMymZnR5ckEW9UubJcO0r6dTNQytBlGjgsn9Xwyxp9C2RocSYwh9YT8X
 vMdQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Always lock the drm_mm
 around insert/remove
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyOSBOb3YgMjAxOSBhdCAwOTo1NywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQmUgcGFyYW5vaWQgYW5kIG1ha2Ugc3VyZSB0aGUgZHJt
X21tIGlzIGxvY2tlZCB3aGVuZXZlciB3ZSBpbnNlcnQvcmVtb3ZlCj4gb3VyIG93biBub2Rlcy4K
Pgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
