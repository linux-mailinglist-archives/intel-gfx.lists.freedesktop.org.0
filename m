Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6B610A05C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 15:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6AA46E3E1;
	Tue, 26 Nov 2019 14:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4366E3E1;
 Tue, 26 Nov 2019 14:34:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19345339-1500050 for multiple; Tue, 26 Nov 2019 14:34:20 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191126142548.22696-1-janusz.krzysztofik@linux.intel.com>
References: <20191126142548.22696-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <157477885327.15944.11926962377852027162@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 26 Nov 2019 14:34:13 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t] tests/prime_vgem: Skip MMAP_GTT
 based subtests if no mappable GGTT
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
Cc: =?utf-8?q?Micha=C5=82_Czapli=C5=84ski?= <michal.czaplinski@intel.com>,
 Jari Tahvanainen <jari.tahvanainen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTEtMjYgMTQ6MjU6NDgpCj4gQXMgd2Un
dmUgYWdyZWVkIHRoYXQgdXNpbmcgR0VNX01NQVAqIElPQ1RMcyBvbiBkbWEtYnVmIG9iamVjdHMg
d2l0aG91dAo+IGEgQ1BVIGFjY2Vzc2libGUgR0FSVCBpcyB2ZXJ5IHF1ZXN0aW9uYWJsZSwgd2Ug
YXJlIHByb2JhYmx5IG5vdCBnb2luZwo+IHRvIGV4dGVuZCBvdXIgTU1BUF9PRkZTRVQgaGFuZGxl
ciB3aXRoIGFuIGV4dHJhIHByb2Nlc3NpbmcgcGF0aAo+IHJlcXVpcmVkIGZvciBpdCB0byB3b3Jr
IGNvcnJlY3RseSBvbiBkbWEtYnVmIG9iamVjdHMuICBBcyBhCj4gY29uc2VxdWVuY2UsIG9uIGZ1
dHVyZSBoYXJkd2FyZSB3aXRoIG5vIG1hcHBhYmxlIGFwZXJ0dXJlIHdlIHdvbid0IGJlCj4gYWJs
ZSB0byB1c2UgTU1BUF9PRkZTRVQgYXMgYSByZXBsYWNlbWVudCBvZiBNTUFQX0dUVCBpbiB0ZXN0
cyB3aGljaAo+IGV4YW1pbmUgUFJJTUUgaW1wb3J0IGludGVyZmFjZS4gIFdoZW4gcnVubmluZyBv
biB0aGF0IGtpbmQgb2YgaGFyZHdhcmUsCj4ganVzdCBza2lwIHN1YnRlc3RzIHdoaWNoIGRlcGVu
ZCBvbiBnZW1fbW1hcF9fZ3R0KCkuCj4gCj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZnds
bC5jaD4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+ICB0ZXN0cy9wcmltZV92Z2VtLmMgfCA1ICsrKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvcHJpbWVfdmdlbS5j
IGIvdGVzdHMvcHJpbWVfdmdlbS5jCj4gaW5kZXggMDRjYzkxM2QuLmI5MmNmNGY3IDEwMDY0NAo+
IC0tLSBhL3Rlc3RzL3ByaW1lX3ZnZW0uYwo+ICsrKyBiL3Rlc3RzL3ByaW1lX3ZnZW0uYwo+IEBA
IC0xMjYsNiArMTI2LDggQEAgc3RhdGljIHZvaWQgdGVzdF9mZW5jZV9tbWFwKGludCBpOTE1LCBp
bnQgdmdlbSkKPiAgICAgICAgIGludCBkbWFidWYsIGk7Cj4gICAgICAgICBpbnQgbWFzdGVyWzJd
LCBzbGF2ZVsyXTsKPiAgCj4gKyAgICAgICBnZW1fcmVxdWlyZV9tYXBwYWJsZV9nZ3R0KGk5MTUp
Owo+ICsKPiAgICAgICAgIGlndF9hc3NlcnQocGlwZShtYXN0ZXIpID09IDApOwo+ICAgICAgICAg
aWd0X2Fzc2VydChwaXBlKHNsYXZlKSA9PSAwKTsKPiAgCj4gQEAgLTIxMCw2ICsyMTIsOCBAQCBz
dGF0aWMgdm9pZCB0ZXN0X2d0dChpbnQgdmdlbSwgaW50IGk5MTUpCj4gICAgICAgICB1aW50MzJf
dCAqcHRyOwo+ICAgICAgICAgaW50IGRtYWJ1ZiwgaTsKPiAgCj4gKyAgICAgICBnZW1fcmVxdWly
ZV9tYXBwYWJsZV9nZ3R0KGk5MTUpOwo+ICsKPiAgICAgICAgIHNjcmF0Y2gud2lkdGggPSAxMDI0
Owo+ICAgICAgICAgc2NyYXRjaC5oZWlnaHQgPSAxMDI0Owo+ICAgICAgICAgc2NyYXRjaC5icHAg
PSAzMjsKPiBAQCAtMjg1LDYgKzI4OSw3IEBAIHN0YXRpYyB2b2lkIHRlc3RfZ3R0X2ludGVybGVh
dmVkKGludCB2Z2VtLCBpbnQgaTkxNSkKPiAgICAgICAgIHVpbnQzMl90ICpwdHIsICpndHQ7Cj4g
ICAgICAgICBpbnQgZG1hYnVmLCBpOwo+ICAKPiArICAgICAgIGdlbV9yZXF1aXJlX21hcHBhYmxl
X2dndHQoaTkxNSk7Cj4gICAgICAgICBpZ3RfcmVxdWlyZShpc19jb2hlcmVudChpOTE1KSk7CgpP
aywgYnV0IHRoZXNlIChmZW5jZV9tbWFwLCBndHRfaW50ZXJsZWF2ZWQpIHdhbnQgV0MgY29oZXJl
bmN5IGFzIGFuIGFsdGVybmF0aXZlLgp0ZXN0X2d0dCBwcm9iYWJseSB3YW50cyBhIGJhc2ljIHRl
c3Rfd2MgYWx0ZXJuYXRpdmUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
