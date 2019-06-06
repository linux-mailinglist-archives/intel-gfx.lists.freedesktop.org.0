Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D756236A67
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 05:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B05D893D0;
	Thu,  6 Jun 2019 03:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 585 seconds by postgrey-1.36 at gabe;
 Thu, 06 Jun 2019 03:14:30 UTC
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81C0B893D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 03:14:30 +0000 (UTC)
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 06 Jun 2019 12:04:43 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 1498D180B3C;
 Thu,  6 Jun 2019 12:04:44 +0900 (JST)
Received: from 10.213.24.1 (10.213.24.1) by m-FILTER with ESMTP;
 Thu, 6 Jun 2019 12:04:44 +0900
Received: from SOC-EX01V.e01.socionext.com (10.213.24.21) by
 SOC-EX01V.e01.socionext.com (10.213.24.21) with Microsoft SMTP Server (TLS)
 id 15.0.995.29; Thu, 6 Jun 2019 12:04:43 +0900
Received: from SOC-EX01V.e01.socionext.com ([10.213.24.21]) by
 SOC-EX01V.e01.socionext.com ([10.213.24.21]) with mapi id 15.00.0995.028;
 Thu, 6 Jun 2019 12:04:43 +0900
From: <yamada.masahiro@socionext.com>
To: <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: rename header test build commands to avoid
 conflicts
Thread-Index: AQHVG6Exq5HwiPn7ikO/32HBBlJ4A6aN7xbA
Date: Thu, 6 Jun 2019 03:04:42 +0000
Message-ID: <e7f4bcc2f5e64a429b547e2473786abb@SOC-EX01V.e01.socionext.com>
References: <20190605132137.11818-1-jani.nikula@intel.com>
In-Reply-To: <20190605132137.11818-1-jani.nikula@intel.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-securitypolicycheck: OK by SHieldMailChecker v2.5.2
x-shieldmailcheckerpolicyversion: POLICY190117
x-originating-ip: [10.213.24.1]
Content-Type: multipart/mixed;
 boundary="_003_e7f4bcc2f5e64a429b547e2473786abbSOCEX01Ve01socionextcom_"
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: rename header test build commands
 to avoid conflicts
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
Cc: masahiroy@kernel.org, sam@ravnborg.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_003_e7f4bcc2f5e64a429b547e2473786abbSOCEX01Ve01socionextcom_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: base64

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEg
W21haWx0bzpqYW5pLm5pa3VsYUBpbnRlbC5jb21dDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAw
NSwgMjAxOSAxMDoyMiBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogamFuaS5uaWt1bGFAaW50ZWwuY29tOyBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVs
LmNvbT47IENocmlzIFdpbHNvbg0KPiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsgWWFtYWRh
LCBNYXNhaGlyby8bJEI7M0VEGyhCIBskQj8/OTAbKEINCj4gPHlhbWFkYS5tYXNhaGlyb0Bzb2Np
b25leHQuY29tPjsgU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPg0KPiBTdWJqZWN0OiBb
UEFUQ0hdIGRybS9pOTE1OiByZW5hbWUgaGVhZGVyIHRlc3QgYnVpbGQgY29tbWFuZHMgdG8gYXZv
aWQNCj4gY29uZmxpY3RzDQo+IA0KPiBXZSBoYXZlIGEgbG9jYWwgaGFjayB0byB0ZXN0IGlmIGhl
YWRlcnMgYXJlIHNlbGYtY29udGFpbmVkLCB3aGlsZQ0KPiB1cHN0cmVhbWluZyBhIHByb3BlciBn
ZW5lcmljIHNvbHV0aW9uIGluIGtidWlsZCBbMV0uIE5vdyB0aGF0IGJvdGggaGF2ZQ0KPiBmb3Vu
ZCB0aGVtc2VsdmVzIGluIGxpbnV4LW5leHQsIHRoZSBpZGVudGljYWwgY21kX2hlYWRlcl90ZXN0
IGJ1aWxkDQo+IGNvbW1hbmRzIGNvbmZsaWN0LCBsZWFkaW5nIHRvIGVycm9ycyBzdWNoIGFzOg0K
PiANCj4gPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaGVhZGVyX3Rlc3RfaW50ZWxfYXVkaW8uYzox
OjEwOiBmYXRhbCBlcnJvcjoNCj4gPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYXVkaW8u
aDogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQ0KPiAgICAgI2luY2x1ZGUgImRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2F1ZGlvLmgiDQo+IAkgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fg0KPiANCj4gUmVuYW1lIHRoZSBpOTE1IGxvY2FsIGJ1aWxkIGNvbW1hbmQg
dW50aWwgdGhlIHByb3BlciBrYnVpbGQgc29sdXRpb24NCj4gZmluZHMgaXRzIHdheSB0byBMaW51
cycgbWFzdGVyIGFuZCBnZXRzIGJhY2twb3J0ZWQgdG8gb3VyIHRyZWUsIGFuZCB3ZQ0KPiBjYW4g
ZmluYWxseSBzd2l0Y2ggb3Zlci4NCj4gDQo+IE5vdGUgdGhhdCBzaW5jZSB0aGUga2J1aWxkIGhl
YWRlciB0ZXN0IHJlcXVpcmVzIENPTkZJR19IRUFERVJfVEVTVD15LA0KPiBhbmQgb3VyIGhhY2sg
cmVxdWlyZXMgb3VyIGRlYnVnIG9wdGlvbiBDT05GSUdfRFJNX0k5MTVfV0VSUk9SPXksIHRoaXMg
aXMNCj4gbGlrZWx5IGhpdCBvbmx5IGJ5IGJ1aWxkIHRlc3QgYm90cy4NCj4gDQo+IFsxXSBodHRw
Oi8vbWFyYy5pbmZvLz9pPTIwMTkwNjA0MTI0MjQ4LjU1NjQtMS1qYW5pLm5pa3VsYUBpbnRlbC5j
b20NCj4gDQo+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4N
Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KPiBDYzogTWFz
YWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4NCj4gQ2M6IFNhbSBS
YXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQoNCg0KVGhpcyBpcyBub3QgcmVhbGx5IHF1
ZXVlZCB1cCB5ZXQuDQoNClNvLCB3ZSBjYW4gc3F1YXNoIGZpeC11cCB0byBhdm9pZCAwZGF5IGJv
dCByZXBvcnQuDQoNCg0KSSBhdHRhY2hlZCB0d28gcGF0Y2hlcy4NCg0KMDAwMDEtRklYVVAxLnBh
dGNoIGlzIGEgb25lLWxpbmVyIGZpeHVwLg0KSWYgeW91IHdhbnQgdG8gY2xlYW4gdXAgeW91ciBN
YWtlZmlsZSBieSB5b3Vyc2VsZiBsYXRlciwNCkkgd2lsbCBzcXVhc2ggaXQuDQoNCg0KSWYgeW91
IHdhbnQgdG8gc3dpdGNoIHRvIHRoZSBnZW5lcmljIG5vdGF0aW9uIG5vdywNCkkgd2lsbCBzcXVh
c2ggMDAwMS1GSVhVUDIucGF0Y2guDQoNCg0KRWl0aGVyIGlzIE9LIGZvciBtZS4NCg0KDQpUaGFu
a3MuDQoNCk1hc2FoaXJvIFlhbWFkYQ0KDQo=

