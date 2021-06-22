Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6EA3B0402
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 14:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3DF16E4B7;
	Tue, 22 Jun 2021 12:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311876E4B5;
 Tue, 22 Jun 2021 12:15:40 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id y4so1206984qvs.10;
 Tue, 22 Jun 2021 05:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nxRrLEXXQZCZaPxAAQ858r1CzjCtn0cUWXGvZcoRWl4=;
 b=BDIwnu7PFP2+O54vQKlxd7lsMa+FFYhBOkoUoHYCH/b/7hVVzD8Sjy8WFeo00Qua0C
 is8dJkgjijPJXKmEy6k5FsT7x4y8RaL0usdVPWOW0SLrWp+KvxjFJaRXLmrL+H0x3+7u
 x7k8UFB/vZp9OVu6s5tzer7PDQ4hhmn6QC4LzdR0bMDV6rl0eioTePUSAfpbDcxSVXR0
 x24cHdlfKKVP46+hixfWuYDe/LzMHcaZi+ymuv13Dbe1SiahrZiyTMCiPqdwggLzgsyX
 mo0X85Sb3xj5QJFyDtcEZQ7Uxiqx1ZZ/8LEJF660YsCz7ejDSj5QtlQqJFFnsnfMB5rW
 Dxaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nxRrLEXXQZCZaPxAAQ858r1CzjCtn0cUWXGvZcoRWl4=;
 b=E52fkoM5P2OxLqLLaycjI33zXkx/uMCkCmmyLXgOHUSERPyTthpTPuUyE2KX5MpY6b
 LUfu2WBhOlECeR771iLgajOS3MM9owGqUPbEiGNF0r9O0rZzNaWgiZqN2FwohqXounZ7
 Gfd8cUkvkSwA89GKuJzSsgm4Pb8vTEssXlaJrzo6NDXOBuHHJkO3q2sNW03tTHV3xcWi
 OPsiOOZrAt5Pj8z1KlP4OG0mBxCML4j/CAW58xn+lu1u4XC1dz5ISxCUtz3Na2fTcw+s
 ZXjYQuqsnFCsQ2QwKHB4c4lZqOJGTu0kZCLFeasa3zeS/oLBvQqqjdc2wgcZY3PGLTYb
 o2yQ==
X-Gm-Message-State: AOAM531N/gXUOQSMK4KwcIFE/bl1tw3L0ka0uONq6+7/fC/0c75B/RKL
 coUWiOUEw74BB5snyxlsUV3oj6dB4aTNoeZvIM4=
X-Google-Smtp-Source: ABdhPJzs02UGYWw4tweHEw9GtER/PdJRilCPNciLFN96a5ioL21gH7gKqgBd7g1X50iPMsKGf9vS/aOjJS2PY2YrwmQ=
X-Received: by 2002:a05:6214:850:: with SMTP id
 dg16mr7346677qvb.60.1624364139070; 
 Tue, 22 Jun 2021 05:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210622095843.132549-1-matthew.auld@intel.com>
 <1aeeac85-07d7-b6d5-4253-386801088307@linux.intel.com>
