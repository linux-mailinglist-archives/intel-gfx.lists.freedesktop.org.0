Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79392B16AE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 01:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402186EE58;
	Thu, 12 Sep 2019 23:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E50156EE58
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 23:32:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 16:32:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="176122937"
Received: from rmfosha-dev-1.fm.intel.com ([10.19.83.123])
 by orsmga007.jf.intel.com with ESMTP; 12 Sep 2019 16:32:01 -0700
From: "Robert M. Fosha" <robert.m.fosha@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 16:26:39 -0700
Message-Id: <20190912232639.25821-1-robert.m.fosha@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190910224603.23164-1-robert.m.fosha@intel.com>
References: <20190910224603.23164-1-robert.m.fosha@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v2] drm/i915/guc: Enable guc logging on guc log
 relay write
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

Q3JlYXRpbmcgYW5kIG9wZW5pbmcgdGhlIEd1QyBsb2cgcmVsYXkgZmlsZSBlbmFibGVzIGFuZCBz
dGFydHMKdGhlIHJlbGF5IHBvdGVudGlhbGx5IGJlZm9yZSB0aGUgY2FsbGVyIGlzIHJlYWR5IHRv
IGNvbnN1bWUgbG9ncy4KQ2hhbmdlIHRoZSBiZWhhdmlvciBzbyB0aGF0IHJlbGF5IHN0YXJ0cyBv
bmx5IG9uIGFuIGV4cGxpY2l0IGNhbGwKdG8gdGhlIHdyaXRlIGZ1bmN0aW9uICh3aXRoIGEgdmFs
dWUgb2YgJzEnKS4gT3RoZXIgdmFsdWVzIGZsdXNoCnRoZSBsb2cgcmVsYXkgYXMgYmVmb3JlLgoK
djI6IFN0eWxlIGNoYW5nZXMgYW5kIGZpeCB0eXBvcy4gQWRkIGd1Y19sb2dfcmVsYXlfc3RvcCgp
CmZ1bmN0aW9uLiAoRGFuaWVsZSkKCkNjOiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGlu
dGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2JlcnQubS5mb3NoYUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jIHwg
NTMgKysrKysrKysrKysrKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX2xvZy5oIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
ICAgICAgICB8IDIyICsrKysrKystLQogMyBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCsp
LCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfbG9nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
bG9nLmMKaW5kZXggMzYzMzIwNjRkZTljLi5lMjZjNzc0ODM1OGIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMKQEAgLTIyNiw3ICsyMjYsNyBAQCBzdGF0aWMg
dm9pZCBndWNfcmVhZF91cGRhdGVfbG9nX2J1ZmZlcihzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9n
KQogCiAJbXV0ZXhfbG9jaygmbG9nLT5yZWxheS5sb2NrKTsKIAotCWlmIChXQVJOX09OKCFpbnRl
bF9ndWNfbG9nX3JlbGF5X2VuYWJsZWQobG9nKSkpCisJaWYgKFdBUk5fT04oIWludGVsX2d1Y19s
b2dfcmVsYXlfY3JlYXRlZChsb2cpKSkKIAkJZ290byBvdXRfdW5sb2NrOwogCiAJLyogR2V0IHRo
ZSBwb2ludGVyIHRvIHNoYXJlZCBHdUMgbG9nIGJ1ZmZlciAqLwpAQCAtMzYxLDYgKzM2MSw3IEBA
IHZvaWQgaW50ZWxfZ3VjX2xvZ19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cp
CiB7CiAJbXV0ZXhfaW5pdCgmbG9nLT5yZWxheS5sb2NrKTsKIAlJTklUX1dPUksoJmxvZy0+cmVs
YXkuZmx1c2hfd29yaywgY2FwdHVyZV9sb2dzX3dvcmspOworCWxvZy0+cmVsYXkuc3RhcnRlZCA9
IGZhbHNlOwogfQogCiBzdGF0aWMgaW50IGd1Y19sb2dfcmVsYXlfY3JlYXRlKHN0cnVjdCBpbnRl
bF9ndWNfbG9nICpsb2cpCkBAIC01NDYsNyArNTQ3LDcgQEAgaW50IGludGVsX2d1Y19sb2dfc2V0
X2xldmVsKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2csIHUzMiBsZXZlbCkKIAlyZXR1cm4gcmV0
OwogfQogCi1ib29sIGludGVsX2d1Y19sb2dfcmVsYXlfZW5hYmxlZChjb25zdCBzdHJ1Y3QgaW50
ZWxfZ3VjX2xvZyAqbG9nKQorYm9vbCBpbnRlbF9ndWNfbG9nX3JlbGF5X2NyZWF0ZWQoY29uc3Qg
c3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykKIHsKIAlyZXR1cm4gbG9nLT5yZWxheS5idWZfYWRk
cjsKIH0KQEAgLTU2MCw3ICs1NjEsNyBAQCBpbnQgaW50ZWxfZ3VjX2xvZ19yZWxheV9vcGVuKHN0
cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpCiAKIAltdXRleF9sb2NrKCZsb2ctPnJlbGF5LmxvY2sp
OwogCi0JaWYgKGludGVsX2d1Y19sb2dfcmVsYXlfZW5hYmxlZChsb2cpKSB7CisJaWYgKGludGVs
X2d1Y19sb2dfcmVsYXlfY3JlYXRlZChsb2cpKSB7CiAJCXJldCA9IC1FRVhJU1Q7CiAJCWdvdG8g
b3V0X3VubG9jazsKIAl9CkBAIC01ODUsNiArNTg2LDIxIEBAIGludCBpbnRlbF9ndWNfbG9nX3Jl
bGF5X29wZW4oc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykKIAogCW11dGV4X3VubG9jaygmbG9n
LT5yZWxheS5sb2NrKTsKIAorCXJldHVybiAwOworCitvdXRfcmVsYXk6CisJZ3VjX2xvZ19yZWxh
eV9kZXN0cm95KGxvZyk7CitvdXRfdW5sb2NrOgorCW11dGV4X3VubG9jaygmbG9nLT5yZWxheS5s
b2NrKTsKKworCXJldHVybiByZXQ7Cit9CisKK2ludCBpbnRlbF9ndWNfbG9nX3JlbGF5X3N0YXJ0
KHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpCit7CisJaWYgKGxvZy0+cmVsYXkuc3RhcnRlZCkK
KwkJcmV0dXJuIC1FRVhJU1Q7CisKIAlndWNfbG9nX2VuYWJsZV9mbHVzaF9ldmVudHMobG9nKTsK
IAogCS8qCkBAIC01OTQsMTQgKzYxMCw5IEBAIGludCBpbnRlbF9ndWNfbG9nX3JlbGF5X29wZW4o
c3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykKIAkgKi8KIAlxdWV1ZV93b3JrKHN5c3RlbV9oaWdo
cHJpX3dxLCAmbG9nLT5yZWxheS5mbHVzaF93b3JrKTsKIAotCXJldHVybiAwOwotCi1vdXRfcmVs
YXk6Ci0JZ3VjX2xvZ19yZWxheV9kZXN0cm95KGxvZyk7Ci1vdXRfdW5sb2NrOgotCW11dGV4X3Vu
bG9jaygmbG9nLT5yZWxheS5sb2NrKTsKKwlsb2ctPnJlbGF5LnN0YXJ0ZWQgPSB0cnVlOwogCi0J
cmV0dXJuIHJldDsKKwlyZXR1cm4gMDsKIH0KIAogdm9pZCBpbnRlbF9ndWNfbG9nX3JlbGF5X2Zs
dXNoKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpCkBAIC02MTAsNiArNjIxLDkgQEAgdm9pZCBp
bnRlbF9ndWNfbG9nX3JlbGF5X2ZsdXNoKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpCiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsKIAlpbnRl
bF93YWtlcmVmX3Qgd2FrZXJlZjsKIAorCWlmICghbG9nLT5yZWxheS5zdGFydGVkKQorCQlyZXR1
cm47CisKIAkvKgogCSAqIEJlZm9yZSBpbml0aWF0aW5nIHRoZSBmb3JjZWZ1bCBmbHVzaCwgd2Fp
dCBmb3IgYW55IHBlbmRpbmcvb25nb2luZwogCSAqIGZsdXNoIHRvIGNvbXBsZXRlIG90aGVyd2lz
ZSBmb3JjZWZ1bCBmbHVzaCBtYXkgbm90IGFjdHVhbGx5IGhhcHBlbi4KQEAgLTYyMywxOCArNjM3
LDMzIEBAIHZvaWQgaW50ZWxfZ3VjX2xvZ19yZWxheV9mbHVzaChzdHJ1Y3QgaW50ZWxfZ3VjX2xv
ZyAqbG9nKQogCWd1Y19sb2dfY2FwdHVyZV9sb2dzKGxvZyk7CiB9CiAKLXZvaWQgaW50ZWxfZ3Vj
X2xvZ19yZWxheV9jbG9zZShzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nKQorLyoKKyAqIFN0b3Bz
IHRoZSByZWxheSBsb2cuIENhbGxlZCBmcm9tIGludGVsX2d1Y19sb2dfcmVsYXlfY2xvc2UoKSwg
c28gbm8KKyAqIHBvc3NpYmlsaXR5IG9mIHJhY2Ugd2l0aCBzdGFydC9mbHVzaCBzaW5jZSByZWxh
eV93cml0ZSBjYW5ub3QgcmFjZQorICogcmVsYXlfY2xvc2UuCisgKi8KK3N0YXRpYyB2b2lkIGd1
Y19sb2dfcmVsYXlfc3RvcChzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nKQogewogCXN0cnVjdCBp
bnRlbF9ndWMgKmd1YyA9IGxvZ190b19ndWMobG9nKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IGd1Y190b19ndChndWMpLT5pOTE1OwogCisJaWYgKCFsb2ctPnJlbGF5LnN0YXJ0
ZWQpCisJCXJldHVybjsKKwogCWd1Y19sb2dfZGlzYWJsZV9mbHVzaF9ldmVudHMobG9nKTsKIAlp
bnRlbF9zeW5jaHJvbml6ZV9pcnEoaTkxNSk7CiAKIAlmbHVzaF93b3JrKCZsb2ctPnJlbGF5LmZs
dXNoX3dvcmspOwogCisJbG9nLT5yZWxheS5zdGFydGVkID0gZmFsc2U7Cit9CisKK3ZvaWQgaW50
ZWxfZ3VjX2xvZ19yZWxheV9jbG9zZShzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nKQoreworCWd1
Y19sb2dfcmVsYXlfc3RvcChsb2cpOworCiAJbXV0ZXhfbG9jaygmbG9nLT5yZWxheS5sb2NrKTsK
LQlHRU1fQlVHX09OKCFpbnRlbF9ndWNfbG9nX3JlbGF5X2VuYWJsZWQobG9nKSk7CisJR0VNX0JV
R19PTighaW50ZWxfZ3VjX2xvZ19yZWxheV9jcmVhdGVkKGxvZykpOwogCWd1Y19sb2dfdW5tYXAo
bG9nKTsKIAlndWNfbG9nX3JlbGF5X2Rlc3Ryb3kobG9nKTsKIAltdXRleF91bmxvY2soJmxvZy0+
cmVsYXkubG9jayk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9ndWNfbG9nLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmgK
aW5kZXggNmY3NjQ4NzlhY2IxLi5jMjUyYzAyMmM1ZmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9ndWNfbG9nLmgKQEAgLTQ3LDYgKzQ3LDcgQEAgc3RydWN0IGludGVsX2d1
Y19sb2cgewogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCXN0cnVjdCB7CiAJCXZvaWQgKmJ1Zl9h
ZGRyOworCQlib29sIHN0YXJ0ZWQ7CiAJCXN0cnVjdCB3b3JrX3N0cnVjdCBmbHVzaF93b3JrOwog
CQlzdHJ1Y3QgcmNoYW4gKmNoYW5uZWw7CiAJCXN0cnVjdCBtdXRleCBsb2NrOwpAQCAtNjUsOCAr
NjYsOSBAQCBpbnQgaW50ZWxfZ3VjX2xvZ19jcmVhdGUoc3RydWN0IGludGVsX2d1Y19sb2cgKmxv
Zyk7CiB2b2lkIGludGVsX2d1Y19sb2dfZGVzdHJveShzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9n
KTsKIAogaW50IGludGVsX2d1Y19sb2dfc2V0X2xldmVsKHN0cnVjdCBpbnRlbF9ndWNfbG9nICps
b2csIHUzMiBsZXZlbCk7Ci1ib29sIGludGVsX2d1Y19sb2dfcmVsYXlfZW5hYmxlZChjb25zdCBz
dHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nKTsKK2Jvb2wgaW50ZWxfZ3VjX2xvZ19yZWxheV9jcmVh
dGVkKGNvbnN0IHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpOwogaW50IGludGVsX2d1Y19sb2df
cmVsYXlfb3BlbihzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nKTsKK2ludCBpbnRlbF9ndWNfbG9n
X3JlbGF5X3N0YXJ0KHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpOwogdm9pZCBpbnRlbF9ndWNf
bG9nX3JlbGF5X2ZsdXNoKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpOwogdm9pZCBpbnRlbF9n
dWNfbG9nX3JlbGF5X2Nsb3NlKHN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cpOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDcwODg1NWUwNTFiNS4uNTcxNDMyNTUxMTFhIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMTg2MSw4ICsxODYxLDggQEAgc3Rh
dGljIHZvaWQgaTkxNV9ndWNfbG9nX2luZm8oc3RydWN0IHNlcV9maWxlICptLAogCXN0cnVjdCBp
bnRlbF9ndWNfbG9nICpsb2cgPSAmZGV2X3ByaXYtPmd0LnVjLmd1Yy5sb2c7CiAJZW51bSBndWNf
bG9nX2J1ZmZlcl90eXBlIHR5cGU7CiAKLQlpZiAoIWludGVsX2d1Y19sb2dfcmVsYXlfZW5hYmxl
ZChsb2cpKSB7Ci0JCXNlcV9wdXRzKG0sICJHdUMgbG9nIHJlbGF5IGRpc2FibGVkXG4iKTsKKwlp
ZiAoIWludGVsX2d1Y19sb2dfcmVsYXlfY3JlYXRlZChsb2cpKSB7CisJCXNlcV9wdXRzKG0sICJH
dUMgbG9nIHJlbGF5IG5vdCBjcmVhdGVkXG4iKTsKIAkJcmV0dXJuOwogCX0KIApAQCAtMjA0OSw5
ICsyMDQ5LDIzIEBAIGk5MTVfZ3VjX2xvZ19yZWxheV93cml0ZShzdHJ1Y3QgZmlsZSAqZmlscCwK
IAkJCSBsb2ZmX3QgKnBwb3MpCiB7CiAJc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZyA9IGZpbHAt
PnByaXZhdGVfZGF0YTsKKwlpbnQgdmFsOworCWludCByZXQ7CiAKLQlpbnRlbF9ndWNfbG9nX3Jl
bGF5X2ZsdXNoKGxvZyk7Ci0JcmV0dXJuIGNudDsKKwlyZXQgPSBrc3RydG9pbnRfZnJvbV91c2Vy
KHVidWYsIGNudCwgMCwgJnZhbCk7CisJaWYgKHJldCA8IDApCisJCXJldHVybiByZXQ7CisKKwkv
KgorCSAqIEVuYWJsZSBhbmQgc3RhcnQgdGhlIGd1YyBsb2cgcmVsYXkgb24gdmFsdWUgb2YgMS4K
KwkgKiBGbHVzaCBsb2cgcmVsYXkgZm9yIGFueSBvdGhlciB2YWx1ZS4KKwkgKi8KKwlpZiAodmFs
ID09IDEpCisJCXJldCA9IGludGVsX2d1Y19sb2dfcmVsYXlfc3RhcnQobG9nKTsKKwllbHNlCisJ
CWludGVsX2d1Y19sb2dfcmVsYXlfZmx1c2gobG9nKTsKKworCXJldHVybiByZXQgPzogY250Owog
fQogCiBzdGF0aWMgaW50IGk5MTVfZ3VjX2xvZ19yZWxheV9yZWxlYXNlKHN0cnVjdCBpbm9kZSAq
aW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
