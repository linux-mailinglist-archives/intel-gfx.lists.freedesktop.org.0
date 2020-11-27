Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6912E2C6CC5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 22:01:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B54DE6F3F4;
	Fri, 27 Nov 2020 21:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8EA76F3F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 21:01:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23139300-1500050 
 for multiple; Fri, 27 Nov 2020 21:01:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 21:00:59 +0000
Message-Id: <20201127210059.10702-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Suppress "Combo PHY A HW
 state changed unexpectedly"
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
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?=
 <gitlab@gitlab.freedesktop.org>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Uga25vdyBhIHByb2JsZW0gZXhpc3RzIGluIHRoZSBpZndpIHNoaXBwZWQgd2l0aCB0aGUgZWFy
bHkKcHJlLXByb2R1Y3Rpb24gVGlnZXJsYWtlIGFuZCBERzEgcHJvdG90eXBlcywgbGF0ZXIgcmV2
aXNpb25zIGFyZSBmaW5lLgpIb3dldmVyLCBDSSBzdGlsbCByZWxpZXMgb24gdGhlIGVhcmxpZXIg
aWZ3aSBhbmQgd2UgZ3JvdyB0aXJlZCBvZgp0aGUgdm9sdW1lIG9mIHdhcm5pbmdzIGFzIHdlIHdh
aXQgZm9yIHJlcGxhY2VtZW50cy4KClNpbmNlIHRoZSB3YXJuaW5nIGlzIGEgYnVnLCB3ZSBkbyBu
b3Qgd2FudCB0byBsb3NlIHRoZSB3YXJuaW5nIGluIGl0cwplbnRpcmV0eSwgc28gb25seSBzdXBw
cmVzcyB0aGUgd2FybmluZyBmb3IgdGhlIHBsYXRmb3JtcyBjdXJyZW50bHkKZXhoaWJpdGluZyB0
aGUgaXNzdWUuCgpTdWdnZXN0ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGdpdGxhYkBn
aXRsYWIuZnJlZWRlc2t0b3Aub3JnPgpDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMjQxMQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b21ib19waHkuYyAgICB8IDIwICsrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
NiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jCmluZGV4IGQ1YWQ2MWU0MDgzZS4uOTk2YWUwNjA4
YTYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJv
X3BoeS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5
LmMKQEAgLTQyNywxMCArNDI3LDIyIEBAIHN0YXRpYyB2b2lkIGljbF9jb21ib19waHlzX3VuaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCXUzMiB2YWw7CiAKIAkJaWYg
KHBoeSA9PSBQSFlfQSAmJgotCQkgICAgIWljbF9jb21ib19waHlfdmVyaWZ5X3N0YXRlKGRldl9w
cml2LCBwaHkpKQotCQkJZHJtX3dhcm4oJmRldl9wcml2LT5kcm0sCi0JCQkJICJDb21ibyBQSFkg
JWMgSFcgc3RhdGUgY2hhbmdlZCB1bmV4cGVjdGVkbHlcbiIsCi0JCQkJIHBoeV9uYW1lKHBoeSkp
OworCQkgICAgIWljbF9jb21ib19waHlfdmVyaWZ5X3N0YXRlKGRldl9wcml2LCBwaHkpKSB7CisJ
CQlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBJU19ERzEoZGV2X3ByaXYpKSB7CisJCQkJ
LyoKKwkJCQkgKiBBIGtub3duIHByb2JsZW0gd2l0aCBvbGQgaWZ3aToKKwkJCQkgKiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzI0MTEKKwkJCQkgKiBT
dXBwcmVzcyB0aGUgd2FybmluZyBmb3IgQ0kuIFJlbW92ZSBBU0FQIQorCQkJCSAqLworCQkJCWRy
bV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAorCQkJCQkgICAgIkNvbWJvIFBIWSAlYyBIVyBzdGF0
ZSBjaGFuZ2VkIHVuZXhwZWN0ZWRseVxuIiwKKwkJCQkJICAgIHBoeV9uYW1lKHBoeSkpOworCQkJ
fSBlbHNlIHsKKwkJCQlkcm1fd2FybigmZGV2X3ByaXYtPmRybSwKKwkJCQkJICJDb21ibyBQSFkg
JWMgSFcgc3RhdGUgY2hhbmdlZCB1bmV4cGVjdGVkbHlcbiIsCisJCQkJCSBwaHlfbmFtZShwaHkp
KTsKKwkJCX0KKwkJfQogCiAJCWlmICghaGFzX3BoeV9taXNjKGRldl9wcml2LCBwaHkpKQogCQkJ
Z290byBza2lwX3BoeV9taXNjOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
