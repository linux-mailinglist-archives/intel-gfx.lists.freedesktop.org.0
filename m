Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B38F10FD71
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 13:13:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843576E48D;
	Tue,  3 Dec 2019 12:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068FB6E48D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 12:13:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19441102-1500050 
 for multiple; Tue, 03 Dec 2019 12:13:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 12:13:16 +0000
Message-Id: <20191203121316.2972257-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203121316.2972257-1-chris@chris-wilson.co.uk>
References: <20191203121316.2972257-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Extract transient execbuf
 flags from i915_vma
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

Rm9yIG91ciBjb252ZW5pZW5jZSwgYW5kIHRvIGF2b2lkIGZyZXF1ZW50IGFsbG9jYXRpb25zLCB3
ZSBwbGFjZWQgc29tZQpsaXN0cyB3ZSB1c2UgZm9yIGV4ZWNidWYgaW5zaWRlIHRoZSBjb21tb24g
aTkxNV92bWEgc3RydWN0LiBBcyB3ZSBsb29rCnRvIHBhcmFsbGVsaXNlIGV4ZWNidWYsIHN1Y2gg
ZmllbGRzIGd1YXJkZWQgYnkgdGhlIHN0cnVjdF9tdXRleCBCS0wgbXVzdApiZSBwdWxsZWQgdW5k
ZXIgbG9jYWwgY29udHJvbC4gSW5zdGVhZCBvZiB1c2luZyB0aGUgaTkxNV92bWEgYXMgb3VyCnBy
aW1hcnkgbWVhbnMgb2YgdHJhY2tpbmcgdGhlIHVzZXIncyBsaXN0IG9mIG9iamVjdHMgYW5kIHRo
ZWlyIHZpcnR1YWwKbWFwcGluZ3MsIHdlIHVzZSBhIGxvY2FsIGViX3ZtYSB3aXRoIHRoZSBzYW1l
IGxpc3RzIGFzIGJlZm9yZSAoanVzdCBub3cKbG9jYWwgbm90IGdsb2JhbCkuCgpUaGlzIHNob3Vs
ZCBhbGxvdyB1cyB0byBvbmx5IHBlcmZvcm0gdGhlIGxvb2t1cCBvZiB2bWEgdXNlZCBmb3IKZXhl
Y3V0aW9uIG9uY2UgZHVyaW5nIHRoZSBleGVjYnVmIGlvY3RsLCBhcyBjdXJyZW50bHkgd2UgbmVl
ZCB0byByZW1vdmUKb3VyIHNlY3JldHMgZnJvbSBpbnNpZGUgaTkxNV92bWEgZXZlcnl0aW1lIHdl
IGRyb3AgdGhlIHN0cnVjdF9tdXRleCBhcwphbm90aGVyIGV4ZWNidWYgbWF5IHVzZSB0aGUgc2hh
cmVkIGxvY2F0aW9ucy4KCk9uY2UgdXNlciB2aXNpYmxlIGNvbnNlcXVlbmNlIGlzIHRoYXQgd2Ug
Y2FuIHJlbW92ZSB0aGUgcmVxdWlyZW1lbnQgdGhhdAp0aGUgZXhlY29ialtdIGJlIHVuaXF1ZSwg
YW5kIG9ubHkgcmVxdWlyZSB0aGF0IHRoZXkgZG8gbm90IGNvbmZsaWN0CihpLmUuIHlvdSBjYW5u
b3Qgc29mdHBpbiB0aGUgc2FtZSBvYmplY3QgaW50byB0d28gbG9jYXRpb25zLi4uIGhtbSwgd2UK
Y291bGQgYWxsb3cgdGhhdCBpZiB0cnVseSByZXF1aXJlZCwgYnV0IGF0bSB3ZSBvbmx5IGFsbG93
IG9uZSB2bWEgcGVyCnBwR1RUIHBlciBvYmplY3QuKQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDI3NCArKysrKysrKystLS0tLS0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmggICAgICAgICAgICAgICB8ICAxMSAtCiAyIGZpbGVz
IGNoYW5nZWQsIDEzMSBpbnNlcnRpb25zKCspLCAxNTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggNDU5ZjRkNDBi
NjliLi4wZGY0MWQ0M2ZiYmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYwpAQCAtMjcsNiArMjcsMTkgQEAKICNpbmNsdWRlICJpOTE1X2dlbV9p
b2N0bHMuaCIKICNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCiAKK3N0cnVjdCBlYl92bWEgeworCXN0
cnVjdCBpOTE1X3ZtYSAqdm1hOworCXVuc2lnbmVkIGludCBmbGFnczsKKworCS8qKiBUaGlzIHZt
YSdzIHBsYWNlIGluIHRoZSBleGVjYnVmIHJlc2VydmF0aW9uIGxpc3QgKi8KKwlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZXhlYzsKKwlzdHJ1Y3QgbGlzdF9oZWFkIGJpbmRfbGlu
azsKKwlzdHJ1Y3QgbGlzdF9oZWFkIHJlbG9jX2xpbms7CisKKwlzdHJ1Y3QgaGxpc3Rfbm9kZSBu
b2RlOworCXUzMiBoYW5kbGU7Cit9OworCiBlbnVtIHsKIAlGT1JDRV9DUFVfUkVMT0MgPSAxLAog
CUZPUkNFX0dUVF9SRUxPQywKQEAgLTIxOSwxNSArMjMyLDE0IEBAIHN0cnVjdCBpOTE1X2V4ZWNi
dWZmZXIgewogCXN0cnVjdCBkcm1fZmlsZSAqZmlsZTsgLyoqIHBlci1maWxlIGxvb2t1cCB0YWJs
ZXMgYW5kIGxpbWl0cyAqLwogCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgKmFyZ3M7
IC8qKiBpb2N0bCBwYXJhbWV0ZXJzICovCiAJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVj
dDIgKmV4ZWM7IC8qKiBpb2N0bCBleGVjb2JqW10gKi8KLQlzdHJ1Y3QgaTkxNV92bWEgKip2bWE7
Ci0JdW5zaWduZWQgaW50ICpmbGFnczsKKwlzdHJ1Y3QgZWJfdm1hICp2bWE7CiAKIAlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmU7IC8qKiBlbmdpbmUgdG8gcXVldWUgdGhlIHJlcXVlc3Qg
dG8gKi8KIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY29udGV4dDsgLyogbG9naWNhbCBzdGF0ZSBm
b3IgdGhlIHJlcXVlc3QgKi8KIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZ2VtX2NvbnRleHQ7
IC8qKiBjYWxsZXIncyBjb250ZXh0ICovCiAKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0
OyAvKiogb3VyIHJlcXVlc3QgdG8gYnVpbGQgKi8KLQlzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOyAv
KiogaWRlbnRpdHkgb2YgdGhlIGJhdGNoIG9iai92bWEgKi8KKwlzdHJ1Y3QgZWJfdm1hICpiYXRj
aDsgLyoqIGlkZW50aXR5IG9mIHRoZSBiYXRjaCBvYmovdm1hICovCiAKIAkvKiogYWN0dWFsIHNp
emUgb2YgZXhlY29ialtdIGFzIHdlIG1heSBleHRlbmQgaXQgZm9yIHRoZSBjbWRwYXJzZXIgKi8K
IAl1bnNpZ25lZCBpbnQgYnVmZmVyX2NvdW50OwpAQCAtMjc0LDggKzI4Niw2IEBAIHN0cnVjdCBp
OTE1X2V4ZWNidWZmZXIgewogCXN0cnVjdCBobGlzdF9oZWFkICpidWNrZXRzOyAvKiogaHQgZm9y
IHJlbG9jYXRpb24gaGFuZGxlcyAqLwogfTsKIAotI2RlZmluZSBleGVjX2VudHJ5KEVCLCBWTUEp
ICgmKEVCKS0+ZXhlY1soVk1BKS0+ZXhlY19mbGFncyAtIChFQiktPmZsYWdzXSkKLQogLyoKICAq
IFVzZWQgdG8gY29udmVydCBhbnkgYWRkcmVzcyB0byBjYW5vbmljYWwgZm9ybS4KICAqIFN0YXJ0
aW5nIGZyb20gZ2VuOCwgc29tZSBjb21tYW5kcyAoZS5nLiBTVEFURV9CQVNFX0FERFJFU1MsCkBA
IC0zODEsOSArMzkxLDkgQEAgZWJfdm1hX21pc3BsYWNlZChjb25zdCBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2V4ZWNfb2JqZWN0MiAqZW50cnksCiBzdGF0aWMgaW5saW5lIGJvb2wKIGViX3Bpbl92bWEo
c3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiAJICAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dl
bV9leGVjX29iamVjdDIgKmVudHJ5LAotCSAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQorCSAgIHN0
cnVjdCBlYl92bWEgKmV2KQogewotCXVuc2lnbmVkIGludCBleGVjX2ZsYWdzID0gKnZtYS0+ZXhl
Y19mbGFnczsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYSA9IGV2LT52bWE7CiAJdTY0IHBpbl9mbGFn
czsKIAogCWlmICh2bWEtPm5vZGUuc2l6ZSkKQEAgLTM5MiwyNCArNDAyLDI0IEBAIGViX3Bpbl92
bWEoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiAJCXBpbl9mbGFncyA9IGVudHJ5LT5vZmZz
ZXQgJiBQSU5fT0ZGU0VUX01BU0s7CiAKIAlwaW5fZmxhZ3MgfD0gUElOX1VTRVIgfCBQSU5fTk9F
VklDVCB8IFBJTl9PRkZTRVRfRklYRUQ7Ci0JaWYgKHVubGlrZWx5KGV4ZWNfZmxhZ3MgJiBFWEVD
X09CSkVDVF9ORUVEU19HVFQpKQorCWlmICh1bmxpa2VseShldi0+ZmxhZ3MgJiBFWEVDX09CSkVD
VF9ORUVEU19HVFQpKQogCQlwaW5fZmxhZ3MgfD0gUElOX0dMT0JBTDsKIAogCWlmICh1bmxpa2Vs
eShpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBwaW5fZmxhZ3MpKSkKIAkJcmV0dXJuIGZhbHNlOwog
Ci0JaWYgKHVubGlrZWx5KGV4ZWNfZmxhZ3MgJiBFWEVDX09CSkVDVF9ORUVEU19GRU5DRSkpIHsK
KwlpZiAodW5saWtlbHkoZXYtPmZsYWdzICYgRVhFQ19PQkpFQ1RfTkVFRFNfRkVOQ0UpKSB7CiAJ
CWlmICh1bmxpa2VseShpOTE1X3ZtYV9waW5fZmVuY2Uodm1hKSkpIHsKIAkJCWk5MTVfdm1hX3Vu
cGluKHZtYSk7CiAJCQlyZXR1cm4gZmFsc2U7CiAJCX0KIAogCQlpZiAodm1hLT5mZW5jZSkKLQkJ
CWV4ZWNfZmxhZ3MgfD0gX19FWEVDX09CSkVDVF9IQVNfRkVOQ0U7CisJCQlldi0+ZmxhZ3MgfD0g
X19FWEVDX09CSkVDVF9IQVNfRkVOQ0U7CiAJfQogCi0JKnZtYS0+ZXhlY19mbGFncyA9IGV4ZWNf
ZmxhZ3MgfCBfX0VYRUNfT0JKRUNUX0hBU19QSU47Ci0JcmV0dXJuICFlYl92bWFfbWlzcGxhY2Vk
KGVudHJ5LCB2bWEsIGV4ZWNfZmxhZ3MpOworCWV2LT5mbGFncyB8PSBfX0VYRUNfT0JKRUNUX0hB
U19QSU47CisJcmV0dXJuICFlYl92bWFfbWlzcGxhY2VkKGVudHJ5LCB2bWEsIGV2LT5mbGFncyk7
CiB9CiAKIHN0YXRpYyBpbmxpbmUgdm9pZCBfX2ViX3VucmVzZXJ2ZV92bWEoc3RydWN0IGk5MTVf
dm1hICp2bWEsIHVuc2lnbmVkIGludCBmbGFncykKQEAgLTQyMywxMyArNDMzLDEzIEBAIHN0YXRp
YyBpbmxpbmUgdm9pZCBfX2ViX3VucmVzZXJ2ZV92bWEoc3RydWN0IGk5MTVfdm1hICp2bWEsIHVu
c2lnbmVkIGludCBmbGFncykKIH0KIAogc3RhdGljIGlubGluZSB2b2lkCi1lYl91bnJlc2VydmVf
dm1hKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1bnNpZ25lZCBpbnQgKmZsYWdzKQorZWJfdW5yZXNl
cnZlX3ZtYShzdHJ1Y3QgZWJfdm1hICpldikKIHsKLQlpZiAoISgqZmxhZ3MgJiBfX0VYRUNfT0JK
RUNUX0hBU19QSU4pKQorCWlmICghKGV2LT5mbGFncyAmIF9fRVhFQ19PQkpFQ1RfSEFTX1BJTikp
CiAJCXJldHVybjsKIAotCV9fZWJfdW5yZXNlcnZlX3ZtYSh2bWEsICpmbGFncyk7Ci0JKmZsYWdz
ICY9IH5fX0VYRUNfT0JKRUNUX1JFU0VSVkVEOworCV9fZWJfdW5yZXNlcnZlX3ZtYShldi0+dm1h
LCBldi0+ZmxhZ3MpOworCWV2LT5mbGFncyAmPSB+X19FWEVDX09CSkVDVF9SRVNFUlZFRDsKIH0K
IAogc3RhdGljIGludApAQCAtNDU5LDEyICs0NjksNiBAQCBlYl92YWxpZGF0ZV92bWEoc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiAJCWVudHJ5LT5wYWRfdG9fc2l6ZSA9IDA7CiAJfQogCi0J
aWYgKHVubGlrZWx5KHZtYS0+ZXhlY19mbGFncykpIHsKLQkJRFJNX0RFQlVHKCJPYmplY3QgW2hh
bmRsZSAlZCwgaW5kZXggJWRdIGFwcGVhcnMgbW9yZSB0aGFuIG9uY2UgaW4gb2JqZWN0IGxpc3Rc
biIsCi0JCQkgIGVudHJ5LT5oYW5kbGUsIChpbnQpKGVudHJ5IC0gZWItPmV4ZWMpKTsKLQkJcmV0
dXJuIC1FSU5WQUw7Ci0JfQotCiAJLyoKIAkgKiBGcm9tIGRybV9tbSBwZXJzcGVjdGl2ZSBhZGRy
ZXNzIHNwYWNlIGlzIGNvbnRpbnVvdXMsCiAJICogc28gZnJvbSB0aGlzIHBvaW50IHdlJ3JlIGFs
d2F5cyB1c2luZyBub24tY2Fub25pY2FsCkBAIC00OTMsNiArNDk3LDcgQEAgZWJfYWRkX3ZtYShz
dHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnkgPSAmZWItPmV4ZWNbaV07
CisJc3RydWN0IGViX3ZtYSAqZXYgPSAmZWItPnZtYVtpXTsKIAlpbnQgZXJyOwogCiAJR0VNX0JV
R19PTihpOTE1X3ZtYV9pc19jbG9zZWQodm1hKSk7CkBAIC01MDMsMjUgKzUwOCwxOSBAQCBlYl9h
ZGRfdm1hKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQkJcmV0dXJuIGVycjsKIAl9CiAK
Kwlldi0+dm1hID0gdm1hOworCWV2LT5leGVjID0gZW50cnk7CisJZXYtPmZsYWdzID0gZW50cnkt
PmZsYWdzOworCiAJaWYgKGViLT5sdXRfc2l6ZSA+IDApIHsKLQkJdm1hLT5leGVjX2hhbmRsZSA9
IGVudHJ5LT5oYW5kbGU7Ci0JCWhsaXN0X2FkZF9oZWFkKCZ2bWEtPmV4ZWNfbm9kZSwKKwkJZXYt
PmhhbmRsZSA9IGVudHJ5LT5oYW5kbGU7CisJCWhsaXN0X2FkZF9oZWFkKCZldi0+bm9kZSwKIAkJ
CSAgICAgICAmZWItPmJ1Y2tldHNbaGFzaF8zMihlbnRyeS0+aGFuZGxlLAogCQkJCQkJICAgIGVi
LT5sdXRfc2l6ZSldKTsKIAl9CiAKIAlpZiAoZW50cnktPnJlbG9jYXRpb25fY291bnQpCi0JCWxp
c3RfYWRkX3RhaWwoJnZtYS0+cmVsb2NfbGluaywgJmViLT5yZWxvY3MpOwotCi0JLyoKLQkgKiBT
dGFzaCBhIHBvaW50ZXIgZnJvbSB0aGUgdm1hIHRvIGV4ZWNvYmosIHNvIHdlIGNhbiBxdWVyeSBp
dHMgZmxhZ3MsCi0JICogc2l6ZSwgYWxpZ25tZW50IGV0YyBhcyBwcm92aWRlZCBieSB0aGUgdXNl
ci4gQWxzbyB3ZSBzdGFzaCBhIHBvaW50ZXIKLQkgKiB0byB0aGUgdm1hIGluc2lkZSB0aGUgZXhl
Y29iaiBzbyB0aGF0IHdlIGNhbiB1c2UgYSBkaXJlY3QgbG9va3VwCi0JICogdG8gZmluZCB0aGUg
cmlnaHQgdGFyZ2V0IFZNQSB3aGVuIGRvaW5nIHJlbG9jYXRpb25zLgotCSAqLwotCWViLT52bWFb
aV0gPSB2bWE7Ci0JZWItPmZsYWdzW2ldID0gZW50cnktPmZsYWdzOwotCXZtYS0+ZXhlY19mbGFn
cyA9ICZlYi0+ZmxhZ3NbaV07CisJCWxpc3RfYWRkX3RhaWwoJmV2LT5yZWxvY19saW5rLCAmZWIt
PnJlbG9jcyk7CiAKIAkvKgogCSAqIFNOQSBpcyBkb2luZyBmYW5jeSB0cmlja3Mgd2l0aCBjb21w
cmVzc2luZyBiYXRjaCBidWZmZXJzLCB3aGljaCBsZWFkcwpAQCAtNTM0LDI4ICs1MzMsMjYgQEAg
ZWJfYWRkX3ZtYShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkgKi8KIAlpZiAoaSA9PSBi
YXRjaF9pZHgpIHsKIAkJaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmCi0JCSAgICAhKGVi
LT5mbGFnc1tpXSAmIEVYRUNfT0JKRUNUX1BJTk5FRCkpCi0JCQllYi0+ZmxhZ3NbaV0gfD0gX19F
WEVDX09CSkVDVF9ORUVEU19CSUFTOworCQkgICAgIShldi0+ZmxhZ3MgJiBFWEVDX09CSkVDVF9Q
SU5ORUQpKQorCQkJZXYtPmZsYWdzIHw9IF9fRVhFQ19PQkpFQ1RfTkVFRFNfQklBUzsKIAkJaWYg
KGViLT5yZWxvY19jYWNoZS5oYXNfZmVuY2UpCi0JCQllYi0+ZmxhZ3NbaV0gfD0gRVhFQ19PQkpF
Q1RfTkVFRFNfRkVOQ0U7CisJCQlldi0+ZmxhZ3MgfD0gRVhFQ19PQkpFQ1RfTkVFRFNfRkVOQ0U7
CiAKLQkJZWItPmJhdGNoID0gdm1hOworCQllYi0+YmF0Y2ggPSBldjsKIAl9CiAKIAllcnIgPSAw
OwotCWlmIChlYl9waW5fdm1hKGViLCBlbnRyeSwgdm1hKSkgeworCWlmIChlYl9waW5fdm1hKGVi
LCBlbnRyeSwgZXYpKSB7CiAJCWlmIChlbnRyeS0+b2Zmc2V0ICE9IHZtYS0+bm9kZS5zdGFydCkg
ewogCQkJZW50cnktPm9mZnNldCA9IHZtYS0+bm9kZS5zdGFydCB8IFVQREFURTsKIAkJCWViLT5h
cmdzLT5mbGFncyB8PSBfX0VYRUNfSEFTX1JFTE9DOwogCQl9CiAJfSBlbHNlIHsKLQkJZWJfdW5y
ZXNlcnZlX3ZtYSh2bWEsIHZtYS0+ZXhlY19mbGFncyk7CisJCWViX3VucmVzZXJ2ZV92bWEoZXYp
OwogCi0JCWxpc3RfYWRkX3RhaWwoJnZtYS0+ZXhlY19saW5rLCAmZWItPnVuYm91bmQpOworCQls
aXN0X2FkZF90YWlsKCZldi0+YmluZF9saW5rLCAmZWItPnVuYm91bmQpOwogCQlpZiAoZHJtX21t
X25vZGVfYWxsb2NhdGVkKCZ2bWEtPm5vZGUpKQogCQkJZXJyID0gaTkxNV92bWFfdW5iaW5kKHZt
YSk7Ci0JCWlmICh1bmxpa2VseShlcnIpKQotCQkJdm1hLT5leGVjX2ZsYWdzID0gTlVMTDsKIAl9
CiAJcmV0dXJuIGVycjsKIH0KQEAgLTU3NywxMSArNTc0LDExIEBAIHN0YXRpYyBpbmxpbmUgaW50
IHVzZV9jcHVfcmVsb2MoY29uc3Qgc3RydWN0IHJlbG9jX2NhY2hlICpjYWNoZSwKIAkJb2JqLT5j
YWNoZV9sZXZlbCAhPSBJOTE1X0NBQ0hFX05PTkUpOwogfQogCi1zdGF0aWMgaW50IGViX3Jlc2Vy
dmVfdm1hKGNvbnN0IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAotCQkJICBzdHJ1Y3QgaTkx
NV92bWEgKnZtYSkKK3N0YXRpYyBpbnQgZWJfcmVzZXJ2ZV92bWEoY29uc3Qgc3RydWN0IGk5MTVf
ZXhlY2J1ZmZlciAqZWIsIHN0cnVjdCBlYl92bWEgKmV2KQogewotCXN0cnVjdCBkcm1faTkxNV9n
ZW1fZXhlY19vYmplY3QyICplbnRyeSA9IGV4ZWNfZW50cnkoZWIsIHZtYSk7Ci0JdW5zaWduZWQg
aW50IGV4ZWNfZmxhZ3MgPSAqdm1hLT5leGVjX2ZsYWdzOworCXN0cnVjdCBkcm1faTkxNV9nZW1f
ZXhlY19vYmplY3QyICplbnRyeSA9IGV2LT5leGVjOworCXVuc2lnbmVkIGludCBleGVjX2ZsYWdz
ID0gZXYtPmZsYWdzOworCXN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gZXYtPnZtYTsKIAl1NjQgcGlu
X2ZsYWdzOwogCWludCBlcnI7CiAKQEAgLTYyOCw4ICs2MjUsOCBAQCBzdGF0aWMgaW50IGViX3Jl
c2VydmVfdm1hKGNvbnN0IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQkJZXhlY19mbGFn
cyB8PSBfX0VYRUNfT0JKRUNUX0hBU19GRU5DRTsKIAl9CiAKLQkqdm1hLT5leGVjX2ZsYWdzID0g
ZXhlY19mbGFncyB8IF9fRVhFQ19PQkpFQ1RfSEFTX1BJTjsKLQlHRU1fQlVHX09OKGViX3ZtYV9t
aXNwbGFjZWQoZW50cnksIHZtYSwgZXhlY19mbGFncykpOworCWV2LT5mbGFncyA9IGV4ZWNfZmxh
Z3MgfCBfX0VYRUNfT0JKRUNUX0hBU19QSU47CisJR0VNX0JVR19PTihlYl92bWFfbWlzcGxhY2Vk
KGVudHJ5LCB2bWEsIGV2LT5mbGFncykpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC02MzgsNyArNjM1
LDcgQEAgc3RhdGljIGludCBlYl9yZXNlcnZlKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQog
ewogCWNvbnN0IHVuc2lnbmVkIGludCBjb3VudCA9IGViLT5idWZmZXJfY291bnQ7CiAJc3RydWN0
IGxpc3RfaGVhZCBsYXN0OwotCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCXN0cnVjdCBlYl92bWEg
KmV2OwogCXVuc2lnbmVkIGludCBpLCBwYXNzOwogCWludCBlcnI7CiAKQEAgLTY1OSw4ICs2NTYs
OCBAQCBzdGF0aWMgaW50IGViX3Jlc2VydmUoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJ
cGFzcyA9IDA7CiAJZXJyID0gMDsKIAlkbyB7Ci0JCWxpc3RfZm9yX2VhY2hfZW50cnkodm1hLCAm
ZWItPnVuYm91bmQsIGV4ZWNfbGluaykgewotCQkJZXJyID0gZWJfcmVzZXJ2ZV92bWEoZWIsIHZt
YSk7CisJCWxpc3RfZm9yX2VhY2hfZW50cnkoZXYsICZlYi0+dW5ib3VuZCwgYmluZF9saW5rKSB7
CisJCQllcnIgPSBlYl9yZXNlcnZlX3ZtYShlYiwgZXYpOwogCQkJaWYgKGVycikKIAkJCQlicmVh
azsKIAkJfQpAQCAtNjcxLDI2ICs2NjgsMjYgQEAgc3RhdGljIGludCBlYl9yZXNlcnZlKHN0cnVj
dCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCQlJTklUX0xJU1RfSEVBRCgmZWItPnVuYm91bmQpOwog
CQlJTklUX0xJU1RfSEVBRCgmbGFzdCk7CiAJCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7
Ci0JCQl1bnNpZ25lZCBpbnQgZmxhZ3MgPSBlYi0+ZmxhZ3NbaV07Ci0JCQlzdHJ1Y3QgaTkxNV92
bWEgKnZtYSA9IGViLT52bWFbaV07CisJCQlzdHJ1Y3QgZWJfdm1hICpldiA9ICZlYi0+dm1hW2ld
OworCQkJdW5zaWduZWQgaW50IGZsYWdzID0gZXYtPmZsYWdzOwogCiAJCQlpZiAoZmxhZ3MgJiBF
WEVDX09CSkVDVF9QSU5ORUQgJiYKIAkJCSAgICBmbGFncyAmIF9fRVhFQ19PQkpFQ1RfSEFTX1BJ
TikKIAkJCQljb250aW51ZTsKIAotCQkJZWJfdW5yZXNlcnZlX3ZtYSh2bWEsICZlYi0+ZmxhZ3Nb
aV0pOworCQkJZWJfdW5yZXNlcnZlX3ZtYShldik7CiAKIAkJCWlmIChmbGFncyAmIEVYRUNfT0JK
RUNUX1BJTk5FRCkKIAkJCQkvKiBQaW5uZWQgbXVzdCBoYXZlIHRoZWlyIHNsb3QgKi8KLQkJCQls
aXN0X2FkZCgmdm1hLT5leGVjX2xpbmssICZlYi0+dW5ib3VuZCk7CisJCQkJbGlzdF9hZGQoJmV2
LT5iaW5kX2xpbmssICZlYi0+dW5ib3VuZCk7CiAJCQllbHNlIGlmIChmbGFncyAmIF9fRVhFQ19P
QkpFQ1RfTkVFRFNfTUFQKQogCQkJCS8qIE1hcCByZXF1aXJlIHRoZSBsb3dlc3QgMjU2TWlCIChh
cGVydHVyZSkgKi8KLQkJCQlsaXN0X2FkZF90YWlsKCZ2bWEtPmV4ZWNfbGluaywgJmViLT51bmJv
dW5kKTsKKwkJCQlsaXN0X2FkZF90YWlsKCZldi0+YmluZF9saW5rLCAmZWItPnVuYm91bmQpOwog
CQkJZWxzZSBpZiAoIShmbGFncyAmIEVYRUNfT0JKRUNUX1NVUFBPUlRTXzQ4Ql9BRERSRVNTKSkK
IAkJCQkvKiBQcmlvcml0aXNlIDRHaUIgcmVnaW9uIGZvciByZXN0cmljdGVkIGJvICovCi0JCQkJ
bGlzdF9hZGQoJnZtYS0+ZXhlY19saW5rLCAmbGFzdCk7CisJCQkJbGlzdF9hZGQoJmV2LT5iaW5k
X2xpbmssICZsYXN0KTsKIAkJCWVsc2UKLQkJCQlsaXN0X2FkZF90YWlsKCZ2bWEtPmV4ZWNfbGlu
aywgJmxhc3QpOworCQkJCWxpc3RfYWRkX3RhaWwoJmV2LT5iaW5kX2xpbmssICZsYXN0KTsKIAkJ
fQogCQlsaXN0X3NwbGljZV90YWlsKCZsYXN0LCAmZWItPnVuYm91bmQpOwogCkBAIC04MDksMTAg
KzgwNiw4IEBAIHN0YXRpYyBpbnQgZWJfbG9va3VwX3ZtYXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZl
ciAqZWIpCiAJCWlmICh1bmxpa2VseShlcnIpKQogCQkJZ290byBlcnJfdm1hOwogCi0JCUdFTV9C
VUdfT04odm1hICE9IGViLT52bWFbaV0pOwotCQlHRU1fQlVHX09OKHZtYS0+ZXhlY19mbGFncyAh
PSAmZWItPmZsYWdzW2ldKTsKIAkJR0VNX0JVR19PTihkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJnZt
YS0+bm9kZSkgJiYKLQkJCSAgIGViX3ZtYV9taXNwbGFjZWQoJmViLT5leGVjW2ldLCB2bWEsIGVi
LT5mbGFnc1tpXSkpOworCQkJICAgZWJfdm1hX21pc3BsYWNlZCgmZWItPmV4ZWNbaV0sIHZtYSwg
ZWItPnZtYVtpXS5mbGFncykpOwogCX0KIAogCW11dGV4X3VubG9jaygmZWItPmdlbV9jb250ZXh0
LT5tdXRleCk7CkBAIC04MjMsMjcgKzgxOCwyNyBAQCBzdGF0aWMgaW50IGViX2xvb2t1cF92bWFz
KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogZXJyX29iajoKIAlpOTE1X2dlbV9vYmplY3Rf
cHV0KG9iaik7CiBlcnJfdm1hOgotCWViLT52bWFbaV0gPSBOVUxMOworCWViLT52bWFbaV0udm1h
ID0gTlVMTDsKIGVycl9jdHg6CiAJbXV0ZXhfdW5sb2NrKCZlYi0+Z2VtX2NvbnRleHQtPm11dGV4
KTsKIAlyZXR1cm4gZXJyOwogfQogCi1zdGF0aWMgc3RydWN0IGk5MTVfdm1hICoKK3N0YXRpYyBz
dHJ1Y3QgZWJfdm1hICoKIGViX2dldF92bWEoY29uc3Qgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAq
ZWIsIHVuc2lnbmVkIGxvbmcgaGFuZGxlKQogewogCWlmIChlYi0+bHV0X3NpemUgPCAwKSB7CiAJ
CWlmIChoYW5kbGUgPj0gLWViLT5sdXRfc2l6ZSkKIAkJCXJldHVybiBOVUxMOwotCQlyZXR1cm4g
ZWItPnZtYVtoYW5kbGVdOworCQlyZXR1cm4gJmViLT52bWFbaGFuZGxlXTsKIAl9IGVsc2Ugewog
CQlzdHJ1Y3QgaGxpc3RfaGVhZCAqaGVhZDsKLQkJc3RydWN0IGk5MTVfdm1hICp2bWE7CisJCXN0
cnVjdCBlYl92bWEgKmV2OwogCiAJCWhlYWQgPSAmZWItPmJ1Y2tldHNbaGFzaF8zMihoYW5kbGUs
IGViLT5sdXRfc2l6ZSldOwotCQlobGlzdF9mb3JfZWFjaF9lbnRyeSh2bWEsIGhlYWQsIGV4ZWNf
bm9kZSkgewotCQkJaWYgKHZtYS0+ZXhlY19oYW5kbGUgPT0gaGFuZGxlKQotCQkJCXJldHVybiB2
bWE7CisJCWhsaXN0X2Zvcl9lYWNoX2VudHJ5KGV2LCBoZWFkLCBub2RlKSB7CisJCQlpZiAoZXYt
PmhhbmRsZSA9PSBoYW5kbGUpCisJCQkJcmV0dXJuIGV2OwogCQl9CiAJCXJldHVybiBOVUxMOwog
CX0KQEAgLTg1NSwyMCArODUwLDE4IEBAIHN0YXRpYyB2b2lkIGViX3JlbGVhc2Vfdm1hcyhjb25z
dCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIAl1bnNpZ25lZCBpbnQgaTsKIAogCWZvciAo
aSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Ci0JCXN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gZWItPnZt
YVtpXTsKLQkJdW5zaWduZWQgaW50IGZsYWdzID0gZWItPmZsYWdzW2ldOworCQlzdHJ1Y3QgZWJf
dm1hICpldiA9ICZlYi0+dm1hW2ldOworCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYSA9IGV2LT52bWE7
CiAKIAkJaWYgKCF2bWEpCiAJCQlicmVhazsKIAotCQlHRU1fQlVHX09OKHZtYS0+ZXhlY19mbGFn
cyAhPSAmZWItPmZsYWdzW2ldKTsKLQkJdm1hLT5leGVjX2ZsYWdzID0gTlVMTDsKLQkJZWItPnZt
YVtpXSA9IE5VTEw7CisJCWViLT52bWFbaV0udm1hID0gTlVMTDsKIAotCQlpZiAoZmxhZ3MgJiBf
X0VYRUNfT0JKRUNUX0hBU19QSU4pCi0JCQlfX2ViX3VucmVzZXJ2ZV92bWEodm1hLCBmbGFncyk7
CisJCWlmIChldi0+ZmxhZ3MgJiBfX0VYRUNfT0JKRUNUX0hBU19QSU4pCisJCQlfX2ViX3VucmVz
ZXJ2ZV92bWEodm1hLCBldi0+ZmxhZ3MpOwogCi0JCWlmIChmbGFncyAmIF9fRVhFQ19PQkpFQ1Rf
SEFTX1JFRikKKwkJaWYgKGV2LT5mbGFncyAmIF9fRVhFQ19PQkpFQ1RfSEFTX1JFRikKIAkJCWk5
MTVfdm1hX3B1dCh2bWEpOwogCX0KIH0KQEAgLTEzNTEsMTAgKzEzNDQsMTAgQEAgcmVsb2NhdGVf
ZW50cnkoc3RydWN0IGk5MTVfdm1hICp2bWEsCiAKIHN0YXRpYyB1NjQKIGViX3JlbG9jYXRlX2Vu
dHJ5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAotCQkgIHN0cnVjdCBpOTE1X3ZtYSAqdm1h
LAorCQkgIHN0cnVjdCBlYl92bWEgKmV2LAogCQkgIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1f
cmVsb2NhdGlvbl9lbnRyeSAqcmVsb2MpCiB7Ci0Jc3RydWN0IGk5MTVfdm1hICp0YXJnZXQ7CisJ
c3RydWN0IGViX3ZtYSAqdGFyZ2V0OwogCWludCBlcnI7CiAKIAkvKiB3ZSd2ZSBhbHJlYWR5IGhv
bGQgYSByZWZlcmVuY2UgdG8gYWxsIHZhbGlkIG9iamVjdHMgKi8KQEAgLTEzODYsNyArMTM3OSw3
IEBAIGViX3JlbG9jYXRlX2VudHJ5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCX0KIAog
CWlmIChyZWxvYy0+d3JpdGVfZG9tYWluKSB7Ci0JCSp0YXJnZXQtPmV4ZWNfZmxhZ3MgfD0gRVhF
Q19PQkpFQ1RfV1JJVEU7CisJCXRhcmdldC0+ZmxhZ3MgfD0gRVhFQ19PQkpFQ1RfV1JJVEU7CiAK
IAkJLyoKIAkJICogU2FuZHlicmlkZ2UgUFBHVFQgZXJyYXRhOiBXZSBuZWVkIGEgZ2xvYmFsIGd0
dCBtYXBwaW5nCkBAIC0xMzk2LDcgKzEzODksOCBAQCBlYl9yZWxvY2F0ZV9lbnRyeShzdHJ1Y3Qg
aTkxNV9leGVjYnVmZmVyICplYiwKIAkJICovCiAJCWlmIChyZWxvYy0+d3JpdGVfZG9tYWluID09
IEk5MTVfR0VNX0RPTUFJTl9JTlNUUlVDVElPTiAmJgogCQkgICAgSVNfR0VOKGViLT5pOTE1LCA2
KSkgewotCQkJZXJyID0gaTkxNV92bWFfYmluZCh0YXJnZXQsIHRhcmdldC0+b2JqLT5jYWNoZV9s
ZXZlbCwKKwkJCWVyciA9IGk5MTVfdm1hX2JpbmQodGFyZ2V0LT52bWEsCisJCQkJCSAgICB0YXJn
ZXQtPnZtYS0+b2JqLT5jYWNoZV9sZXZlbCwKIAkJCQkJICAgIFBJTl9HTE9CQUwsIE5VTEwpOwog
CQkJaWYgKFdBUk5fT05DRShlcnIsCiAJCQkJICAgICAgIlVuZXhwZWN0ZWQgZmFpbHVyZSB0byBi
aW5kIHRhcmdldCBWTUEhIikpCkBAIC0xNDA5LDE3ICsxNDAzLDE3IEBAIGViX3JlbG9jYXRlX2Vu
dHJ5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCSAqIG1vcmUgd29yayBuZWVkcyB0byBi
ZSBkb25lLgogCSAqLwogCWlmICghREJHX0ZPUkNFX1JFTE9DICYmCi0JICAgIGdlbjhfY2Fub25p
Y2FsX2FkZHIodGFyZ2V0LT5ub2RlLnN0YXJ0KSA9PSByZWxvYy0+cHJlc3VtZWRfb2Zmc2V0KQor
CSAgICBnZW44X2Nhbm9uaWNhbF9hZGRyKHRhcmdldC0+dm1hLT5ub2RlLnN0YXJ0KSA9PSByZWxv
Yy0+cHJlc3VtZWRfb2Zmc2V0KQogCQlyZXR1cm4gMDsKIAogCS8qIENoZWNrIHRoYXQgdGhlIHJl
bG9jYXRpb24gYWRkcmVzcyBpcyB2YWxpZC4uLiAqLwogCWlmICh1bmxpa2VseShyZWxvYy0+b2Zm
c2V0ID4KLQkJICAgICB2bWEtPnNpemUgLSAoZWItPnJlbG9jX2NhY2hlLnVzZV82NGJpdF9yZWxv
YyA/IDggOiA0KSkpIHsKKwkJICAgICBldi0+dm1hLT5zaXplIC0gKGViLT5yZWxvY19jYWNoZS51
c2VfNjRiaXRfcmVsb2MgPyA4IDogNCkpKSB7CiAJCURSTV9ERUJVRygiUmVsb2NhdGlvbiBiZXlv
bmQgb2JqZWN0IGJvdW5kczogIgogCQkJICAidGFyZ2V0ICVkIG9mZnNldCAlZCBzaXplICVkLlxu
IiwKIAkJCSAgcmVsb2MtPnRhcmdldF9oYW5kbGUsCiAJCQkgIChpbnQpcmVsb2MtPm9mZnNldCwK
LQkJCSAgKGludCl2bWEtPnNpemUpOworCQkJICAoaW50KWV2LT52bWEtPnNpemUpOwogCQlyZXR1
cm4gLUVJTlZBTDsKIAl9CiAJaWYgKHVubGlrZWx5KHJlbG9jLT5vZmZzZXQgJiAzKSkgewpAQCAt
MTQzOCwxOCArMTQzMiwxOCBAQCBlYl9yZWxvY2F0ZV9lbnRyeShzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYiwKIAkgKiBkbyByZWxvY2F0aW9ucyB3ZSBhcmUgYWxyZWFkeSBzdGFsbGluZywgZGlz
YWJsZSB0aGUgdXNlcidzIG9wdAogCSAqIG91dCBvZiBvdXIgc3luY2hyb25pc2F0aW9uLgogCSAq
LwotCSp2bWEtPmV4ZWNfZmxhZ3MgJj0gfkVYRUNfT0JKRUNUX0FTWU5DOworCWV2LT5mbGFncyAm
PSB+RVhFQ19PQkpFQ1RfQVNZTkM7CiAKIAkvKiBhbmQgdXBkYXRlIHRoZSB1c2VyJ3MgcmVsb2Nh
dGlvbiBlbnRyeSAqLwotCXJldHVybiByZWxvY2F0ZV9lbnRyeSh2bWEsIHJlbG9jLCBlYiwgdGFy
Z2V0KTsKKwlyZXR1cm4gcmVsb2NhdGVfZW50cnkoZXYtPnZtYSwgcmVsb2MsIGViLCB0YXJnZXQt
PnZtYSk7CiB9CiAKLXN0YXRpYyBpbnQgZWJfcmVsb2NhdGVfdm1hKHN0cnVjdCBpOTE1X2V4ZWNi
dWZmZXIgKmViLCBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKK3N0YXRpYyBpbnQgZWJfcmVsb2NhdGVf
dm1hKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLCBzdHJ1Y3QgZWJfdm1hICpldikKIHsKICNk
ZWZpbmUgTl9SRUxPQyh4KSAoKHgpIC8gc2l6ZW9mKHN0cnVjdCBkcm1faTkxNV9nZW1fcmVsb2Nh
dGlvbl9lbnRyeSkpCiAJc3RydWN0IGRybV9pOTE1X2dlbV9yZWxvY2F0aW9uX2VudHJ5IHN0YWNr
W05fUkVMT0MoNTEyKV07CiAJc3RydWN0IGRybV9pOTE1X2dlbV9yZWxvY2F0aW9uX2VudHJ5IF9f
dXNlciAqdXJlbG9jczsKLQljb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAq
ZW50cnkgPSBleGVjX2VudHJ5KGViLCB2bWEpOworCWNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1f
ZXhlY19vYmplY3QyICplbnRyeSA9IGV2LT5leGVjOwogCXVuc2lnbmVkIGludCByZW1haW47CiAK
IAl1cmVsb2NzID0gdTY0X3RvX3VzZXJfcHRyKGVudHJ5LT5yZWxvY3NfcHRyKTsKQEAgLTE0ODks
NyArMTQ4Myw3IEBAIHN0YXRpYyBpbnQgZWJfcmVsb2NhdGVfdm1hKHN0cnVjdCBpOTE1X2V4ZWNi
dWZmZXIgKmViLCBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAogCQlyZW1haW4gLT0gY291bnQ7CiAJ
CWRvIHsKLQkJCXU2NCBvZmZzZXQgPSBlYl9yZWxvY2F0ZV9lbnRyeShlYiwgdm1hLCByKTsKKwkJ
CXU2NCBvZmZzZXQgPSBlYl9yZWxvY2F0ZV9lbnRyeShlYiwgZXYsIHIpOwogCiAJCQlpZiAobGlr
ZWx5KG9mZnNldCA9PSAwKSkgewogCQkJfSBlbHNlIGlmICgoczY0KW9mZnNldCA8IDApIHsKQEAg
LTE1MzIsMTYgKzE1MjYsMTYgQEAgc3RhdGljIGludCBlYl9yZWxvY2F0ZV92bWEoc3RydWN0IGk5
MTVfZXhlY2J1ZmZlciAqZWIsIHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogfQogCiBzdGF0aWMgaW50
Ci1lYl9yZWxvY2F0ZV92bWFfc2xvdyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwgc3RydWN0
IGk5MTVfdm1hICp2bWEpCitlYl9yZWxvY2F0ZV92bWFfc2xvdyhzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYiwgc3RydWN0IGViX3ZtYSAqZXYpCiB7Ci0JY29uc3Qgc3RydWN0IGRybV9pOTE1X2dl
bV9leGVjX29iamVjdDIgKmVudHJ5ID0gZXhlY19lbnRyeShlYiwgdm1hKTsKKwljb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnkgPSBldi0+ZXhlYzsKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX3JlbG9jYXRpb25fZW50cnkgKnJlbG9jcyA9CiAJCXU2NF90b19wdHIodHlw
ZW9mKCpyZWxvY3MpLCBlbnRyeS0+cmVsb2NzX3B0cik7CiAJdW5zaWduZWQgaW50IGk7CiAJaW50
IGVycjsKIAogCWZvciAoaSA9IDA7IGkgPCBlbnRyeS0+cmVsb2NhdGlvbl9jb3VudDsgaSsrKSB7
Ci0JCXU2NCBvZmZzZXQgPSBlYl9yZWxvY2F0ZV9lbnRyeShlYiwgdm1hLCAmcmVsb2NzW2ldKTsK
KwkJdTY0IG9mZnNldCA9IGViX3JlbG9jYXRlX2VudHJ5KGViLCBldiwgJnJlbG9jc1tpXSk7CiAK
IAkJaWYgKChzNjQpb2Zmc2V0IDwgMCkgewogCQkJZXJyID0gKGludClvZmZzZXQ7CkBAIC0xNjg1
LDcgKzE2NzksNyBAQCBzdGF0aWMgbm9pbmxpbmUgaW50IGViX3JlbG9jYXRlX3Nsb3coc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiB7CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZlYi0+
aTkxNS0+ZHJtOwogCWJvb2wgaGF2ZV9jb3B5ID0gZmFsc2U7Ci0Jc3RydWN0IGk5MTVfdm1hICp2
bWE7CisJc3RydWN0IGViX3ZtYSAqZXY7CiAJaW50IGVyciA9IDA7CiAKIHJlcGVhdDoKQEAgLTE3
NDEsMTUgKzE3MzUsMTUgQEAgc3RhdGljIG5vaW5saW5lIGludCBlYl9yZWxvY2F0ZV9zbG93KHN0
cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCiAJR0VNX0JVR19PTighZWItPmJhdGNoKTsKIAot
CWxpc3RfZm9yX2VhY2hfZW50cnkodm1hLCAmZWItPnJlbG9jcywgcmVsb2NfbGluaykgeworCWxp
c3RfZm9yX2VhY2hfZW50cnkoZXYsICZlYi0+cmVsb2NzLCByZWxvY19saW5rKSB7CiAJCWlmICgh
aGF2ZV9jb3B5KSB7CiAJCQlwYWdlZmF1bHRfZGlzYWJsZSgpOwotCQkJZXJyID0gZWJfcmVsb2Nh
dGVfdm1hKGViLCB2bWEpOworCQkJZXJyID0gZWJfcmVsb2NhdGVfdm1hKGViLCBldik7CiAJCQlw
YWdlZmF1bHRfZW5hYmxlKCk7CiAJCQlpZiAoZXJyKQogCQkJCWdvdG8gcmVwZWF0OwogCQl9IGVs
c2UgewotCQkJZXJyID0gZWJfcmVsb2NhdGVfdm1hX3Nsb3coZWIsIHZtYSk7CisJCQllcnIgPSBl
Yl9yZWxvY2F0ZV92bWFfc2xvdyhlYiwgZXYpOwogCQkJaWYgKGVycikKIAkJCQlnb3RvIGVycjsK
IAkJfQpAQCAtMTc5NCwxMCArMTc4OCwxMCBAQCBzdGF0aWMgaW50IGViX3JlbG9jYXRlKHN0cnVj
dCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCiAJLyogVGhlIG9iamVjdHMgYXJlIGluIHRoZWlyIGZp
bmFsIGxvY2F0aW9ucywgYXBwbHkgdGhlIHJlbG9jYXRpb25zLiAqLwogCWlmIChlYi0+YXJncy0+
ZmxhZ3MgJiBfX0VYRUNfSEFTX1JFTE9DKSB7Ci0JCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCQlz
dHJ1Y3QgZWJfdm1hICpldjsKIAotCQlsaXN0X2Zvcl9lYWNoX2VudHJ5KHZtYSwgJmViLT5yZWxv
Y3MsIHJlbG9jX2xpbmspIHsKLQkJCWlmIChlYl9yZWxvY2F0ZV92bWEoZWIsIHZtYSkpCisJCWxp
c3RfZm9yX2VhY2hfZW50cnkoZXYsICZlYi0+cmVsb2NzLCByZWxvY19saW5rKSB7CisJCQlpZiAo
ZWJfcmVsb2NhdGVfdm1hKGViLCBldikpCiAJCQkJZ290byBzbG93OwogCQl9CiAJfQpAQCAtMTgx
OCwzOSArMTgxMiwzNCBAQCBzdGF0aWMgaW50IGViX21vdmVfdG9fZ3B1KHN0cnVjdCBpOTE1X2V4
ZWNidWZmZXIgKmViKQogCXd3X2FjcXVpcmVfaW5pdCgmYWNxdWlyZSwgJnJlc2VydmF0aW9uX3d3
X2NsYXNzKTsKIAogCWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Ci0JCXN0cnVjdCBpOTE1
X3ZtYSAqdm1hID0gZWItPnZtYVtpXTsKKwkJc3RydWN0IGViX3ZtYSAqZXYgPSAmZWItPnZtYVtp
XTsKKwkJc3RydWN0IGk5MTVfdm1hICp2bWEgPSBldi0+dm1hOwogCiAJCWVyciA9IHd3X211dGV4
X2xvY2tfaW50ZXJydXB0aWJsZSgmdm1hLT5yZXN2LT5sb2NrLCAmYWNxdWlyZSk7Ci0JCWlmICgh
ZXJyKQotCQkJY29udGludWU7Ci0KLQkJR0VNX0JVR19PTihlcnIgPT0gLUVBTFJFQURZKTsgLyog
Tm8gZHVwbGljYXRlIHZtYSAqLwotCiAJCWlmIChlcnIgPT0gLUVERUFETEspIHsKIAkJCUdFTV9C
VUdfT04oaSA9PSAwKTsKIAkJCWRvIHsKIAkJCQlpbnQgaiA9IGkgLSAxOwogCi0JCQkJd3dfbXV0
ZXhfdW5sb2NrKCZlYi0+dm1hW2pdLT5yZXN2LT5sb2NrKTsKKwkJCQl3d19tdXRleF91bmxvY2so
JmViLT52bWFbal0udm1hLT5yZXN2LT5sb2NrKTsKIAotCQkJCXN3YXAoZWItPmZsYWdzW2ldLCBl
Yi0+ZmxhZ3Nbal0pOwogCQkJCXN3YXAoZWItPnZtYVtpXSwgIGViLT52bWFbal0pOwotCQkJCWVi
LT52bWFbaV0tPmV4ZWNfZmxhZ3MgPSAmZWItPmZsYWdzW2ldOwogCQkJfSB3aGlsZSAoLS1pKTsK
LQkJCUdFTV9CVUdfT04odm1hICE9IGViLT52bWFbMF0pOwotCQkJdm1hLT5leGVjX2ZsYWdzID0g
JmViLT5mbGFnc1swXTsKIAogCQkJZXJyID0gd3dfbXV0ZXhfbG9ja19zbG93X2ludGVycnVwdGli
bGUoJnZtYS0+cmVzdi0+bG9jaywKIAkJCQkJCQkgICAgICAgJmFjcXVpcmUpOwogCQl9CisJCWlm
IChlcnIgPT0gLUVBTFJFQURZKQorCQkJZXJyID0gMDsKIAkJaWYgKGVycikKIAkJCWJyZWFrOwog
CX0KIAl3d19hY3F1aXJlX2RvbmUoJmFjcXVpcmUpOwogCiAJd2hpbGUgKGktLSkgewotCQl1bnNp
Z25lZCBpbnQgZmxhZ3MgPSBlYi0+ZmxhZ3NbaV07Ci0JCXN0cnVjdCBpOTE1X3ZtYSAqdm1hID0g
ZWItPnZtYVtpXTsKKwkJc3RydWN0IGViX3ZtYSAqZXYgPSAmZWItPnZtYVtpXTsKKwkJc3RydWN0
IGk5MTVfdm1hICp2bWEgPSBldi0+dm1hOworCQl1bnNpZ25lZCBpbnQgZmxhZ3MgPSBldi0+Zmxh
Z3M7CiAJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSB2bWEtPm9iajsKIAogCQlh
c3NlcnRfdm1hX2hlbGQodm1hKTsKQEAgLTE4OTQsMTAgKzE4ODMsMTAgQEAgc3RhdGljIGludCBl
Yl9tb3ZlX3RvX2dwdShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIAkJaTkxNV92bWFfdW5s
b2NrKHZtYSk7CiAKIAkJX19lYl91bnJlc2VydmVfdm1hKHZtYSwgZmxhZ3MpOwotCQl2bWEtPmV4
ZWNfZmxhZ3MgPSBOVUxMOwotCiAJCWlmICh1bmxpa2VseShmbGFncyAmIF9fRVhFQ19PQkpFQ1Rf
SEFTX1JFRikpCiAJCQlpOTE1X3ZtYV9wdXQodm1hKTsKKworCQlldi0+dm1hID0gTlVMTDsKIAl9
CiAJd3dfYWNxdWlyZV9maW5pKCZhY3F1aXJlKTsKIApAQCAtMjAxNywxNCArMjAwNiwxNCBAQCBz
dGF0aWMgc3RydWN0IGk5MTVfdm1hICplYl9wYXJzZShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICpl
YikKIAlpZiAoSVNfRVJSKHZtYSkpCiAJCWdvdG8gZXJyOwogCi0JYmF0Y2hfc3RhcnQgPSBnZW44
X2Nhbm9uaWNhbF9hZGRyKGViLT5iYXRjaC0+bm9kZS5zdGFydCkgKworCWJhdGNoX3N0YXJ0ID0g
Z2VuOF9jYW5vbmljYWxfYWRkcihlYi0+YmF0Y2gtPnZtYS0+bm9kZS5zdGFydCkgKwogCQkgICAg
ICBlYi0+YmF0Y2hfc3RhcnRfb2Zmc2V0OwogCiAJc2hhZG93X2JhdGNoX3N0YXJ0ID0gZ2VuOF9j
YW5vbmljYWxfYWRkcih2bWEtPm5vZGUuc3RhcnQpOwogCiAJZXJyID0gaW50ZWxfZW5naW5lX2Nt
ZF9wYXJzZXIoZWItPmdlbV9jb250ZXh0LAogCQkJCSAgICAgIGViLT5lbmdpbmUsCi0JCQkJICAg
ICAgZWItPmJhdGNoLT5vYmosCisJCQkJICAgICAgZWItPmJhdGNoLT52bWEtPm9iaiwKIAkJCQkg
ICAgICBiYXRjaF9zdGFydCwKIAkJCQkgICAgICBlYi0+YmF0Y2hfc3RhcnRfb2Zmc2V0LAogCQkJ
CSAgICAgIGViLT5iYXRjaF9sZW4sCkBAIC0yMDQ4LDE0ICsyMDM3LDEyIEBAIHN0YXRpYyBzdHJ1
Y3QgaTkxNV92bWEgKmViX3BhcnNlKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCQlnb3Rv
IGVycjsKIAl9CiAKLQllYi0+dm1hW2ViLT5idWZmZXJfY291bnRdID0gaTkxNV92bWFfZ2V0KHZt
YSk7Ci0JZWItPmZsYWdzW2ViLT5idWZmZXJfY291bnRdID0KKwllYi0+dm1hW2ViLT5idWZmZXJf
Y291bnRdLnZtYSA9IGk5MTVfdm1hX2dldCh2bWEpOworCWViLT52bWFbZWItPmJ1ZmZlcl9jb3Vu
dF0uZmxhZ3MgPQogCQlfX0VYRUNfT0JKRUNUX0hBU19QSU4gfCBfX0VYRUNfT0JKRUNUX0hBU19S
RUY7Ci0Jdm1hLT5leGVjX2ZsYWdzID0gJmViLT5mbGFnc1tlYi0+YnVmZmVyX2NvdW50XTsKLQll
Yi0+YnVmZmVyX2NvdW50Kys7CisJZWItPmJhdGNoID0gJmViLT52bWFbZWItPmJ1ZmZlcl9jb3Vu
dCsrXTsKIAogCWViLT5iYXRjaF9zdGFydF9vZmZzZXQgPSAwOwotCWViLT5iYXRjaCA9IHZtYTsK
IAogCWlmIChpOTE1X3ZtYV9pc19nZ3R0KHZtYSkpCiAJCWViLT5iYXRjaF9mbGFncyB8PSBJOTE1
X0RJU1BBVENIX1NFQ1VSRTsKQEAgLTIwODIsNyArMjA2OSw3IEBAIGFkZF90b19jbGllbnQoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIAlzcGluX3VubG9j
aygmZmlsZV9wcml2LT5tbS5sb2NrKTsKIH0KIAotc3RhdGljIGludCBlYl9zdWJtaXQoc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIpCitzdGF0aWMgaW50IGViX3N1Ym1pdChzdHJ1Y3QgaTkxNV9l
eGVjYnVmZmVyICplYiwgc3RydWN0IGk5MTVfdm1hICpiYXRjaCkKIHsKIAlpbnQgZXJyOwogCkBA
IC0yMTA5LDcgKzIwOTYsNyBAQCBzdGF0aWMgaW50IGViX3N1Ym1pdChzdHJ1Y3QgaTkxNV9leGVj
YnVmZmVyICplYikKIAl9CiAKIAllcnIgPSBlYi0+ZW5naW5lLT5lbWl0X2JiX3N0YXJ0KGViLT5y
ZXF1ZXN0LAotCQkJCQllYi0+YmF0Y2gtPm5vZGUuc3RhcnQgKworCQkJCQliYXRjaC0+bm9kZS5z
dGFydCArCiAJCQkJCWViLT5iYXRjaF9zdGFydF9vZmZzZXQsCiAJCQkJCWViLT5iYXRjaF9sZW4s
CiAJCQkJCWViLT5iYXRjaF9mbGFncyk7CkBAIC0yNDczLDYgKzI0NjAsNyBAQCBpOTE1X2dlbV9k
b19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJc3RydWN0IGRtYV9mZW5jZSAq
aW5fZmVuY2UgPSBOVUxMOwogCXN0cnVjdCBkbWFfZmVuY2UgKmV4ZWNfZmVuY2UgPSBOVUxMOwog
CXN0cnVjdCBzeW5jX2ZpbGUgKm91dF9mZW5jZSA9IE5VTEw7CisJc3RydWN0IGk5MTVfdm1hICpi
YXRjaDsKIAlpbnQgb3V0X2ZlbmNlX2ZkID0gLTE7CiAJaW50IGVycjsKIApAQCAtMjQ4Nyw5ICsy
NDc1LDggQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAog
CQlhcmdzLT5mbGFncyB8PSBfX0VYRUNfSEFTX1JFTE9DOwogCiAJZWIuZXhlYyA9IGV4ZWM7Ci0J
ZWIudm1hID0gKHN0cnVjdCBpOTE1X3ZtYSAqKikoZXhlYyArIGFyZ3MtPmJ1ZmZlcl9jb3VudCAr
IDEpOwotCWViLnZtYVswXSA9IE5VTEw7Ci0JZWIuZmxhZ3MgPSAodW5zaWduZWQgaW50ICopKGVi
LnZtYSArIGFyZ3MtPmJ1ZmZlcl9jb3VudCArIDEpOworCWViLnZtYSA9IChzdHJ1Y3QgZWJfdm1h
ICopKGV4ZWMgKyBhcmdzLT5idWZmZXJfY291bnQgKyAxKTsKKwllYi52bWFbMF0udm1hID0gTlVM
TDsKIAogCWViLmludmFsaWRfZmxhZ3MgPSBfX0VYRUNfT0JKRUNUX1VOS05PV05fRkxBR1M7CiAJ
cmVsb2NfY2FjaGVfaW5pdCgmZWIucmVsb2NfY2FjaGUsIGViLmk5MTUpOwpAQCAtMjU3MywyMCAr
MjU2MCwyMyBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
CiAJCWdvdG8gZXJyX3ZtYTsKIAl9CiAKLQlpZiAodW5saWtlbHkoKmViLmJhdGNoLT5leGVjX2Zs
YWdzICYgRVhFQ19PQkpFQ1RfV1JJVEUpKSB7CisJaWYgKHVubGlrZWx5KGViLmJhdGNoLT5mbGFn
cyAmIEVYRUNfT0JKRUNUX1dSSVRFKSkgewogCQlEUk1fREVCVUcoIkF0dGVtcHRpbmcgdG8gdXNl
IHNlbGYtbW9kaWZ5aW5nIGJhdGNoIGJ1ZmZlclxuIik7CiAJCWVyciA9IC1FSU5WQUw7CiAJCWdv
dG8gZXJyX3ZtYTsKIAl9Ci0JaWYgKGViLmJhdGNoX3N0YXJ0X29mZnNldCA+IGViLmJhdGNoLT5z
aXplIHx8Ci0JICAgIGViLmJhdGNoX2xlbiA+IGViLmJhdGNoLT5zaXplIC0gZWIuYmF0Y2hfc3Rh
cnRfb2Zmc2V0KSB7CisKKwliYXRjaCA9IGViLmJhdGNoLT52bWE7CisJaWYgKHJhbmdlX292ZXJm
bG93c190KHU2NCwKKwkJCSAgICAgIGViLmJhdGNoX3N0YXJ0X29mZnNldCwgZWIuYmF0Y2hfbGVu
LAorCQkJICAgICAgYmF0Y2gtPnNpemUpKSB7CiAJCURSTV9ERUJVRygiQXR0ZW1wdGluZyB0byB1
c2Ugb3V0LW9mLWJvdW5kcyBiYXRjaFxuIik7CiAJCWVyciA9IC1FSU5WQUw7CiAJCWdvdG8gZXJy
X3ZtYTsKIAl9CiAKIAlpZiAoZWIuYmF0Y2hfbGVuID09IDApCi0JCWViLmJhdGNoX2xlbiA9IGVi
LmJhdGNoLT5zaXplIC0gZWIuYmF0Y2hfc3RhcnRfb2Zmc2V0OworCQllYi5iYXRjaF9sZW4gPSBl
Yi5iYXRjaC0+dm1hLT5zaXplIC0gZWIuYmF0Y2hfc3RhcnRfb2Zmc2V0OwogCiAJaWYgKGViX3Vz
ZV9jbWRwYXJzZXIoJmViKSkgewogCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKQEAgLTI2MTUsMTMg
KzI2MDUsMTMgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAogCQkgKiAgIGZpdHRpbmcgZHVlIHRvIGZyYWdtZW50YXRpb24uCiAJCSAqIFNvIHRoaXMgaXMg
YWN0dWFsbHkgc2FmZS4KIAkJICovCi0JCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bpbihl
Yi5iYXRjaC0+b2JqLCBOVUxMLCAwLCAwLCAwKTsKKwkJdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dn
dHRfcGluKGJhdGNoLT5vYmosIE5VTEwsIDAsIDAsIDApOwogCQlpZiAoSVNfRVJSKHZtYSkpIHsK
IAkJCWVyciA9IFBUUl9FUlIodm1hKTsKIAkJCWdvdG8gZXJyX3ZtYTsKIAkJfQogCi0JCWViLmJh
dGNoID0gdm1hOworCQliYXRjaCA9IHZtYTsKIAl9CiAKIAkvKiBBbGwgR1BVIHJlbG9jYXRpb24g
YmF0Y2hlcyBtdXN0IGJlIHN1Ym1pdHRlZCBwcmlvciB0byB0aGUgdXNlciBycSAqLwpAQCAtMjY2
OCwxMiArMjY1OCwxMiBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCiAJICogaW5hY3RpdmVfbGlzdCBhbmQgbG9zZSBpdHMgYWN0aXZlIHJlZmVyZW5jZS4g
SGVuY2Ugd2UgZG8gbm90IG5lZWQKIAkgKiB0byBleHBsaWNpdGx5IGhvbGQgYW5vdGhlciByZWZl
cmVuY2UgaGVyZS4KIAkgKi8KLQllYi5yZXF1ZXN0LT5iYXRjaCA9IGViLmJhdGNoOwotCWlmIChl
Yi5iYXRjaC0+cHJpdmF0ZSkKLQkJaW50ZWxfZW5naW5lX3Bvb2xfbWFya19hY3RpdmUoZWIuYmF0
Y2gtPnByaXZhdGUsIGViLnJlcXVlc3QpOworCWViLnJlcXVlc3QtPmJhdGNoID0gYmF0Y2g7CisJ
aWYgKGJhdGNoLT5wcml2YXRlKQorCQlpbnRlbF9lbmdpbmVfcG9vbF9tYXJrX2FjdGl2ZShiYXRj
aC0+cHJpdmF0ZSwgZWIucmVxdWVzdCk7CiAKIAl0cmFjZV9pOTE1X3JlcXVlc3RfcXVldWUoZWIu
cmVxdWVzdCwgZWIuYmF0Y2hfZmxhZ3MpOwotCWVyciA9IGViX3N1Ym1pdCgmZWIpOworCWVyciA9
IGViX3N1Ym1pdCgmZWIsIGJhdGNoKTsKIGVycl9yZXF1ZXN0OgogCWFkZF90b19jbGllbnQoZWIu
cmVxdWVzdCwgZmlsZSk7CiAJaTkxNV9yZXF1ZXN0X2FkZChlYi5yZXF1ZXN0KTsKQEAgLTI2OTQs
OSArMjY4NCw5IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKIAogZXJyX2JhdGNoX3VucGluOgogCWlmIChlYi5iYXRjaF9mbGFncyAmIEk5MTVfRElTUEFU
Q0hfU0VDVVJFKQotCQlpOTE1X3ZtYV91bnBpbihlYi5iYXRjaCk7Ci0JaWYgKGViLmJhdGNoLT5w
cml2YXRlKQotCQlpbnRlbF9lbmdpbmVfcG9vbF9wdXQoZWIuYmF0Y2gtPnByaXZhdGUpOworCQlp
OTE1X3ZtYV91bnBpbihiYXRjaCk7CisJaWYgKGJhdGNoLT5wcml2YXRlKQorCQlpbnRlbF9lbmdp
bmVfcG9vbF9wdXQoYmF0Y2gtPnByaXZhdGUpOwogZXJyX3ZtYToKIAlpZiAoZWIuZXhlYykKIAkJ
ZWJfcmVsZWFzZV92bWFzKCZlYik7CkBAIC0yNzE5LDkgKzI3MDksNyBAQCBpOTE1X2dlbV9kb19l
eGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAKIHN0YXRpYyBzaXplX3QgZWJfZWxl
bWVudF9zaXplKHZvaWQpCiB7Ci0JcmV0dXJuIChzaXplb2Yoc3RydWN0IGRybV9pOTE1X2dlbV9l
eGVjX29iamVjdDIpICsKLQkJc2l6ZW9mKHN0cnVjdCBpOTE1X3ZtYSAqKSArCi0JCXNpemVvZih1
bnNpZ25lZCBpbnQpKTsKKwlyZXR1cm4gc2l6ZW9mKHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19v
YmplY3QyKSArIHNpemVvZihzdHJ1Y3QgZWJfdm1hKTsKIH0KIAogc3RhdGljIGJvb2wgY2hlY2tf
YnVmZmVyX2NvdW50KHNpemVfdCBjb3VudCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdm1hLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oCmluZGV4IDQ2
NTkzMjgxM2JjNS4uNzE0MDIwNTZkODQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ZtYS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgKQEAgLTE0
NywyMSArMTQ3LDEwIEBAIHN0cnVjdCBpOTE1X3ZtYSB7CiAJc3RydWN0IHJiX25vZGUgb2JqX25v
ZGU7CiAJc3RydWN0IGhsaXN0X25vZGUgb2JqX2hhc2g7CiAKLQkvKiogVGhpcyB2bWEncyBwbGFj
ZSBpbiB0aGUgZXhlY2J1ZiByZXNlcnZhdGlvbiBsaXN0ICovCi0Jc3RydWN0IGxpc3RfaGVhZCBl
eGVjX2xpbms7Ci0Jc3RydWN0IGxpc3RfaGVhZCByZWxvY19saW5rOwotCiAJLyoqIFRoaXMgdm1h
J3MgcGxhY2UgaW4gdGhlIGV2aWN0aW9uIGxpc3QgKi8KIAlzdHJ1Y3QgbGlzdF9oZWFkIGV2aWN0
X2xpbms7CiAKIAlzdHJ1Y3QgbGlzdF9oZWFkIGNsb3NlZF9saW5rOwotCi0JLyoqCi0JICogVXNl
ZCBmb3IgcGVyZm9ybWluZyByZWxvY2F0aW9ucyBkdXJpbmcgZXhlY2J1ZmZlciBpbnNlcnRpb24u
Ci0JICovCi0JdW5zaWduZWQgaW50ICpleGVjX2ZsYWdzOwotCXN0cnVjdCBobGlzdF9ub2RlIGV4
ZWNfbm9kZTsKLQl1MzIgZXhlY19oYW5kbGU7CiB9OwogCiBzdHJ1Y3QgaTkxNV92bWEgKgotLSAK
Mi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
