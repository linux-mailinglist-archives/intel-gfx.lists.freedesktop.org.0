Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C47920D7
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 11:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A700E6E0F1;
	Mon, 19 Aug 2019 09:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23DB56E0F0;
 Mon, 19 Aug 2019 09:59:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18186724-1500050 
 for multiple; Mon, 19 Aug 2019 10:59:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Mon, 19 Aug 2019 10:59:28 +0100
Message-Id: <20190819095928.32091-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190819095928.32091-1-chris@chris-wilson.co.uk>
References: <20190819095928.32091-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] dma-fence: Set the timestamp after the
 notifying the cb_list
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgdGhlIHRpbWVzdGFtcCBhbmQgY2JfbGlzdCBzaGFyZSB0aGUgc2FtZSBzbG90IGlu
IHRoZSBmZW5jZSwKd2l0aCB0aGUgY3VycmVudCBvcmRlciBvZiBzZXR0aW5nIHRoZSB0aW1lc3Rh
bXAgYmVmb3JlIG5vdGlmeWluZyB0aGUKY2JfbGlzdCwgd2UgaGF2ZSB0byB0YWtlIGEgdGVtcG9y
YXJ5IGNvcHkgb2YgdGhlIGxpc3QuIElmIHdlIGRvbid0IHNldAp0aGUgdGltZXN0YW1wLCB3ZSBj
YW4gc2ltcGx5IHByb2Nlc3MgdGhlIGxpc3QgaW4gc2l0dS4gVGhpcyBhbHNvIGdpdmVzCnVzIHRo
ZSBhZHZhbnRhZ2UgdGhhdCB3ZSBnZXQgYSBzaWduYWwgd2hlbiB0aGUgY2JfbGlzdCBpcyBjb21w
bGV0ZSwKdXNlZnVsIGluIGEgZmV3IGNhc2VzIHRoYXQgbmVlZCB0byBzZXJpYWxpc2UgYWdhaW5z
dCB0aGUgY2JfbGlzdC4KClN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4KLS0tCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgICAgICAgICAgICAgICAgIHwg
NDEgKysrKysrKy0tLS0tLS0tLS0tCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgICAg
ICAgICAgICAgIHwgIDggKy0tLQogZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jICAgICAgICAg
ICAgICAgICB8ICA1ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVt
YnMuYyB8IDI4ICstLS0tLS0tLS0tLQogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAgICAgICAg
ICAgICAgICAgICB8IDQ3ICsrKysrKysrKysrKysrKysrKysrLQogNSBmaWxlcyBjaGFuZ2VkLCA2
NSBpbnNlcnRpb25zKCspLCA2NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKaW5kZXggMmMx
MzZhZWUzZTc5Li45NzJhNGI5MGI4MjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKQEAgLTExMSw0NyArMTEx
LDM2IEBAIHU2NCBkbWFfZmVuY2VfY29udGV4dF9hbGxvYyh1bnNpZ25lZCBudW0pCiBFWFBPUlRf
U1lNQk9MKGRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKTsKIAogLyoqCi0gKiBkbWFfZmVuY2Vfc2ln
bmFsX2xvY2tlZCAtIHNpZ25hbCBjb21wbGV0aW9uIG9mIGEgZmVuY2UKKyAqIF9fZG1hX2ZlbmNl
X3NpZ25hbF9sb2NrZWQgLSBQZXJmb3JtIHNpZ25hbGluZyBvZiBhIGZlbmNlCiAgKiBAZmVuY2U6
IHRoZSBmZW5jZSB0byBzaWduYWwKKyAqIEB0aW1lc3RhbXA6IHRoZSB0aW1zZXRhbXAgb2YgZmVu
Y2UgY29tcGxldGlvbgogICoKLSAqIFNpZ25hbCBjb21wbGV0aW9uIGZvciBzb2Z0d2FyZSBjYWxs
YmFja3Mgb24gYSBmZW5jZSwgdGhpcyB3aWxsIHVuYmxvY2sKLSAqIGRtYV9mZW5jZV93YWl0KCkg
Y2FsbHMgYW5kIHJ1biBhbGwgdGhlIGNhbGxiYWNrcyBhZGRlZCB3aXRoCi0gKiBkbWFfZmVuY2Vf
YWRkX2NhbGxiYWNrKCkuIENhbiBiZSBjYWxsZWQgbXVsdGlwbGUgdGltZXMsIGJ1dCBzaW5jZSBh
IGZlbmNlCi0gKiBjYW4gb25seSBnbyBmcm9tIHRoZSB1bnNpZ25hbGVkIHRvIHRoZSBzaWduYWxl
ZCBzdGF0ZSBhbmQgbm90IGJhY2ssIGl0IHdpbGwKLSAqIG9ubHkgYmUgZWZmZWN0aXZlIHRoZSBm
aXJzdCB0aW1lLgorICogU2VlIGRtYV9mZW5jZV9zaWduYWwoKSBmb3IgdGhlIHR5cGljYWwgaW50
ZXJmYWNlLgogICoKLSAqIFVubGlrZSBkbWFfZmVuY2Vfc2lnbmFsKCksIHRoaXMgZnVuY3Rpb24g
bXVzdCBiZSBjYWxsZWQgd2l0aCAmZG1hX2ZlbmNlLmxvY2sKLSAqIGhlbGQuCisgKiBUaGlzIHBy
b3ZpZGVzIHRoZSBsb3ctbGV2ZWwgb3BlcmF0aW9ucyByZXF1aXJlZCB1cG9uIHNpZ25hbGluZyBh
IGZlbmNlLAorICogc3VjaCBhcyBwcm9jZXNzaW5nIHRoZSBjYWxsYmFjayBsaXN0IGFuZCBzZXR0
aW5nIHRoZSB0aW1lc3RhbXAuCiAgKgotICogUmV0dXJucyAwIG9uIHN1Y2Nlc3MgYW5kIGEgbmVn
YXRpdmUgZXJyb3IgdmFsdWUgd2hlbiBAZmVuY2UgaGFzIGJlZW4KLSAqIHNpZ25hbGxlZCBhbHJl
YWR5LgorICogUmVxdWlyZXMgdGhlIGNhbGxlciB0byBob2xkIHRoZSBmZW5jZS0+bG9jayBhbmQg
YWxyZWFkeSBoYXZlIG1hcmtlZCB0aGUKKyAqIGZlbmNlIGFzIHNpZ25hbGVkIGluIGFuIGV4Y2x1
c2l2ZSBtYW5uZXIuCisgKgorICogR3JlYXQgY2FyZSBtdXN0IGJlIHRha2VuIGluIGNhbGxpbmcg
dGhpcyBmdW5jdGlvbiEKICAqLwotaW50IGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlKQordm9pZCBfX2RtYV9mZW5jZV9zaWduYWxfbG9ja2VkKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IHRpbWVzdGFtcCkKIHsKIAlzdHJ1Y3QgZG1hX2ZlbmNl
X2NiICpjdXIsICp0bXA7Ci0Jc3RydWN0IGxpc3RfaGVhZCBjYl9saXN0OwogCiAJbG9ja2RlcF9h
c3NlcnRfaGVsZChmZW5jZS0+bG9jayk7CiAKLQlpZiAodW5saWtlbHkodGVzdF9hbmRfc2V0X2Jp
dChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsCi0JCQkJICAgICAgJmZlbmNlLT5mbGFncykp
KQotCQlyZXR1cm4gLUVJTlZBTDsKLQotCS8qIFN0YXNoIHRoZSBjYl9saXN0IGJlZm9yZSByZXBs
YWNpbmcgaXQgd2l0aCB0aGUgdGltZXN0YW1wICovCi0JbGlzdF9yZXBsYWNlKCZmZW5jZS0+Y2Jf
bGlzdCwgJmNiX2xpc3QpOwotCi0JZmVuY2UtPnRpbWVzdGFtcCA9IGt0aW1lX2dldCgpOwotCXNl
dF9iaXQoRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7Ci0JdHJh
Y2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsKLQotCWxpc3RfZm9yX2VhY2hfZW50cnlfc2Fm
ZShjdXIsIHRtcCwgJmNiX2xpc3QsIG5vZGUpIHsKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
Y3VyLCB0bXAsICZmZW5jZS0+Y2JfbGlzdCwgbm9kZSkgewogCQlJTklUX0xJU1RfSEVBRCgmY3Vy
LT5ub2RlKTsKIAkJY3VyLT5mdW5jKGZlbmNlLCBjdXIpOwogCX0KIAotCXJldHVybiAwOworCWZl
bmNlLT50aW1lc3RhbXAgPSB0aW1lc3RhbXA7IC8qIG92ZXJ3cml0ZXMgZmVuY2UtPmNiX2xpc3Qg
Ki8KKwlzZXRfYml0KERNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsICZmZW5jZS0+ZmxhZ3Mp
OworCXRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChmZW5jZSk7CiB9Ci1FWFBPUlRfU1lNQk9MKGRt
YV9mZW5jZV9zaWduYWxfbG9ja2VkKTsKK0VYUE9SVF9TWU1CT0woX19kbWFfZmVuY2Vfc2lnbmFs
X2xvY2tlZCk7CiAKIC8qKgogICogZG1hX2ZlbmNlX3NpZ25hbCAtIHNpZ25hbCBjb21wbGV0aW9u
IG9mIGEgZmVuY2UKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYwppbmRleCBhMzY1ZGM3NDQwZTUuLjFmYmE1
MWE1YTQ2YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jCisrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYwpAQCAtNDM0LDEyICs0MzQsNiBAQCBzdHJ1
Y3QgcmFjZV90aHJlYWQgewogCWludCBpZDsKIH07CiAKLXN0YXRpYyB2b2lkIF9fd2FpdF9mb3Jf
Y2FsbGJhY2tzKHN0cnVjdCBkbWFfZmVuY2UgKmYpCi17Ci0Jc3Bpbl9sb2NrX2lycShmLT5sb2Nr
KTsKLQlzcGluX3VubG9ja19pcnEoZi0+bG9jayk7Ci19Ci0KIHN0YXRpYyBpbnQgdGhyZWFkX3Np
Z25hbF9jYWxsYmFjayh2b2lkICphcmcpCiB7CiAJY29uc3Qgc3RydWN0IHJhY2VfdGhyZWFkICp0
ID0gYXJnOwpAQCAtNDc4LDcgKzQ3Miw3IEBAIHN0YXRpYyBpbnQgdGhyZWFkX3NpZ25hbF9jYWxs
YmFjayh2b2lkICphcmcpCiAKIAkJaWYgKCFjYi5zZWVuKSB7CiAJCQlkbWFfZmVuY2Vfd2FpdChm
MiwgZmFsc2UpOwotCQkJX193YWl0X2Zvcl9jYWxsYmFja3MoZjIpOworCQkJZG1hX2ZlbmNlX3dh
aXRfZm9yX25vdGlmeShmMik7CiAJCX0KIAogCQlpZiAoIVJFQURfT05DRShjYi5zZWVuKSkgewpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZmlsZS5jIGIvZHJpdmVycy9kbWEtYnVm
L3N5bmNfZmlsZS5jCmluZGV4IDI1YzVjMDcxNjQ1Yi4uZjgwMWRhYmIzM2E0IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNf
ZmlsZS5jCkBAIC0zODQsOSArMzg0LDggQEAgc3RhdGljIGludCBzeW5jX2ZpbGxfZmVuY2VfaW5m
byhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKIAkJc2l6ZW9mKGluZm8tPmRyaXZlcl9uYW1lKSk7
CiAKIAlpbmZvLT5zdGF0dXMgPSBkbWFfZmVuY2VfZ2V0X3N0YXR1cyhmZW5jZSk7Ci0Jd2hpbGUg
KHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5mbGFncykgJiYK
LQkgICAgICAgIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsICZmZW5jZS0+
ZmxhZ3MpKQotCQljcHVfcmVsYXgoKTsKKwlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lH
TkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkKKwkJZG1hX2ZlbmNlX3dhaXRfZm9yX25vdGlmeShm
ZW5jZSk7CiAJaW5mby0+dGltZXN0YW1wX25zID0KIAkJdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdf
VElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncykgPwogCQlrdGltZV90b19ucyhmZW5jZS0+dGlt
ZXN0YW1wKSA6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVh
ZGNydW1icy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwpp
bmRleCAwOWM2OGRkYTIwOTguLmRiZmIzYjUzNDhjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9icmVhZGNydW1icy5jCkBAIC0xMDUsMjkgKzEwNSw2IEBAIF9fZG1hX2ZlbmNl
X3NpZ25hbChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKIAlyZXR1cm4gIXRlc3RfYW5kX3NldF9i
aXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKTsKIH0KIAotc3Rh
dGljIHZvaWQKLV9fZG1hX2ZlbmNlX3NpZ25hbF9fdGltZXN0YW1wKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlLCBrdGltZV90IHRpbWVzdGFtcCkKLXsKLQlmZW5jZS0+dGltZXN0YW1wID0gdGltZXN0
YW1wOwotCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFn
cyk7Ci0JdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsKLX0KLQotc3RhdGljIHZvaWQK
LV9fZG1hX2ZlbmNlX3NpZ25hbF9fbm90aWZ5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAotCQkJ
ICAgY29uc3Qgc3RydWN0IGxpc3RfaGVhZCAqbGlzdCkKLXsKLQlzdHJ1Y3QgZG1hX2ZlbmNlX2Ni
ICpjdXIsICp0bXA7Ci0KLQlsb2NrZGVwX2Fzc2VydF9oZWxkKGZlbmNlLT5sb2NrKTsKLQlsb2Nr
ZGVwX2Fzc2VydF9pcnFzX2Rpc2FibGVkKCk7Ci0KLQlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
Y3VyLCB0bXAsIGxpc3QsIG5vZGUpIHsKLQkJSU5JVF9MSVNUX0hFQUQoJmN1ci0+bm9kZSk7Ci0J
CWN1ci0+ZnVuYyhmZW5jZSwgY3VyKTsKLQl9Ci19Ci0KIHZvaWQgaW50ZWxfZW5naW5lX2JyZWFk
Y3J1bWJzX2lycShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3RydWN0IGlu
dGVsX2JyZWFkY3J1bWJzICpiID0gJmVuZ2luZS0+YnJlYWRjcnVtYnM7CkBAIC0xODcsMTIgKzE2
NCw5IEBAIHZvaWQgaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAJbGlzdF9mb3JfZWFjaF9zYWZlKHBvcywgbmV4dCwgJnNpZ25hbCkg
ewogCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSA9CiAJCQlsaXN0X2VudHJ5KHBvcywgdHlwZW9m
KCpycSksIHNpZ25hbF9saW5rKTsKLQkJc3RydWN0IGxpc3RfaGVhZCBjYl9saXN0OwogCiAJCXNw
aW5fbG9jaygmcnEtPmxvY2spOwotCQlsaXN0X3JlcGxhY2UoJnJxLT5mZW5jZS5jYl9saXN0LCAm
Y2JfbGlzdCk7Ci0JCV9fZG1hX2ZlbmNlX3NpZ25hbF9fdGltZXN0YW1wKCZycS0+ZmVuY2UsIHRp
bWVzdGFtcCk7Ci0JCV9fZG1hX2ZlbmNlX3NpZ25hbF9fbm90aWZ5KCZycS0+ZmVuY2UsICZjYl9s
aXN0KTsKKwkJX19kbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZCgmcnEtPmZlbmNlLCB0aW1lc3RhbXAp
OwogCQlzcGluX3VubG9jaygmcnEtPmxvY2spOwogCiAJCWk5MTVfcmVxdWVzdF9wdXQocnEpOwpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmgKaW5kZXggMzM0N2M1NGYzYTg3Li5iOTNjODNmMjQwYzIgMTAwNjQ0Ci0tLSBhL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaApA
QCAtMzU3LDggKzM1NywzNiBAQCBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKHN0cnVjdCBkbWFfZmVu
Y2UgX19yY3UgKipmZW5jZXApCiAJfSB3aGlsZSAoMSk7CiB9CiAKK3ZvaWQgX19kbWFfZmVuY2Vf
c2lnbmFsX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCB0aW1lc3RhbXAp
OworCisvKioKKyAqIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkIC0gc2lnbmFsIGNvbXBsZXRpb24g
b2YgYSBmZW5jZQorICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gc2lnbmFsCisgKgorICogU2lnbmFs
IGNvbXBsZXRpb24gZm9yIHNvZnR3YXJlIGNhbGxiYWNrcyBvbiBhIGZlbmNlLCB0aGlzIHdpbGwg
dW5ibG9jaworICogZG1hX2ZlbmNlX3dhaXQoKSBjYWxscyBhbmQgcnVuIGFsbCB0aGUgY2FsbGJh
Y2tzIGFkZGVkIHdpdGgKKyAqIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soKS4gQ2FuIGJlIGNhbGxl
ZCBtdWx0aXBsZSB0aW1lcywgYnV0IHNpbmNlIGEgZmVuY2UKKyAqIGNhbiBvbmx5IGdvIGZyb20g
dGhlIHVuc2lnbmFsZWQgdG8gdGhlIHNpZ25hbGVkIHN0YXRlIGFuZCBub3QgYmFjaywgaXQgd2ls
bAorICogb25seSBiZSBlZmZlY3RpdmUgdGhlIGZpcnN0IHRpbWUuCisgKgorICogVW5saWtlIGRt
YV9mZW5jZV9zaWduYWwoKSwgdGhpcyBmdW5jdGlvbiBtdXN0IGJlIGNhbGxlZCB3aXRoICZkbWFf
ZmVuY2UubG9jaworICogaGVsZC4KKyAqCisgKiBSZXR1cm5zIDAgb24gc3VjY2VzcyBhbmQgYSBu
ZWdhdGl2ZSBlcnJvciB2YWx1ZSB3aGVuIEBmZW5jZSBoYXMgYmVlbgorICogc2lnbmFsbGVkIGFs
cmVhZHkuCisgKi8KK3N0YXRpYyBpbmxpbmUgaW50IGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKHN0
cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQoreworCWlmICh1bmxpa2VseSh0ZXN0X2FuZF9zZXRfYml0
KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwKKwkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkp
CisJCXJldHVybiAtRUlOVkFMOworCisJX19kbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChmZW5jZSwg
a3RpbWVfZ2V0KCkpOworCXJldHVybiAwOworfQorCiBpbnQgZG1hX2ZlbmNlX3NpZ25hbChzdHJ1
Y3QgZG1hX2ZlbmNlICpmZW5jZSk7Ci1pbnQgZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpOworCiBzaWduZWQgbG9uZyBkbWFfZmVuY2VfZGVmYXVsdF93YWl0
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAogCQkJCSAgIGJvb2wgaW50ciwgc2lnbmVkIGxvbmcg
dGltZW91dCk7CiBpbnQgZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSwKQEAgLTQyNiw2ICs0NTQsMjMgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlKQogCXJldHVybiBmYWxzZTsKIH0KIAorLyoqCisgKiBkbWFfZmVuY2Vf
d2FpdF9mb3Jfbm90aWZ5IC0gV2FpdCB1bnRpbCB0aGUgbm90aWZpY2F0aW9ucyBhcmUgY29tcGxl
dGUKKyAqIEBmZW5jZTogdGhlIGZlbmNlIHRvIHdhaXQgb24KKyAqCisgKiBBZnRlciBtYXJraW5n
IHRoZSBmZW5jZSBhcyBzaWduYWxlZCwgYSBudW1iZXIgb2Ygb3BlcmF0aW9ucyBidXQgd2UKKyAq
IGFyZSBjb21wbGV0ZWx5IGRvbmUsIGZyb20gbm90aWZ5aW5nIGFsbCB0aGUgbGlzdGVuZXJzIGN1
bG1pbmF0aW5nCisgKiBpbiBzZXR0aW5nIHRoZSB0aW1lc3RhbXAgb24gdGhlIGZlbmNlLiBUaGlz
IHNpZ25hbHMgdGhlIGNvbXBsZXRpb24KKyAqIG9mIGFsbCB0aGUgY2FsbGJhY2tzIGFuZCB0aGUg
ZW5kIG9mIHRoZSBzaWdhbmxpbmcgb3BlcmF0aW9uLgorICovCitzdGF0aWMgaW5saW5lIHZvaWQK
K2RtYV9mZW5jZV93YWl0X2Zvcl9ub3RpZnkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCit7CisJ
V0FSTl9PTighdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZs
YWdzKSk7CisJd2hpbGUgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19USU1FU1RBTVBfQklULCAm
ZmVuY2UtPmZsYWdzKSkKKwkJY3B1X3JlbGF4KCk7Cit9CisKIC8qKgogICogX19kbWFfZmVuY2Vf
aXNfbGF0ZXIgLSByZXR1cm4gaWYgZjEgaXMgY2hyb25vbG9naWNhbGx5IGxhdGVyIHRoYW4gZjIK
ICAqIEBmMTogdGhlIGZpcnN0IGZlbmNlJ3Mgc2Vxbm8KLS0gCjIuMjMuMC5yYzEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
