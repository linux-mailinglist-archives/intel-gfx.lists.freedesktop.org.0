Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1EF1701A7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 15:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37656E9A0;
	Wed, 26 Feb 2020 14:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D216A6E9A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 14:57:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20358626-1500050 for multiple; Wed, 26 Feb 2020 14:57:07 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200226014603.42190-1-jose.souza@intel.com>
 <20200226014603.42190-14-jose.souza@intel.com>
In-Reply-To: <20200226014603.42190-14-jose.souza@intel.com>
Message-ID: <158272902685.4613.11358794441345163779@skylake-alporthouse-com>
Date: Wed, 26 Feb 2020 14:57:06 +0000
Subject: Re: [Intel-gfx] [PATCH v2 14/14] drm/i915/tgl: Implement
 Wa_1407901919
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyMDIwLTAyLTI2IDAxOjQ2OjAzKQo+IFRo
aXMgd2lsbCBmaXggYSBtZW1vcnkgY29oZXJlbmNlIGlzc3VlLgo+IAo+IEJTcGVjOiA1Mjg5MAo+
IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IHwgIDYgKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAg
ICAgfCAyMCArKysrKysrKysrKy0tLS0tLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggMTY0YjVlODJlM2UzLi5iM2JiM2RkOTBmMDIgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAt
NjA2LDYgKzYwNiwxMiBAQCBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgICAgICAgd2FfYWRkKHdhbCwgRkZfTU9E
RTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWwsCj4gICAgICAgICAgICAgICAgSVNfVEdM
X0dUX1JFVklEKGVuZ2luZS0+aTkxNSwgVEdMX0dUX1JFVklEX0EwLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBUR0xfR1RfUkVWSURfQTApID8gMCA6IEZGX01PREUyX1REU19USU1F
Ul9NQVNLKTsKPiArCj4gKyAgICAgICAvKiBXYV8xNDA3OTAxOTE5OnRnbCAqLwo+ICsgICAgICAg
d2FfYWRkKHdhbCwgSUNMX0hEQ19NT0RFLCBIRENfQ09IRVJFTlRfQUNDRVNTX0wxX0NBQ0hFX0RJ
UyB8Cj4gKyAgICAgICAgICAgICAgSERDX0RJU19MMV9JTlZBTF9GT1JfTk9OX0wxX0NBQ0hFQUJM
RV9XLCAwLAo+ICsgICAgICAgICAgICAgIEhEQ19DT0hFUkVOVF9BQ0NFU1NfTDFfQ0FDSEVfRElT
IHwKPiArICAgICAgICAgICAgICBIRENfRElTX0wxX0lOVkFMX0ZPUl9OT05fTDFfQ0FDSEVBQkxF
X1cpOwoKRHJvcHBpbmcgYnkgdG8gc2F5IHRoYXQgaXMgaGFyZCB0byByZWFkLiBDb3VsZCB5b3Ug
cGVyaGFwcyB1c2UKd2hpdGVzcGFjZSBmb3IgdmlzdWFsIGdyb3VwaW5nIHRvIGFuIGFkdmFudGFn
ZT8KCgl3YV93cml0ZSh3YWwsIElDTF9IRENfTU9ERSwKCQkgSERDX0NPSEVSRU5UX0FDQ0VTU19M
MV9DQUNIRV9ESVMgfAoJCSBIRENfRElTX0wxX0lOVkFMX0ZPUl9OT05fTDFfQ0FDSEVBQkxFX1cp
OwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
