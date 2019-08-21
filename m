Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F04D697248
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BA16E906;
	Wed, 21 Aug 2019 06:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com
 [IPv6:2607:f8b0:4864:20::92c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15CA56E904;
 Wed, 21 Aug 2019 06:34:11 +0000 (UTC)
Received: by mail-ua1-x92c.google.com with SMTP id s25so449125uap.7;
 Tue, 20 Aug 2019 23:34:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cldCocYqDJhDAW6mUCiaKahQrJ4+bnhSa/eeLTEHE20=;
 b=mMVTw4QGe6g9cArKZqyFyA3RZnx62mLzDRchwoKuYbyRi5+VPjaa9S/l9VG/tacA56
 CS9ZCIFePp66cmyV9felP8/X4m6n23+iw1UpR7izJXjqd1FtQaUH92H8Z130ZRmTcAgk
 DAioTJlEVYz/uExLeDYqTXX90FB1HvyWx89yck40rpCj65IvNRlUieFARbQ/QzRfv5Oq
 I0xDRe/xaAlerdaYX7N/PcwPpBkLJNOGnRGnl6ozXFyyW2++j6iw3VmdlUBQaRhJD+uU
 TsxXP1XQUbnpMveQS9pCH+RxY+72jVEN8y9wOqWjwvCbsnUJg9AGwdl0WWjj7zXXXZol
 HyMQ==
X-Gm-Message-State: APjAAAXMZv9Q12Xm51CPBUG60SrO48JECH8l2lkgWNx8fA6k/uYZ+iS3
 urxqfUiUZISR35idkeeyKoHaM4+aKOjnWHrXGgs=
X-Google-Smtp-Source: APXvYqwV9IXC4VAQSFpeJVeWe8GCDuXR5CxR2jhJJ5ME0hbNNdFy/JCuN0h4tWjJOe7dtaWWt4EHjhL2ip8PbkMN74E=
X-Received: by 2002:ab0:70c8:: with SMTP id r8mr1298852ual.89.1566369250021;
 Tue, 20 Aug 2019 23:34:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190805140119.7337-1-kraxel@redhat.com>
 <20190805140119.7337-9-kraxel@redhat.com>
 <20190813151115.GA29955@ulmo>
 <20190814055827.6hrxj6daovxxnnvw@sirius.home.kraxel.org>
 <20190814093524.GA31345@ulmo>
 <20190814101411.lj3p6zjzbjvnnjf4@sirius.home.kraxel.org>
In-Reply-To: <20190814101411.lj3p6zjzbjvnnjf4@sirius.home.kraxel.org>
From: Ben Skeggs <skeggsb@gmail.com>
Date: Wed, 21 Aug 2019 16:33:58 +1000
Message-ID: <CACAvsv5Rar9F=Wf-9HBpndY4QaQZcGCx05j0esvV9pitM=JoGg@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=cldCocYqDJhDAW6mUCiaKahQrJ4+bnhSa/eeLTEHE20=;
 b=b9E4nxzDDgDhTa72QcuCf0+Ri0ENZZAcmmRDzScGsGvbITS9f4GrFF553zte4BaIWy
 OE/PKMbCOv0G9cVrDaB6WW02z+M+WSYHQIFOxjb2xBCqPBMZ0BRVJrylWhDMGzJScBsc
 mlpo7sFmpTzA98YeuPn9PENW/5F3rTb2WYE6E8m19fnOQn0NY3DLmEsvt7XB9Oy0hXz8
 ACsStPZ/Yz2cBZEpwsBqbL41GAGwUHWtxhcJpymaZh8ClSeFDiSehXvSLsop2TCNicK4
 7K1XTJCjrkh3JfsDsuOW4locPmvjKygw+v6voagM6ieXmvA2w1iYdwrFNPbWHSZVd++y
 vlxA==
Subject: Re: [Intel-gfx] [Nouveau] [PATCH v6 08/17] drm/ttm: use gem vma_node
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
Cc: ML nouveau <nouveau@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-graphics-maintainer@vmware.com,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 spice-devel@lists.freedesktop.org, Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNCBBdWcgMjAxOSBhdCAyMDoxNCwgR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhh
dC5jb20+IHdyb3RlOgo+Cj4gICBIaSwKPgo+ID4gPiBDaGFuZ2luZyB0aGUgb3JkZXIgZG9lc24n
dCBsb29rIGhhcmQuICBQYXRjaCBhdHRhY2hlZCAodW50ZXN0ZWQsIGhhdmUgbm8KPiA+ID4gdGVz
dCBoYXJkd2FyZSkuICBCdXQgbWF5YmUgSSBtaXNzZWQgc29tZSBkZXRhaWwgLi4uCj4gPgo+ID4g
SSBjYW1lIHVwIHdpdGggc29tZXRoaW5nIHZlcnkgc2ltaWxhciBieSBzcGxpdHRpbmcgdXAgbm91
dmVhdV9ib19uZXcoKQo+ID4gaW50byBhbGxvY2F0aW9uIGFuZCBpbml0aWFsaXphdGlvbiBzdGVw
cywgc28gdGhhdCB3aGVuIG5lY2Vzc2FyeSB0aGUgR0VNCj4gPiBvYmplY3QgY2FuIGJlIGluaXRp
YWxpemVkIGluIGJldHdlZW4uIEkgdGhpbmsgdGhhdCdzIHNsaWdodGx5IG1vcmUKPiA+IGZsZXhp
YmxlIGFuZCBlYXNpZXIgdG8gdW5kZXJzdGFuZCB0aGFuIGEgYm9vbGVhbiBmbGFnLgo+Cj4gWWVz
LCB0aGF0IHNob3VsZCB3b3JrIHRvby4KPgo+IEFja2VkLWJ5OiBHZXJkIEhvZmZtYW5uIDxrcmF4
ZWxAcmVkaGF0LmNvbT4KQWNrZWQtYnk6IEJlbiBTa2VnZ3MgPGJza2VnZ3NAcmVkaGF0LmNvbT4K
Cj4KPiBjaGVlcnMsCj4gICBHZXJkCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IE5vdXZlYXUgbWFpbGluZyBsaXN0Cj4gTm91dmVhdUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL25vdXZlYXUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
