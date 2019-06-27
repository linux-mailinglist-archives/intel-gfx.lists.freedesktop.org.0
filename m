Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 523E858DB2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 00:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FF06E82E;
	Thu, 27 Jun 2019 22:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD5C6E82E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 22:11:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 15:11:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="313945720"
Received: from aswarup-desk.jf.intel.com ([10.54.75.32])
 by orsmga004.jf.intel.com with ESMTP; 27 Jun 2019 15:11:28 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 15:07:07 -0700
Message-Id: <20190627220708.31700-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: Use port clock to set correct
 N value
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIHBvcnRfY2xvY2sgdG8gY2hlY2sgdGhlIGNsb2NrIHZhbHVlcyBpbiBuL2N0cyBsb29rdXAg
dGFibGUgaW5zdGVhZApvZiBjcnRjX2Nsb2NrLiBBcyBwb3J0X2Nsb2NrIGlzIGFscmVhZHkgYWRq
dXN0ZWQgYmFzZWQgb24gY29sb3IgbW9kZSBzZXQKKDggYml0IG9yIGRlZXAgY29sb3IpLCB0aGlz
IHdpbGwgaGVscCBpbiBjaGVja2luZyBjbG9jayB2YWx1ZXMgZm9yIGRlZXAKY29sb3IgbW9kZXMg
ZnJvbSBuL2N0cyBsb29rdXAgdGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxh
ZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KQ2M6IENsaW50IFRheWxvciA8Q2xpbnRvbi5BLlRheWxv
ckBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgfCA0ICstLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKaW5kZXggODQwZGFmZjEyMjQ2Li4xNTZkNTI0YzI5
ZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKQEAgLTIx
MiwxMyArMjEyLDExIEBAIHN0YXRpYyB1MzIgYXVkaW9fY29uZmlnX2hkbWlfcGl4ZWxfY2xvY2so
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhCiBzdGF0aWMgaW50IGF1ZGlv
X2NvbmZpZ19oZG1pX2dldF9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAogCQkJCSAgIGludCByYXRlKQogewotCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
ICphZGp1c3RlZF9tb2RlID0KLQkJJmNydGNfc3RhdGUtPmJhc2UuYWRqdXN0ZWRfbW9kZTsKIAlp
bnQgaTsKIAogCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGhkbWlfYXVkX25jdHMpOyBpKysp
IHsKIAkJaWYgKHJhdGUgPT0gaGRtaV9hdWRfbmN0c1tpXS5zYW1wbGVfcmF0ZSAmJgotCQkgICAg
YWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jayA9PSBoZG1pX2F1ZF9uY3RzW2ldLmNsb2NrKSB7CisJ
CSAgICBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID09IGhkbWlfYXVkX25jdHNbaV0uY2xvY2spIHsK
IAkJCXJldHVybiBoZG1pX2F1ZF9uY3RzW2ldLm47CiAJCX0KIAl9Ci0tIAoyLjE3LjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
