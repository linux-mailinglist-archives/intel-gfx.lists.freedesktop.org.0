Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6E71068AA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 10:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342676F509;
	Fri, 22 Nov 2019 09:13:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 631A86F504
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 09:13:05 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id m193so5935047oig.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 01:13:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fCDRPFIJJO/oD6ufYEeRv8qAtI+e6uhTU/DFtZtALNU=;
 b=B2+6M+pp7vHM0c0yAA+x7jOM4QdpEyth6SkILUAZO1PE4u+FBgz8wxZcR+0K4KBLI1
 ogmYP9hDT2Bg6Bf8GaSLVSBNYhFoiaWUTxZ7wBpf29yUH3NdJxXa73+T7h5KPGHA5BT4
 UomO0OjxBh6Kn9gKTIIplRAKUBzhB5wEiWhq7vDiUW5bVSpiA85LugFV/muPHh06kkRs
 8Vjq5aB7PtKenALIKZ0utn8fVFlo5wD4/TFUOnpyl+yu1MXbU87w3FCa7lcVnc0CjojJ
 04Y7JBnSrGooF7VOruGlXhLaBW9WBtmG508VesFB9TnxLCKnRAkUOHLl+g7ofYmFakJK
 JcgA==
X-Gm-Message-State: APjAAAVqbi++14Dm0Ay99R4RuPJwv4Wwgw+dmgtEn35N6m8e12ZrFHD/
 4JBlOQDWl4cHASl8uRMUb1Hcbjc5dtop57JlWKp+BQ==
X-Google-Smtp-Source: APXvYqyYbLdqss2wBLAVqodDBI7Pvz/VijHc5EkKz1/3wguyxXwi4dGXUdsvuKA2KL/+DXIgWr38P6zWHYGOSpN5cMw=
X-Received: by 2002:aca:b805:: with SMTP id i5mr11791657oif.110.1574413984428; 
 Fri, 22 Nov 2019 01:13:04 -0800 (PST)
MIME-Version: 1.0
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
 <20191115092120.4445-8-daniel.vetter@ffwll.ch>
 <282c9881-6134-5d82-c408-ee90986ef123@suse.de>
