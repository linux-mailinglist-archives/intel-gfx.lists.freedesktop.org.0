Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E65D5BC3E4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 10:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DAE489DA2;
	Tue, 24 Sep 2019 08:10:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9AB389DA2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 08:10:13 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id d204so708941vsc.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 01:10:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zk1XPSy8x8C5XqXPXdU1bsBIXPn9nQq8Z31r0wdKisI=;
 b=Agz8JLj1adITr0q82D+sOxaBr9bBcdTk+ZkE6oAEGOhTA4uzP1PctpugLodrpyM+V6
 0PB79PwG0g+mPHMXNqEt1y0Lvj69V5VcIvZN/7WzEFxUqUYVTT4818aELsqSGyzfcsC8
 FDqx2LUoJsEDwqOEC50oJYIWyTkAZWMAcX6N/cG+0G0F0yMHV72eWqT6DYq6rbNawdQN
 x0FDWQd6X24aSnJxrC1D06U+S1z2RywDiacSaFXInJATtAqs+Koeeuf7vCnK8JZHodNT
 5iwVU66ruiqFwLt+9cFhaXWXnlrJwoV6xdj3JgnMHeVchZ3nzImOFFvKIQG8wMoxbfHg
 qJ+g==
X-Gm-Message-State: APjAAAW5xLZChx/72+XJDxgSU92wEuVmOOlY08NCd1AuTwwJi+FW9Imu
 Ukx23konQZEW0B6LyVTc9d58ak3q9ZjGBqJxOoJCYe8p
X-Google-Smtp-Source: APXvYqwgUKx39Qpiv8p6U42BJ2LCbpe8Er5dGiKZmUAS2V/843lVkZw49zM3QqanX4vYn6mm18Sg3a5Kxi6VA3SbPjE=
X-Received: by 2002:a67:c018:: with SMTP id v24mr55001vsi.23.1569312612878;
 Tue, 24 Sep 2019 01:10:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190920121821.7223-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190920121821.7223-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 24 Sep 2019 09:09:48 +0100
Message-ID: <CAM0jSHO3ah0Sv+fumOBp1qsaYXbz+dnK_4KHjwiHk-1C0egKAA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zk1XPSy8x8C5XqXPXdU1bsBIXPn9nQq8Z31r0wdKisI=;
 b=jRHMe2MR+0Vu3GtYqkB97UZb9wTysGfjqVvfy+agPpkvmHeLD+Qw5sH5kWLzQwSGw5
 1xLff2FbPVQw3IkY281+Z536cjkFPmPdOAO1I4hDudArOlhcwMOqdpr1cvj9bm7Z5JTP
 RdZeEq13b6WoGFjDToY35EUgAIzWf5dpsVh1kKZiCShf0yKikHxadrzibQWkgIe63tUM
 qxYUiNAIKeXXgjqimOQeVmzGxSVbAPClTm2XjP7rplMMOsHIm3Xduo1ClLGlE6vIvumg
 jxLtWqk3+lKkRAnj2DY8Eh66S3Eezf7CzApVfhOOBsP09WqefQQ7aQTB/KrFSmQHtnOz
 gIBQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark contents as dirty on a write
 fault
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
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMCBTZXAgMjAxOSBhdCAxMzoxOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gU2luY2UgZHJvcHBpbmcgdGhlIHNldC10by1ndHQtZG9t
YWluIGluIGNvbW1pdCBhNjc5ZjU4ZDA1MTAgKCJkcm0vaTkxNToKPiBGbHVzaCBwYWdlcyBvbiBh
Y3F1aXNpdGlvbiIpLCB3ZSBubyBsb25nZXIgbWFyayB0aGUgY29udGVudHMgYXMgZGlydHkgb24K
PiBhIHdyaXRlIGZhdWx0LiBUaGlzIGhhcyB0aGUgaXNzdWUgb2YgdXMgdGhlbiBub3QgbWFya2lu
ZyB0aGUgcGFnZXMgYXMKPiBkaXJ0eSBvbiByZWxlYXNpbmcgdGhlIGJ1ZmZlciwgd2hpY2ggbWVh
bnMgdGhlIGNvbnRlbnRzIGFyZSBub3Qgd3JpdHRlbgo+IG91dCB0byB0aGUgc3dhcCBkZXZpY2Ug
KHNob3VsZCB3ZSBldmVyIHBpY2sgdGhhdCBidWZmZXIgYXMgYSB2aWN0aW0pLgo+IE5vdGFibHks
IHRoaXMgaXMgdmlzaWJsZSBpbiB0aGUgZHVtYiBidWZmZXIgaW50ZXJmYWNlIHVzZWQgZm9yIGN1
cnNvcnMuCj4gSGF2aW5nIHVwZGF0ZWQgdGhlIGN1cnNvciBjb250ZW50cyB2aWEgbW1hcCwgYW5k
IHN3YXBwZWQgYXdheSwgaWYgdGhlCj4gc2hyaW5rZXIgc2hvdWxkIGV2aWN0IHRoZSBvbGQgY3Vy
c29yLCB1cG9uIG5leHQgcmV1c2UsIHRoZSBjdXJzb3Igd291bGQKPiBiZSBpbnZpc2libGUuCj4K
PiBFLmcuIGVjaG8gODAgPiAvcHJvYy9zeXMva2VybmVsL3N5c3JxIDsgZWNobyBmID4gL3Byb2Mv
c3lzcnEtdHJpZ2dlcgo+Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTExMTU0MQo+IEZpeGVzOiBhNjc5ZjU4ZDA1MTAgKCJkcm0vaTkxNTog
Rmx1c2ggcGFnZXMgb24gYWNxdWlzaXRpb24iKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcu
d2lsbGlhbS5hdWxkQGdtYWlsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjUu
MisKUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwu
Y29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
