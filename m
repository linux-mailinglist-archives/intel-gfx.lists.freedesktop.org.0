Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2361BBC61F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 13:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA916E9E6;
	Tue, 24 Sep 2019 11:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5F06E9E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 11:01:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18597946-1500050 for multiple; Tue, 24 Sep 2019 12:01:01 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87mueuyoy5.fsf@gaia.fi.intel.com>
References: <20190923230209.16480-1-chris@chris-wilson.co.uk>
 <87mueuyoy5.fsf@gaia.fi.intel.com>
Message-ID: <156932285589.3684.14832880682799375166@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 24 Sep 2019 12:00:55 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Verify the LRC
 register layout between init and HW
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTI0IDExOjIxOjM4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiArc3RhdGljIHUzMiAqc2V0
X29mZnNldHModTMyICpyZWdzLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHU4ICpk
YXRhLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKPiA+ICsjZGVmaW5lIE5PUCh4KSAoQklUKDcpIHwgKHgpKQo+ID4gKyNkZWZp
bmUgTFJJKGNvdW50LCBmbGFncykgKChmbGFncykgPDwgNiB8IChjb3VudCkpCj4gPiArI2RlZmlu
ZSBQT1NURUQgQklUKDApCj4gPiArI2RlZmluZSBSRUcoeCkgKCgoeCkgPj4gMikgfCBCVUlMRF9C
VUdfT05fWkVSTyh4ID49IDB4MjAwKSkKPiA+ICsjZGVmaW5lIFJFRzE2KHgpIFwKPiA+ICsgICAg
ICgoKHgpID4+IDkpIHwgQklUKDcpIHwgQlVJTERfQlVHX09OX1pFUk8oeCA+PSAweDEwMDAwKSks
IFwKPiA+ICsgICAgICgoKHgpID4+IDIpICYgMHg3ZikKPiAKPiBJIGFtIHN0aWxsIG5vdCBzdXJl
IGlmIHRoZSBhY3R1YWwgc2F2aW5nIGFyZSB3b3J0aCB0aGUgY29tcGxleGl0eS4KPiAKPiA+ICsj
ZGVmaW5lIEVORCgpIDAKPiA+ICt7Cj4gPiArICAgICBjb25zdCB1MzIgYmFzZSA9IGVuZ2luZS0+
bW1pb19iYXNlOwo+ID4gKwo+ID4gKyAgICAgd2hpbGUgKCpkYXRhKSB7Cj4gPiArICAgICAgICAg
ICAgIHU4IGNvdW50LCBmbGFnczsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgaWYgKCpkYXRhICYg
QklUKDcpKSB7IC8qIHNraXAgKi8KPiA+ICsgICAgICAgICAgICAgICAgICAgICByZWdzICs9ICpk
YXRhKysgJiB+QklUKDcpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4g
KyAgICAgICAgICAgICB9Cj4gPiArCj4gPiArICAgICAgICAgICAgIGNvdW50ID0gKmRhdGEgJiAw
eDNmOwo+ID4gKyAgICAgICAgICAgICBmbGFncyA9ICpkYXRhID4+IDY7Cj4gPiArICAgICAgICAg
ICAgIGRhdGErKzsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgKnJlZ3MgPSBNSV9MT0FEX1JFR0lT
VEVSX0lNTShjb3VudCk7Cj4gPiArICAgICAgICAgICAgIGlmIChmbGFncyAmIFBPU1RFRCkKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAqcmVncyB8PSBNSV9MUklfRk9SQ0VfUE9TVEVEOwo+ID4g
KyAgICAgICAgICAgICBpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gMTEpCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgKnJlZ3MgfD0gTUlfTFJJX0NTX01NSU87Cj4gPiArICAgICAgICAg
ICAgIHJlZ3MrKzsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgR0VNX0JVR19PTighY291bnQpOwo+
ID4gKyAgICAgICAgICAgICBkbyB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgdTMyIG9mZnNl
dCA9IDA7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgdTggdjsKPiA+ICsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBkbyB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2ID0g
KmRhdGErKzsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9mZnNldCA8PD0gNzsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9mZnNldCB8PSB2ICYgfkJJVCg3KTsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICB9IHdoaWxlICh2ICYgQklUKDcpKTsKPiAKPiAuLi5i
dXQgcGVyaGFwcyB0aGlzIGFtb3VudCBvZiBleHRyYSBjYW4gYmUgdG9sZXJhdGVkLgo+IAo+IERp
ZCB5b3UgY2hlY2sgaG93IHRoaXMgd291bGQgcGxheSBvdXQgd2l0aCBqdXN0IFJFRyBiZWluZyB3
aWRlIGVub3VnaD8KCkZ1bmN0aW9uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IG9sZCAgICAgbmV3ICAgZGVsdGEKZ2VuOV94Y3Nfb2Zmc2V0cyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgMTIyICAgICAxNDUgICAgICsyMwpnZW4xMl94Y3Nfb2Zmc2V0cyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAxMzYgICAgIDE1NyAgICAgKzIxCmdlbjExX3Jjc19vZmZzZXRzICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA0NCAgICAgIDYwICAgICArMTYKZ2VuOF9yY3Nfb2Zm
c2V0cyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDQxICAgICAgNTUgICAgICsxNApnZW4x
Ml9yY3Nfb2Zmc2V0cyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgNDcgICAgICA2MCAgICAg
KzEzCmdlbjhfeGNzX29mZnNldHMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA0MCAgICAg
IDUxICAgICArMTEKc2V0X29mZnNldHMuaXNyYSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
MjE1ICAgICAxNzkgICAgIC0zNgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
