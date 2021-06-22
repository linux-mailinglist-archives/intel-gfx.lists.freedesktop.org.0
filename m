Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF2A3B0D8F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 21:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CEB76E156;
	Tue, 22 Jun 2021 19:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com
 [IPv6:2607:f8b0:4864:20::c2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2EB6E072
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 19:20:04 +0000 (UTC)
Received: by mail-oo1-xc2f.google.com with SMTP id
 67-20020a4a01460000b0290245b81f6261so126166oor.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 12:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IXTyvMzccD44HreGd+lTW6UPC/c6n0CNj/56dlhspnE=;
 b=jnrGKCc5k+rj2MWFkDqYwdwLo96z0bMl1L8GBzaSBanYW5s9QkrSoWIBy0C8sqBpiE
 sJp0+r8NksBdwWhFF0jipEeTILNVYlU4GGWVUekaNY/wa/lXH+zpc8tYd9r6p58jVT/q
 Y5HpOmjHxg7Zv+LdXx+OztqFobp4mnwzmSb0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IXTyvMzccD44HreGd+lTW6UPC/c6n0CNj/56dlhspnE=;
 b=Y/uGb8Z2MS+LMnA2lB1lQBDtr2mXZ6sbmSYDNn17FuPPE8Jc0zZ7TajnQuDyBIhiIk
 VSCLJCHY27JyIfcw/Yt0cER2bOXBQblVEqw1CW6TR3bESqZqHme80Dx1lowdontG8qWz
 qTZOGiPk8Ep1NXnqkOD0iJF1l9JxkjqJ8WyRWp3EnoqnufP1E1wQjlzcpfMJqz/ujEG8
 1lbrEJu9rwCBW6M5VWKZ2fed+Hy/u8TYt9etWbQccWuGq3UmvV0fb7Y2BrEBnP0AiUul
 kG4+pGN0lSRH7hqqjMBB+GGT7zALY5lYznH5NjjuvU8RkmB6pfcDb+eGlUW44lIHarAQ
 cJnw==
X-Gm-Message-State: AOAM532vPSCHH/FbrWVO+yDqgWwy2khReE+4BhIUwyAn2DH9W0PYCY4m
 zRsew2MYTkmkhl/MYj6ZaZt3bZxaZM5jgyVgzW+e/A==
X-Google-Smtp-Source: ABdhPJymCc3vHixvjSqTi5/BbnUPvRWX6NdnjghdlEx76K/WySHKdsKsTkAYb3Xk7+ky8kEKHa35K21lsy/Je7GeXFo=
X-Received: by 2002:a4a:9b99:: with SMTP id x25mr4621885ooj.85.1624389604204; 
 Tue, 22 Jun 2021 12:20:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
 <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
 <YNIw1g5HVCzvmKzP@ravnborg.org>
In-Reply-To: <YNIw1g5HVCzvmKzP@ravnborg.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Jun 2021 21:19:53 +0200
Message-ID: <CAKMK7uE-c7evbXhNs9htsJ2wKWSMVcS=HHauvQ19-+9BT8NwSw@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [Intel-gfx] [PATCH 01/15] dma-resv: Fix kerneldoc
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgODo1MCBQTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgo+Cj4gSGkgRGFuaWVsLAo+Cj4gT24gVHVlLCBKdW4gMjIsIDIwMjEgYXQg
MDY6NTQ6NTdQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IE92ZXJzaWdodCBmcm9t
Cj4gPgo+ID4gY29tbWl0IDZlZGJkNmFiYjc4M2Q1NGY2YWM0YzNlZDVjZDllNTBjZmY2YzE1ZTkK
PiA+IEF1dGhvcjogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+
ID4gRGF0ZTogICBNb24gTWF5IDEwIDE2OjE0OjA5IDIwMjEgKzAyMDAKPgo+IHRoaXMgaXMgd2hh
dCB3ZSB1c2VzIEZpeGVzOiAuLi4gZm9yLgo+Cj4gSXQgbG9va3Mgd3JvbmcgdG8gaGlkZSBpdCBp
biB0aGUgZGVzY3JpcHRpb24uCgpJJ3ZlIGhvbmVzdGx5IGJlY29tZSBhIGJpdCB2YXJ5IG9mIHVz
aW5nIEZpeGVzOiBmb3IgZG9jcy9jb21tZW50cwpiZWNhdXNlIHRoZSBzdGFibGUgYXV0b3NlbGVj
dCBib3RzIGFyZSBfcmVhbGx5XyBrZWVuIG9uIHBpY2tpbmcgdXAKYW55dGhpbmcgd2l0aCBhIEZp
eGVzOiBsaW5lIGluIGl0LiBBbmQgdGhhdCBmZWVscyBhIGJpdCBsaWtlIG5vbnNlbnNlLgotRGFu
aWVsCgo+Cj4gICAgICAgICBTYW0KPgo+ID4KPiA+ICAgICBkbWEtYnVmOiByZW5hbWUgYW5kIGNs
ZWFudXAgZG1hX3Jlc3ZfZ2V0X2V4Y2wgdjMKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+ID4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+
ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+ID4gLS0tCj4gPiAgaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiA+IGluZGV4IDU2MmI4ODVjZjlj
My4uZTFjYTIwODBhMWZmIDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5o
Cj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgKPiA+IEBAIC0yMTIsNyArMjEyLDcg
QEAgc3RhdGljIGlubGluZSB2b2lkIGRtYV9yZXN2X3VubG9jayhzdHJ1Y3QgZG1hX3Jlc3YgKm9i
aikKPiA+ICB9Cj4gPgo+ID4gIC8qKgo+ID4gLSAqIGRtYV9yZXN2X2V4Y2x1c2l2ZSAtIHJldHVy
biB0aGUgb2JqZWN0J3MgZXhjbHVzaXZlIGZlbmNlCj4gPiArICogZG1hX3Jlc3ZfZXhjbF9mZW5j
ZSAtIHJldHVybiB0aGUgb2JqZWN0J3MgZXhjbHVzaXZlIGZlbmNlCj4gPiAgICogQG9iajogdGhl
IHJlc2VydmF0aW9uIG9iamVjdAo+ID4gICAqCj4gPiAgICogUmV0dXJucyB0aGUgZXhjbHVzaXZl
IGZlbmNlIChpZiBhbnkpLiBDYWxsZXIgbXVzdCBlaXRoZXIgaG9sZCB0aGUgb2JqZWN0cwo+ID4g
LS0KPiA+IDIuMzIuMC5yYzIKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIs
IEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
