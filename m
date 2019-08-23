Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A389B42A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 18:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F976ECE2;
	Fri, 23 Aug 2019 16:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780286ECE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 16:02:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 09:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="203807756"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 09:02:15 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 09:03:04 -0700
Message-Id: <20190823160307.180813-9-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823160307.180813-1-stuart.summers@intel.com>
References: <20190823160307.180813-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: Add function to determine if a
 slice has a subslice
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

QWRkIGEgbmV3IGZ1bmN0aW9uIHRvIGRldGVybWluZSB3aGV0aGVyIGEgcGFydGljdWxhciBzbGlj
ZQpoYXMgYSBnaXZlbiBzdWJzbGljZS4KClNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxz
dHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9z
c2V1LmggICAgIHwgMTYgKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYyB8ICA5ICsrKystLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3NzZXUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUu
aAppbmRleCA3M2E5MDY0MjkxYTIuLjc3MDNkNzVmMmRhMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3NzZXUuaApAQCAtMTAsNiArMTAsOCBAQAogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+
CiAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+CiAKKyNpbmNsdWRlICJpOTE1X2dlbS5oIgorCiBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKIAogI2RlZmluZSBHRU5fTUFYX1NMSUNFUwkJKDYpIC8q
IENOTCB1cHBlciBib3VuZCAqLwpAQCAtNjksNiArNzEsMjAgQEAgaW50ZWxfc3NldV9mcm9tX2Rl
dmljZV9pbmZvKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1KQogCXJldHVybiB2YWx1
ZTsKIH0KIAorc3RhdGljIGlubGluZSBib29sCitpbnRlbF9zc2V1X2hhc19zdWJzbGljZShjb25z
dCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgaW50IHNsaWNlLAorCQkJaW50IHN1YnNsaWNl
KQoreworCXU4IG1hc2s7CisJaW50IHNzX2lkeCA9IHN1YnNsaWNlIC8gQklUU19QRVJfQllURTsK
KworCUdFTV9CVUdfT04oc3NfaWR4ID49IHNzZXUtPnNzX3N0cmlkZSk7CisKKwltYXNrID0gc3Nl
dS0+c3Vic2xpY2VfbWFza1tzbGljZSAqIHNzZXUtPnNzX3N0cmlkZSArIHNzX2lkeF07CisKKwly
ZXR1cm4gbWFzayAmIEJJVChzdWJzbGljZSAlIEJJVFNfUEVSX0JZVEUpOworfQorCiB2b2lkIGlu
dGVsX3NzZXVfc2V0X2luZm8oc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsIHU4IG1heF9zbGlj
ZXMsCiAJCQkgdTggbWF4X3N1YnNsaWNlcywgdTggbWF4X2V1c19wZXJfc3Vic2xpY2UpOwogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCAxYTQ1NzI4YWM3MTIu
LmMyMGY3NGVlNWYyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2
aWNlX2luZm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
CkBAIC0yMTAsMTAgKzIxMCw5IEBAIHN0YXRpYyB2b2lkIGdlbjExX3NzZXVfaW5mb19pbml0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCWludGVsX3NzZXVfc2V0X3N1YnNs
aWNlcyhzc2V1LCBzLCAoc3NfZW4gPj4gc3NfaWR4KSAmCiAJCQkJCQkJICBzc19lbl9tYXNrKTsK
IAotCQkJZm9yIChzcyA9IDA7IHNzIDwgc3NldS0+bWF4X3N1YnNsaWNlczsgc3MrKykgewotCQkJ
CWlmIChzc2V1LT5zdWJzbGljZV9tYXNrW3NdICYgQklUKHNzKSkKKwkJCWZvciAoc3MgPSAwOyBz
cyA8IHNzZXUtPm1heF9zdWJzbGljZXM7IHNzKyspCisJCQkJaWYgKGludGVsX3NzZXVfaGFzX3N1
YnNsaWNlKHNzZXUsIHMsIHNzKSkKIAkJCQkJc3NldV9zZXRfZXVzKHNzZXUsIHMsIHNzLCBldV9l
bik7Ci0JCQl9CiAJCX0KIAl9CiAJc3NldS0+ZXVfcGVyX3N1YnNsaWNlID0gaHdlaWdodDgoZXVf
ZW4pOwpAQCAtMzk1LDcgKzM5NCw3IEBAIHN0YXRpYyB2b2lkIGdlbjlfc3NldV9pbmZvX2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJaW50IGV1X3Blcl9zczsKIAkJ
CXU4IGV1X2Rpc2FibGVkX21hc2s7CiAKLQkJCWlmICghKHNzZXUtPnN1YnNsaWNlX21hc2tbc10g
JiBCSVQoc3MpKSkKKwkJCWlmICghaW50ZWxfc3NldV9oYXNfc3Vic2xpY2Uoc3NldSwgcywgc3Mp
KQogCQkJCS8qIHNraXAgZGlzYWJsZWQgc3Vic2xpY2UgKi8KIAkJCQljb250aW51ZTsKIApAQCAt
NTAxLDcgKzUwMCw3IEBAIHN0YXRpYyB2b2lkIGJyb2Fkd2VsbF9zc2V1X2luZm9faW5pdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQl1OCBldV9kaXNhYmxlZF9tYXNrOwog
CQkJdTMyIG5fZGlzYWJsZWQ7CiAKLQkJCWlmICghKHNzZXUtPnN1YnNsaWNlX21hc2tbc10gJiBC
SVQoc3MpKSkKKwkJCWlmICghaW50ZWxfc3NldV9oYXNfc3Vic2xpY2Uoc3NldSwgcywgc3MpKQog
CQkJCS8qIHNraXAgZGlzYWJsZWQgc3Vic2xpY2UgKi8KIAkJCQljb250aW51ZTsKIAotLSAKMi4y
Mi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
