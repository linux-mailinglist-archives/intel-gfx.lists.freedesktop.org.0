Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB85E707B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:34:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3010C6E5E8;
	Mon, 28 Oct 2019 11:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2236E5E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:34:07 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id r85so1930674vke.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 04:34:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pMXSa83VBhTSeSWp2KyFoQfvuK/rCrIRr6iBYBKWszE=;
 b=sVQl9HKfLqaHtsf7kEtDAWom02IuvHnfnDHsR/H5MiAqPu+cP+/I+8fEris9eiPxKi
 hch28qSoZa+r5CNORNdvXYzUYHzQ2qSIDh+wCXw1BEFZQldKf19oh5n0b6IbDWuUK3EY
 JMk+cNlycMXsPXcXfUw6Qwz1lTY6+9CxM3aXhd2ApmXLA7iz+XLM1/x5p2tgIaww98bN
 1QFCd5eQajN2pogZuvvsXb+/N9OUsN5JzYAkrgqS63WevG+XSrXoqt3mF+c4mZwbT2PD
 9pAdWzWRy0HgnI3Ou9WaflxQxiDz8f96eN+77nu+ADKG4rg32NZhOOMsk0rlaVNmUFb8
 K64w==
X-Gm-Message-State: APjAAAUa4IaKR1232KBu8iximyYyYmMxp1QHiLy2+qpPXUbUaOjaycEn
 sSNsyOevrojwEQb4jLBG+e0/GPhGAi6dD6UUqpI=
X-Google-Smtp-Source: APXvYqzQGIoeP+aWvhbMLYVQ2YktgyIo4yfVlpDeioR6ZPSRP87QxrFIWj9bGeAUMqGuHWXwnsqQa/7+VlBQaBrBquY=
X-Received: by 2002:a1f:8d4c:: with SMTP id p73mr7930889vkd.78.1572262446602; 
 Mon, 28 Oct 2019 04:34:06 -0700 (PDT)
MIME-Version: 1.0
References: <20191027225808.19437-1-chris@chris-wilson.co.uk>
 <20191027225808.19437-4-chris@chris-wilson.co.uk>
In-Reply-To: <20191027225808.19437-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 28 Oct 2019 11:33:39 +0000
Message-ID: <CAM0jSHNuU6ruov94AFA88poqD0NiV7xW1-y66DpNornnLBETeQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=pMXSa83VBhTSeSWp2KyFoQfvuK/rCrIRr6iBYBKWszE=;
 b=FrBZpjx1zrMq888c2zvLs0CsyXcJnt+WiDcpdgKb0TflXCzmzFP2TNG1Fm5VaWLjwi
 n9ns2e6qmaYTjyAeUxZH+zua5Cl3jdZVogMAr+VCkyX5erCVosRuiM0c9rL0rtewXr7z
 YXc9M3extH5119BFg8oGl9judQ2v2aLFDk6mVSgT+ifjo7DQv3VbV7ZYW2w6U9IhJwMy
 DyqIiCQPSeQWl/qRi4058exj7yWn+HgqiClcb4RfXxV8uuyobAm1xL88HPhATdYJsysX
 6+0J6UPT7ybZc1QYK3OuhQ7wfLEQeTCgV7FiqfhcLtQ5sxuN8wad61h3EiEVvbwL+cIE
 Ejow==
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/selftests: Use a random engine
 for GEM coherency tests
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyNyBPY3QgMjAxOSBhdCAyMjo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2VsZWN0IGEgcmFuZG9tIHVzZXIgYWNjZXNzaWJsZSBl
bmdpbmUgZm9yIGNoZWNraW5nIGNvaGVyZW5jeSByZXN1bHRzLgo+IFdoaWxlIHdlIHNob3VsZCBj
aGVjayBhbGwgZW5naW5lcywgd2UgdXNlIGEgcmFuZG9tIHNlbGVjdGlvbiBzbyB0aGF0Cj4gb3Zl
ciByZXBlYXRlZCBydW5zIHdlIGNvdmVyIGFsbC4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
