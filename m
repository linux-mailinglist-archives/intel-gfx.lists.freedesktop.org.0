Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8201FB5668
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 21:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7EF16ED31;
	Tue, 17 Sep 2019 19:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 368 seconds by postgrey-1.36 at gabe;
 Tue, 17 Sep 2019 19:46:43 UTC
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E23F6ED31
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 19:46:43 +0000 (UTC)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-hQlt-a9LM1WejyggKHO1vg-1; Tue, 17 Sep 2019 15:40:31 -0400
Received: by mail-qk1-f198.google.com with SMTP id k68so5481906qkb.19
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 12:40:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=XwU74P/rTiApB7iPbfoidYKnNUbXyhfBaK9WpqnpuwI=;
 b=XagLk7xDFw6k748NR9hBz5ltsTBXbJPc5a53qmxnE+mRgxoPalhW2bvnAoarQgFL34
 iW681Ttbv7DQ7Rq8WNKsOFi4+CKYMjK/jWKlAyKqtY8QxLqGPhSK1w1Jr2+eBQ+ZXKW3
 O3nSCMiaQZ1fkLB6dPILbbQ0xw9gpKELBtABs7Y+AC5k9aKa8mrpmpQ9dIQqUGHiJ1C9
 +9lgkWzk/p5oI50onR/Wv6QR9tAbC8SJKpWPVez2ATPPY6/KGFGzav7J/JFhk95gf4K9
 uMQIwmyYhCKLi9a/F8SzC8mLigtb/XqFP98uILI0TY1R8NvpKWPLIAcq/C/ztLtxeN7O
 b6xw==
X-Gm-Message-State: APjAAAUcjzkUdCmzv9PTuKiRRjaicbXR9kkRzAli+Y4c1DD9YvLXshxH
 QhRnxQ/sRpAsI1u3LDzT2c58COez95aOuj+mdJU1LNKY7aIJ0YCUoPBuH9R/HpV1kyr12lyD+Ez
 flywO0XfYRZ2fDqEWoCnH2F/Di4JI
X-Received: by 2002:a37:9f8b:: with SMTP id i133mr77252qke.357.1568749231219; 
 Tue, 17 Sep 2019 12:40:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyzl9BHPh8KUmCS6dd3R3Y1UyTgsDRUPFNeIM4yW5L/yzp0KaNtGpIg+kfSDmN0lCIBGwcB/w==
X-Received: by 2002:a37:9f8b:: with SMTP id i133mr77217qke.357.1568749230936; 
 Tue, 17 Sep 2019 12:40:30 -0700 (PDT)
