Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E15E76128
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 10:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAEA6E8AE;
	Fri, 26 Jul 2019 08:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A266E8A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 08:46:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17621094-1500050 
 for multiple; Fri, 26 Jul 2019 09:46:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 09:46:05 +0100
Message-Id: <20190726084613.22129-19-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726084613.22129-1-chris@chris-wilson.co.uk>
References: <20190726084613.22129-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/27] drm/i915/gt: Convert timeline tracking to
 spinlock
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

Q29udmVydCB0aGUgbGlzdCBtYW5pcHVsYXRpb24gb2YgYWN0aXZlIHRvIHVzZSBzcGlubG9ja3Mg
c28gdGhhdCB3ZSBjYW4KcGVyZm9ybSB0aGUgdXBkYXRlcyBmcm9tIHVuZGVybmVhdGggYSBxdWlj
ayBpbnRlcnJ1cHQgY2FsbGJhY2suCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF90eXBlcy5oIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMg
ICAgfCAxMCArKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGlu
ZS5jIHwgMTIgKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAg
ICAgICAgIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KIDQgZmlsZXMgY2hhbmdlZCwgMjQgaW5z
ZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X3R5cGVzLmgKaW5kZXggNWZhN2JmNzkzZjBmLi5iMDk3ZDgzZmUxMTIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaApAQCAtMzIsNyArMzIsNyBAQCBzdHJ1Y3Qg
aW50ZWxfZ3QgewogCXN0cnVjdCBpbnRlbF91YyB1YzsKIAogCXN0cnVjdCBpbnRlbF9ndF90aW1l
bGluZXMgewotCQlzdHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHByb3RlY3RzIGxpc3QgKi8KKwkJc3Bp
bmxvY2tfdCBsb2NrOyAvKiBwcm90ZWN0cyBhY3RpdmVfbGlzdCAqLwogCQlzdHJ1Y3QgbGlzdF9o
ZWFkIGFjdGl2ZV9saXN0OwogCiAJCS8qIFBhY2sgbXVsdGlwbGUgdGltZWxpbmVzJyBzZXFub3Mg
aW50byB0aGUgc2FtZSBwYWdlICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpp
bmRleCBjOTM3ZmE4MGNjM2UuLmJiZDFlY2FjMDljMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jCkBAIC04MTAsNyArODEwLDcgQEAgc3RhdGljIGJvb2wgX19pbnRlbF9ndF91
bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKIAkgKgogCSAqIE5vIG1vcmUgY2FuIGJl
IHN1Ym1pdHRlZCB1bnRpbCB3ZSByZXNldCB0aGUgd2VkZ2VkIGJpdC4KIAkgKi8KLQltdXRleF9s
b2NrKCZ0aW1lbGluZXMtPm11dGV4KTsKKwlzcGluX2xvY2soJnRpbWVsaW5lcy0+bG9jayk7CiAJ
bGlzdF9mb3JfZWFjaF9lbnRyeSh0bCwgJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QsIGxpbmspIHsK
IAkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAKQEAgLTgxOCw2ICs4MTgsOCBAQCBzdGF0aWMg
Ym9vbCBfX2ludGVsX2d0X3Vuc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCQlpZiAo
IXJxKQogCQkJY29udGludWU7CiAKKwkJc3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9jayk7CisK
IAkJLyoKIAkJICogQWxsIGludGVybmFsIGRlcGVuZGVuY2llcyAoaTkxNV9yZXF1ZXN0cykgd2ls
bCBoYXZlCiAJCSAqIGJlZW4gZmx1c2hlZCBieSB0aGUgc2V0LXdlZGdlLCBidXQgd2UgbWF5IGJl
IHN0dWNrIHdhaXRpbmcKQEAgLTgyNyw4ICs4MjksMTIgQEAgc3RhdGljIGJvb2wgX19pbnRlbF9n
dF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKIAkJICovCiAJCWRtYV9mZW5jZV9k
ZWZhdWx0X3dhaXQoJnJxLT5mZW5jZSwgZmFsc2UsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKIAkJ
aTkxNV9yZXF1ZXN0X3B1dChycSk7CisKKwkJLyogUmVzdGFydCBpdGVyYXRpb24gYWZ0ZXIgZHJv
cGluZyBsb2NrICovCisJCXNwaW5fbG9jaygmdGltZWxpbmVzLT5sb2NrKTsKKwkJdGwgPSBsaXN0
X2VudHJ5KCZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0LCB0eXBlb2YoKnRsKSwgbGluayk7CiAJfQot
CW11dGV4X3VubG9jaygmdGltZWxpbmVzLT5tdXRleCk7CisJc3Bpbl91bmxvY2soJnRpbWVsaW5l
cy0+bG9jayk7CiAKIAlpbnRlbF9ndF9zYW5pdGl6ZShndCwgZmFsc2UpOwogCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwppbmRleCA0YWYwYjk4MDFkOTEuLjM1NWRmYzUy
YzgwNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCkBAIC0yNjYs
NyArMjY2LDcgQEAgc3RhdGljIHZvaWQgdGltZWxpbmVzX2luaXQoc3RydWN0IGludGVsX2d0ICpn
dCkKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVzICp0aW1lbGluZXMgPSAmZ3QtPnRpbWVs
aW5lczsKIAotCW11dGV4X2luaXQoJnRpbWVsaW5lcy0+bXV0ZXgpOworCXNwaW5fbG9ja19pbml0
KCZ0aW1lbGluZXMtPmxvY2spOwogCUlOSVRfTElTVF9IRUFEKCZ0aW1lbGluZXMtPmFjdGl2ZV9s
aXN0KTsKIAogCXNwaW5fbG9ja19pbml0KCZ0aW1lbGluZXMtPmh3c3BfbG9jayk7CkBAIC0zNDUs
OSArMzQ1LDkgQEAgdm9pZCBpbnRlbF90aW1lbGluZV9lbnRlcihzdHJ1Y3QgaW50ZWxfdGltZWxp
bmUgKnRsKQogCQlyZXR1cm47CiAJR0VNX0JVR19PTighdGwtPmFjdGl2ZV9jb3VudCk7IC8qIG92
ZXJmbG93PyAqLwogCi0JbXV0ZXhfbG9jaygmdGltZWxpbmVzLT5tdXRleCk7CisJc3Bpbl9sb2Nr
KCZ0aW1lbGluZXMtPmxvY2spOwogCWxpc3RfYWRkKCZ0bC0+bGluaywgJnRpbWVsaW5lcy0+YWN0
aXZlX2xpc3QpOwotCW11dGV4X3VubG9jaygmdGltZWxpbmVzLT5tdXRleCk7CisJc3Bpbl91bmxv
Y2soJnRpbWVsaW5lcy0+bG9jayk7CiB9CiAKIHZvaWQgaW50ZWxfdGltZWxpbmVfZXhpdChzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQpAQCAtMzU4LDkgKzM1OCw5IEBAIHZvaWQgaW50ZWxfdGlt
ZWxpbmVfZXhpdChzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogCWlmICgtLXRsLT5hY3RpdmVf
Y291bnQpCiAJCXJldHVybjsKIAotCW11dGV4X2xvY2soJnRpbWVsaW5lcy0+bXV0ZXgpOworCXNw
aW5fbG9jaygmdGltZWxpbmVzLT5sb2NrKTsKIAlsaXN0X2RlbCgmdGwtPmxpbmspOwotCW11dGV4
X3VubG9jaygmdGltZWxpbmVzLT5tdXRleCk7CisJc3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9j
ayk7CiAKIAkvKgogCSAqIFNpbmNlIHRoaXMgdGltZWxpbmUgaXMgaWRsZSwgYWxsIGJhcmllcnMg
dXBvbiB3aGljaCB3ZSB3ZXJlIHdhaXRpbmcKQEAgLTU0OCw4ICs1NDgsNiBAQCBzdGF0aWMgdm9p
ZCB0aW1lbGluZXNfZmluaShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCiAJR0VNX0JVR19PTighbGlz
dF9lbXB0eSgmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCkpOwogCUdFTV9CVUdfT04oIWxpc3RfZW1w
dHkoJnRpbWVsaW5lcy0+aHdzcF9mcmVlX2xpc3QpKTsKLQotCW11dGV4X2Rlc3Ryb3koJnRpbWVs
aW5lcy0+bXV0ZXgpOwogfQogCiB2b2lkIGludGVsX3RpbWVsaW5lc19maW5pKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggYTg0MDUyZjI0
N2YyLi5jNzY1MGYxNWQzNmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtOTA3LDIwICs5
MDcsMjAgQEAgc3RhdGljIGludCB3YWl0X2Zvcl9lbmdpbmVzKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiAKIHN0YXRpYyBsb25nCiB3YWl0X2Zvcl90aW1lbGluZXMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsCi0JCSAgIHVuc2lnbmVkIGludCBmbGFncywgbG9uZyB0aW1lb3V0KQorCQkgICB1
bnNpZ25lZCBpbnQgd2FpdCwgbG9uZyB0aW1lb3V0KQogewotCXN0cnVjdCBpbnRlbF9ndF90aW1l
bGluZXMgKmd0ID0gJmk5MTUtPmd0LnRpbWVsaW5lczsKKwlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxp
bmVzICp0aW1lbGluZXMgPSAmaTkxNS0+Z3QudGltZWxpbmVzOwogCXN0cnVjdCBpbnRlbF90aW1l
bGluZSAqdGw7CiAKLQltdXRleF9sb2NrKCZndC0+bXV0ZXgpOwotCWxpc3RfZm9yX2VhY2hfZW50
cnkodGwsICZndC0+YWN0aXZlX2xpc3QsIGxpbmspIHsKKwlzcGluX2xvY2soJnRpbWVsaW5lcy0+
bG9jayk7CisJbGlzdF9mb3JfZWFjaF9lbnRyeSh0bCwgJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3Qs
IGxpbmspIHsKIAkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAKIAkJcnEgPSBpOTE1X2FjdGl2
ZV9yZXF1ZXN0X2dldF91bmxvY2tlZCgmdGwtPmxhc3RfcmVxdWVzdCk7CiAJCWlmICghcnEpCiAJ
CQljb250aW51ZTsKIAotCQltdXRleF91bmxvY2soJmd0LT5tdXRleCk7CisJCXNwaW5fdW5sb2Nr
KCZ0aW1lbGluZXMtPmxvY2spOwogCiAJCS8qCiAJCSAqICJSYWNlLXRvLWlkbGUiLgpAQCAtOTMx
LDE5ICs5MzEsMTkgQEAgd2FpdF9mb3JfdGltZWxpbmVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAogCQkgKiB3YW50IHRvIGNvbXBsZXRlIGFzIHF1aWNrbHkgYXMgcG9zc2libGUgdG8g
YXZvaWQgcHJvbG9uZ2VkCiAJCSAqIHN0YWxscywgc28gYWxsb3cgdGhlIGdwdSB0byBib29zdCB0
byBtYXhpbXVtIGNsb2Nrcy4KIAkJICovCi0JCWlmIChmbGFncyAmIEk5MTVfV0FJVF9GT1JfSURM
RV9CT09TVCkKKwkJaWYgKHdhaXQgJiBJOTE1X1dBSVRfRk9SX0lETEVfQk9PU1QpCiAJCQlnZW42
X3Jwc19ib29zdChycSk7CiAKLQkJdGltZW91dCA9IGk5MTVfcmVxdWVzdF93YWl0KHJxLCBmbGFn
cywgdGltZW91dCk7CisJCXRpbWVvdXQgPSBpOTE1X3JlcXVlc3Rfd2FpdChycSwgd2FpdCwgdGlt
ZW91dCk7CiAJCWk5MTVfcmVxdWVzdF9wdXQocnEpOwogCQlpZiAodGltZW91dCA8IDApCiAJCQly
ZXR1cm4gdGltZW91dDsKIAogCQkvKiByZXN0YXJ0IGFmdGVyIHJlYWNxdWlyaW5nIHRoZSBsb2Nr
ICovCi0JCW11dGV4X2xvY2soJmd0LT5tdXRleCk7Ci0JCXRsID0gbGlzdF9lbnRyeSgmZ3QtPmFj
dGl2ZV9saXN0LCB0eXBlb2YoKnRsKSwgbGluayk7CisJCXNwaW5fbG9jaygmdGltZWxpbmVzLT5s
b2NrKTsKKwkJdGwgPSBsaXN0X2VudHJ5KCZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0LCB0eXBlb2Yo
KnRsKSwgbGluayk7CiAJfQotCW11dGV4X3VubG9jaygmZ3QtPm11dGV4KTsKKwlzcGluX3VubG9j
aygmdGltZWxpbmVzLT5sb2NrKTsKIAogCXJldHVybiB0aW1lb3V0OwogfQotLSAKMi4yMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
