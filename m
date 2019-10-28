Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEABBE7037
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:16:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 038016E5CA;
	Mon, 28 Oct 2019 11:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3A76E5CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:16:55 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id s130so2171553vsc.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 04:16:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PKE9W/QZmGTMYrs/KJXfYagd+ZyijO0cjTiLCe2gwo4=;
 b=aijV1M6+8DyKySMjBFsoV81HjC4fvSoBP+eC/6YfpmszTtNjoIWBnEmOnwbUXEIfUS
 A26P2opu3ZA6s9eLLHHwCFkiEgSGrhMMdf5ubdbRZRu51YfkoHg/6il8Lg2Oz32u0mVU
 bkr/BgxehvOCDzjML3eugaA/nPV9/UTvLBYoRpkCcm/OI+rry0YBwmpYY91bgS0nRZQN
 ROqO9044lU0JyJsXYbbyP6VtNt28W4tKIDRMiQRqK7cYg9ovZ4sFAa8mInrunEPdE1yk
 tH55eBnNeFneqFZvYYk76zhzF79GOCUZXB+RvmE3+iCAJLGI5BDKS9OIxkbfDl1+jEWB
 bCxQ==
X-Gm-Message-State: APjAAAW4clNtlOhKlOlmJGMhbrXweL6IktSmwtHHSc/8EmvcV/hx1hed
 l+yP/GuXPNVAufz3XO1WnH3jgSnM7iRC6zgz9Xo=
X-Google-Smtp-Source: APXvYqzKkPBduTZfTm24x3EcmiGrjP+wjOh41RKjcPEpmMwXGxXCoPe0dCLRDuspFZB0dO3TECzaZq2TykCrD2BFxHQ=
X-Received: by 2002:a05:6102:36d:: with SMTP id
 f13mr2116710vsa.34.1572261414735; 
 Mon, 28 Oct 2019 04:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191027225808.19437-1-chris@chris-wilson.co.uk>
 <20191027225808.19437-3-chris@chris-wilson.co.uk>
In-Reply-To: <20191027225808.19437-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 28 Oct 2019 11:16:25 +0000
Message-ID: <CAM0jSHOt-k7_yoerFX1iABQvXrHBE8yYe51WhwBY-UbzDMsB5Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=PKE9W/QZmGTMYrs/KJXfYagd+ZyijO0cjTiLCe2gwo4=;
 b=bbNylQCUmGIOcv3pGSn7sKkNpF9I2ADccelqih8FUJXtfW2d5sSix72rDe5tTODK43
 pKO/ADEnBmq60OB0SrP0nsyGnkrCHJ1tNW+YWgyNV4U7kD/eWeRCcF7FKfVqVTR+IlKM
 tzOauaXN+pYiWU1zCwWJ0ozT7xfC2LMNvDW+RG3wD3Tvje6JkzI6pdYIzfsftW+Ulu3m
 WhvY/2CjfEpwSwLK3/jwMYS/ZRmN3Hrve99YFn7K2HnbeLxdu6UMTIh5YHhvn1ELBpKE
 g+8n5K9GCFc3kthzOOQZHsUUh559tJTj2HLYuBQi9zSZHALXoQ32trKIBye/iMjyDw/U
 vi9w==
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/selftests: Check all blitter
 engines for client blt
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
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ2hlY2sgYWxsIHVzZXIgYWNjZXNzaWJsZSBlbmdpbmVz
IHRoYXQgY2FuIGJsaXQgd29yayB3aXRoIG91ciBibGl0dGVyCj4gY2xpZW50Lgo+Cj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2Vk
LWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