--_003_e7f4bcc2f5e64a429b547e2473786abbSOCEX01Ve01socionextcom_
Content-Type: application/octet-stream; name="0001-FIXUP1.patch"
Content-Description: 0001-FIXUP1.patch
Content-Disposition: attachment; filename="0001-FIXUP1.patch"; size=867;
	creation-date="Thu, 06 Jun 2019 02:55:51 GMT";
	modification-date="Thu, 06 Jun 2019 02:55:41 GMT"
Content-Transfer-Encoding: base64

RnJvbSAxZjZhNjM2NzM1NGVlYzlmYThkOWViYWU0YTllOGJhNjZhZDY4YWY3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Np
b25leHQuY29tPgpEYXRlOiBUaHUsIDYgSnVuIDIwMTkgMTE6NDg6NDQgKzA5MDAKU3ViamVjdDog
W1BBVENIXSBGSVhVUDEKClNpZ25lZC1vZmYtYnk6IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1h
c2FoaXJvQHNvY2lvbmV4dC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUu
aGVhZGVyLXRlc3QgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFk
ZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4
IGMxYzM5MTgxNmZhNy4uMmE0NTZjOTIyM2RiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZS5oZWFkZXItdGVzdApAQCAtMzcsNyArMzcsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50
ZWxfd29ya2Fyb3VuZHNfdHlwZXMuaAogCiBxdWlldF9jbWRfaGVhZGVyX3Rlc3QgPSBIRFJURVNU
ICRACi0gICAgICBjbWRfaGVhZGVyX3Rlc3QgPSBlY2hvICJcI2luY2x1ZGUgXCIkKDxGKVwiIiA+
ICRACitvdmVycmlkZSBjbWRfaGVhZGVyX3Rlc3QgPSBlY2hvICJcI2luY2x1ZGUgXCIkKDxGKVwi
IiA+ICRACiAKIGhlYWRlcl90ZXN0XyUuYzogJS5oCiAJJChjYWxsIGNtZCxoZWFkZXJfdGVzdCkK
LS0gCjIuMTcuMQoK

