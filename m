Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9083731204
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 18:12:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9348966B;
	Fri, 31 May 2019 16:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D56B78966B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 16:12:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16751386-1500050 
 for multiple; Fri, 31 May 2019 17:11:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 17:11:30 +0100
Message-Id: <20190531161130.28347-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531161130.28347-1-chris@chris-wilson.co.uk>
References: <20190531161130.28347-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Use unchecked unccore writes to
 flush the GTT
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgdGhlIEdUVCBpcyBvdXRzaWRlIG9mIHRoZSBwb3dlcndlbGwsIHdlIGNhbiBzaW1wbGlmeSBm
bHVzaGluZyB0aGUKR0dUVCB3cml0ZXMgYnkgdXNpbmcgYW4gdW5jaGVja2VkIG1taW8gd3JpdGUg
YW5kIHBvc3QuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDIwICsr
KysrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IGNhOGE2OWU4
YjA5OC4uZDc1NzIwNTVjZTZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAt
MTA4LDIyICsxMDgsMjYgQEAKIHN0YXRpYyBpbnQKIGk5MTVfZ2V0X2dndHRfdm1hX3BhZ2VzKHN0
cnVjdCBpOTE1X3ZtYSAqdm1hKTsKIAotc3RhdGljIHZvaWQgZ2VuNl9nZ3R0X2ludmFsaWRhdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQorc3RhdGljIHZvaWQgZ2VuNl9nZ3R0
X2ludmFsaWRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CisJc3RydWN0IGlu
dGVsX3VuY29yZSAqdW5jID0gJmk5MTUtPnVuY29yZTsKKwogCS8qCiAJICogTm90ZSB0aGF0IGFz
IGFuIHVuY2FjaGVkIG1taW8gd3JpdGUsIHRoaXMgd2lsbCBmbHVzaCB0aGUKIAkgKiBXQ0Igb2Yg
dGhlIHdyaXRlcyBpbnRvIHRoZSBHR1RUIGJlZm9yZSBpdCB0cmlnZ2VycyB0aGUgaW52YWxpZGF0
ZS4KIAkgKi8KLQlJOTE1X1dSSVRFKEdGWF9GTFNIX0NOVExfR0VONiwgR0ZYX0ZMU0hfQ05UTF9F
Tik7CisJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuYywgR0ZYX0ZMU0hfQ05UTF9HRU42LCBHRlhf
RkxTSF9DTlRMX0VOKTsKIH0KIAotc3RhdGljIHZvaWQgZ3VjX2dndHRfaW52YWxpZGF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgdm9pZCBndWNfZ2d0dF9pbnZh
bGlkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewotCWdlbjZfZ2d0dF9pbnZh
bGlkYXRlKGRldl9wcml2KTsKLQlJOTE1X1dSSVRFKEdFTjhfR1RDUiwgR0VOOF9HVENSX0lOVkFM
SURBVEUpOworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuYyA9ICZpOTE1LT51bmNvcmU7CisKKwln
ZW42X2dndHRfaW52YWxpZGF0ZShpOTE1KTsKKwlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jLCBH
RU44X0dUQ1IsIEdFTjhfR1RDUl9JTlZBTElEQVRFKTsKIH0KIAotc3RhdGljIHZvaWQgZ21jaF9n
Z3R0X2ludmFsaWRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQorc3RhdGlj
IHZvaWQgZ21jaF9nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CiB7CiAJaW50ZWxfZ3R0X2NoaXBzZXRfZmx1c2goKTsKIH0KQEAgLTEzNDcsMTAgKzEzNTEsMTAg
QEAgc3RhdGljIHZvaWQgZ2VuOF9wcGd0dF9jbGVhbnVwXzRsdmwoc3RydWN0IGk5MTVfaHdfcHBn
dHQgKnBwZ3R0KQogCiBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVf
YWRkcmVzc19zcGFjZSAqdm0pCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdm0tPmk5MTU7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB2bS0+aTkxNTsK
IAlzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKIAot
CWlmIChpbnRlbF92Z3B1X2FjdGl2ZShkZXZfcHJpdikpCisJaWYgKGludGVsX3ZncHVfYWN0aXZl
KGk5MTUpKQogCQlnZW44X3BwZ3R0X25vdGlmeV92Z3QocHBndHQsIGZhbHNlKTsKIAogCWlmIChp
OTE1X3ZtX2lzXzRsdmwodm0pKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
