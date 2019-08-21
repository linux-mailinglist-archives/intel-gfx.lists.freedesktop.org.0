Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA27977F7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 13:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C536B6E2D6;
	Wed, 21 Aug 2019 11:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DB8C6E2D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 11:33:08 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id y62so1114323vsb.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 04:33:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WQGeuS5w9qvnc/UMRFSPikA33itjL2Ui9TOB9xCexgU=;
 b=LcIQJTCpJzjzrfwd3p2ICrNPPKRLqTnKNcm1hF2mmSssxGLUcDW4wStVvyxW2dK+ad
 r7o8QqNFosmJ+cAbOU7L4Jz6BoawBm4dqehwjZEAjCDvW7F9GiL0jg+SXaebT4u4eWoV
 2Zc4S4ncdYyFIGh/TKrLq+yo+g/g0AtFtxUpQdvKfnfq/61mDckKh9TucIkwaJ4tvIEJ
 9h0fKhhB2ZYbC/LfpflvatqXPd1FnEfLfsUHnrfjb/GUIFKI3D8KvxynjpHS3lgap+qT
 bjPk1oDI6nliXGt5U0d+iE2nbk8quXYfKBoDf1cXlxkaCXI6xGIj1HuQB4lYaQ6tNYVO
 6vgA==
X-Gm-Message-State: APjAAAUSn8hz9GxCjZEyPPnDpMaUvkVPr+Jq0KepfkqD4cIKQe4UkT2M
 9dpMpPPUNeKJpkfaAvlOhCzP3H2+JrbF8HcvWKt2Bg==
X-Google-Smtp-Source: APXvYqysg95/jk1/quLHtmSYmXEVKIHqluP5xCF5qKWQ9eoJWK4snSkZTWimqltMLrcdu/q5HSX2xPNsWHmEnpjXaiU=
X-Received: by 2002:a67:ee4f:: with SMTP id g15mr20591727vsp.164.1566387187010; 
 Wed, 21 Aug 2019 04:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190820142736.14957-1-chris@chris-wilson.co.uk>
 <20190820142736.14957-4-chris@chris-wilson.co.uk>
In-Reply-To: <20190820142736.14957-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 21 Aug 2019 12:32:40 +0100
Message-ID: <CAM0jSHNT0Mnq0kg6-B000cGDDaQUwD9JQkwgVED9n+dcL2KZkA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=WQGeuS5w9qvnc/UMRFSPikA33itjL2Ui9TOB9xCexgU=;
 b=pSbCyW2lwTfS6vWv9AELHrET/txa6k/tTgH8KLB1cDd+zlT3NiPMe3Ex4cedBjcQ7Y
 gIdSONdkmXpA0WPgSaG8lYMHN6Ba+CbgLzIkkmJ2Fl70JR2gl5zD6uoBHzIFHOow6UGf
 b7zqbAtIE5LOjatz8OWTqGsOerm8qAhLABroY+nECq2iqr/iQT9+vuApn0xbLndBlfrP
 ZzCk+/vinc3PGDi1kiV7pi/rvDE2xoq+KdogUqJecj7ww28kgwCuG9YeygNPpDputsut
 AD4qJpZEaX/BTkMegRxaZ9yqZ2ag3s5ohV+AajMeyKDQOjxuDlWNyqgYkPcMTKqactNT
 4r5w==
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Only track bound elements of
 the GTT
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

T24gVHVlLCAyMCBBdWcgMjAxOSBhdCAxNToyOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVGhlIHByZW1pc2UgaGVyZSBpcyB0byBzaW1wbHkgYXZv
aWRpbmcgaGF2aW5nIHRvIGFjcXVpcmUgdGhlIHZtLT5tdXRleAo+IGluc2lkZSB2bWEgY3JlYXRl
L2Rlc3Ryb3kgdG8gdXBkYXRlIHRoZSB2bS0+dW5ib3VuZF9saXN0cywgdG8gYXZvaWQgc29tZQo+
IG5hc3R5IGxvY2sgcmVjdXJzaW9ucyBsYXRlci4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