--_003_e7f4bcc2f5e64a429b547e2473786abbSOCEX01Ve01socionextcom_
Content-Type: application/octet-stream; name="0001-FIXUP2.patch"
Content-Description: 0001-FIXUP2.patch
Content-Disposition: attachment; filename="0001-FIXUP2.patch"; size=1616;
	creation-date="Thu, 06 Jun 2019 02:55:55 GMT";
	modification-date="Thu, 06 Jun 2019 02:55:55 GMT"
Content-Transfer-Encoding: base64

RnJvbSAyMmY0NmNlZGIyMjA2MmYxNThlOTlkN2VlYzE4NTY0ZjRkNWIyZWVkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Np
b25leHQuY29tPgpEYXRlOiBUaHUsIDYgSnVuIDIwMTkgMTE6NTA6MjAgKzA5MDAKU3ViamVjdDog
W1BBVENIXSBGSVhVUDIKClNpZ25lZC1vZmYtYnk6IE1hc2FoaXJvIFlhbWFkYSA8eWFtYWRhLm1h
c2FoaXJvQHNvY2lvbmV4dC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvLmdpdGlnbm9y
ZSAgICAgICAgICAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXIt
dGVzdCB8IDEyICstLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MTIgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUv
LmdpdGlnbm9yZQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1Ly5naXRpZ25vcmUg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS8uZ2l0aWdub3JlCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCBjZmY0NWQ4MWY0MmYuLjAwMDAwMDAwMDAwMAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS8uZ2l0aWdub3JlCisrKyAvZGV2L251bGwKQEAgLTEgKzAsMCBAQAotaGVhZGVyX3Rlc3Rf
Ki5jCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVz
dCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4IGMxYzM5
MTgxNmZhNy4uNjM5YjU5NmEwNmE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5o
ZWFkZXItdGVzdApAQCAtMiw3ICsyLDcgQEAKICMgQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29y
cG9yYXRpb24KIAogIyBUZXN0IHRoZSBoZWFkZXJzIGFyZSBjb21waWxhYmxlIGFzIHN0YW5kYWxv
bmUgdW5pdHMKLWhlYWRlcl90ZXN0IDo9IFwKK2hlYWRlci10ZXN0LSQoQ09ORklHX0RSTV9JOTE1
X1dFUlJPUikgOj0gXAogCWk5MTVfYWN0aXZlX3R5cGVzLmggXAogCWk5MTVfZ2VtX2NvbnRleHRf
dHlwZXMuaCBcCiAJaTkxNV9wcmlvbGlzdF90eXBlcy5oIFwKQEAgLTM1LDEzICszNSwzIEBAIGhl
YWRlcl90ZXN0IDo9IFwKIAlpbnRlbF9zcHJpdGUuaCBcCiAJaW50ZWxfdHYuaCBcCiAJaW50ZWxf
d29ya2Fyb3VuZHNfdHlwZXMuaAotCi1xdWlldF9jbWRfaGVhZGVyX3Rlc3QgPSBIRFJURVNUICRA
Ci0gICAgICBjbWRfaGVhZGVyX3Rlc3QgPSBlY2hvICJcI2luY2x1ZGUgXCIkKDxGKVwiIiA+ICRA
Ci0KLWhlYWRlcl90ZXN0XyUuYzogJS5oCi0JJChjYWxsIGNtZCxoZWFkZXJfdGVzdCkKLQotaTkx
NS0kKENPTkZJR19EUk1fSTkxNV9XRVJST1IpICs9ICQoZm9yZWFjaCBoLCQoaGVhZGVyX3Rlc3Qp
LCQocGF0c3Vic3QgJS5oLGhlYWRlcl90ZXN0XyUubywkKGgpKSkKLQotY2xlYW4tZmlsZXMgKz0g
JChmb3JlYWNoIGgsJChoZWFkZXJfdGVzdCksJChwYXRzdWJzdCAlLmgsaGVhZGVyX3Rlc3RfJS5j
LCQoaCkpKQotLSAKMi4xNy4xCgo=

--_003_e7f4bcc2f5e64a429b547e2473786abbSOCEX01Ve01socionextcom_
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--_003_e7f4bcc2f5e64a429b547e2473786abbSOCEX01Ve01socionextcom_--
