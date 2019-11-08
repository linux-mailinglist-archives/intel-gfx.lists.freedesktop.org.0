Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E316AF50C7
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 17:14:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9D56F9F2;
	Fri,  8 Nov 2019 16:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40D96F9F2
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 16:14:10 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id e9so5683701oif.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Nov 2019 08:14:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TDSq8x4IkCZux0HBwBdKPHw/pUOm5chSIrZpJ0xGGJ4=;
 b=DOoCLA8IFWo+WSDKEKejmI0/riaNmstnFRYH9LRd0+vaAC8V6+8nzKl4pRNqD8RBP1
 29AZYiks8TZ+C5H9Gj3A87o3+mRKdNADKlIOaBcUFGlkgLkGPdfrHiMXOygrj67rtNJx
 rVs/gpXt+9u4nwdNzgEw+99wmvCnvktQx5tZYIORl78/GoFzroGKtlc9qC4aquf0QW7r
 yi+dffpkmqxG3KQbPHriI56YLJEwwlA9eS6vMxeNfLiDCCDqS8pK9zY98bH7HtD+mMnG
 ZZP+Aze3dBtjcXUv8HtQ37o/viP7j0lw/K5+XgKkWpO0IqjHypZzh9yqrV9EpIyp0kHd
 kroQ==
X-Gm-Message-State: APjAAAV1rnnrf8xJh6+vEeql2W0rjgOxNg6hD/lPLaskyDPU+wqV1ftR
 YzeDOAQ3mZ+2IhxLTgtI209MaWACy2chGyXWcXjkcw==
X-Google-Smtp-Source: APXvYqzq2ABIX9dYjzUSpGCeU0z0NbRrNnEv6yh+gsGkyGrnqu53Zd4MJfVOFRVLF6igr8VxsUDM6h2oV1/7xORZDZU=
X-Received: by 2002:aca:b805:: with SMTP id i5mr10720864oif.110.1573229649992; 
 Fri, 08 Nov 2019 08:14:09 -0800 (PST)
MIME-Version: 1.0
References: <20191106154810.5843-1-chris@chris-wilson.co.uk>
 <20191106154810.5843-3-chris@chris-wilson.co.uk>
 <CAKMK7uFo99g8=6VETC+1_OLtCqU7jwwSxRxTB1TV353d8ZkfGQ@mail.gmail.com>
 <157320753634.9461.1270226561722831537@skylake-alporthouse-com>
