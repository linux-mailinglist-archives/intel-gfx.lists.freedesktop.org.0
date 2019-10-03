Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 910C5C9A44
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 10:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D0F6E0D3;
	Thu,  3 Oct 2019 08:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21AFC6E0D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 08:55:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 01:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="198470193"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Oct 2019 01:55:35 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 11:55:30 +0300
Message-Id: <20191003085531.30990-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Fix audio power up sequence
 for gen10+ display
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
Cc: Jani Nikula <jani.nikula@intel.com>, tiwai@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gcGxhdGZyb21zIHdpdGggZ2VuMTArIGRpc3BsYXksIGRyaXZlciBtdXN0IHNldCB0aGUgZW5h
YmxlIGJpdCBvZgpBVURJT19QSU5fQlVGX0NUTCByZWdpc3RlciBiZWZvcmUgdHJhbnNhY3Rpb25z
IHdpdGggdGhlIEhEQSBjb250cm9sbGVyCmNhbiBwcm9jZWVkLiBBZGQgc2V0dGluZyB0aGlzIGJp
dCB0byB0aGUgYXVkaW8gcG93ZXIgdXAgc2VxdWVuY2UuCgpGYWlsaW5nIHRvIGRvIHRoaXMgcmVz
dWx0ZWQgaW4gZXJyb3JzIGR1cmluZyBkaXNwbGF5IGF1ZGlvIGNvZGVjIHByb2JlLAphbmQgZmFp
bHVyZXMgZHVyaW5nIHJlc3VtZSBmcm9tIHN1c3BlbmQuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMjE0ClNpZ25lZC1vZmYtYnk6IEth
aSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXVkaW8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8u
YwppbmRleCA1NDYzOGQ5OWUwMjEuLmU5Mzc3NjcxMGFiYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYwpAQCAtODYyLDYgKzg2MiwxMSBAQCBzdGF0aWMgdW5z
aWduZWQgbG9uZyBpOTE1X2F1ZGlvX2NvbXBvbmVudF9nZXRfcG93ZXIoc3RydWN0IGRldmljZSAq
a2RldikKIAkJLyogRm9yY2UgQ0RDTEsgdG8gMipCQ0xLIGFzIGxvbmcgYXMgd2UgbmVlZCBhdWRp
byBwb3dlcmVkLiAqLwogCQlpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5J
TEFLRShkZXZfcHJpdikpCiAJCQlnbGtfZm9yY2VfYXVkaW9fY2RjbGsoZGV2X3ByaXYsIHRydWUp
OworCisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpKQorCQkJSTkxNV9XUklURShBVURfUElOX0JVRl9DVEwsCisJCQkJICAgKEk5MTVfUkVB
RChBVURfUElOX0JVRl9DVEwpIHwKKwkJCQkgICAgQVVEX1BJTl9CVUZfRU5BQkxFKSk7CiAJfQog
CiAJcmV0dXJuIHJldDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDA1OGFhNWNhOGI3My4u
MTgwMzdkNzgwM2FkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTkxMzMsNiArOTEzMyw4
IEBAIGVudW0gewogI2RlZmluZSAgIFNLTF9BVURfQ09ERUNfV0FLRV9TSUdOQUwJCSgxIDw8IDE1
KQogCiAjZGVmaW5lIEFVRF9GUkVRX0NOVFJMCQkJX01NSU8oMHg2NTkwMCkKKyNkZWZpbmUgQVVE
X1BJTl9CVUZfQ1RMCQlfTU1JTygweDQ4NDE0KQorI2RlZmluZSAgIEFVRF9QSU5fQlVGX0VOQUJM
RQkJUkVHX0JJVCgzMSkKIAogLyoKICAqIEhTVyAtIElDTCBwb3dlciB3ZWxscwotLSAKMi4xNy4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
