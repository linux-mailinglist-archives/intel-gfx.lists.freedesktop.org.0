Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC64885E9
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 00:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC2B6EEE8;
	Fri,  9 Aug 2019 22:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064D86EEE8;
 Fri,  9 Aug 2019 22:27:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 15:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="176927029"
Received: from jmath3-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.86])
 by fmsmga007.fm.intel.com with ESMTP; 09 Aug 2019 15:27:06 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 23:26:21 +0100
Message-Id: <20190809222643.23142-16-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190809222643.23142-1-matthew.auld@intel.com>
References: <20190809222643.23142-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 15/37] drm/i915/selftest: extend coverage to
 include LMEM huge-pages
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0K
IC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8IDEyMSArKysr
KysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aHVnZV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMKaW5kZXggYzM2Y2VmNjFjZTNjLi40YmFjMTUzNjMwMjAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCkBAIC05LDYgKzksNyBAQAog
I2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIKIAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdp
b24uaCIKKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fbG1lbS5oIgogI2luY2x1ZGUgImdlbS9pOTE1
X2dlbV9wbS5oIgogCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKQEAgLTk3MCw3ICs5NzEsNyBA
QCBzdGF0aWMgaW50IGdwdV93cml0ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKIAkJCSAgICAgICB2
bWEtPnNpemUgPj4gUEFHRV9TSElGVCwgdmFsKTsKIH0KIAotc3RhdGljIGludCBjcHVfY2hlY2so
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgdTMyIGR3b3JkLCB1MzIgdmFsKQorc3Rh
dGljIGludCBfX2NwdV9jaGVja19zaG1lbShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LCB1MzIgZHdvcmQsIHUzMiB2YWwpCiB7CiAJdW5zaWduZWQgaW50IG5lZWRzX2ZsdXNoOwogCXVu
c2lnbmVkIGxvbmcgbjsKQEAgLTEwMDIsNiArMTAwMyw1MSBAQCBzdGF0aWMgaW50IGNwdV9jaGVj
ayhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCB1MzIgZHdvcmQsIHUzMiB2YWwpCiAJ
cmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBfX2NwdV9jaGVja19sbWVtKHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmosIHUzMiBkd29yZCwgdTMyIHZhbCkKK3sKKwl1bnNpZ25lZCBs
b25nIG47CisJaW50IGVycjsKKworCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJZXJyID0g
aTkxNV9nZW1fb2JqZWN0X3NldF90b193Y19kb21haW4ob2JqLCBmYWxzZSk7CisJaTkxNV9nZW1f
b2JqZWN0X3VubG9jayhvYmopOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwllcnIgPSBp
OTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsK
KworCWZvciAobiA9IDA7IG4gPCBvYmotPmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOyArK24pIHsK
KwkJdTMyIF9faW9tZW0gKmJhc2U7CisJCXUzMiByZWFkX3ZhbDsKKworCQliYXNlID0gaTkxNV9n
ZW1fb2JqZWN0X2xtZW1faW9fbWFwX3BhZ2VfYXRvbWljKG9iaiwgbik7CisKKwkJcmVhZF92YWwg
PSBpb3JlYWQzMihiYXNlICsgZHdvcmQpOworCQlpb19tYXBwaW5nX3VubWFwX2F0b21pYyhiYXNl
KTsKKwkJaWYgKHJlYWRfdmFsICE9IHZhbCkgeworCQkJcHJfZXJyKCJuPSVsdSBiYXNlWyV1XT0l
dSwgdmFsPSV1XG4iLAorCQkJICAgICAgIG4sIGR3b3JkLCByZWFkX3ZhbCwgdmFsKTsKKwkJCWVy
ciA9IC1FSU5WQUw7CisJCQlicmVhazsKKwkJfQorCX0KKworCWk5MTVfZ2VtX29iamVjdF91bnBp
bl9wYWdlcyhvYmopOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgY3B1X2NoZWNrKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosIHUzMiBkd29yZCwgdTMyIHZhbCkKK3sKKwlp
ZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShvYmopKQorCQlyZXR1cm4gX19jcHVf
Y2hlY2tfc2htZW0ob2JqLCBkd29yZCwgdmFsKTsKKwllbHNlIGlmIChpOTE1X2dlbV9vYmplY3Rf
aXNfbG1lbShvYmopKQorCQlyZXR1cm4gX19jcHVfY2hlY2tfbG1lbShvYmosIGR3b3JkLCB2YWwp
OworCisJcmV0dXJuIC1FTk9ERVY7Cit9CisKIHN0YXRpYyBpbnQgX19pZ3Rfd3JpdGVfaHVnZShz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCQkJICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKIAkJCSAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLApAQCAt
MTM4Miw2ICsxNDI4LDc4IEBAIHN0YXRpYyBpbnQgaWd0X3BwZ3R0X2dlbWZzX2h1Z2Uodm9pZCAq
YXJnKQogCXJldHVybiBlcnI7CiB9CiAKK3N0YXRpYyBpbnQgaWd0X3BwZ3R0X2xtZW1faHVnZSh2
b2lkICphcmcpCit7CisJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCA9IGFyZzsKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGN0eC0+aTkxNTsKKwlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOworCXN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgc2l6ZXNbXSA9IHsK
KwkJU1pfNjRLLAorCQlTWl81MTJLLAorCQlTWl8xTSwKKwkJU1pfMk0sCisJfTsKKwlpbnQgaTsK
KwlpbnQgZXJyOworCisJaWYgKCFIQVNfTE1FTShpOTE1KSkgeworCQlwcl9pbmZvKCJkZXZpY2Ug
bGFja3MgTE1FTSBzdXBwb3J0LCBza2lwcGluZ1xuIik7CisJCXJldHVybiAwOworCX0KKworCS8q
CisJICogU2FuaXR5IGNoZWNrIHRoYXQgdGhlIEhXIHVzZXMgaHVnZSBwYWdlcyBjb3JyZWN0bHkg
dGhyb3VnaCBMTUVNCisJICogLS0gZW5zdXJlIHRoYXQgb3VyIHdyaXRlcyBsYW5kIGluIHRoZSBy
aWdodCBwbGFjZS4KKwkgKi8KKworCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHNpemVzKTsg
KytpKSB7CisJCXVuc2lnbmVkIGludCBzaXplID0gc2l6ZXNbaV07CisKKwkJb2JqID0gaTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGk5MTUsIHNpemUsIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9V
Uyk7CisJCWlmIChJU19FUlIob2JqKSkgeworCQkJZXJyID0gUFRSX0VSUihvYmopOworCQkJaWYg
KGVyciA9PSAtRTJCSUcpIHsKKwkJCQlwcl9pbmZvKCJvYmplY3QgdG9vIGJpZyBmb3IgcmVnaW9u
IVxuIik7CisJCQkJcmV0dXJuIDA7CisJCQl9CisKKwkJCXJldHVybiBlcnI7CisJCX0KKworCQll
cnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CisJCWlmIChlcnIpCisJCQlnb3Rv
IG91dF9wdXQ7CisKKwkJaWYgKG9iai0+bW0ucGFnZV9zaXplcy5waHlzIDwgSTkxNV9HVFRfUEFH
RV9TSVpFXzY0SykgeworCQkJcHJfaW5mbygiTE1FTSB1bmFibGUgdG8gYWxsb2NhdGUgaHVnZS1w
YWdlKHMpIHdpdGggc2l6ZT0ldVxuIiwKKwkJCQlzaXplKTsKKwkJCWdvdG8gb3V0X3VucGluOwor
CQl9CisKKwkJZXJyID0gaWd0X3dyaXRlX2h1Z2UoY3R4LCBvYmopOworCQlpZiAoZXJyKSB7CisJ
CQlwcl9lcnIoIkxNRU0gd3JpdGUtaHVnZSBmYWlsZWQgd2l0aCBzaXplPSV1XG4iLCBzaXplKTsK
KwkJCWdvdG8gb3V0X3VucGluOworCQl9CisKKwkJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2Vz
KG9iaik7CisJCV9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmosIEk5MTVfTU1fTk9STUFM
KTsKKwkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCX0KKworCXJldHVybiAwOworCitvdXRf
dW5waW46CisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CitvdXRfcHV0OgorCWk5
MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKKworCWlmIChlcnIgPT0gLUVOT01FTSkKKwkJZXJyID0g
MDsKKworCXJldHVybiBlcnI7Cit9CisKIHN0YXRpYyBpbnQgaWd0X3BwZ3R0X3Bpbl91cGRhdGUo
dm9pZCAqYXJnKQogewogCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHggPSBhcmc7CkBAIC0x
NzMyLDYgKzE4NTAsNyBAQCBpbnQgaTkxNV9nZW1faHVnZV9wYWdlX2xpdmVfc2VsZnRlc3RzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQlTVUJURVNUKGlndF9wcGd0dF9leGhhdXN0
X2h1Z2UpLAogCQlTVUJURVNUKGlndF9wcGd0dF9nZW1mc19odWdlKSwKIAkJU1VCVEVTVChpZ3Rf
cHBndHRfaW50ZXJuYWxfaHVnZSksCisJCVNVQlRFU1QoaWd0X3BwZ3R0X2xtZW1faHVnZSksCiAJ
fTsKIAlzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGU7CiAJc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0
eDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