In-Reply-To: <1aeeac85-07d7-b6d5-4253-386801088307@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 22 Jun 2021 13:15:12 +0100
Message-ID: <CAM0jSHOmtdAQ3GVzjAJxa9ZrdFYTuh78gy4Vbzhzf-r=9bofWw@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: consider all placements for
 the page alignment
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
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMiBKdW4gMjAyMSBhdCAxMToxMSwgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+Cj4gT24gNi8yMi8yMSAxMTo1OCBB
TSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+ID4gSnVzdCBjaGVja2luZyB0aGUgY3VycmVudCByZWdp
b24gaXMgbm90IGVub3VnaCwgaWYgd2UgbGF0ZXIgbWlncmF0ZSB0aGUKPiA+IG9iamVjdCBzb21l
d2hlcmUgZWxzZS4gRm9yIGV4YW1wbGUgaWYgdGhlIHBsYWNlbWVudHMgYXJlIHtTTUVNLCBMTUVN
fSwKPiA+IHRoZW4gd2UgbWlnaHQgZ2V0IHRoaXMgd3JvbmcuIEFub3RoZXIgaWRlYSBtaWdodCBi
ZSB0byBtYWtlIHRoZQo+ID4gcGFnZV9hbGlnbm1lbnQgcGFydCBvZiB0aGUgdHRtX3BsYWNlLCBp
bnN0ZWFkIG9mIHRoZSBCTy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1h
dHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV90dG0uYyB8IDIxICsrKysrKysrKysrKysrKysrKysrLQo+ID4gICAx
IGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiA+IGluZGV4IGM1ZGViOGI3MjI3
Yy4uNWQ4OTRiYmE2NDMwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3R0bS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fdHRtLmMKPiA+IEBAIC03NTMsNiArNzUzLDI1IEBAIHZvaWQgaTkxNV90dG1fYm9fZGVzdHJv
eShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQo+ID4gICAgICAgICAgICAgICBjYWxsX3Jj
dSgmb2JqLT5yY3UsIF9faTkxNV9nZW1fZnJlZV9vYmplY3RfcmN1KTsKPiA+ICAgfQo+ID4KPiA+
ICtzdGF0aWMgdTY0IGk5MTVfZ2VtX29iamVjdF9wYWdlX3NpemUoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKPiA+ICt7Cj4gPiArICAgICB1NjQgcGFnZV9zaXplOwo+ID4gKyAgICAg
aW50IGk7Cj4gPiArCj4gPiArICAgICBpZiAoIW9iai0+bW0ubl9wbGFjZW1lbnRzKQo+ID4gKyAg
ICAgICAgICAgICByZXR1cm4gb2JqLT5tbS5yZWdpb24tPm1pbl9wYWdlX3NpemU7Cj4gPiArCj4g
PiArICAgICBwYWdlX3NpemUgPSAwOwo+ID4gKyAgICAgZm9yIChpID0gMDsgaSA8IG9iai0+bW0u
bl9wbGFjZW1lbnRzOyBpKyspIHsKPiA+ICsgICAgICAgICAgICAgc3RydWN0IGludGVsX21lbW9y
eV9yZWdpb24gKm1yID0gb2JqLT5tbS5wbGFjZW1lbnRzW2ldOwo+ID4gKwo+ID4gKyAgICAgICAg
ICAgICBwYWdlX3NpemUgPSBtYXhfdCh1NjQsIG1yLT5taW5fcGFnZV9zaXplLCBwYWdlX3NpemUp
Owo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgR0VNX0JVR19PTighcGFnZV9zaXplKTsKPiA+
ICsgICAgIHJldHVybiBwYWdlX3NpemU7Cj4gPiArfQo+ID4gKwo+ID4gICAvKioKPiA+ICAgICog
X19pOTE1X2dlbV90dG1fb2JqZWN0X2luaXQgLSBJbml0aWFsaXplIGEgdHRtLWJhY2tlZCBpOTE1
IGdlbSBvYmplY3QKPiA+ICAgICogQG1lbTogVGhlIGluaXRpYWwgbWVtb3J5IHJlZ2lvbiBmb3Ig
dGhlIG9iamVjdC4KPiA+IEBAIC03OTMsNyArODEyLDcgQEAgaW50IF9faTkxNV9nZW1fdHRtX29i
amVjdF9pbml0KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCj4gPiAgICAgICBvYmot
PmJhc2Uudm1hX25vZGUuZHJpdmVyX3ByaXZhdGUgPSBpOTE1X2dlbV90b190dG0ob2JqKTsKPiA+
ICAgICAgIHJldCA9IHR0bV9ib19pbml0KCZpOTE1LT5iZGV2LCBpOTE1X2dlbV90b190dG0ob2Jq
KSwgc2l6ZSwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGJvX3R5cGUsICZpOTE1X3N5c19w
bGFjZW1lbnQsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICBtZW0tPm1pbl9wYWdlX3NpemUg
Pj4gUEFHRV9TSElGVCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfZ2VtX29iamVj
dF9wYWdlX3NpemUob2JqKSA+PiBQQUdFX1NISUZULAo+Cj4gSG1tLCBjYW4ndCB3ZSBqdXN0IGhh
dmUgdGhlIGJ1ZGR5IG1hbmFnZXIgc2lsZW50bHkgZW5mb3JjZSBpdHMKPiBtaW5fcGFnZV9zaXpl
PwoKTWF5YmUsIGJ1dCB3ZSBuZWVkIHNvbWUgd2F5IG9mIG92ZXJyaWRpbmcgaXQgZm9yIGFsbCBv
ZiBvdXIgcGFnZS10YWJsZQphbGxvY2F0aW9ucyhhbmQgc29tZSBvdGhlciBzdHVmZiBhbHNvKSwg
c28gYmVpbmcgYWJsZSB0byBjb250cm9sIHRoZQpwYWdlX2FsaWdubWVudCBhdCB0aGUgb2JqZWN0
IGxldmVsIGhlcmUgc2VlbXMgcmVhc29uYWJsZT8gQ291bGQgbWF5YmUKcGFzcyBpdCB0aHJvdWdo
IHdpdGggY3JlYXRlX2xtZW1fd2l0aF9wYWdlX3NpemUoLi4uLCBwYWdlX3NpemUpPyBPaywKaXQg
bWlnaHQgYmUgYmVzdCB0byBmaXJzdCB0eXBlIGl0IGFuZCB0aGVuIHNlZSBob3cgaXQgd2lsbCBh
bGwgZml0CnRvZ2V0aGVyLgoKCj4KPiAvVGhvbWFzCj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
