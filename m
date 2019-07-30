Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D9E7B2E5
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 21:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED12D89DBC;
	Tue, 30 Jul 2019 19:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A76AA89DBC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 19:07:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17738690-1500050 for multiple; Tue, 30 Jul 2019 20:07:29 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190730181903.17820-2-michal.wajdeczko@intel.com>
References: <20190730181903.17820-1-michal.wajdeczko@intel.com>
 <20190730181903.17820-2-michal.wajdeczko@intel.com>
Message-ID: <156451364846.6373.11504509841314194285@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 20:07:28 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Consider enable_guc
 modparam during fw selection
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMwIDE5OjE5OjAxKQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaAo+IGluZGV4IGZlMzM2MmZkNzcwNi4uYzhlNWFkOTgw
N2RiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oCj4gQEAgLTUwLDgg
KzUwLDcgQEAgaW50IGludGVsX3VjX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfdWMgKnVjKTsKPiAgCj4g
IHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF91Y19pc191c2luZ19ndWMoc3RydWN0IGludGVsX3Vj
ICp1YykKPiAgewo+IC0gICAgICAgR0VNX0JVR19PTihpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3Vj
IDwgMCk7Cj4gLSAgICAgICByZXR1cm4gaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA+IDA7Cj4g
KyAgICAgICByZXR1cm4gaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZCgmdWMtPmd1Yyk7Cgppc191c2lu
Z19ndWMgc291bmRzIGxpa2UgaXQgc2hvdWxkIGJlIGxvb2tpbmcgYXQgZ3VjX2lzX3J1bm5pbmcK
CkkgdGhpbmsgdGhlIGNhbGxlcnMgcmVhZCBiZXR0ZXIgZm9yIG1lIGlmIEkKcy9pbnRlbF91Y19p
c191c2luZ19ndWMvaW50ZWxfdWNfdXNlc19ndWMvCm9yIGV2ZW4gYmV0dGVyIGlmIGludGVsX3Vj
X3N1cHBvcnRzX2d1YygpLgoKV2l0aCB0aGF0IGluIG1pbmQsCgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZncuYwo+IGluZGV4IGFjOTFlM2VmZDAyYi4uM2YwNTE0NTFjYWJhIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gQEAgLTEzMiw2
ICsxMzIsMjcgQEAgX191Y19md19hdXRvX3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3
LCBlbnVtIGludGVsX3BsYXRmb3JtIHAsIHU4IHJldikKPiAgICAgICAgICAgICAgICAgICAgICAg
ICB1Y19mdy0+cGF0aCA9IE5VTEw7Cj4gICAgICAgICAgICAgICAgIH0KPiAgICAgICAgIH0KPiAr
Cj4gKyAgICAgICAvKiBXZSBkb24ndCB3YW50IHRvIGVuYWJsZSBHdUMvSHVDIG9uIHByZS1HZW4x
MSBieSBkZWZhdWx0ICovCj4gKyAgICAgICBpZiAoKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMg
PCAwKSAmJiAocCA8IElOVEVMX0lDRUxBS0UpKQo+ICsgICAgICAgICAgICAgICB1Y19mdy0+cGF0
aCA9IE5VTEw7CgooQm9udXMpIChicmFja2V0cykKPiArfQo+ICsKPiArc3RhdGljIGNvbnN0IGNo
YXIqIF9fb3ZlcnJpZGVfZ3VjX2Zpcm13YXJlX3BhdGgodm9pZCkKPiArewo+ICsgICAgICAgLyog
WFhYOiBkb24ndCBjaGVjayBmb3IgR3VDIHN1Ym1pc3Npb24gYXMgaXQgaXMgdW5hdmFpbGFibGUg
Zm9yIG5vdyAqLwo+ICsgICAgICAgaWYgKChpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3VjIDwgMCkg
fHwKPiArICAgICAgICAgICAoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyAmIEVOQUJMRV9HVUNf
TE9BRF9IVUMpKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gaTkxNV9tb2RwYXJhbXMuZ3VjX2Zp
cm13YXJlX3BhdGg7Cj4gKyAgICAgICByZXR1cm4gIiI7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25z
dCBjaGFyKiBfX292ZXJyaWRlX2h1Y19maXJtd2FyZV9wYXRoKHZvaWQpCj4gK3sKPiArICAgICAg
IGlmICgoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA8IDApIHx8Cj4gKyAgICAgICAgICAgKGk5
MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMgJiBFTkFCTEVfR1VDX0xPQURfSFVDKSkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIGk5MTVfbW9kcGFyYW1zLmh1Y19maXJtd2FyZV9wYXRoOwoKTG9va3Mg
aGFiaXR1YWwuCgpXZSBjYW4gZXZlbiBsb3NlIHRoZSA8MC4gTm8gbmVnYXRpdmUgdmFsdWUgb3Ro
ZXIgdGhhbiAtMSBpcyBkb2N1bWVudGVkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
