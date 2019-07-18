Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A127F6C99A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 09:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B196E31D;
	Thu, 18 Jul 2019 07:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A5F66E315
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 07:00:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17390374-1500050 
 for multiple; Thu, 18 Jul 2019 08:00:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 08:00:10 +0100
Message-Id: <20190718070024.21781-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718070024.21781-1-chris@chris-wilson.co.uk>
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/20] drm/i915: Remove obsolete engine cleanup
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

UmVtb3ZlIHRoZSBvdXRlciBsYXllciBjbGVhbnVwIG9mIGVuZ2luZSBzdHViczsgYXMgaTkxNV9k
cnYgaXRzZWxmIG5vCmxvbmdlciB0cmllcyB0byBwcmVhbGxvY2F0ZSBhbmQgc28gaXMgbm90IHJl
c3BvbnNpYmxlIGZvciBlaXRoZXIgdGhlCmFsbG9jYXRpb24gb3IgZnJlZS4gQnkgdGhlIHRpbWUg
d2UgY2FsbCB0aGUgY2xlYW51cCBmdW5jdGlvbiwgd2UgYWxyZWFkeQpoYXZlIGNsZWFuZWQgdXAg
dGhlIGVuZ2luZXMuCgp2MjogTGFjayBvZiBzeW1tZXRyeSBiZXR3ZWVuIG1taW9fcHJvYmUgYW5k
IG1taW9fcmVsZWFzZSBmb3IgaGFuZGxpbmcKdGhlIGVycm9yIGNsZWFudXAuIGVuZ2luZS0+ZGVz
dHJveSgpIGlzIGEgY29tcG91bmQgZnVuY3Rpb24gdGhhdCBpcwpjYWxsZWQgZWFybGllciBpbiB0
aGUgbm9ybWFsIHJlbGVhc2UgYXMgaXQgdGllcyB0b2dldGhlciBvdGhlciBiaXRzIG9mCnN0YXRl
LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDE1ICsrLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggN2MyMDk3NDNlNDc4Li5kMWMzNDk5YzhlMDMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtODQ4LDE1ICs4NDgsNiBAQCBzdGF0aWMgaW50IGk5MTVf
d29ya3F1ZXVlc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlyZXR1
cm4gLUVOT01FTTsKIH0KIAotc3RhdGljIHZvaWQgaTkxNV9lbmdpbmVzX2NsZWFudXAoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCi17Ci0Jc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lOwotCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwotCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2lu
ZSwgaTkxNSwgaWQpCi0JCWtmcmVlKGVuZ2luZSk7Ci19Ci0KIHN0YXRpYyB2b2lkIGk5MTVfd29y
a3F1ZXVlc19jbGVhbnVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlk
ZXN0cm95X3dvcmtxdWV1ZShkZXZfcHJpdi0+aG90cGx1Zy5kcF93cSk7CkBAIC05MjgsNyArOTE5
LDcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlyZXQgPSBpOTE1X3dvcmtxdWV1ZXNfaW5pdChkZXZfcHJp
dik7CiAJaWYgKHJldCA8IDApCi0JCWdvdG8gZXJyX2VuZ2luZXM7CisJCXJldHVybiByZXQ7CiAK
IAlpbnRlbF9ndF9pbml0X2Vhcmx5KCZkZXZfcHJpdi0+Z3QsIGRldl9wcml2KTsKIApAQCAtOTYx
LDggKzk1Miw2IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWk5MTVfZ2VtX2NsZWFudXBfZWFybHkoZGV2X3By
aXYpOwogZXJyX3dvcmtxdWV1ZXM6CiAJaTkxNV93b3JrcXVldWVzX2NsZWFudXAoZGV2X3ByaXYp
OwotZXJyX2VuZ2luZXM6Ci0JaTkxNV9lbmdpbmVzX2NsZWFudXAoZGV2X3ByaXYpOwogCXJldHVy
biByZXQ7CiB9CiAKQEAgLTk3OCw3ICs5NjcsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9s
YXRlX3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWludGVsX3Vj
X2NsZWFudXBfZWFybHkoJmRldl9wcml2LT5ndC51Yyk7CiAJaTkxNV9nZW1fY2xlYW51cF9lYXJs
eShkZXZfcHJpdik7CiAJaTkxNV93b3JrcXVldWVzX2NsZWFudXAoZGV2X3ByaXYpOwotCWk5MTVf
ZW5naW5lc19jbGVhbnVwKGRldl9wcml2KTsKIAogCXBtX3Fvc19yZW1vdmVfcmVxdWVzdCgmZGV2
X3ByaXYtPnNiX3Fvcyk7CiAJbXV0ZXhfZGVzdHJveSgmZGV2X3ByaXYtPnNiX2xvY2spOwpAQCAt
MTAzOSw2ICsxMDI3LDcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tbWlvX3Byb2JlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKICAqLwogc3RhdGljIHZvaWQgaTkxNV9kcml2
ZXJfbW1pb19yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKKwlp
bnRlbF9lbmdpbmVzX2NsZWFudXAoZGV2X3ByaXYpOwogCWludGVsX3RlYXJkb3duX21jaGJhcihk
ZXZfcHJpdik7CiAJaW50ZWxfdW5jb3JlX2ZpbmlfbW1pbygmZGV2X3ByaXYtPnVuY29yZSk7CiAJ
cGNpX2Rldl9wdXQoZGV2X3ByaXYtPmJyaWRnZV9kZXYpOwotLSAKMi4yMi4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
