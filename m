Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29492EA61A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 23:23:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47BC89CBC;
	Wed, 30 Oct 2019 22:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A3889CBC
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 22:23:05 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id o198so892514vko.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 15:23:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OIqUkgLBOgO72lFHqNQjg7rjczcKgfVgzNHRN9sz2WU=;
 b=PmghZh0RFHMpdwlhTgEe1fp6iXjTH7IR/wJyxX3KIaQYJ5n/9gN63Ru8P3kFDSON3h
 e+WsHPaOFrCMXa0T3MI5sIIy8pvCvxiDK7f38vFPk+2t1ngfFGKaNXb2huMpF9rIcRn0
 3qA1khn2t5NB1lywfBuaSi3f8lRiHeWpe3gNCxu5eIMEQgoQQKZ1Zb+wGKH5n0ja0PjZ
 W1TrtbrR7U1OmJ6x0Hp5xR188jJdpcDa7OVJKj6mclcQLocefYl9pj+DOiNGID2Lsipr
 261efHN4ys1qGxE0dvdMzG1lPVFfbwD7XMbAzV850EVNRChnbDXWN5JgbV1TGzGAQFdK
 39ZA==
X-Gm-Message-State: APjAAAUHb7CbBBnsr+14R0oJbRVR0RsDNkjCBG8f/y4FMliF0W+G147/
 n8qZURdkOzIlAxRFtMOh0L9PQbSInL1By3+7ADE=
X-Google-Smtp-Source: APXvYqzWfgf6Uh0vnGas/F9srVE5PzA+PIk7Igl+XlgzZJ3L7zXdBhwUXNmxEMyXrvaDjyk7ujwLJKsYzy4yhBdiBvk=
X-Received: by 2002:a1f:5f08:: with SMTP id t8mr989171vkb.87.1572474184087;
 Wed, 30 Oct 2019 15:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191029165134.28567-1-matthew.auld@intel.com>
In-Reply-To: <20191029165134.28567-1-matthew.auld@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 30 Oct 2019 22:22:37 +0000
Message-ID: <CAM0jSHO3McVPWCLszV30bp2wydF0TDB4pGriW05ZVBPBg0Tuuw@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=OIqUkgLBOgO72lFHqNQjg7rjczcKgfVgzNHRN9sz2WU=;
 b=uDcvHpMLVfnCiXSwOgG8yWSM0bNWDBJvIAoZEaVaPSzmg8IkOrbAtescR/3OvhOYt4
 apw35EzIDFe8i8flH4f0cN+giL3EictkKXrUOb5KCJXr+/qZiVQWpUWhAxOgCZJzAeZp
 Fw2QXofZPF6OIt8AptKkykqcLpvx+XDXVW+HY6Jj1xyCFUBHXXGjo0XnjlbXmdTUUBcr
 Ynj0z2HP0KYf6x8/2ijVu4UBe0NySq3gQXU6ZbPQre+Hq5m4mQLwIIc2t/eXh1hBsGdf
 AOBNwex85DfB9uO9I+VIhjXyOGpy1ZB6or6me04IukBDddbrOKNf7xHSXPDGVVRUNpPG
 kCfA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: add the fake lmem region
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

T24gVHVlLCAyOSBPY3QgMjAxOSBhdCAxNjo1MSwgTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPiB3cm90ZToKPgo+IEludGVuZGVkIGZvciB1cHN0cmVhbSB0ZXN0aW5nIHNvIHRo
YXQgd2UgY2FuIHN0aWxsIGV4ZXJjaXNlIHRoZSBMTUVNCj4gcGx1bWJpbmcgYW5kICFpOTE1X2dn
dHRfaGFzX2FwZXJ0dXJlIHBhdGhzLiBTbW9rZSB0ZXN0ZWQgb24gU2t1bGwgQ2FueW9uCj4gZGV2
aWNlLiBUaGlzIHdvcmtzIGJ5IGFsbG9jYXRpbmcgYW4gaW50ZWxfbWVtb3J5X3JlZ2lvbiBmb3Ig
YSByZXNlcnZlZAo+IHBvcnRpb24gb2Ygc3lzdGVtIG1lbW9yeSwgd2hpY2ggd2UgdHJlYXQgbGlr
ZSBMTUVNLiBGb3IgdGhlIExNRU1CQVIgd2UKPiBzdGVhbCB0aGUgYXBlcnR1cmUgYW5kIDE6MSBp
dCBtYXAgdG8gdGhlIHN0b2xlbiByZWdpb24uCj4KPiBUbyBlbmFibGUgc2ltcGx5IHNldCB0aGUg
aTkxNSBtb2RwYXJhbSBmYWtlX2xtZW1fc3RhcnQ9IG9uIHRoZSBrZXJuZWwKPiBjbWRsaW5lIHdp
dGggdGhlIHN0YXJ0IG9mIHJlc2VydmVkIHJlZ2lvbihzZWUgbWVtbWFwPSkuIFRoZSBzaXplIG9m
IHRoZQo+IHJlZ2lvbiB3ZSBjYW4gdXNlIGlzIGRldGVybWluZWQgYnkgdGhlIHNpemUgb2YgdGhl
IG1hcHBhYmxlIGFwZXJ0dXJlLCBzbwo+IHRoZSBzaXplIG9mIHJlc2VydmVkIHJlZ2lvbiBzaG91
bGQgYmUgPj0gbWFwcGFibGVfZW5kLiBGb3Igbm93IHdlIG9ubHkKPiBlbmFibGUgZm9yIHRoZSBz
ZWxmdGVzdHMuIERlcGVuZHMgb24gQ09ORklHX0RSTV9JOTE1X1VOU1RBQkxFIGJlaW5nCj4gZW5h
YmxlZC4KPgo+IGVnLiBtZW1tYXA9MkckMTZHIGk5MTUuZmFrZV9sbWVtX3N0YXJ0PTB4NDAwMDAw
MDAwCgpIaSBBcmVrLAoKV291bGQgeW91IGJlIGFibGUgdG8gdXBkYXRlIHRoZSBmaS1za2wtbG1l
bSBrZXJuZWwgY21kIGxpbmUgd2l0aApzL2k5MTVfZmFrZV9sbWVtX3N0YXJ0L2k5MTUuZmFrZV9s
bWVtX3N0YXJ0PwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
