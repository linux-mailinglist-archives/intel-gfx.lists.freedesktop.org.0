Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA931E4E42
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 21:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F736E3B0;
	Wed, 27 May 2020 19:35:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE4C6E3B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 19:35:00 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id g25so477693otp.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 12:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KSWZp2Sjk0AEV6cgrhGtOo8+GUAPeBivcSRduegOSf0=;
 b=IBp5JjRm/ThOsQ4G0sVK+QqogVhmCmGISX9kJydo//lO4wAIbdQgcSMzozDr/aNqTU
 35lTW9tjqRBVDzis3k1d33SxJN67Nxh+QRtegF0Wal0J9SSJXbyiiHuEhWoHTE9qmMVu
 RhDVo+HyHvnhMtAigS1QQ3k0s7mmEBLyEyLXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KSWZp2Sjk0AEV6cgrhGtOo8+GUAPeBivcSRduegOSf0=;
 b=h8w2O3MC0lxdrB0+U1v5j5eSLj6B8yapJg5ecpwyQPR8rxAva/ZtLohOAMjFkNTf/9
 zGXcWbGFlVsgNFCq4uN0+/JDKkVpAfSTvJWyS3v2zHh09BYT18xJLEfQ7aM20jeQVeti
 faWYlFYgeE9SZGXhxF8dT3/GonnAcYsYLyumEzPPnn16mjd/JVQ81h9DfOHuo9+qLu8E
 qQSsw8ilICxN9TXkc7GtgqyC67gMfHz9x4fGEkGitzzKf0bRpXxo64codq7eupEbfmKn
 2vlijz6qsL+j/iqNNxh5ChJHRnMhzM3sKmFMw9sN0shWfhYr4w77eGRctYU4e/EOE7P6
 P0MA==
X-Gm-Message-State: AOAM530mNc0O6M3vZC1vK6xvLB5k9Roi60Bf+UBzP+S7gUDSrP05EZXs
 oYC7wdh9jufCO91muCLH+G/BvroAzB9zqnBhdKV+iw==
X-Google-Smtp-Source: ABdhPJwXGvQvT1rMmqQ+w191LOnAKLPWc+dvMhrohCJR2286RC6OXxEpLEhN0F3z7YD9K/5GmgMCTB5wpDuBL7Ps0kg=
X-Received: by 2002:a9d:768a:: with SMTP id j10mr6245718otl.188.1590608099451; 
 Wed, 27 May 2020 12:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
 <20200511093554.211493-8-daniel.vetter@ffwll.ch>
 <d6dc2421-b875-7fd7-74a6-ec78aebdcd84@suse.de>
In-Reply-To: <d6dc2421-b875-7fd7-74a6-ec78aebdcd84@suse.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 27 May 2020 21:34:47 +0200
Message-ID: <CAKMK7uEcP0aj0r-TevAMdz8_fUH_DnJCDfJxiVf1_H+qweS_5Q@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/shmem-helpers: Redirect mmap for
 imported dma-buf
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjcsIDIwMjAgYXQgODozMiBQTSBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4gd3JvdGU6Cj4KPiBIaSBEYW5pZWwsCj4KPiB3aGF0J3MgeW91ciBwbGFu
IGZvciB0aGlzIHBhdGNoIHNldD8gSSdkIG5lZWQgdGhpcyBwYXRjaCBmb3IgdGhlIHVkbAo+IHNo
bWVtIGNsZWFudXAuCgpJIHdhcyBwaW5naW5nIHNvbWUgcGVvcGxlIGZvciBhIHRlc3RlZC1ieSwg
SSBraW5kYSBkb24ndCB3YW50IHRvIHB1c2gKdGhpcyBlbnRpcmVseSB1bnRlc3RlZC4gSSB0aGlu
ayBhdCBsZWFzdCBvbmUgb2YgdGhlIHJlbmRlcmluZyBkcml2ZXJzCnVzaW5nIHNobWVtIHdvdWxk
IGJlIG5pY2UgdG8gcnVuIHRoaXMgb24sIEkndmUgcGluZ2VkIFJvYiBIZXJyaW5nIGEKYml0Lgot
RGFuaWVsCgo+Cj4gQmVzdCByZWdhcmRzCj4gVGhvbWFzCj4KPiBBbSAxMS4wNS4yMCB1bSAxMToz
NSBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gPiBDdXJyZW50bHkgdGhpcyBzZWVtcyB0byB3b3Jr
IGJ5IGNvbnZlcnRpbmcgdGhlIHNndCBpbnRvIGEgcGFnZXMgYXJyYXksCj4gPiBhbmQgdGhlbiB0
cmVhdGluZyBpdCBsaWtlIGEgbmF0aXZlIG9iamVjdC4gRG8gdGhlIHJpZ2h0IHRoaW5nIGFuZAo+
ID4gcmVkaXJlY3QgbW1hcCB0byB0aGUgZXhwb3J0ZXIuCj4gPgo+ID4gV2l0aCB0aGlzIG5vdGhp
bmcgaXMgY2FsbGluZyBnZXRfcGFnZXMgYW55bW9yZSBvbiBpbXBvcnRlZCBkbWEtYnVmLAo+ID4g
YW5kIHdlIGNhbiBzdGFydCB0byByZW1vdmUgdGhlIHVzZSBvZiB0aGUgLT5wYWdlcyBhcnJheSBm
b3IgdGhhdCBjYXNlLgo+ID4KPiA+IHYyOiBSZWJhc2UKPiA+Cj4gPiBDYzogR2VyZCBIb2ZmbWFu
biA8a3JheGVsQHJlZGhhdC5jb20+Cj4gPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9y
Zz4KPiA+IENjOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPiA+IFNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgfCAzICsrKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X2dlbV9zaG1lbV9oZWxwZXIuYwo+ID4gaW5kZXggYjljYmE1Y2M2MWMzLi4xMTdhNzg0MWUyODQg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuYwo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMKPiA+IEBAIC01
NTEsNiArNTUxLDkgQEAgaW50IGRybV9nZW1fc2htZW1fbW1hcChzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCj4gPiAgICAgICAvKiBSZW1vdmUg
dGhlIGZha2Ugb2Zmc2V0ICovCj4gPiAgICAgICB2bWEtPnZtX3Bnb2ZmIC09IGRybV92bWFfbm9k
ZV9zdGFydCgmb2JqLT52bWFfbm9kZSk7Cj4gPgo+ID4gKyAgICAgaWYgKG9iai0+aW1wb3J0X2F0
dGFjaCkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGRtYV9idWZfbW1hcChvYmotPmRtYV9idWYs
IHZtYSwgMCk7Cj4gPiArCj4gPiAgICAgICBzaG1lbSA9IHRvX2RybV9nZW1fc2htZW1fb2JqKG9i
aik7Cj4gPgo+ID4gICAgICAgcmV0ID0gZHJtX2dlbV9zaG1lbV9nZXRfcGFnZXMoc2htZW0pOwo+
ID4KPgo+IC0tCj4gVGhvbWFzIFppbW1lcm1hbm4KPiBHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVy
Cj4gU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICj4gTWF4ZmVsZHN0ci4gNSwg
OTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55Cj4gKEhSQiAzNjgwOSwgQUcgTsO8cm5iZXJnKQo+IEdl
c2Now6RmdHNmw7xocmVyOiBGZWxpeCBJbWVuZMO2cmZmZXIKPgoKCi0tIApEYW5pZWwgVmV0dGVy
ClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0
OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
