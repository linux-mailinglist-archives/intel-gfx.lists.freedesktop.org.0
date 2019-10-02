Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDAAC8A97
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 971D1890D4;
	Wed,  2 Oct 2019 14:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD0F5890D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:09:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:09:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="194889997"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 02 Oct 2019 07:09:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 17:08:08 +0300
Message-Id: <20191002140808.12000-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add the Thunderbolt PLL divider
 values
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
Cc: Mika Westerberg <mika.westerberg@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIFRodW5kZXJib2x0IFBMTCBkaXZpZGVyIHZhbHVlcyBvbiBUR0wgZGlmZmVyIGZyb20gdGhl
IElDTCBvbmVzLAp1cGRhdGUgdGhlIFBMTCBwYXJhbWV0ZXIgY2FsY3VsYXRpb24gZnVuY3Rpb24g
YWNjb3JkaW5nbHkuCgpCc3BlYzogNDkyMDQKCkNjOiBKb3NlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KQ2M6IENsaW50b24gQSBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29t
PgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBNaWth
IFdlc3RlcmJlcmcgPG1pa2Eud2VzdGVyYmVyZ0BpbnRlbC5jb20+ClRlc3RlZC1ieTogTWlrYSBX
ZXN0ZXJiZXJnIDxtaWthLndlc3RlcmJlcmdAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5jIHwgNTEgKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNo
YW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCmluZGV4IGJlNjlhMjM0NDI5NC4uN2Iw
YjE4ZDk1YjA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5jCkBAIC0yNTIwLDYgKzI1MjAsMjQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBza2xfd3Jw
bGxfcGFyYW1zIGljbF90YnRfcGxsXzE5XzJNSHpfdmFsdWVzID0gewogCS5wZGl2ID0gMHg0IC8q
IDUgKi8sIC5rZGl2ID0gMSwgLnFkaXZfbW9kZSA9IDAsIC5xZGl2X3JhdGlvID0gMCwKIH07CiAK
K3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2tsX3dycGxsX3BhcmFtcyB0Z2xfdGJ0X3BsbF8xOV8yTUh6
X3ZhbHVlcyA9IHsKKwkuZGNvX2ludGVnZXIgPSAweDU0LCAuZGNvX2ZyYWN0aW9uID0gMHgzMDAw
LAorCS8qIHRoZSBmb2xsb3dpbmcgcGFyYW1zIGFyZSB1bnVzZWQgKi8KKwkucGRpdiA9IDAsIC5r
ZGl2ID0gMCwgLnFkaXZfbW9kZSA9IDAsIC5xZGl2X3JhdGlvID0gMCwKK307CisKK3N0YXRpYyBj
b25zdCBzdHJ1Y3Qgc2tsX3dycGxsX3BhcmFtcyB0Z2xfdGJ0X3BsbF8yNE1Iel92YWx1ZXMgPSB7
CisJLmRjb19pbnRlZ2VyID0gMHg0MywgLmRjb19mcmFjdGlvbiA9IDB4NDAwMCwKKwkvKiB0aGUg
Zm9sbG93aW5nIHBhcmFtcyBhcmUgdW51c2VkICovCisJLnBkaXYgPSAwLCAua2RpdiA9IDAsIC5x
ZGl2X21vZGUgPSAwLCAucWRpdl9yYXRpbyA9IDAsCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0
IHNrbF93cnBsbF9wYXJhbXMgdGdsX3RidF9wbGxfMjVNSHpfdmFsdWVzID0geworCS5kY29faW50
ZWdlciA9IDB4NDAsIC5kY29fZnJhY3Rpb24gPSAweDY2NjYsCisJLyogdGhlIGZvbGxvd2luZyBw
YXJhbXMgYXJlIHVudXNlZCAqLworCS5wZGl2ID0gMCwgLmtkaXYgPSAwLCAucWRpdl9tb2RlID0g
MCwgLnFkaXZfcmF0aW8gPSAwLAorfTsKKwogc3RhdGljIGJvb2wgaWNsX2NhbGNfZHBfY29tYm9f
cGxsKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgc3RydWN0IHNr
bF93cnBsbF9wYXJhbXMgKnBsbF9wYXJhbXMpCiB7CkBAIC0yNTQ3LDggKzI1NjUsMzcgQEAgc3Rh
dGljIGJvb2wgaWNsX2NhbGNfdGJ0X3BsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNy
dGNfc3RhdGUtPmJhc2UuY3J0Yy0+ZGV2KTsKIAotCSpwbGxfcGFyYW1zID0gZGV2X3ByaXYtPmNk
Y2xrLmh3LnJlZiA9PSAyNDAwMCA/Ci0JCQlpY2xfdGJ0X3BsbF8yNE1Iel92YWx1ZXMgOiBpY2xf
dGJ0X3BsbF8xOV8yTUh6X3ZhbHVlczsKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikg
eworCQlzd2l0Y2ggKGRldl9wcml2LT5jZGNsay5ody5yZWYpIHsKKwkJZGVmYXVsdDoKKwkJCU1J
U1NJTkdfQ0FTRShkZXZfcHJpdi0+Y2RjbGsuaHcucmVmKTsKKwkJCS8qIGZhbGwtdGhyb3VnaCAq
LworCQljYXNlIDE5MjAwOgorCQljYXNlIDM4NDAwOgorCQkJKnBsbF9wYXJhbXMgPSB0Z2xfdGJ0
X3BsbF8xOV8yTUh6X3ZhbHVlczsKKwkJCWJyZWFrOworCQljYXNlIDI0MDAwOgorCQkJKnBsbF9w
YXJhbXMgPSB0Z2xfdGJ0X3BsbF8yNE1Iel92YWx1ZXM7CisJCQlicmVhazsKKwkJY2FzZSAyNTAw
MDoKKwkJCSpwbGxfcGFyYW1zID0gdGdsX3RidF9wbGxfMjVNSHpfdmFsdWVzOworCQkJYnJlYWs7
CisJCX0KKwl9IGVsc2UgeworCQlzd2l0Y2ggKGRldl9wcml2LT5jZGNsay5ody5yZWYpIHsKKwkJ
ZGVmYXVsdDoKKwkJCU1JU1NJTkdfQ0FTRShkZXZfcHJpdi0+Y2RjbGsuaHcucmVmKTsKKwkJCS8q
IGZhbGwtdGhyb3VnaCAqLworCQljYXNlIDE5MjAwOgorCQljYXNlIDM4NDAwOgorCQkJKnBsbF9w
YXJhbXMgPSBpY2xfdGJ0X3BsbF8xOV8yTUh6X3ZhbHVlczsKKwkJCWJyZWFrOworCQljYXNlIDI0
MDAwOgorCQkJKnBsbF9wYXJhbXMgPSBpY2xfdGJ0X3BsbF8yNE1Iel92YWx1ZXM7CisJCQlicmVh
azsKKwkJfQorCX0KKwogCXJldHVybiB0cnVlOwogfQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