In-Reply-To: <157320753634.9461.1270226561722831537@skylake-alporthouse-com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 8 Nov 2019 17:13:58 +0100
Message-ID: <CAKMK7uF8Tm9738yf7S0PhftYpDUsb04U69ZWFqR7ee4DVE3=zA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=TDSq8x4IkCZux0HBwBdKPHw/pUOm5chSIrZpJ0xGGJ4=;
 b=G/Xlc5YgKnYVAhUSBDgW08cyH/NfPQWkw4h3zjCR4aH6xmFY/hha1CRXxE6XA+MSc6
 r6qvq/w43wTVqomZyBk6Db4Ah+1qVSIbWSXqnO/PnriceiiWkBh/+4FUNG4tNYuPw14p
 mrEXC9GdinzufurZtKA08yPrbizccNMX02v0o=
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gem: Extract transient execbuf
 flags from i915_vma
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgOCwgMjAxOSBhdCAxMTowNSBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA4
IDA5OjUzOjUxKQo+ID4gT24gV2VkLCBOb3YgNiwgMjAxOSBhdCA0OjQ4IFBNIENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4gRm9yIG91ciBjb252ZW5p
ZW5jZSwgYW5kIHRvIGF2b2lkIGZyZXF1ZW50IGFsbG9jYXRpb25zLCB3ZSBwbGFjZWQgc29tZQo+
ID4gPiBsaXN0cyB3ZSB1c2UgZm9yIGV4ZWNidWYgaW5zaWRlIHRoZSBjb21tb24gaTkxNV92bWEg
c3RydWN0LiBBcyB3ZSBsb29rCj4gPiA+IHRvIHBhcmFsbGVsaXNlIGV4ZWNidWYsIHN1Y2ggZmll
bGRzIGd1YXJkZWQgYnkgdGhlIHN0cnVjdF9tdXRleCBCS0wgbXVzdAo+ID4gPiBiZSBwdWxsZWQg
dW5kZXIgbG9jYWwgY29udHJvbC4gSW5zdGVhZCBvZiB1c2luZyB0aGUgaTkxNV92bWEgYXMgb3Vy
Cj4gPiA+IHByaW1hcnkgbWVhbnMgb2YgdHJhY2tpbmcgdGhlIHVzZXIncyBsaXN0IG9mIG9iamVj
dHMgYW5kIHRoZWlyIHZpcnR1YWwKPiA+ID4gbWFwcGluZ3MsIHdlIHVzZSBhIGxvY2FsIGViX3Zt
YSB3aXRoIHRoZSBzYW1lIGxpc3RzIGFzIGJlZm9yZSAoanVzdCBub3cKPiA+ID4gbG9jYWwgbm90
IGdsb2JhbCkuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+Cj4gPiAoLS1zdXByZXNzLWNjID8gQWRkZWQg
TWFhcnRlbiBmb3IgcmVhbCwgZGlkbid0IHNlZW0gdG8gYmUgb24gY2MgaW4gbXkKPiA+IGluYm94
IGF0IGxlYXN0KQo+ID4KPiA+IFdoeSBkbyB3ZSBuZWVkIHRoaXM/Cj4KPiBCZWNhdXNlIHRoZSBl
eGVjYnVmIHN0YXRlIGlzIG5vdCBjb3ZlcmVkIGJ5IHRoZSBvYmplY3QgbG9ja3MuIFdlIHB1dAo+
IHRoZW0gaW5zaWRlIHRoZSB2bWEgZm9yIHRoZSBleHByZXNzIHB1cnBvc2Ugb2YgYXZvaWRpbmcg
YW4gYWxsb2NhdGlvbjsgYW4KPiBhbGxvY2F0aW9uIHdlIGVuZGVkIHVwIGRvaW5nIGFueXdheSwg
d2hpY2ggd2UgY2FuIG5vdyB1c2UgZm9yIHRoZSBzb2xlCj4gcHVycG9zZSBvZiB0cmFja2luZyB0
aGUgZXhlY2J1Zi4KPgo+IFRoaXMgaXMgX2V4ZWNidWZfIHN0YXRlIHRoYXQgd2UgcmFtbWVkIGlu
dG8gdGhlIGk5MTVfdm1hLgoKT2ssIHRoYXQgbWFrZXMgc2Vuc2UuIFRoZSBsb2NraW5nIHN0b3J5
IGltbyBkb2Vzbid0IG1ha2Ugc28gbXVjaCBzZW5zZQp0byBtZSByZWFsbHksIHNpbmNlIG5vIG1h
dHRlciB3aGVyZSB3ZSBhbGxvY2F0ZSB0aGlzIHdlJ2xsIHByZXR0eSBtdWNoCmhhdmUgdG8gaG9s
ZCB0aGUgY29ycmVzcG9uZGluZyBvYmogZG1hX3Jlc3YsIGF0IGxlYXN0IGZvciBzbG93LXBhdGhz
CndpdGggcmVsb2NzICh3aGljaCBhcmUgdGhlIG9uZXMgd2hlcmUgd2UgbmVlZCB0aGlzIHN0dWZm
KS4gSSBndWVzcyBvbmUKZG93bnNpZGUgb2YgdGhpcyBpcyB0aGF0IHRoZSB0ZW1wIGFsbG9jYXRp
b24gaXMgbm93IHF1aXRlIGEgYml0CmJpZ2dlci4gSXNuJ3QgdGhhdCBodXJ0aW5nPwotRGFuaWVs
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgor
NDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