Received: from dhcp-10-20-1-34.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id r19sm1750422qte.63.2019.09.17.12.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 12:40:30 -0700 (PDT)
Message-ID: <c29ad9ca62a8d1d6bf084b0f36a88923b4fc5c50.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
Date: Tue, 17 Sep 2019 15:40:29 -0400
In-Reply-To: <20190917120936.7501-2-daniel.vetter@ffwll.ch>
References: <20190917120936.7501-1-daniel.vetter@ffwll.ch>
 <20190917120936.7501-2-daniel.vetter@ffwll.ch>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-MC-Unique: hQlt-a9LM1WejyggKHO1vg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1568749602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9Tk1nUiY33sCc0WmTT49KFidPDVTprCfwAaAvlow7iY=;
 b=MB5EljDpHsUkcss/vPNpnKcCYAwXWN9vUInsqXELQao1ImsOTfpa8ehK1MKJCHVw99NMrX
 TCLdNNzr3T6spJDztSFH5s6qHubzbmFHPV/OdfPPZZfCe8fXeFBsu4c4cgoLO/jq/g+tXg
 +lzj6Wj7tqvcpC8h8iA0NK5WmUQOuiw=
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/doc: Improve docs around connector
 (un)registration
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Michel =?ISO-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpPbiBUdWUsIDIwMTkt
MDktMTcgYXQgMTQ6MDkgKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gQ3VycmVudCBjb2Rl
IGlzIHF1aXRlIGEgbWVzcyB1bmZvcnR1bmF0ZWx5LCBzbyBhbHNvIGFkZCBhIHRvZG8ucnN0Cj4g
ZW50cnkgdG8gbWF5YmUgZml4IGl0IHVwIGV2ZW50dWFsbHkuCj4gCj4gQ2M6IE1pY2hlbCBEw6Ru
emVyIDxtaWNoZWxAZGFlbnplci5uZXQ+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZ3B1L3RvZG8u
cnN0ICAgICAgfCAxMiArKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0
b3IuYyB8IDEwICsrKysrKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyB8
ICA4ICsrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QgYi9E
b2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAo+IGluZGV4IDMyNzg3YWNmZjBhOC4uOGRjMTQ3Yzkz
YzljIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0Cj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKPiBAQCAtMjg0LDYgKzI4NCwxOCBAQCBkcm1fZmJfaGVs
cGVyIHRhc2tzCj4gICAgcmVtb3ZlZDogZHJtX2ZiX2hlbHBlcl9zaW5nbGVfYWRkX2FsbF9jb25u
ZWN0b3JzKCksCj4gICAgZHJtX2ZiX2hlbHBlcl9hZGRfb25lX2Nvbm5lY3RvcigpIGFuZAo+IGRy
bV9mYl9oZWxwZXJfcmVtb3ZlX29uZV9jb25uZWN0b3IoKS4KPiAgCj4gK2Nvbm5lY3RvciByZWdp
c3Rlci91bnJlZ2lzdGVyIGZpeGVzCj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gKwo+ICstIEZvciBtb3N0IGNvbm5lY3RvcnMgaXQncyBhIG5vLW9wIHRvIGNhbGwKPiBk
cm1fY29ubmVjdG9yX3JlZ2lzdGVyL3VucmVnaXN0ZXIKPiArICBkaXJlY3RseSBmcm9tIGRyaXZl
ciBjb2RlLCBkcm1fZGV2X3JlZ2lzdGVyL3VucmVnaXN0ZXIgdGFrZSBjYXJlIG9mIHRoaXMKPiAr
ICBhbHJlYWR5LiBXZSBjYW4gcmVtb3ZlIGFsbCBvZiB0aGVtLgo+ICsKPiArLSBGb3IgZHAgZHJp
dmVycyBpdCdzIGEgYml0IG1vcmUgYSBtZXNzLCBzaW5jZSB3ZSBuZWVkIHRoZSBjb25uZWN0b3Ig
dG8gYmUKPiArICByZWdpc3RlcmVkIHdoZW4gY2FsbGluZyBkcm1fZHBfYXV4X3JlZ2lzdGVyLiBG
aXggdGhpcyBieSBpbnN0ZWFkIGNhbGxpbmcKPiArICBkcm1fZHBfYXV4X2luaXQsIGFuZCBtb3Zp
bmcgdGhlIGFjdHVhbCByZWdpc3RlcmluZyBpbnRvIGEgbGF0ZV9yZWdpc3Rlcgo+ICsgIGNhbGxi
YWNrIGFzIHJlY29tbWVuZGVkIGluIHRoZSBrZXJuZWxkb2MuCj4gKwo+ICBDb3JlIHJlZmFjdG9y
aW5ncwo+ICA9PT09PT09PT09PT09PT09PQo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2RybV9jb25uZWN0b3IuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwo+
IGluZGV4IDRjNzY2NjI0YjIwZC4uY2Q1MDQ4Y2VhYjFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fY29ubmVjdG9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5l
Y3Rvci5jCj4gQEAgLTQ4MCw3ICs0ODAsMTAgQEAgRVhQT1JUX1NZTUJPTChkcm1fY29ubmVjdG9y
X2NsZWFudXApOwo+ICAgKiBkcm1fY29ubmVjdG9yX3JlZ2lzdGVyIC0gcmVnaXN0ZXIgYSBjb25u
ZWN0b3IKPiAgICogQGNvbm5lY3RvcjogdGhlIGNvbm5lY3RvciB0byByZWdpc3Rlcgo+ICAgKgo+
IC0gKiBSZWdpc3RlciB1c2Vyc3BhY2UgaW50ZXJmYWNlcyBmb3IgYSBjb25uZWN0b3IKPiArICog
UmVnaXN0ZXIgdXNlcnNwYWNlIGludGVyZmFjZXMgZm9yIGEgY29ubmVjdG9yLiBPbmx5IGNhbGwg
dGhpcyBmb3IKPiBjb25uZWN0b3JzCj4gKyAqIHdoaWNoIGNhbiBiZSBob3RwbHVnZ2VkIGFmdGVy
IGRybV9kZXZfcmVnaXN0ZXIoKSBoYXMgYmVlbiBjYWxsZWQKPiBhbHJlYWR5LAo+ICsgKiBlLmcu
IERQIE1TVCBjb25uZWN0b3JzLiBBbGwgb3RoZXIgY29ubmVjdG9ycyB3aWxsIGJlIHJlZ2lzdGVy
ZWQKPiBhdXRvbWF0aWNhbGx5Cj4gKyAqIHdoZW4gY2FsbGluZyBkcm1fZGV2X3JlZ2lzdGVyKCku
Cj4gICAqCj4gICAqIFJldHVybnM6Cj4gICAqIFplcm8gb24gc3VjY2VzcywgZXJyb3IgY29kZSBv
biBmYWlsdXJlLgo+IEBAIC01MjYsNyArNTI5LDEwIEBAIEVYUE9SVF9TWU1CT0woZHJtX2Nvbm5l
Y3Rvcl9yZWdpc3Rlcik7Cj4gICAqIGRybV9jb25uZWN0b3JfdW5yZWdpc3RlciAtIHVucmVnaXN0
ZXIgYSBjb25uZWN0b3IKPiAgICogQGNvbm5lY3RvcjogdGhlIGNvbm5lY3RvciB0byB1bnJlZ2lz
dGVyCj4gICAqCj4gLSAqIFVucmVnaXN0ZXIgdXNlcnNwYWNlIGludGVyZmFjZXMgZm9yIGEgY29u
bmVjdG9yCj4gKyAqIFVucmVnaXN0ZXIgdXNlcnNwYWNlIGludGVyZmFjZXMgZm9yIGEgY29ubmVj
dG9yLiBPbmx5IGNhbGwgdGhpcyBmb3IKPiArICogY29ubmVjdG9ycyB3aGljaCBoYXZlIHJlZ2lz
dGVyZWQgZXhwbGljaXRseSBieSBjYWxsaW5nCj4gZHJtX2Rldl9yZWdpc3RlcigpLAo+ICsgKiBz
aW5jZSBjb25uZWN0b3JzIGFyZSB1bnJlZ2lzdGVyZWQgYXV0b21hdGljYWxseSB3aGVuCj4gZHJt
X2Rldl91bnJlZ2lzdGVyKCkgaXMKPiArICogY2FsbGVkLgo+ICAgKi8KPiAgdm9pZCBkcm1fY29u
bmVjdG9yX3VucmVnaXN0ZXIoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgewo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCj4gYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCj4gaW5kZXggZmZjNjhkMzA1YWZlLi5mMzczNzk4ZDgy
ZjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKPiBAQCAtMTEwOSw2ICsxMTA5LDE0IEBA
IEVYUE9SVF9TWU1CT0woZHJtX2RwX2F1eF9pbml0KTsKPiAgICogQGF1eDogRGlzcGxheVBvcnQg
QVVYIGNoYW5uZWwKPiAgICoKPiAgICogQXV0b21hdGljYWxseSBjYWxscyBkcm1fZHBfYXV4X2lu
aXQoKSBpZiB0aGlzIGhhc24ndCBiZWVuIGRvbmUgeWV0Lgo+ICsgKiBUaGlzIHNob3VsZCBvbmx5
IGJlIGNhbGxlZCB3aGVuIHRoZSB1bmRlcmx5aW5nICZzdHJ1Y3QgZHJtX2Nvbm5lY3RvciBpcwo+
ICsgKiBpbml0aWFsaWF6ZWQgYWxyZWFkeS4gVGhlcmVmb3JlIHRoZSBiZXN0IHBsYWNlIHRvIGNh
bGwgdGhpcyBpcyBmcm9tCj4gKyAqICZkcm1fY29ubmVjdG9yX2Z1bmNzLmxhdGVfcmVnaXN0ZXIu
IE5vdCB0aGF0IGRyaXZlcnMgd2hpY2ggZG9uJ3QgZm9sbG93Cj4gdGhpcwo+ICsgKiB3aWxsIE9v
cHMgd2hlbiBDT05GSUdfRFJNX0RQX0FVWF9DSEFSREVWIGlzIGVuYWJsZWQuCj4gKyAqCj4gKyAq
IERyaXZlcnMgd2hpY2ggbmVlZCB0byB1c2UgdGhlIGF1eCBjaGFubmVsIGJlZm9yZSB0aGF0IHBv
aW50IChlLmcuIGF0Cj4gZHJpdmVyCj4gKyAqIGxvYWQgdGltZSwgYmVmb3JlIGRybV9kZXZfcmVn
aXN0ZXIoKSBoYXMgYmVlbiBjYWxsZWQpIG5lZWQgdG8gY2FsbAo+ICsgKiBkcm1fZHBfYXV4X2lu
aXQoKS4KPiAgICoKPiAgICogUmV0dXJucyAwIG9uIHN1Y2Nlc3Mgb3IgYSBuZWdhdGl2ZSBlcnJv
ciBjb2RlIG9uIGZhaWx1cmUuCj4gICAqLwotLSAKQ2hlZXJzLAoJTHl1ZGUgUGF1bAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
