Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 395FD2FFA3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 17:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB036E15F;
	Thu, 30 May 2019 15:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2FD6E15F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 15:51:55 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id d128so4675298vsc.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 08:51:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QtyJeHA3CiwBkz0TRDeb9eLT4H+wfdHPl/5dfA6mCok=;
 b=te+caicK6eJHpuhpobV4nJbiJUbC0zzZJTarvrCE6Wn5+veDgHLHQmHp25cYM+poFs
 2t9NJqNYH7+xc0FFkGX5cM596cEoVWOBI9JgBLm8tsmcXiDMz3b8GT6PxcZ9Q0KLDv+/
 1re6ibmmCHAehOHT1KKm6QnjAlSlrgMN7YUeTfnvmaM9pshvXx2aRswSu8IsCrZ7H7JL
 87f8rVOdRVKRgPlGFIMUhUojAjrgFecm1fAfNtmM5ABC/Ia93hf/5e+s54vQXV2uxzRL
 4i7eSQz94qY0dMJvQgpWC+qd4ezFzsej26oqXcICoG8J9e2/7gl22bN20WUPTij2VZDh
 yhHw==
X-Gm-Message-State: APjAAAWACBP7t3vfFwV23nVMLgQ81zAJOfE6cTdontYEjPjHTJYzj8ju
 /61RLsDFbnz5mZxlDjb4ck5rXP8VdQkdooVzyeQevdE9aCs=
X-Google-Smtp-Source: APXvYqwx2vm3YGxQRH+jXMvUVcxFJim6F7F4xGR9b0+e830/+mIeQOe27HVwdK6wnwaK2kbcR5pxAeT4w5XwowL+iqs=
X-Received: by 2002:a67:ebc5:: with SMTP id y5mr2520713vso.34.1559231514535;
 Thu, 30 May 2019 08:51:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190528195022.11531-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190528195022.11531-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 30 May 2019 16:51:28 +0100
Message-ID: <CAM0jSHMtamaRH0QM87yMn9UG-bFvRRo7G8iLcNL76BgdsQUnLA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=QtyJeHA3CiwBkz0TRDeb9eLT4H+wfdHPl/5dfA6mCok=;
 b=rT2NX7SFpmDwMn5hk3Alf8/g884LSyujGtn6IxCsClpwjz6t740EJkmdk+Ljf2cbJ7
 LWBNE86GTWYyB98kTUxz0+zb+rO9alWMUa9BS2zb3QGW1h5OEqwUwwp+MlF/bgDSivmi
 pL9EKA8JvcNWDvXqbDKQrZfv8/LOLxscKeTJQN4FYNK7Zbe8dEfpWDvP5VAYJQT0d1c/
 vjgKxsPYrov3WrzcuN+zBKj1AknVOWpSWcXlwh2bSp4SY+VywsgzxHhVjVNGr8UPnpVt
 itqLoM4Godr8RwOjahhcRmelrostsSpooDGpK8yRoEiCSvcBcunJATUbJ4DUGqqgu+eI
 jggg==
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Track the purgeable objects
 on a separate eviction list
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

T24gVHVlLCAyOCBNYXkgMjAxOSBhdCAyMDo1MCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ3VycmVudGx5IHRoZSBwdXJnZWFibGUgb2JqZWN0cywg
STkxNV9NQURWX0RPTlRORUVELCBhcyBtaXhlZCBpbiB0aGUKPiBub3JtYWwgYm91bmQvdW5ib3Vu
ZCBsaXN0cy4gRXZlcnkgc2hyaW5rZXIgcGFzcyBzdGFydHMgd2l0aCBhbiBhdHRlbXB0Cj4gdG8g
cHVyZ2UgZnJvbSB0aGlzIHNldCBvZiB1bm5lZWRlZCBvYmplY3RzLCB3aGljaCBlbnRhaWxzIHVz
IGRvaW5nIGEKPiB3YWxrIG92ZXIgYm90aCBsaXN0cyBsb29raW5nIGZvciBhbnkgY2FuZGlkYXRl
cy4gSWYgdGhlcmUgYXJlIG5vbmUsIGFuZAo+IHNpbmNlIHdlIGFyZSBzaHJpbmtpbmcgd2UgY2Fu
IHJlYXNvbmFibHkgYXNzdW1lIHRoYXQgdGhlIGxpc3RzIGFyZQo+IGZ1bGwhLCB0aGlzIGJlY29t
ZXMgYSB2ZXJ5IHNsb3cgZnV0aWxlIHdhbGsuCj4KPiBJZiB3ZSBzZXBhcmF0ZSBvdXQgdGhlIHB1
cmdlYWJsZSBvYmplY3RzIGludG8gb3duIGxpc3QsIHRoaXMgc2VhcmNoIHRoZW4KPiBiZWNvbWVz
IGl0cyBvd24gcGhhc2UgdGhhdCBpcyBwcmVmZXJlbnRpYWxseSBoYW5kbGVkIGR1cmluZyBzaHJp
bmtpbmcuCj4gSW5zdGVhZCB0aGUgY29zdCBiZWNvbWVzIHRoYXQgd2UgdGhlbiBuZWVkIHRvIGZp
bHRlciB0aGUgcHVyZ2VhYmxlIGxpc3QKPiBpZiB3ZSB3YW50IHRvIGRpc3Rpbmd1aXNoIGJldHdl
ZW4gYm91bmQgYW5kIHVuYm91bmQgb2JqZWN0cy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgoKTWFrZXMgc2Vuc2UsClJldmlld2VkLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNvbT4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
