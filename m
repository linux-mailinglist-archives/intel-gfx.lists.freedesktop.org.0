Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CD78939D
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 22:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F237A89F6B;
	Sun, 11 Aug 2019 20:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4234589F6B
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 20:24:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17962612-1500050 for multiple; Sun, 11 Aug 2019 21:24:32 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190811195132.9660-3-michal.wajdeczko@intel.com>
References: <20190811195132.9660-1-michal.wajdeczko@intel.com>
 <20190811195132.9660-3-michal.wajdeczko@intel.com>
Message-ID: <156555506988.11756.4731006703022180195@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 11 Aug 2019 21:24:29 +0100
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/uc: Include HuC firmware
 version in summary
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTExIDIwOjUxOjMwKQo+IEFmdGVyIHN1
Y2Nlc3NmdWwgdUMgaW5pdGlhbGl6YXRpb24gd2UgYXJlIHJlcG9ydGluZyBHdUMKPiBmaXJtd2Fy
ZSB2ZXJzaW9uIGFuZCBzdGF0dXMgb2YgR3VDIHN1Ym1pc3Npb24gYW5kIEh1Qy4KPiBBZGQgSHVD
IGZ3IHZlcnNpb24gdG8gdGhpcyByZXBvcnQgdG8gbWFrZSBpdCBjb21wbGV0ZSwKPiBidXQgYWxz
byBza2lwIGFsbCBIdUMgaW5mbyBpZiBIdUMgaXMgbm90IHN1cHBvcnRlZC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBD
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgfCAxNiArKysrKysrKysrKyst
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+IGluZGV4IGFhOTcwMWNmYzc1
NC4uMmFjZjc5MDcyODdjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
Cj4gQEAgLTUwMywxMiArNTAzLDIwIEBAIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRl
bF91YyAqdWMpCj4gICAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfY29tbXVuaWNhdGlv
bjsKPiAgICAgICAgIH0KPiAgCj4gLSAgICAgICBkZXZfaW5mbyhpOTE1LT5kcm0uZGV2LCAiR3VD
IGZpcm13YXJlIHZlcnNpb24gJXUuJXVcbiIsCj4gKyAgICAgICBkZXZfaW5mbyhpOTE1LT5kcm0u
ZGV2LCAiJXMgZmlybXdhcmUgdmVyc2lvbiAldS4ldVxuIiwKPiArICAgICAgICAgICAgICAgIGlu
dGVsX3VjX2Z3X3R5cGVfcmVwcihJTlRFTF9VQ19GV19UWVBFX0dVQyksCj4gICAgICAgICAgICAg
ICAgICBndWMtPmZ3Lm1ham9yX3Zlcl9mb3VuZCwgZ3VjLT5mdy5taW5vcl92ZXJfZm91bmQpOwo+
IC0gICAgICAgZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwgIkd1QyBzdWJtaXNzaW9uICVzXG4iLAo+
ICsgICAgICAgZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwgIiVzICVzXG4iLCAiR3VDIHN1Ym1pc3Np
b24iLAo+ICAgICAgICAgICAgICAgICAgZW5hYmxlZGRpc2FibGVkKGludGVsX3VjX3N1cHBvcnRz
X2d1Y19zdWJtaXNzaW9uKHVjKSkpOwo+IC0gICAgICAgZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwg
Ikh1QyAlc1xuIiwKPiAtICAgICAgICAgICAgICAgIGVuYWJsZWRkaXNhYmxlZChpbnRlbF9odWNf
aXNfYXV0aGVudGljYXRlZChodWMpKSk7Cj4gKwo+ICsgICAgICAgaWYgKGludGVsX3VjX3N1cHBv
cnRzX2h1Yyh1YykpIHsKPiArICAgICAgICAgICAgICAgZGV2X2luZm8oaTkxNS0+ZHJtLmRldiwg
IiVzIGZpcm13YXJlIHZlcnNpb24gJXUuJXVcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
IGludGVsX3VjX2Z3X3R5cGVfcmVwcihJTlRFTF9VQ19GV19UWVBFX0hVQyksCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgIGh1Yy0+ZncubWFqb3JfdmVyX2ZvdW5kLCBodWMtPmZ3Lm1pbm9yX3Zl
cl9mb3VuZCk7Cj4gKyAgICAgICAgICAgICAgIGRldl9pbmZvKGk5MTUtPmRybS5kZXYsICIlcyAl
c1xuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgaW50ZWxfdWNfZndfdHlwZV9yZXByKElO
VEVMX1VDX0ZXX1RZUEVfSFVDKSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgZW5hYmxlZGRp
c2FibGVkKGludGVsX2h1Y19pc19hdXRoZW50aWNhdGVkKGh1YykpKTsKPiArICAgICAgIH0KCkNv
dWxkIEkgYXNrIHlvdSB0byBzcXVlZXplIGVhY2ggZG93biB0byBvbmUgbGluZT8KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
