Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AB43A232F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 06:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C186E45E;
	Thu, 10 Jun 2021 04:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B75446E453;
 Thu, 10 Jun 2021 04:19:00 +0000 (UTC)
IronPort-SDR: UajyqVrQTHUEQU2TcopsK9JqyU5SExlYEoDdvZSPTAkz7dUpHgwbnLBEZsH0JX4OYS36MbE1Cs
 fu87/gfZHC6g==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="203373007"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="203373007"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:19:00 -0700
IronPort-SDR: vAXuPCkFr/79l+khgCw40cO8HRtKA//0EBpfW5UyY29eNaDfo/avZsNZZaEcyi50S9dsc0VPlL
 cEfMgWQ2j6Mw==
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="485997256"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 21:19:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed,  9 Jun 2021 21:36:39 -0700
Message-Id: <20210610043649.144416-4-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210610043649.144416-1-matthew.brost@intel.com>
References: <20210610043649.144416-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/guc: Update CTB response status
 definition
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CgpGb3Jt
YXQgb2YgdGhlIFNUQVRVUyBkd29yZCBpbiBDVEIgcmVzcG9uc2UgbWVzc2FnZSBub3cgZm9sbG93
cwpkZWZpbml0aW9uIG9mIHRoZSBIWEcgaGVhZGVyLiBVcGRhdGUgb3VyIGNvZGUgYW5kIHJlbW92
ZSBhbnkKb2Jzb2xldGUgbGVnYWN5IGRlZmluaXRpb25zLgoKR3VDOiA1NS4wLjAKU2lnbmVkLW9m
Zi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpBY2tlZC1i
eTogUGlvdHIgUGnDs3Jrb3dza2kgPHBpb3RyLnBpb3Jrb3dza2lAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYyAgIHwg
MTQgKysrKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19m
d2lmLmggfCAxNyAtLS0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19jdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjX2N0LmMKaW5kZXggOGY3YjE0OGZlZjU4Li4zZjdmNDg2MTE0ODcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5jCkBAIC00NzcsNyArNDc3LDkgQEAgc3RhdGlj
IGludCB3YWl0X2Zvcl9jdF9yZXF1ZXN0X3VwZGF0ZShzdHJ1Y3QgY3RfcmVxdWVzdCAqcmVxLCB1
MzIgKnN0YXR1cykKIAkgKiB1cCB0byB0aGF0IGxlbmd0aCBvZiB0aW1lLCB0aGVuIHN3aXRjaCB0
byBhIHNsb3dlciBzbGVlcC13YWl0IGxvb3AuCiAJICogTm8gR3VDIGNvbW1hbmQgc2hvdWxkIGV2
ZXIgdGFrZSBsb25nZXIgdGhhbiAxMG1zLgogCSAqLwotI2RlZmluZSBkb25lIElOVEVMX0dVQ19N
U0dfSVNfUkVTUE9OU0UoUkVBRF9PTkNFKHJlcS0+c3RhdHVzKSkKKyNkZWZpbmUgZG9uZSBcCisJ
KEZJRUxEX0dFVChHVUNfSFhHX01TR18wX09SSUdJTiwgUkVBRF9PTkNFKHJlcS0+c3RhdHVzKSkg
PT0gXAorCSBHVUNfSFhHX09SSUdJTl9HVUMpCiAJZXJyID0gd2FpdF9mb3JfdXMoZG9uZSwgMTAp
OwogCWlmIChlcnIpCiAJCWVyciA9IHdhaXRfZm9yKGRvbmUsIDEwKTsKQEAgLTUzMiwyMSArNTM0
LDIxIEBAIHN0YXRpYyBpbnQgY3Rfc2VuZChzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKIAlpZiAo
dW5saWtlbHkoZXJyKSkKIAkJZ290byB1bmxpbms7CiAKLQlpZiAoIUlOVEVMX0dVQ19NU0dfSVNf
UkVTUE9OU0VfU1VDQ0VTUygqc3RhdHVzKSkgeworCWlmIChGSUVMRF9HRVQoR1VDX0hYR19NU0df
MF9UWVBFLCAqc3RhdHVzKSAhPSBHVUNfSFhHX1RZUEVfUkVTUE9OU0VfU1VDQ0VTUykgewogCQll
cnIgPSAtRUlPOwogCQlnb3RvIHVubGluazsKIAl9CiAKIAlpZiAocmVzcG9uc2VfYnVmKSB7CiAJ
CS8qIFRoZXJlIHNoYWxsIGJlIG5vIGRhdGEgaW4gdGhlIHN0YXR1cyAqLwotCQlXQVJOX09OKElO
VEVMX0dVQ19NU0dfVE9fREFUQShyZXF1ZXN0LnN0YXR1cykpOworCQlXQVJOX09OKEZJRUxEX0dF
VChHVUNfSFhHX1JFU1BPTlNFX01TR18wX0RBVEEwLCByZXF1ZXN0LnN0YXR1cykpOwogCQkvKiBS
ZXR1cm4gYWN0dWFsIHJlc3BvbnNlIGxlbiAqLwogCQllcnIgPSByZXF1ZXN0LnJlc3BvbnNlX2xl
bjsKIAl9IGVsc2UgewogCQkvKiBUaGVyZSBzaGFsbCBiZSBubyByZXNwb25zZSBwYXlsb2FkICov
CiAJCVdBUk5fT04ocmVxdWVzdC5yZXNwb25zZV9sZW4pOwogCQkvKiBSZXR1cm4gZGF0YSBkZWNv
ZGVkIGZyb20gdGhlIHN0YXR1cyBkd29yZCAqLwotCQllcnIgPSBJTlRFTF9HVUNfTVNHX1RPX0RB
VEEoKnN0YXR1cyk7CisJCWVyciA9IEZJRUxEX0dFVChHVUNfSFhHX1JFU1BPTlNFX01TR18wX0RB
VEEwLCAqc3RhdHVzKTsKIAl9CiAKIHVubGluazoKQEAgLTc0MSw4ICs3NDMsOCBAQCBzdGF0aWMg
aW50IGN0X2hhbmRsZV9yZXNwb25zZShzdHJ1Y3QgaW50ZWxfZ3VjX2N0ICpjdCwgc3RydWN0IGN0
X2luY29taW5nX21zZyAqcgogCXN0YXR1cyA9IHJlc3BvbnNlLT5tc2dbMl07CiAJZGF0YWxlbiA9
IGxlbiAtIDI7CiAKLQkvKiBGb3JtYXQgb2YgdGhlIHN0YXR1cyBmb2xsb3dzIFJFU1BPTlNFIG1l
c3NhZ2UgKi8KLQlpZiAodW5saWtlbHkoIUlOVEVMX0dVQ19NU0dfSVNfUkVTUE9OU0Uoc3RhdHVz
KSkpIHsKKwkvKiBGb3JtYXQgb2YgdGhlIHN0YXR1cyBkd29yZCBmb2xsb3dzIEhYRyBoZWFkZXIg
Ki8KKwlpZiAodW5saWtlbHkoRklFTERfR0VUKEdVQ19IWEdfTVNHXzBfT1JJR0lOLCBzdGF0dXMp
ICE9IEdVQ19IWEdfT1JJR0lOX0dVQykpIHsKIAkJQ1RfRVJST1IoY3QsICJDb3JydXB0ZWQgcmVz
cG9uc2UgKHN0YXR1cyAlI3gpXG4iLCBzdGF0dXMpOwogCQlyZXR1cm4gLUVQUk9UTzsKIAl9CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaAppbmRleCBlOWE5ZDg1
ZTJhYTMuLmZiMDRlMjIxMWI3OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjX2Z3aWYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9ndWNfZndpZi5oCkBAIC00MTQsMjMgKzQxNCw2IEBAIHN0cnVjdCBndWNfc2hhcmVkX2N0eF9k
YXRhIHsKIAlzdHJ1Y3QgZ3VjX2N0eF9yZXBvcnQgcHJlZW1wdF9jdHhfcmVwb3J0W0dVQ19NQVhf
RU5HSU5FU19OVU1dOwogfSBfX3BhY2tlZDsKIAotI2RlZmluZSBfX0lOVEVMX0dVQ19NU0dfR0VU
KFQsIG0pIFwKLQkoKChtKSAmIElOVEVMX0dVQ19NU0dfICMjIFQgIyMgX01BU0spID4+IElOVEVM
X0dVQ19NU0dfICMjIFQgIyMgX1NISUZUKQotI2RlZmluZSBJTlRFTF9HVUNfTVNHX1RPX1RZUEUo
bSkJX19JTlRFTF9HVUNfTVNHX0dFVChUWVBFLCBtKQotI2RlZmluZSBJTlRFTF9HVUNfTVNHX1RP
X0RBVEEobSkJX19JTlRFTF9HVUNfTVNHX0dFVChEQVRBLCBtKQotI2RlZmluZSBJTlRFTF9HVUNf
TVNHX1RPX0NPREUobSkJX19JTlRFTF9HVUNfTVNHX0dFVChDT0RFLCBtKQotCi0jZGVmaW5lIF9f
SU5URUxfR1VDX01TR19UWVBFX0lTKFQsIG0pIFwKLQkoSU5URUxfR1VDX01TR19UT19UWVBFKG0p
ID09IElOVEVMX0dVQ19NU0dfVFlQRV8gIyMgVCkKLSNkZWZpbmUgSU5URUxfR1VDX01TR19JU19S
RVFVRVNUKG0pCV9fSU5URUxfR1VDX01TR19UWVBFX0lTKFJFUVVFU1QsIG0pCi0jZGVmaW5lIElO
VEVMX0dVQ19NU0dfSVNfUkVTUE9OU0UobSkJX19JTlRFTF9HVUNfTVNHX1RZUEVfSVMoUkVTUE9O
U0UsIG0pCi0KLSNkZWZpbmUgSU5URUxfR1VDX01TR19JU19SRVNQT05TRV9TVUNDRVNTKG0pIFwK
LQkgKHR5cGVjaGVjayh1MzIsIChtKSkgJiYgXAotCSAgKChtKSAmIChJTlRFTF9HVUNfTVNHX1RZ
UEVfTUFTSyB8IElOVEVMX0dVQ19NU0dfQ09ERV9NQVNLKSkgPT0gXAotCSAgKChJTlRFTF9HVUNf
TVNHX1RZUEVfUkVTUE9OU0UgPDwgSU5URUxfR1VDX01TR19UWVBFX1NISUZUKSB8IFwKLQkgICAo
SU5URUxfR1VDX1JFU1BPTlNFX1NUQVRVU19TVUNDRVNTIDw8IElOVEVMX0dVQ19NU0dfQ09ERV9T
SElGVCkpKQotCiAvKiBUaGlzIGFjdGlvbiB3aWxsIGJlIHByb2dyYW1tZWQgaW4gQzFCQyAtIFNP
RlRfU0NSQVRDSF8xNV9SRUcgKi8KIGVudW0gaW50ZWxfZ3VjX3JlY3ZfbWVzc2FnZSB7CiAJSU5U
RUxfR1VDX1JFQ1ZfTVNHX0NSQVNIX0RVTVBfUE9TVEVEID0gQklUKDEpLAotLSAKMi4yOC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
