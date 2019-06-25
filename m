Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3525655755
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 20:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289E96E17F;
	Tue, 25 Jun 2019 18:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14DA96E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 18:43:07 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id l125so11594380vsl.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 11:43:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=THd5IgghGYRN6+VytsCNVIb4S4cy96Cz3zxaK/EUp4Q=;
 b=bAjHsKx+MKMDDX12TBCUa9k/sFSj+maOTA1PnNyET0p+66RC6knu6f0hG/NDYvvS+k
 VFGyW+wOpCpyGM+vBUaLLLmsHY3zGMTPXw3vFAOSEswDxbf/592H898tYa9TL7nAP6D4
 iJK/DaNK+aI4RgvABAL/VlrsD26dlzDEpK4f4+vRv1I3qrslnYnkuOgfD9DydBs5Uvpr
 tymGOyN4LEODJUurpftnAvq3gPrQS1z560jeS/IGeTIX0fMyCnUGY1Quxt+HpiD2E7/3
 dDKfMbzu7peEB0XUFJrOYrBJK8+M7f/AO6BbDHP2q0/+WW9MpCFv7ZcAUaSYMx0Ljf5N
 V7qA==
X-Gm-Message-State: APjAAAVQez7A2YnbWhjhY5AAzbo+iz6z5EitjRUPJk9JXwkP67+BMsrt
 kmvM3t7QfvDunrc/MhwvyjxfRZxBgTYU0fj5fsiInoT5
X-Google-Smtp-Source: APXvYqyZH0w8YY48UXj/UHq4QKpX8EQe2a21AyYOhOTkmQsBVqOaGdzzac2LElU75ScTPs0q4BZyBPCktz7X815Nx4Q=
X-Received: by 2002:a67:c84:: with SMTP id 126mr194225vsm.178.1561488186234;
 Tue, 25 Jun 2019 11:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
 <20190625130128.11009-15-chris@chris-wilson.co.uk>
In-Reply-To: <20190625130128.11009-15-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Jun 2019 19:42:40 +0100
Message-ID: <CAM0jSHPjOPP0AwL3oWKN51Fcu-ewc6c_KL3A9Lc1PFpYoXZfWQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=THd5IgghGYRN6+VytsCNVIb4S4cy96Cz3zxaK/EUp4Q=;
 b=YX4pXWCY9ZRZmheAyfXQ1KAqxAbYk2VkUqLf1GXUP2oq0GzyoOPzKx+ae6HLW0td2Q
 3GWGNJtCepWWkRJrpJLd7EOMvzCnX16dGnKOrhEz58T93reerQhVpudEt0V/ereYxEcF
 eOaUlMbsBOvKIaGRNEUXyrXpeGBcJfYaOi6e1rGEkXejgQk5DjR3TZnK2ZIaW6T4nS4F
 RZDsxAZtr6bEwK1s4wyTvIn0ziHFKUBke6bW8+DyeWYHSv4FTx5DhqQYrrzwp4rZcNWt
 k/FoV8S05muL9xzVbQIusSmqcXsUaaGA69gHDs0kQMzSWNLRNLERy1dRZfqVa5W2vTLE
 4pNQ==
Subject: Re: [Intel-gfx] [PATCH 15/20] drm/i915/gt: Always call kref_init
 for the timeline
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

T24gVHVlLCAyNSBKdW4gMjAxOSBhdCAxNDowMywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQWx3YXlzIGluaXRpYWxpc2UgdGhlIHJlZmNvdW50LCBl
dmVuIGZvciB0aGUgZW1iZWRkZWQgdGltZWxpbmVzIGluc2lkZQo+IG1vY2sgZGV2aWNlcy4KPgo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpS
ZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
