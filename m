Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A757C109867
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 05:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E7E6E1F6;
	Tue, 26 Nov 2019 04:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8B3589CC9
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 04:52:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 20:52:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,244,1571727600"; d="scan'208";a="239788824"
Received: from unknown (HELO localhost.localdomain) ([10.223.165.29])
 by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2019 20:52:46 -0800
From: Ankit Navik <ankit.p.navik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 10:21:39 +0530
Message-Id: <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to control
 slice/subslice/eu
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
Cc: ankit.p.navik@intel.com, vipin.anand@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGlnaCByZXNvbHV0aW9uIHRpbWVyIGlzIHVzZWQgZm9yIHByZWRpY3RpdmUgZ292ZXJub3IgdG8g
Y29udHJvbApldS9zbGljZS9zdWJzbGljZSBiYXNlZCBvbiB3b3JrbG9hZHMuCgpwYXJhbSBpcyBw
cm92aWRlZCB0byBlbmFibGUvZGlzYWJsZS91cGRhdGUgdGltZXIgY29uZmlndXJhdGlvbgoKVjI6
CiAqIEZpeCBjb2RlIHN0eWxlLgogKiBNb3ZlIHByZWRpY3RpdmVfbG9hZF90aW1lciBpbnRvIGEg
ZHJtX2k5MTVfcHJpdmF0ZQogICBzdHJ1Y3R1cmUuCiAqIE1ha2UgZ2VuZXJpYyBmdW5jdGlvbiB0
byBzZXQgb3B0aW11bSBjb25maWcuIChUdnJ0a28gVXJzdWxpbikKClYzOgogKiBSZWJhc2UuCiAq
IEZpeCByYWNlIGNvbmRpdGlvbiBmb3IgcHJlZGljdGl2ZSBsb2FkIHNldC4KICogQWRkIHNsYWNr
IHRvIHN0YXJ0IGhydGltZXIgZm9yIG1vcmUgcG93ZXIgZWZmaWNpZW50LiAoVHZydGtvIFVyc3Vs
aW4pCgpWNDoKICogRml4IGRhdGEgdHlwZSBhbmQgaW5pdGlhbGl6YXRpb24gb2YgbXV0ZXggdG8g
cHJvdGVjdCBwcmVkaWN0aXZlIGxvYWQKICAgc3RhdGUuCiAqIE1vdmUgcHJlZGljdGl2ZSB0aW1l
ciBpbml0IHRvIGk5MTVfZ2VtX2luaXRfZWFybHkuIChUdnJ0a28gVXJzdWxpbikKICogTW92ZSBk
ZWJ1Z2ZzIHRvIGtlcm5lbCBwYXJhbWV0ZXIuCgpWNToKICogUmViYXNlLgogKiBSZW1vdmUgbXV0
ZXggZm9yIHByZWRfdGltZXIKClY2OgogKiBSZWJhc2UuCiAqIEZpeCB3YXJuaW5ncy4KCkNjOiBW
aXBpbiBBbmFuZCA8dmlwaW4uYW5hbmRAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmtpdCBO
YXZpayA8YW5raXQucC5uYXZpa0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
TWFrZWZpbGUgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZGV1
LmMgfCAxMDQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9kZXUuaCB8ICAzMSArKysrKysrKysrKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgfCAgIDQgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMgICAgIHwgICA0ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5j
ICB8ICAgNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCAgfCAgIDEgKwog
NyBmaWxlcyBjaGFuZ2VkLCAxNDkgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2RldS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZGV1LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4
IGUwZmQxMGMuLmMxYTk4ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC03Nyw2ICs3Nyw3IEBA
IG9iai15ICs9IGd0LwogZ3QteSArPSBcCiAJZ3QvaW50ZWxfYnJlYWRjcnVtYnMubyBcCiAJZ3Qv
aW50ZWxfY29udGV4dC5vIFwKKwlndC9pbnRlbF9kZXUubyBcCiAJZ3QvaW50ZWxfZW5naW5lX2Nz
Lm8gXAogCWd0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQubyBcCiAJZ3QvaW50ZWxfZW5naW5lX3Bt
Lm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZGV1LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9kZXUuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwLi42YzViMDFjCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZGV1LmMKQEAgLTAsMCArMSwxMDQgQEAKKy8qCisgKiBDb3B5cmlnaHQg
wqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICoKKyAqIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdy
YW50ZWQsIGZyZWUgb2YgY2hhcmdlLCB0byBhbnkgcGVyc29uIG9idGFpbmluZyBhCisgKiBjb3B5
IG9mIHRoaXMgc29mdHdhcmUgYW5kIGFzc29jaWF0ZWQgZG9jdW1lbnRhdGlvbiBmaWxlcyAodGhl
ICJTb2Z0d2FyZSIpLAorICogdG8gZGVhbCBpbiB0aGUgU29mdHdhcmUgd2l0aG91dCByZXN0cmlj
dGlvbiwgaW5jbHVkaW5nIHdpdGhvdXQgbGltaXRhdGlvbgorICogdGhlIHJpZ2h0cyB0byB1c2Us
IGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUsIHN1YmxpY2Vuc2UsCisg
KiBhbmQvb3Igc2VsbCBjb3BpZXMgb2YgdGhlIFNvZnR3YXJlLCBhbmQgdG8gcGVybWl0IHBlcnNv
bnMgdG8gd2hvbSB0aGUKKyAqIFNvZnR3YXJlIGlzIGZ1cm5pc2hlZCB0byBkbyBzbywgc3ViamVj
dCB0byB0aGUgZm9sbG93aW5nIGNvbmRpdGlvbnM6CisgKgorICogVGhlIGFib3ZlIGNvcHlyaWdo
dCBub3RpY2UgYW5kIHRoaXMgcGVybWlzc2lvbiBub3RpY2UgKGluY2x1ZGluZyB0aGUgbmV4dAor
ICogcGFyYWdyYXBoKSBzaGFsbCBiZSBpbmNsdWRlZCBpbiBhbGwgY29waWVzIG9yIHN1YnN0YW50
aWFsIHBvcnRpb25zIG9mIHRoZQorICogU29mdHdhcmUuCisgKgorICogVEhFIFNPRlRXQVJFIElT
IFBST1ZJREVEICJBUyBJUyIsIFdJVEhPVVQgV0FSUkFOVFkgT0YgQU5ZIEtJTkQsIEVYUFJFU1Mg
T1IKKyAqIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gVEhFIFdBUlJBTlRJ
RVMgT0YgTUVSQ0hBTlRBQklMSVRZLAorICogRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBP
U0UgQU5EIE5PTklORlJJTkdFTUVOVC4gIElOIE5PIEVWRU5UIFNIQUxMCisgKiBUSEUgQVVUSE9S
UyBPUiBDT1BZUklHSFQgSE9MREVSUyBCRSBMSUFCTEUgRk9SIEFOWSBDTEFJTSwgREFNQUdFUyBP
UiBPVEhFUgorICogTElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05UUkFDVCwg
VE9SVCBPUiBPVEhFUldJU0UsIEFSSVNJTkcKKyAqIEZST00sIE9VVCBPRiBPUiBJTiBDT05ORUNU
SU9OIFdJVEggVEhFIFNPRlRXQVJFIE9SIFRIRSBVU0UgT1IgT1RIRVIKKyAqIERFQUxJTkdTIElO
IFRIRSBTT0ZUV0FSRS4KKyAqCisgKiBBdXRob3JzOgorICogICAgQW5raXQgTmF2aWsgPGFua2l0
LnAubmF2aWtAaW50ZWwuY29tPgorICovCisKKy8qKgorICogRE9DOiBEeW5hbWljIEVVIENvbnRy
b2wgKERFVSkKKyAqCisgKiBERVUgdHJpZXMgdG8gcmUtY29uZmlndXJlIEVVIGFsbG9jYXRpb24g
ZHVyaW5nIHJ1bnRpbWUgYnkgcHJlZGljdGl2ZSBsb2FkCisgKiBjYWxjdWxhdGlvbiBvZiBjb21t
YW5kIHF1ZXVlIHRvIGdhaW4gcG93ZXIgc2F2aW5nLgorICogSXQgaXMgdHJhbnNwYXJlbnQgdG8g
dXNlciBzcGFjZSBhbmQgY29tcGxldGVseSBoYW5kbGVkIGluIHRoZSBrZXJuZWwuCisgKi8KKwor
I2luY2x1ZGUgImludGVsX2RldS5oIgorI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAi
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKKworLyoKKyAqIEFueXRoaW5nIGFib3ZlIHRocmVzaG9s
ZCBpcyBjb25zaWRlcmVkIGFzIEhJR0ggbG9hZCwgbGVzcyBpcyBjb25zaWRlcmVkCisgKiBhcyBM
T1cgbG9hZCBhbmQgZXF1YWwgaXMgY29uc2lkZXJlZCBhcyBNRURJVU0gbG9hZC4KKyAqCisgKiBU
aGUgdGhyZXNob2xkIHZhbHVlIG9mIHRocmVlIGFjdGl2ZSByZXF1ZXN0cyBwZW5kaW5nLgorICov
CisjZGVmaW5lIFBFTkRJTkdfVEhSRVNIT0xEX01FRElVTSAzCisKKyNkZWZpbmUgU0xBQ0tfVElN
RVJfTlNFQyAxMDAwMDAwIC8qIFRpbWVyIHJhbmdlIGluIG5hbm8gc2Vjb25kICovCisKK2VudW0g
aHJ0aW1lcl9yZXN0YXJ0IHByZWRpY3RpdmVfbG9hZF9jYihzdHJ1Y3QgaHJ0aW1lciAqaHJ0aW1l
cikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQorCQkJY29udGFpbmVy
X29mKGhydGltZXIsIHR5cGVvZigqZGV2X3ByaXYpLCBwcmVkX3RpbWVyKTsKKwlzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4OworCWVudW0gZ2VtX2xvYWRfdHlwZSBsb2FkX3R5cGU7CisJdW5z
aWduZWQgaW50IHJlcV9wZW5kaW5nOworCisJbGlzdF9mb3JfZWFjaF9lbnRyeShjdHgsICZkZXZf
cHJpdi0+Z2VtLmNvbnRleHRzLmxpc3QsIGxpbmspIHsKKwkJcmVxX3BlbmRpbmcgPSBhdG9taWNf
cmVhZCgmY3R4LT5yZXFfY250KTsKKworCQkvKgorCQkgKiBUcmFuc2l0aW9uaW5nIHRvIGxvdyBz
dGF0ZSB3aGVuZXZlciBwZW5kaW5nIHJlcXVlc3QgaXMgemVybworCQkgKiB3b3VsZCBjYXVzZSB2
YWNpbGxhdGlvbiBiZXR3ZWVuIGxvdyBhbmQgaGlnaCBzdGF0ZS4KKwkJICovCisJCWlmIChyZXFf
cGVuZGluZyA9PSAwKQorCQkJY29udGludWU7CisKKwkJaWYgKHJlcV9wZW5kaW5nID4gUEVORElO
R19USFJFU0hPTERfTUVESVVNKQorCQkJbG9hZF90eXBlID0gTE9BRF9UWVBFX0hJR0g7CisJCWVs
c2UgaWYgKHJlcV9wZW5kaW5nID09IFBFTkRJTkdfVEhSRVNIT0xEX01FRElVTSkKKwkJCWxvYWRf
dHlwZSA9IExPQURfVFlQRV9NRURJVU07CisJCWVsc2UKKwkJCWxvYWRfdHlwZSA9IExPQURfVFlQ
RV9MT1c7CisKKwkJaTkxNV9nZW1fY29udGV4dF9zZXRfbG9hZF90eXBlKGN0eCwgbG9hZF90eXBl
KTsKKwl9CisKKwlocnRpbWVyX2ZvcndhcmRfbm93KGhydGltZXIsCisJCQkgICAgbXNfdG9fa3Rp
bWUoZGV2X3ByaXYtPnByZWRpY3RpdmVfbG9hZF9lbmFibGUpKTsKKworCXJldHVybiBIUlRJTUVS
X1JFU1RBUlQ7Cit9CisKKy8qKgorICogaW50ZWxfZGV1X2luaXQgLSBJbml0aWFsaXplIGR5bmFt
aWMgRVUKKyAqIEBkZXZfcHJpdjogaTkxNSBkZXZpY2UgaW5zdGFuY2UKKyAqCisgKiBUaGlzIGZ1
bmN0aW9uIGlzIGNhbGxlZCBhdCBkcml2ZXIgbG9hZAorICovCit2b2lkIGludGVsX2RldV9pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwlkZXZfcHJpdi0+cHJlZGlj
dGl2ZV9sb2FkX2VuYWJsZSA9IGk5MTVfbW9kcGFyYW1zLmRldV9lbmFibGU7CisJaHJ0aW1lcl9p
bml0KCZkZXZfcHJpdi0+cHJlZF90aW1lciwgQ0xPQ0tfTU9OT1RPTklDLCBIUlRJTUVSX01PREVf
UkVMKTsKKwlkZXZfcHJpdi0+cHJlZF90aW1lci5mdW5jdGlvbiA9IHByZWRpY3RpdmVfbG9hZF9j
YjsKKworCWlmIChkZXZfcHJpdi0+cHJlZGljdGl2ZV9sb2FkX2VuYWJsZSkgeworCQlpZiAoIWhy
dGltZXJfYWN0aXZlKCZkZXZfcHJpdi0+cHJlZF90aW1lcikpCisJCQlocnRpbWVyX3N0YXJ0X3Jh
bmdlX25zKCZkZXZfcHJpdi0+cHJlZF90aW1lciwKKwkJCW1zX3RvX2t0aW1lKGRldl9wcml2LT5w
cmVkaWN0aXZlX2xvYWRfZW5hYmxlKSwKKwkJCVNMQUNLX1RJTUVSX05TRUMsCisJCQlIUlRJTUVS
X01PREVfUkVMX1BJTk5FRCk7CisJfSBlbHNlIHsKKwkJaHJ0aW1lcl9jYW5jZWwoJmRldl9wcml2
LT5wcmVkX3RpbWVyKTsKKwl9Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9kZXUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2RldS5oCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjNiNGIxNmYKLS0tIC9kZXYvbnVsbAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9kZXUuaApAQCAtMCwwICsxLDMxIEBACisv
KgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqCisgKiBQZXJtaXNz
aW9uIGlzIGhlcmVieSBncmFudGVkLCBmcmVlIG9mIGNoYXJnZSwgdG8gYW55IHBlcnNvbiBvYnRh
aW5pbmcgYQorICogY29weSBvZiB0aGlzIHNvZnR3YXJlIGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50
YXRpb24gZmlsZXMgKHRoZSAiU29mdHdhcmUiKSwKKyAqIHRvIGRlYWwgaW4gdGhlIFNvZnR3YXJl
IHdpdGhvdXQgcmVzdHJpY3Rpb24sIGluY2x1ZGluZyB3aXRob3V0IGxpbWl0YXRpb24KKyAqIHRo
ZSByaWdodHMgdG8gdXNlLCBjb3B5LCBtb2RpZnksIG1lcmdlLCBwdWJsaXNoLCBkaXN0cmlidXRl
LCBzdWJsaWNlbnNlLAorICogYW5kL29yIHNlbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwgYW5k
IHRvIHBlcm1pdCBwZXJzb25zIHRvIHdob20gdGhlCisgKiBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQg
dG8gZG8gc28sIHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZyBjb25kaXRpb25zOgorICoKKyAqIFRo
ZSBhYm92ZSBjb3B5cmlnaHQgbm90aWNlIGFuZCB0aGlzIHBlcm1pc3Npb24gbm90aWNlIChpbmNs
dWRpbmcgdGhlIG5leHQKKyAqIHBhcmFncmFwaCkgc2hhbGwgYmUgaW5jbHVkZWQgaW4gYWxsIGNv
cGllcyBvciBzdWJzdGFudGlhbCBwb3J0aW9ucyBvZiB0aGUKKyAqIFNvZnR3YXJlLgorICoKKyAq
IFRIRSBTT0ZUV0FSRSBJUyBQUk9WSURFRCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFO
WSBLSU5ELCBFWFBSRVNTIE9SCisgKiBJTVBMSUVELCBJTkNMVURJTkcgQlVUIE5PVCBMSU1JVEVE
IFRPIFRIRSBXQVJSQU5USUVTIE9GIE1FUkNIQU5UQUJJTElUWSwKKyAqIEZJVE5FU1MgRk9SIEEg
UEFSVElDVUxBUiBQVVJQT1NFIEFORCBOT05JTkZSSU5HRU1FTlQuICBJTiBOTyBFVkVOVCBTSEFM
TAorICogVEhFIEFVVEhPUlMgT1IgQ09QWVJJR0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkg
Q0xBSU0sIERBTUFHRVMgT1IgT1RIRVIKKyAqIExJQUJJTElUWSwgV0hFVEhFUiBJTiBBTiBBQ1RJ
T04gT0YgQ09OVFJBQ1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklTSU5HCisgKiBGUk9NLCBPVVQg
T0YgT1IgSU4gQ09OTkVDVElPTiBXSVRIIFRIRSBTT0ZUV0FSRSBPUiBUSEUgVVNFIE9SIE9USEVS
CisgKiBERUFMSU5HUyBJTiBUSEUgU09GVFdBUkUuCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX0RF
VV9IX18KKyNkZWZpbmUgX19JTlRFTF9ERVVfSF9fCisKK3N0cnVjdCBkcm1faTkxNV9wcml2YXRl
OworCit2b2lkIGludGVsX2RldV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dik7CisKKyNlbmRpZiAvKiBfX0lOVEVMX0RFVV9IX18gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CmluZGV4IDMwNjRkZGYuLjU1NTM1MzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTAw
Miw2ICsxMDAyLDggQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCS8qIG9wdGltYWwgc2xp
Y2Uvc3Vic2xpY2UvRVUgY29uZmlncmF0aW9uIHN0YXRlICovCiAJc3RydWN0IGk5MTVfc3NldV9v
cHRpbXVtX2NvbmZpZyAqb3B0X2NvbmZpZzsKIAorCS8qIHByb3RlY3RzIHByZWRpY3RpdmUgbG9h
ZCBzdGF0ZSAqLworCXN0cnVjdCBocnRpbWVyIHByZWRfdGltZXI7CiAJaW50IHByZWRpY3RpdmVf
bG9hZF9lbmFibGU7CiAKIAl1bnNpZ25lZCBpbnQgZnNiX2ZyZXEsIG1lbV9mcmVxLCBpc19kZHIz
OwpAQCAtMTc2OCw2ICsxNzcwLDggQEAgbG9uZyBpOTE1X2NvbXBhdF9pb2N0bChzdHJ1Y3QgZmls
ZSAqZmlscCwgdW5zaWduZWQgaW50IGNtZCwgdW5zaWduZWQgbG9uZyBhcmcpOwogI2VuZGlmCiBl
eHRlcm4gY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgaTkxNV9wbV9vcHM7CiAKK2V4dGVybiBlbnVt
IGhydGltZXJfcmVzdGFydCBwcmVkaWN0aXZlX2xvYWRfY2Ioc3RydWN0IGhydGltZXIgKmhydGlt
ZXIpOworCiBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0
IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpOwogdm9pZCBpOTE1X2RyaXZlcl9yZW1vdmUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRl
eCA2MTM5NWIwLi5lZTcxMWNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTQ1LDYgKzQ1
LDcgQEAKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgogI2luY2x1ZGUgImdlbS9p
OTE1X2dlbV9pb2N0bHMuaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKKyNpbmNsdWRl
ICJndC9pbnRlbF9kZXUuaCIKICNpbmNsdWRlICJndC9pbnRlbF9jb250ZXh0LmgiCiAjaW5jbHVk
ZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgpAQCAt
MTQxNiw2ICsxNDE3LDkgQEAgdm9pZCBpOTE1X2dlbV9pbml0X2Vhcmx5KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAlpOTE1X2dlbV9pbml0X19tbShkZXZfcHJpdik7CiAKIAlz
cGluX2xvY2tfaW5pdCgmZGV2X3ByaXYtPmZiX3RyYWNraW5nLmxvY2spOworCisJLyogRHluYW1p
YyBFVSB0aW1lciBpbml0aWFsaXphdGlvbiBmb3IgcHJlZGljdGl2ZSBsb2FkICovCisJaW50ZWxf
ZGV1X2luaXQoZGV2X3ByaXYpOwogfQogCiB2b2lkIGk5MTVfZ2VtX2NsZWFudXBfZWFybHkoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1z
LmMKaW5kZXggMWRkMWYzNi4uYTVhM2E2ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wYXJhbXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5j
CkBAIC0xMDEsNiArMTAxLDEwIEBAIGk5MTVfcGFyYW1fbmFtZWRfdW5zYWZlKGRpc2FibGVfcG93
ZXJfd2VsbCwgaW50LCAwNDAwLAogCiBpOTE1X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFibGVfaXBz
LCBpbnQsIDA2MDAsICJFbmFibGUgSVBTIChkZWZhdWx0OiB0cnVlKSIpOwogCitpOTE1X3BhcmFt
X25hbWVkX3Vuc2FmZShkZXVfZW5hYmxlLCBpbnQsIDA2MDAsCisJIkVuYWJsZSBkeW5hbWljIEVV
IGNvbnRyb2wgZm9yIHBvd2VyIHNhdmluZ3MgIgorCSIoMD1kaXNhYmxlIGRldSBwcmVkaWN0aXZl
IHRpbWVyIFtkZWZhdWx0XSwgMTUwPW9wdGltYWwgZGV1IHByZWRpY3RpdmUgdGltZXIpIik7CisK
IGk5MTVfcGFyYW1fbmFtZWQoZmFzdGJvb3QsIGludCwgMDYwMCwKIAkiVHJ5IHRvIHNraXAgdW5u
ZWNlc3NhcnkgbW9kZSBzZXRzIGF0IGJvb3QgdGltZSAiCiAJIigwPWRpc2FibGVkLCAxPWVuYWJs
ZWQpICIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCmluZGV4IDMxYjg4ZjIuLmNmMDkwM2Ig
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaApAQCAtNTQsNiArNTQsNyBAQCBzdHJ1Y3Qg
ZHJtX3ByaW50ZXI7CiAJcGFyYW0oaW50LCBkaXNhYmxlX3Bvd2VyX3dlbGwsIC0xKSBcCiAJcGFy
YW0oaW50LCBlbmFibGVfaXBzLCAxKSBcCiAJcGFyYW0oaW50LCBpbnZlcnRfYnJpZ2h0bmVzcywg
MCkgXAorCXBhcmFtKGludCwgZGV1X2VuYWJsZSwgMCkgXAogCXBhcmFtKGludCwgZW5hYmxlX2d1
YywgMCkgXAogCXBhcmFtKGludCwgZ3VjX2xvZ19sZXZlbCwgLTEpIFwKIAlwYXJhbShjaGFyICos
IGd1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBcCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
