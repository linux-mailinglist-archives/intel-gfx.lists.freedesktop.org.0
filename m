Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ACD8741A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 10:31:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F046E1F7;
	Fri,  9 Aug 2019 08:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B1176E1F7
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 08:31:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17939297-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Aug 2019 09:31:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 09:31:18 +0100
Message-Id: <20190809083118.27718-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Replace global bsd_dispatch_index with
 random seed
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

V2Uga2VlcCBhIGdsb2JhbCBzZWVkIGZvciB0aGUgbGVnYWN5IEJTRCByb3VuZC1yb2JpbiBzZWxl
Y3RvciwgYnV0IGluCm91ciB0ZXN0aW5nIG9mIG11bHRpcGxlIHNpbXVsdGFuZW91cyBjbGllbnQg
d29ya2xvYWRzLCBhIHJhbmRvbSBzZWVkCnNwcmVhZHMgdGhlIGxvYWQgbW9yZSBldmVubHkuIChB
cyBldmVuIGFzIGFuIGluaXRpYWwgcm91bmQtcm9iaW4gc2VsZWN0b3IKY2FuIGJlISkgUmVtb3Zp
bmcgdGhlIGdsb2JhbCBpcyBvbmUgbGVzcyB2YXJpYWJsZSB3ZSBoYXZlIHRvIGZpbmQgYSBob21l
CmZvciEKCldlIGNhbiBzaW11bGF0ZSBtdWx0aS1jbGllbnQgKGJvdGggc2FtZSBhbmQgbWl4ZWQg
d29ya2xvYWRzKSB1c2luZwppZ3QvZ2VtX3dzaW0gdG8gd29yayBvdXQgb3B0aW1hbCBzdHJhdGVn
aWVzIGFuZCB0aGVuIGNvbXBhcmUgb3VyCnNpbXVsYXRpb24gd2l0aCB0aGUgYWN0dWFsIHRyYW5z
Y29kZXIgb24gbXVsdGktZW5naW5lIG1hY2hpbmVzLiBUaGlzCmZpeGVkIHJvdW5kLXJvYmluIHR1
cm5zIG91dCB0byBiZSBvbmUgb2YgdGhlIHdvcnN0IG1ldGhvZHMuCgpObyB1c2VyIGlzIGFkdmlz
ZWQgdG8gdXNlIHRoaXMgbWV0aG9kOyB0aGUgY3VycmVudCBzdWdnZXN0aW9uIGlzIHRvIHVzZQph
IHZpcnR1YWwgZW5naW5lIGZvciBhZ25vc3RpYyBiYXRjaGVzLCByYW5kb21pc2VkIHN1Ym1pc3Np
b24gb3IgdXNpbmcKdGhlIGJ1c3luZXNzIHRyYWNraW5nIHRvIHNlbGVjdCB0aGUgbW9zdCBpZGxl
IGVuZ2luZSBhdCB0aGUgdGltZSBvZgpkaXNwYXRjaC4gQXQgdGhlIHByZXNlbnQgdGltZSwgaW50
ZWwtbWVkaWEgaXMgZXhwbGljaXQsIGJ1dCBsaWJ2YSBzdGlsbApzZWVtcyB0byB1c2UgaXQsIHdp
dGggdGhlIGV4Y2VwdGlvbiBvZiBiYXRjaGVzIHRoYXQgbXVzdCBleGVjdXRlIG9uIHZjczAuCk9o
IHdlbGwuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBK
b29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyB8IDMgKy0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgIHwgMyAtLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICAgfCAyIC0tCiAz
IGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDU2NmU4YTQ4
NDRjZi4uN2ZkYjJlYzk0YWZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMKQEAgLTIxMTQsOCArMjExNCw3IEBAIGdlbjhfZGlzcGF0Y2hfYnNk
X2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAkvKiBDaGVjayB3
aGV0aGVyIHRoZSBmaWxlX3ByaXYgaGFzIGFscmVhZHkgc2VsZWN0ZWQgb25lIHJpbmcuICovCiAJ
aWYgKChpbnQpZmlsZV9wcml2LT5ic2RfZW5naW5lIDwgMCkKLQkJZmlsZV9wcml2LT5ic2RfZW5n
aW5lID0gYXRvbWljX2ZldGNoX3hvcigxLAotCQkJICZkZXZfcHJpdi0+bW0uYnNkX2VuZ2luZV9k
aXNwYXRjaF9pbmRleCk7CisJCWZpbGVfcHJpdi0+YnNkX2VuZ2luZSA9IGdldF9yYW5kb21faW50
KCkgJiAxOwogCiAJcmV0dXJuIGZpbGVfcHJpdi0+YnNkX2VuZ2luZTsKIH0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCmluZGV4IDBkMTk0OWE3OGM0NC4uMzg4OTI0ODFjOWE3IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKQEAgLTc4NSw5ICs3ODUsNiBAQCBzdHJ1Y3QgaTkxNV9nZW1fbW0gewogCiAJ
dTY0IHVub3JkZXJlZF90aW1lbGluZTsKIAotCS8qIHRoZSBpbmRpY2F0b3IgZm9yIGRpc3BhdGNo
IHZpZGVvIGNvbW1hbmRzIG9uIHR3byBCU0QgcmluZ3MgKi8KLQlhdG9taWNfdCBic2RfZW5naW5l
X2Rpc3BhdGNoX2luZGV4OwotCiAJLyoqIEJpdCA2IHN3aXp6bGluZyByZXF1aXJlZCBmb3IgWCB0
aWxpbmcgKi8KIAl1MzIgYml0XzZfc3dpenpsZV94OwogCS8qKiBCaXQgNiBzd2l6emxpbmcgcmVx
dWlyZWQgZm9yIFkgdGlsaW5nICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCA2N2EwYmM0
ZGI5Y2QuLjZmZjAxYTQwNDM0NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xNjUzLDgg
KzE2NTMsNiBAQCBpbnQgaTkxNV9nZW1faW5pdF9lYXJseShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiAJaTkxNV9nZW1faW5pdF9fbW0oZGV2X3ByaXYpOwogCWk5MTVfZ2VtX2lu
aXRfX3BtKGRldl9wcml2KTsKIAotCWF0b21pY19zZXQoJmRldl9wcml2LT5tbS5ic2RfZW5naW5l
X2Rpc3BhdGNoX2luZGV4LCAwKTsKLQogCXNwaW5fbG9ja19pbml0KCZkZXZfcHJpdi0+ZmJfdHJh
Y2tpbmcubG9jayk7CiAKIAllcnIgPSBpOTE1X2dlbWZzX2luaXQoZGV2X3ByaXYpOwotLSAKMi4y
My4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