In-Reply-To: <282c9881-6134-5d82-c408-ee90986ef123@suse.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 22 Nov 2019 10:12:53 +0100
Message-ID: <CAKMK7uGR4YZ0h=ctgr+9QfWgu8L2He+YijvHFqSdf7SVmxrHhw@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fCDRPFIJJO/oD6ufYEeRv8qAtI+e6uhTU/DFtZtALNU=;
 b=dqmHUMRv8xbETtK5Pb9N95FXtLq4lXe1N8kEb4mHDdXQ9sUnW6McaSI1RoAAC5VVac
 DKWsVyu6GLXWSmJshWtEUtscfW6d1vO5qn5Ah7yP9JPGb6aUK57RMj1wUQ1RDL/g5R8b
 BjPY5NhoOBxUCmIRhiMgJxgt2POVwmnGAKDFE=
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/hibmc: Use drm_gem_fb_create
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
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgOToxNiBBTSBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4gd3JvdGU6Cj4KPiBIaQo+Cj4gQW0gMTUuMTEuMTkgdW0gMTA6MjEgc2No
cmllYiBEYW5pZWwgVmV0dGVyOgo+ID4gQWdhaW4gd2UgY291bGQgZGVsZXRlIGEgbG90IG1vcmUg
aWYgd2UnZCBzd2l0Y2ggb3ZlciB0byB0aGUgZ2VuZXJpYwo+ID4gZmJkZXYgc3R1ZmYuCj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
Cj4KPiBUaGVyZSdzIG9uZSBjb21tZW50IGJlbG93LiBFeGNlcHQgZm9yIHRoYXQsCj4KPiBBY2tl
ZC1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4KPiA+IC0tLQo+
ID4gIC4uLi9ncHUvZHJtL2hpc2lsaWNvbi9oaWJtYy9oaWJtY19kcm1fZGUuYyAgICB8ICA0ICst
Cj4gPiAgLi4uL2dwdS9kcm0vaGlzaWxpY29uL2hpYm1jL2hpYm1jX2RybV9kcnYuaCAgIHwgMTEg
Ky0tLQo+ID4gIC4uLi9ncHUvZHJtL2hpc2lsaWNvbi9oaWJtYy9oaWJtY19kcm1fZmJkZXYuYyB8
ICA1ICstCj4gPiAgZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9oaWJtYy9oaWJtY190dG0uYyAg
IHwgNjIgKysrKystLS0tLS0tLS0tLS0tLQo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0
aW9ucygrKSwgNjMgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9oaXNpbGljb24vaGlibWMvaGlibWNfZHJtX2RlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaGlz
aWxpY29uL2hpYm1jL2hpYm1jX2RybV9kZS5jCj4gPiBpbmRleCA2NTI3YTk3ZjY4YTMuLjJkMDky
MGVjNDU1NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24vaGlibWMv
aGlibWNfZHJtX2RlLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24vaGlibWMv
aGlibWNfZHJtX2RlLmMKPiA+IEBAIC05OSwxNCArOTksMTIgQEAgc3RhdGljIHZvaWQgaGlibWNf
cGxhbmVfYXRvbWljX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiA+ICAgICAgIHM2
NCBncHVfYWRkciA9IDA7Cj4gPiAgICAgICB1bnNpZ25lZCBpbnQgbGluZV9sOwo+ID4gICAgICAg
c3RydWN0IGhpYm1jX2RybV9wcml2YXRlICpwcml2ID0gcGxhbmUtPmRldi0+ZGV2X3ByaXZhdGU7
Cj4gPiAtICAgICBzdHJ1Y3QgaGlibWNfZnJhbWVidWZmZXIgKmhpYm1jX2ZiOwo+ID4gICAgICAg
c3RydWN0IGRybV9nZW1fdnJhbV9vYmplY3QgKmdibzsKPiA+Cj4gPiAgICAgICBpZiAoIXN0YXRl
LT5mYikKPiA+ICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4KPiA+IC0gICAgIGhpYm1jX2ZiID0g
dG9faGlibWNfZnJhbWVidWZmZXIoc3RhdGUtPmZiKTsKPiA+IC0gICAgIGdibyA9IGRybV9nZW1f
dnJhbV9vZl9nZW0oaGlibWNfZmItPm9iaik7Cj4gPiArICAgICBnYm8gPSBkcm1fZ2VtX3ZyYW1f
b2ZfZ2VtKGZiLT5vYmpbMF0pOwo+Cj4gVGhlcmUncyBubyBmYiBpbiB0aGlzIGZ1bmN0aW9uLiBZ
b3UgaGF2ZSB0byB1c2Ugc3RhdGUtPmZiLAoKVWgsIGhpYm1jIGlzIHRoZSBvbmUgZHJpdmVyIHRo
YXQgZG9lc24ndCBjb21waWxlIG9uIGFybTMyIDotLyBJJ2xsCmRyb3AgbXkgcGF0Y2ggaGVyZSBh
bmQgdGFrZSBhIGxvb2sgYXQgeW91ciBzZXJpZXMgYW5kIHRyeSB0byByZXZpZXcKaXQuIFRoZW4g
aW1vIHdhaXQgMiB3ZWVrcyBvciBzbyBmb3Igc29tZXQgdGVzdGluZyBmcm9tIG1haW50YWluZXJz
LAphbmQgcHVzaCBlaXRoZXIgd2F5LiBJZiBpdCB3b3JrcyBncmVhdCwgaWYgaXQgYnJlYWtzIHlv
dSBoYXZlIHlvdXIKdGVzdGVyIHRoZW4gOi0pCi1EYW5pZWwKCj4KPiA+Cj4gPiAgICAgICBncHVf
YWRkciA9IGRybV9nZW1fdnJhbV9vZmZzZXQoZ2JvKTsKPiA+ICAgICAgIGlmIChXQVJOX09OX09O
Q0UoZ3B1X2FkZHIgPCAwKSkKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaGlzaWxp
Y29uL2hpYm1jL2hpYm1jX2RybV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24vaGli
bWMvaGlibWNfZHJtX2Rydi5oCj4gPiBpbmRleCBlNThlY2Q3ZWRjZjguLmFiNWI0YTRhMjA5NSAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24vaGlibWMvaGlibWNfZHJt
X2Rydi5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaGlzaWxpY29uL2hpYm1jL2hpYm1jX2Ry
bV9kcnYuaAo+ID4gQEAgLTIwLDE0ICsyMCw5IEBACj4gPiAgc3RydWN0IGRybV9kZXZpY2U7Cj4g
PiAgc3RydWN0IGRybV9nZW1fb2JqZWN0Owo+ID4KPiA+IC1zdHJ1Y3QgaGlibWNfZnJhbWVidWZm
ZXIgewo+ID4gLSAgICAgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciBmYjsKPiA+IC0gICAgIHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqOwo+ID4gLX07Cj4gPiAtCj4gPiAgc3RydWN0IGhpYm1jX2Zi
ZGV2IHsKPiA+ICAgICAgIHN0cnVjdCBkcm1fZmJfaGVscGVyIGhlbHBlcjsgLyogbXVzdCBiZSBm
aXJzdCAqLwo+ID4gLSAgICAgc3RydWN0IGhpYm1jX2ZyYW1lYnVmZmVyICpmYjsKPiA+ICsgICAg
IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiOwo+ID4gICAgICAgaW50IHNpemU7Cj4gPiAgfTsK
PiA+Cj4gPiBAQCAtNDcsOCArNDIsNiBAQCBzdHJ1Y3QgaGlibWNfZHJtX3ByaXZhdGUgewo+ID4g
ICAgICAgc3RydWN0IGhpYm1jX2ZiZGV2ICpmYmRldjsKPiA+ICB9Owo+ID4KPiA+IC0jZGVmaW5l
IHRvX2hpYm1jX2ZyYW1lYnVmZmVyKHgpIGNvbnRhaW5lcl9vZih4LCBzdHJ1Y3QgaGlibWNfZnJh
bWVidWZmZXIsIGZiKQo+ID4gLQo+ID4gIHZvaWQgaGlibWNfc2V0X3Bvd2VyX21vZGUoc3RydWN0
IGhpYm1jX2RybV9wcml2YXRlICpwcml2LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgdW5z
aWduZWQgaW50IHBvd2VyX21vZGUpOwo+ID4gIHZvaWQgaGlibWNfc2V0X2N1cnJlbnRfZ2F0ZShz
dHJ1Y3QgaGlibWNfZHJtX3ByaXZhdGUgKnByaXYsCj4gPiBAQCAtNjEsNyArNTQsNyBAQCB2b2lk
IGhpYm1jX2ZiZGV2X2Zpbmkoc3RydWN0IGhpYm1jX2RybV9wcml2YXRlICpwcml2KTsKPiA+Cj4g
PiAgaW50IGhpYm1jX2dlbV9jcmVhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdTMyIHNpemUs
IGJvb2wgaXNrZXJuZWwsCj4gPiAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9nZW1fb2Jq
ZWN0ICoqb2JqKTsKPiA+IC1zdHJ1Y3QgaGlibWNfZnJhbWVidWZmZXIgKgo+ID4gK3N0cnVjdCBk
cm1fZnJhbWVidWZmZXIgKgo+ID4gIGhpYm1jX2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwKPiA+ICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fbW9k
ZV9mYl9jbWQyICptb2RlX2NtZCwKPiA+ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1f
Z2VtX29iamVjdCAqb2JqKTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaGlzaWxp
Y29uL2hpYm1jL2hpYm1jX2RybV9mYmRldi5jIGIvZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9o
aWJtYy9oaWJtY19kcm1fZmJkZXYuYwo+ID4gaW5kZXggYjRjMWNlYTA1MWU4Li40NDZhZWVkYzll
MjkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaGlzaWxpY29uL2hpYm1jL2hpYm1j
X2RybV9mYmRldi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaGlzaWxpY29uL2hpYm1jL2hp
Ym1jX2RybV9mYmRldi5jCj4gPiBAQCAtMTQxLDE1ICsxNDEsMTQgQEAgc3RhdGljIGludCBoaWJt
Y19kcm1fZmJfY3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsCj4gPgo+ID4gIHN0
YXRpYyB2b2lkIGhpYm1jX2ZiZGV2X2Rlc3Ryb3koc3RydWN0IGhpYm1jX2ZiZGV2ICpmYmRldikK
PiA+ICB7Cj4gPiAtICAgICBzdHJ1Y3QgaGlibWNfZnJhbWVidWZmZXIgKmdmYiA9IGZiZGV2LT5m
YjsKPiA+ICAgICAgIHN0cnVjdCBkcm1fZmJfaGVscGVyICpmYmggPSAmZmJkZXYtPmhlbHBlcjsK
PiA+Cj4gPiAgICAgICBkcm1fZmJfaGVscGVyX3VucmVnaXN0ZXJfZmJpKGZiaCk7Cj4gPgo+ID4g
ICAgICAgZHJtX2ZiX2hlbHBlcl9maW5pKGZiaCk7Cj4gPgo+ID4gLSAgICAgaWYgKGdmYikKPiA+
IC0gICAgICAgICAgICAgZHJtX2ZyYW1lYnVmZmVyX3B1dCgmZ2ZiLT5mYik7Cj4gPiArICAgICBp
ZiAoZmJkZXYtPmZiKQo+ID4gKyAgICAgICAgICAgICBkcm1fZnJhbWVidWZmZXJfcHV0KGZiZGV2
LT5mYik7Cj4gPiAgfQo+ID4KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mYl9oZWxwZXJf
ZnVuY3MgaGlibWNfZmJkZXZfaGVscGVyX2Z1bmNzID0gewo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9oaXNpbGljb24vaGlibWMvaGlibWNfdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aGlzaWxpY29uL2hpYm1jL2hpYm1jX3R0bS5jCj4gPiBpbmRleCAyMWI2ODRlYWI1YzkuLjM4NjAz
M2IwZDNhMiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24vaGlibWMv
aGlibWNfdHRtLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24vaGlibWMvaGli
bWNfdHRtLmMKPiA+IEBAIC0xNiw2ICsxNiw3IEBACj4gPiAgI2luY2x1ZGUgPGRybS9kcm1fYXRv
bWljX2hlbHBlci5oPgo+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPgo+ID4gICNpbmNsdWRl
IDxkcm0vZHJtX2dlbV92cmFtX2hlbHBlci5oPgo+ID4gKyNpbmNsdWRlIDxkcm0vZHJtX2dlbV9m
cmFtZWJ1ZmZlcl9oZWxwZXIuaD4KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPgo+ID4K
PiA+ICAjaW5jbHVkZSAiaGlibWNfZHJtX2Rydi5oIgo+ID4gQEAgLTk3LDc0ICs5OCwzOSBAQCBp
bnQgaGlibWNfZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLCBzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAo+ID4gICAgICAgcmV0dXJuIDA7Cj4gPiAgfQo+ID4KPiA+IC1zdGF0aWMgdm9p
ZCBoaWJtY191c2VyX2ZyYW1lYnVmZmVyX2Rlc3Ryb3koc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAq
ZmIpCj4gPiAtewo+ID4gLSAgICAgc3RydWN0IGhpYm1jX2ZyYW1lYnVmZmVyICpoaWJtY19mYiA9
IHRvX2hpYm1jX2ZyYW1lYnVmZmVyKGZiKTsKPiA+IC0KPiA+IC0gICAgIGRybV9nZW1fb2JqZWN0
X3B1dF91bmxvY2tlZChoaWJtY19mYi0+b2JqKTsKPiA+IC0gICAgIGRybV9mcmFtZWJ1ZmZlcl9j
bGVhbnVwKGZiKTsKPiA+IC0gICAgIGtmcmVlKGhpYm1jX2ZiKTsKPiA+IC19Cj4gPiAtCj4gPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXJfZnVuY3MgaGlibWNfZmJfZnVuY3Mg
PSB7Cj4gPiAtICAgICAuZGVzdHJveSA9IGhpYm1jX3VzZXJfZnJhbWVidWZmZXJfZGVzdHJveSwK
PiA+ICsgICAgIC5kZXN0cm95ICAgICAgICA9IGRybV9nZW1fZmJfZGVzdHJveSwKPiA+ICsgICAg
IC5jcmVhdGVfaGFuZGxlICA9IGRybV9nZW1fZmJfY3JlYXRlX2hhbmRsZSwKPiA+ICB9Owo+ID4K
PiA+IC1zdHJ1Y3QgaGlibWNfZnJhbWVidWZmZXIgKgo+ID4gK3N0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKgo+ID4gIGhpYm1jX2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwK
PiA+ICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICpt
b2RlX2NtZCwKPiA+ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqKQo+ID4gIHsKPiA+IC0gICAgIHN0cnVjdCBoaWJtY19mcmFtZWJ1ZmZlciAqaGlibWNfZmI7
Cj4gPiArICAgICBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYjsKPiA+ICAgICAgIGludCByZXQ7
Cj4gPgo+ID4gLSAgICAgaGlibWNfZmIgPSBremFsbG9jKHNpemVvZigqaGlibWNfZmIpLCBHRlBf
S0VSTkVMKTsKPiA+IC0gICAgIGlmICghaGlibWNfZmIpIHsKPiA+IC0gICAgICAgICAgICAgRFJN
X0VSUk9SKCJmYWlsZWQgdG8gYWxsb2NhdGUgaGlibWNfZmJcbiIpOwo+ID4gKyAgICAgZmIgPSBr
emFsbG9jKHNpemVvZigqZmIpLCBHRlBfS0VSTkVMKTsKPiA+ICsgICAgIGlmICghZmIpIHsKPiA+
ICsgICAgICAgICAgICAgRFJNX0VSUk9SKCJmYWlsZWQgdG8gYWxsb2NhdGUgZmJcbiIpOwo+ID4g
ICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKPiA+ICAgICAgIH0KPiA+Cj4g
PiAtICAgICBkcm1faGVscGVyX21vZGVfZmlsbF9mYl9zdHJ1Y3QoZGV2LCAmaGlibWNfZmItPmZi
LCBtb2RlX2NtZCk7Cj4gPiAtICAgICBoaWJtY19mYi0+b2JqID0gb2JqOwo+ID4gLSAgICAgcmV0
ID0gZHJtX2ZyYW1lYnVmZmVyX2luaXQoZGV2LCAmaGlibWNfZmItPmZiLCAmaGlibWNfZmJfZnVu
Y3MpOwo+ID4gKyAgICAgZHJtX2hlbHBlcl9tb2RlX2ZpbGxfZmJfc3RydWN0KGRldiwgZmIsIG1v
ZGVfY21kKTsKPiA+ICsgICAgIGZiLT5vYmpbMF0gPSBvYmo7Cj4gPiArICAgICByZXQgPSBkcm1f
ZnJhbWVidWZmZXJfaW5pdChkZXYsIGZiLCAmaGlibWNfZmJfZnVuY3MpOwo+ID4gICAgICAgaWYg
KHJldCkgewo+ID4gICAgICAgICAgICAgICBEUk1fRVJST1IoImRybV9mcmFtZWJ1ZmZlcl9pbml0
IGZhaWxlZDogJWRcbiIsIHJldCk7Cj4gPiAtICAgICAgICAgICAgIGtmcmVlKGhpYm1jX2ZiKTsK
PiA+ICsgICAgICAgICAgICAga2ZyZWUoZmIpOwo+ID4gICAgICAgICAgICAgICByZXR1cm4gRVJS
X1BUUihyZXQpOwo+ID4gICAgICAgfQo+ID4KPiA+IC0gICAgIHJldHVybiBoaWJtY19mYjsKPiA+
IC19Cj4gPiAtCj4gPiAtc3RhdGljIHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKgo+ID4gLWhpYm1j
X3VzZXJfZnJhbWVidWZmZXJfY3JlYXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxwLAo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICptb2Rl
X2NtZCkKPiA+IC17Cj4gPiAtICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iajsKPiA+IC0g
ICAgIHN0cnVjdCBoaWJtY19mcmFtZWJ1ZmZlciAqaGlibWNfZmI7Cj4gPiAtCj4gPiAtICAgICBE
Uk1fREVCVUdfRFJJVkVSKCIlZHglZCwgZm9ybWF0ICVjJWMlYyVjXG4iLAo+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICBtb2RlX2NtZC0+d2lkdGgsIG1vZGVfY21kLT5oZWlnaHQsCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgIChtb2RlX2NtZC0+cGl4ZWxfZm9ybWF0KSAmIDB4ZmYsCj4gPiAt
ICAgICAgICAgICAgICAgICAgICAgIChtb2RlX2NtZC0+cGl4ZWxfZm9ybWF0ID4+IDgpICAmIDB4
ZmYsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgIChtb2RlX2NtZC0+cGl4ZWxfZm9ybWF0ID4+
IDE2KSAmIDB4ZmYsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgIChtb2RlX2NtZC0+cGl4ZWxf
Zm9ybWF0ID4+IDI0KSAmIDB4ZmYpOwo+ID4gLQo+ID4gLSAgICAgb2JqID0gZHJtX2dlbV9vYmpl
Y3RfbG9va3VwKGZpbHAsIG1vZGVfY21kLT5oYW5kbGVzWzBdKTsKPiA+IC0gICAgIGlmICghb2Jq
KQo+ID4gLSAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PRU5UKTsKPiA+IC0KPiA+IC0g
ICAgIGhpYm1jX2ZiID0gaGlibWNfZnJhbWVidWZmZXJfaW5pdChkZXYsIG1vZGVfY21kLCBvYmop
Owo+ID4gLSAgICAgaWYgKElTX0VSUihoaWJtY19mYikpIHsKPiA+IC0gICAgICAgICAgICAgZHJt
X2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKG9iaik7Cj4gPiAtICAgICAgICAgICAgIHJldHVybiBF
UlJfUFRSKChsb25nKWhpYm1jX2ZiKTsKPiA+IC0gICAgIH0KPiA+IC0gICAgIHJldHVybiAmaGli
bWNfZmItPmZiOwo+ID4gKyAgICAgcmV0dXJuIGZiOwo+ID4gIH0KPiA+Cj4gPiAgY29uc3Qgc3Ry
dWN0IGRybV9tb2RlX2NvbmZpZ19mdW5jcyBoaWJtY19tb2RlX2Z1bmNzID0gewo+ID4gICAgICAg
LmF0b21pY19jaGVjayA9IGRybV9hdG9taWNfaGVscGVyX2NoZWNrLAo+ID4gICAgICAgLmF0b21p
Y19jb21taXQgPSBkcm1fYXRvbWljX2hlbHBlcl9jb21taXQsCj4gPiAtICAgICAuZmJfY3JlYXRl
ID0gaGlibWNfdXNlcl9mcmFtZWJ1ZmZlcl9jcmVhdGUsCj4gPiArICAgICAuZmJfY3JlYXRlID0g
ZHJtX2dlbV9mYl9jcmVhdGUsCj4gPiAgfTsKPiA+Cj4KPiAtLQo+IFRob21hcyBaaW1tZXJtYW5u
Cj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcgo+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSAo+IE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQo+IChI
UkIgMzY4MDksIEFHIE7DvHJuYmVyZykKPiBHZXNjaMOkZnRzZsO8aHJlcjogRmVsaXggSW1lbmTD
tnJmZmVyCj4KCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
