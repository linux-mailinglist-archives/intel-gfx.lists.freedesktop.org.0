Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B255A7FFF
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 12:07:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D0B898D9;
	Wed,  4 Sep 2019 10:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE801898D9
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 10:07:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18368401-1500050 
 for multiple; Wed, 04 Sep 2019 11:07:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 11:07:07 +0100
Message-Id: <20190904100707.7377-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Restore relaxed padding
 (OCL_OOB_SUPPRES_ENABLE) for skl+
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
Cc: denys.kostin@globallogic.com, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBiaXQgd2FzIGZsaXBlZCBvbiBmb3IgInN5bmNpbmcgZGVwZW5kZW5jaWVzIGJldHdlZW4g
Y2FtZXJhIGFuZApncmFwaGljcyIuIEJTcGVjIGhhcyBubyByZWNvbGxlY3Rpb24gd2h5LCBhbmQg
aXQgaXMgY2F1c2luZwp1bnJlY292ZXJhYmxlIEdQVSBoYW5ncyB3aXRoIFZ1bGthbiBjb21wdXRl
IHdvcmtsb2Fkcy4KCkZyb20gQlNwZWMsIHNldHRpbmcgYml0NSB0byAwIGVuYWJsZXMgcmVsYXhl
ZCBwYWRkaW5nIHJlcXVpcmVtZXRzIGZvcgpidWZmZXJzLCAxRCBhbmQgMkQgbm9uLWFycmF5LCBu
b24tTVNBQSwgbm9uLW1pcC1tYXBwZWQgbGluZWFyIHN1cmZhY2VzOwphbmQgKm11c3QqIGJlIHNl
dCB0byAwaCBvbiBza2wrIHRvIGVuc3VyZSAiT3V0IG9mIEJvdW5kcyIgY2FzZSBpcwpzdXBwcmVz
c2VkLgoKUmVwb3J0ZWQtYnk6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4K
U3VnZ2VzdGVkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CkJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5OTgK
Rml4ZXM6IDg0MjQxNzFlMTM1YyAoImRybS9pOTE1L2dlbjk6IGgvdyB3L2E6IHN5bmNpbmcgZGVw
ZW5kZW5jaWVzIGJldHdlZW4gY2FtZXJhIGFuZCBncmFwaGljcyIpClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpUZXN0ZWQtYnk6IGRlbnlzLmtv
c3RpbkBnbG9iYWxsb2dpYy5jb20KQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5k
Lm5ldD4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpD
YzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjQuMSsKLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNSAtLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKaW5kZXggODYzOWZjY2NkYjQyLi4yNDNkM2Y3N2JlMTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMjk3LDExICsyOTcsNiBAQCBzdGF0aWMg
dm9pZCBnZW45X2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwKIAkJCSAgRkxPV19DT05UUk9MX0VOQUJMRSB8CiAJCQkgIFBBUlRJQUxfSU5TVFJVQ1RJ
T05fU0hPT1RET1dOX0RJU0FCTEUpOwogCi0JLyogU3luY2luZyBkZXBlbmRlbmNpZXMgYmV0d2Vl
biBjYW1lcmEgYW5kIGdyYXBoaWNzOnNrbCxieHQsa2JsICovCi0JaWYgKCFJU19DT0ZGRUVMQUtF
KGk5MTUpKQotCQlXQV9TRVRfQklUX01BU0tFRChIQUxGX1NMSUNFX0NISUNLRU4zLAotCQkJCSAg
R0VOOV9ESVNBQkxFX09DTF9PT0JfU1VQUFJFU1NfTE9HSUMpOwotCiAJLyogV2FFbmFibGVZVjEy
QnVnRml4SW5IYWxmU2xpY2VDaGlja2VuNzpza2wsYnh0LGtibCxnbGssY2ZsICovCiAJLyogV2FF
bmFibGVTYW1wbGVyR1BHUFVQcmVlbXB0aW9uU3VwcG9ydDpza2wsYnh0LGtibCxjZmwgKi8KIAlX
QV9TRVRfQklUX01BU0tFRChHRU45X0hBTEZfU0xJQ0VfQ0hJQ0tFTjcsCi0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
