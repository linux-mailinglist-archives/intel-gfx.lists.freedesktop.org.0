Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1997716B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 20:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02EB6EE26;
	Fri, 26 Jul 2019 18:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4016F6EE23
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 18:42:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 11:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="175685866"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 26 Jul 2019 11:42:18 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6QIgG5M006385; Fri, 26 Jul 2019 19:42:17 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 18:42:10 +0000
Message-Id: <20190726184212.1836-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/uc: Remove redundant
 header_offset/size definitions
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

QWNjb3JkaW5nIHRvIEZpcm13YXJlIGxheW91dCBkZWZpbml0aW9uLCBDU1MgaGVhZGVyIGlzIGxv
Y2F0ZWQKaW4gZnJvbnQgb2YgdGhlIGZpcm13YXJlIGJsb2IsIHNvIGhlYWRlciBvZmZzZXQgaXMg
YWx3YXlzIDAuClNpbWlsYXJseSwgc2l6ZSBvZiB0aGUgQ1NTIGhlYWRlciBpcyBjb25zdGFudCBh
bmQgY3VycmVudGx5CnVzZWQgdmVyc2lvbiBpcyBleGFjdGx5IDEyOC4KCldoaWxlIGhlcmUsIG1v
dmUgdHlwZS9zdGF0dXMgZW51bXMgdXAgYW5kIGtlZXAgdGhlbSB0b2dldGhlci4KCnYyOiB1c2Ug
c2l6ZW9mIGNvbnNpc3RlbnRseSAoRGFuaWVsZSksIHVwZGF0ZSBjb21taXQgbWVzc2FnZQoKU2ln
bmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+
CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5jICAgICB8IDIzICsrKysrKysrLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Y19mdy5oICAgICB8ICA5ICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19md19hYmkuaCB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDE1
IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5jCmluZGV4IDVmYmRkMTdhODY0Yi4uYjUyNmJhYjViMjdhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKQEAgLTIxOCwyMSArMjE4LDE4IEBA
IHZvaWQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAljc3MgPSAoc3RydWN0IHVjX2Nzc19oZWFkZXIg
Kilmdy0+ZGF0YTsKIAotCS8qIEZpcm13YXJlIGJpdHMgYWx3YXlzIHN0YXJ0IGZyb20gaGVhZGVy
ICovCi0JdWNfZnctPmhlYWRlcl9vZmZzZXQgPSAwOwotCXVjX2Z3LT5oZWFkZXJfc2l6ZSA9IChj
c3MtPmhlYWRlcl9zaXplX2R3IC0gY3NzLT5tb2R1bHVzX3NpemVfZHcgLQotCQkJICAgICAgY3Nz
LT5rZXlfc2l6ZV9kdyAtIGNzcy0+ZXhwb25lbnRfc2l6ZV9kdykgKgotCQkJICAgICBzaXplb2Yo
dTMyKTsKLQotCWlmICh1Y19mdy0+aGVhZGVyX3NpemUgIT0gc2l6ZW9mKHN0cnVjdCB1Y19jc3Nf
aGVhZGVyKSkgeworCS8qIENoZWNrIGludGVncml0eSBvZiBzaXplIHZhbHVlcyBpbnNpZGUgQ1NT
IGhlYWRlciAqLworCXNpemUgPSAoY3NzLT5oZWFkZXJfc2l6ZV9kdyAtIGNzcy0+a2V5X3NpemVf
ZHcgLSBjc3MtPm1vZHVsdXNfc2l6ZV9kdyAtCisJCWNzcy0+ZXhwb25lbnRfc2l6ZV9kdykgKiBz
aXplb2YodTMyKTsKKwlpZiAoc2l6ZSAhPSBzaXplb2Yoc3RydWN0IHVjX2Nzc19oZWFkZXIpKSB7
CiAJCURSTV9XQVJOKCIlczogTWlzbWF0Y2hlZCBmaXJtd2FyZSBoZWFkZXIgZGVmaW5pdGlvblxu
IiwKIAkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpKTsKIAkJZXJyID0gLUVO
T0VYRUM7CiAJCWdvdG8gZmFpbDsKIAl9CiAKLQkvKiB0aGVuLCB1Q29kZSAqLwotCXVjX2Z3LT51
Y29kZV9vZmZzZXQgPSB1Y19mdy0+aGVhZGVyX29mZnNldCArIHVjX2Z3LT5oZWFkZXJfc2l6ZTsK
KwkvKiB1Q29kZSBzaXplIG11c3QgY2FsY3VsYXRlZCBmcm9tIG90aGVyIHNpemVzICovCisJdWNf
ZnctPnVjb2RlX29mZnNldCA9IHNpemVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRlcik7CiAJdWNfZnct
PnVjb2RlX3NpemUgPSAoY3NzLT5zaXplX2R3IC0gY3NzLT5oZWFkZXJfc2l6ZV9kdykgKiBzaXpl
b2YodTMyKTsKIAogCS8qIG5vdyBSU0EgKi8KQEAgLTI0Niw3ICsyNDMsNyBAQCB2b2lkIGludGVs
X3VjX2Z3X2ZldGNoKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogCXVjX2Z3LT5yc2Ffc2l6ZSA9IGNzcy0+a2V5X3NpemVfZHcgKiBzaXpl
b2YodTMyKTsKIAogCS8qIEF0IGxlYXN0LCBpdCBzaG91bGQgaGF2ZSBoZWFkZXIsIHVDb2RlIGFu
ZCBSU0EuIFNpemUgb2YgYWxsIHRocmVlLiAqLwotCXNpemUgPSB1Y19mdy0+aGVhZGVyX3NpemUg
KyB1Y19mdy0+dWNvZGVfc2l6ZSArIHVjX2Z3LT5yc2Ffc2l6ZTsKKwlzaXplID0gc2l6ZW9mKHN0
cnVjdCB1Y19jc3NfaGVhZGVyKSArIHVjX2Z3LT51Y29kZV9zaXplICsgdWNfZnctPnJzYV9zaXpl
OwogCWlmIChmdy0+c2l6ZSA8IHNpemUpIHsKIAkJRFJNX1dBUk4oIiVzOiBUcnVuY2F0ZWQgZmly
bXdhcmUgKCV6dSwgZXhwZWN0ZWQgJXp1KVxuIiwKIAkJCSBpbnRlbF91Y19md190eXBlX3JlcHIo
dWNfZnctPnR5cGUpLCBmdy0+c2l6ZSwgc2l6ZSk7CkBAIC0zNzEsNyArMzY4LDcgQEAgc3RhdGlj
IGludCB1Y19md194ZmVyKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0cnVjdCBpbnRlbF9n
dCAqZ3QsCiAJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQodW5jb3JlLCBGT1JDRVdBS0VfQUxM
KTsKIAogCS8qIFNldCB0aGUgc291cmNlIGFkZHJlc3MgZm9yIHRoZSB1Q29kZSAqLwotCW9mZnNl
dCA9IHVjX2Z3X2dndHRfb2Zmc2V0KHVjX2Z3LCBndC0+Z2d0dCkgKyB1Y19mdy0+aGVhZGVyX29m
ZnNldDsKKwlvZmZzZXQgPSB1Y19md19nZ3R0X29mZnNldCh1Y19mdywgZ3QtPmdndHQpOwogCUdF
TV9CVUdfT04odXBwZXJfMzJfYml0cyhvZmZzZXQpICYgMHhGRkZGMDAwMCk7CiAJaW50ZWxfdW5j
b3JlX3dyaXRlX2Z3KHVuY29yZSwgRE1BX0FERFJfMF9MT1csIGxvd2VyXzMyX2JpdHMob2Zmc2V0
KSk7CiAJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgRE1BX0FERFJfMF9ISUdILCB1cHBl
cl8zMl9iaXRzKG9mZnNldCkpOwpAQCAtMzg1LDcgKzM4Miw3IEBAIHN0YXRpYyBpbnQgdWNfZndf
eGZlcihzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAogCSAq
IHZpYSBETUEsIGV4Y2x1ZGluZyBhbnkgb3RoZXIgY29tcG9uZW50cwogCSAqLwogCWludGVsX3Vu
Y29yZV93cml0ZV9mdyh1bmNvcmUsIERNQV9DT1BZX1NJWkUsCi0JCQkgICAgICB1Y19mdy0+aGVh
ZGVyX3NpemUgKyB1Y19mdy0+dWNvZGVfc2l6ZSk7CisJCQkgICAgICBzaXplb2Yoc3RydWN0IHVj
X2Nzc19oZWFkZXIpICsgdWNfZnctPnVjb2RlX3NpemUpOwogCiAJLyogU3RhcnQgdGhlIERNQSAq
LwogCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIERNQV9DVFJMLApAQCAtNTM5LDggKzUz
Niw2IEBAIHZvaWQgaW50ZWxfdWNfZndfZHVtcChjb25zdCBzdHJ1Y3QgaW50ZWxfdWNfZncgKnVj
X2Z3LCBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnApCiAJZHJtX3ByaW50ZihwLCAiXHR2ZXJzaW9uOiB3
YW50ZWQgJXUuJXUsIGZvdW5kICV1LiV1XG4iLAogCQkgICB1Y19mdy0+bWFqb3JfdmVyX3dhbnRl
ZCwgdWNfZnctPm1pbm9yX3Zlcl93YW50ZWQsCiAJCSAgIHVjX2Z3LT5tYWpvcl92ZXJfZm91bmQs
IHVjX2Z3LT5taW5vcl92ZXJfZm91bmQpOwotCWRybV9wcmludGYocCwgIlx0aGVhZGVyOiBvZmZz
ZXQgJXUsIHNpemUgJXVcbiIsCi0JCSAgIHVjX2Z3LT5oZWFkZXJfb2Zmc2V0LCB1Y19mdy0+aGVh
ZGVyX3NpemUpOwogCWRybV9wcmludGYocCwgIlx0dUNvZGU6IG9mZnNldCAldSwgc2l6ZSAldVxu
IiwKIAkJICAgdWNfZnctPnVjb2RlX29mZnNldCwgdWNfZnctPnVjb2RlX3NpemUpOwogCWRybV9w
cmludGYocCwgIlx0UlNBOiBvZmZzZXQgJXUsIHNpemUgJXVcbiIsCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAppbmRleCBlZGRiYjIzN2ZhYmUuLmE4MDQ4ZjkxZjBkYSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCkBAIC0yNiw2ICsyNiw3
IEBACiAjZGVmaW5lIF9JTlRFTF9VQ19GV19IXwogCiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4K
KyNpbmNsdWRlICJpbnRlbF91Y19md19hYmkuaCIKICNpbmNsdWRlICJpOTE1X2dlbS5oIgogCiBz
dHJ1Y3QgZHJtX3ByaW50ZXI7CkBAIC01NywxMCArNTgsMTEgQEAgZW51bSBpbnRlbF91Y19md190
eXBlIHsKICAqIG9mIGZldGNoaW5nLCBjYWNoaW5nLCBhbmQgbG9hZGluZyB0aGUgZmlybXdhcmUg
aW1hZ2UgaW50byB0aGUgdUMuCiAgKi8KIHN0cnVjdCBpbnRlbF91Y19mdyB7CisJZW51bSBpbnRl
bF91Y19md190eXBlIHR5cGU7CisJZW51bSBpbnRlbF91Y19md19zdGF0dXMgc3RhdHVzOwogCWNv
bnN0IGNoYXIgKnBhdGg7CiAJc2l6ZV90IHNpemU7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iajsKLQllbnVtIGludGVsX3VjX2Z3X3N0YXR1cyBzdGF0dXM7CiAKIAkvKgogCSAqIFRo
ZSBmaXJtd2FyZSBidWlsZCBwcm9jZXNzIHdpbGwgZ2VuZXJhdGUgYSB2ZXJzaW9uIGhlYWRlciBm
aWxlIHdpdGggbWFqb3IgYW5kCkBAIC03Miw5ICs3NCw2IEBAIHN0cnVjdCBpbnRlbF91Y19mdyB7
CiAJdTE2IG1ham9yX3Zlcl9mb3VuZDsKIAl1MTYgbWlub3JfdmVyX2ZvdW5kOwogCi0JZW51bSBp
bnRlbF91Y19md190eXBlIHR5cGU7Ci0JdTMyIGhlYWRlcl9zaXplOwotCXUzMiBoZWFkZXJfb2Zm
c2V0OwogCXUzMiByc2Ffc2l6ZTsKIAl1MzIgcnNhX29mZnNldDsKIAl1MzIgdWNvZGVfc2l6ZTsK
QEAgLTE2Myw3ICsxNjIsNyBAQCBzdGF0aWMgaW5saW5lIHUzMiBpbnRlbF91Y19md19nZXRfdXBs
b2FkX3NpemUoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdykKIAlpZiAoIWludGVsX3VjX2Z3X2lz
X2F2YWlsYWJsZSh1Y19mdykpCiAJCXJldHVybiAwOwogCi0JcmV0dXJuIHVjX2Z3LT5oZWFkZXJf
c2l6ZSArIHVjX2Z3LT51Y29kZV9zaXplOworCXJldHVybiBzaXplb2Yoc3RydWN0IHVjX2Nzc19o
ZWFkZXIpICsgdWNfZnctPnVjb2RlX3NpemU7CiB9CiAKIHZvaWQgaW50ZWxfdWNfZndfaW5pdF9l
YXJseShzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZndfYWJpLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19md19hYmkuaAppbmRleCA1NDVlODZjNTJhOWUuLmFlNThlOGE4YzUzYiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZndfYWJpLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZndfYWJpLmgKQEAgLTcs
NiArNyw3IEBACiAjZGVmaW5lIF9JTlRFTF9VQ19GV19BQklfSAogCiAjaW5jbHVkZSA8bGludXgv
dHlwZXMuaD4KKyNpbmNsdWRlIDxsaW51eC9idWlsZF9idWcuaD4KIAogLyoqCiAgKiBET0M6IEZp
cm13YXJlIExheW91dApAQCAtNzYsNSArNzcsNiBAQCBzdHJ1Y3QgdWNfY3NzX2hlYWRlciB7CiAJ
dTMyIHJlc2VydmVkWzE0XTsKIAl1MzIgaGVhZGVyX2luZm87CiB9IF9fcGFja2VkOworc3RhdGlj
X2Fzc2VydChzaXplb2Yoc3RydWN0IHVjX2Nzc19oZWFkZXIpID09IDEyOCk7CiAKICNlbmRpZiAv
KiBfSU5URUxfVUNfRldfQUJJX0ggKi8KLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
