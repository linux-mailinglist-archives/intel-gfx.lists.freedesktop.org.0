Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 635CA162A65
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 17:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFBF16EA42;
	Tue, 18 Feb 2020 16:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8A06EA42
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 16:25:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 08:25:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="228326349"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga007.fm.intel.com with ESMTP; 18 Feb 2020 08:25:48 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 18:22:30 +0200
Message-Id: <20200218162232.14368-6-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200218162232.14368-1-stanislav.lisovskiy@intel.com>
References: <20200218162232.14368-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v16 5/7] drm/i915: Added required new PCode
 commands
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

V2UgbmVlZCBhIG5ldyBQQ29kZSByZXF1ZXN0IGNvbW1hbmRzIGFuZCByZXBseSBjb2Rlcwp0byBi
ZSBhZGRlZCBhcyBhIHByZXBhcnRpb24gcGF0Y2ggZm9yIFFHViBwb2ludHMKcmVzdHJpY3Rpbmcg
Zm9yIG5ldyBTQUdWIHN1cHBvcnQuCgp2MjogLSBFeHRyYWN0ZWQgdGhvc2UgY2hhbmdlcyBpbnRv
IHNlcGFyYXRlIHBhdGNoCiAgICAgIChWaWxsZSBTeXJqw6Rsw6QpCgpTaWduZWQtb2ZmLWJ5OiBT
dGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgIHwgNCArKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBiMDljMWQ2ZGMwYWEuLmIz
OTI0ZTlkMjViYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC04OTk3LDYgKzg5OTcsNyBA
QCBlbnVtIHsKICNkZWZpbmUgICAgIEdFTjdfUENPREVfSUxMRUdBTF9EQVRBCQkweDMKICNkZWZp
bmUgICAgIEdFTjExX1BDT0RFX0lMTEVHQUxfU1VCQ09NTUFORAkweDQKICNkZWZpbmUgICAgIEdF
TjExX1BDT0RFX0xPQ0tFRAkJCTB4NgorI2RlZmluZSAgICAgR0VOMTFfUENPREVfUkVKRUNURUQJ
CTB4MTEKICNkZWZpbmUgICAgIEdFTjdfUENPREVfTUlOX0ZSRVFfVEFCTEVfR1RfUkFUSU9fT1VU
X09GX1JBTkdFIDB4MTAKICNkZWZpbmUgICBHRU42X1BDT0RFX1dSSVRFX1JDNlZJRFMJCTB4NAog
I2RlZmluZSAgIEdFTjZfUENPREVfUkVBRF9SQzZWSURTCQkweDUKQEAgLTkwMTgsNiArOTAxOSw3
IEBAIGVudW0gewogI2RlZmluZSAgIElDTF9QQ09ERV9NRU1fU1VCU1lTWVNURU1fSU5GTwkweGQK
ICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVBRF9HTE9CQUxfSU5GTwkoMHgwIDw8IDgp
CiAjZGVmaW5lICAgICBJQ0xfUENPREVfTUVNX1NTX1JFQURfUUdWX1BPSU5UX0lORk8ocG9pbnQp
CSgoKHBvaW50KSA8PCAxNikgfCAoMHgxIDw8IDgpKQorI2RlZmluZSAgIElDTF9QQ09ERV9TQUdW
X0RFX01FTV9TU19DT05GSUcJMHhlCiAjZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX0RfQ09NUAkJ
MHgxMAogI2RlZmluZSAgIEdFTjZfUENPREVfV1JJVEVfRF9DT01QCQkweDExCiAjZGVmaW5lICAg
SFNXX1BDT0RFX0RFX1dSSVRFX0ZSRVFfUkVRCQkweDE3CkBAIC05MDMwLDYgKzkwMzIsOCBAQCBl
bnVtIHsKICNkZWZpbmUgICAgIEdFTjlfU0FHVl9JU19ESVNBQkxFRAkJMHgxCiAjZGVmaW5lICAg
ICBHRU45X1NBR1ZfRU5BQkxFCQkJMHgzCiAjZGVmaW5lIEdFTjEyX1BDT0RFX1JFQURfU0FHVl9C
TE9DS19USU1FX1VTCTB4MjMKKyNkZWZpbmUgR0VOMTFfUENPREVfUE9JTlRTX1JFU1RSSUNURUQJ
CTB4MAorI2RlZmluZSBHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJQ1RFRF9NQVNLCTB4MQogI2Rl
ZmluZSBHRU42X1BDT0RFX0RBVEEJCQkJX01NSU8oMHgxMzgxMjgpCiAjZGVmaW5lICAgR0VONl9Q
Q09ERV9GUkVRX0lBX1JBVElPX1NISUZUCTgKICNkZWZpbmUgICBHRU42X1BDT0RFX0ZSRVFfUklO
R19SQVRJT19TSElGVAkxNgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
c2lkZWJhbmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMKaW5kZXgg
MTQ0N2U3NTE2Y2I3Li4xZTdkZDZiNmYxMDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3NpZGViYW5kLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lk
ZWJhbmQuYwpAQCAtMzcwLDYgKzM3MCw4IEBAIHN0YXRpYyBpbmxpbmUgaW50IGdlbjdfY2hlY2tf
bWFpbGJveF9zdGF0dXModTMyIG1ib3gpCiAJCXJldHVybiAtRU5YSU87CiAJY2FzZSBHRU4xMV9Q
Q09ERV9MT0NLRUQ6CiAJCXJldHVybiAtRUJVU1k7CisJY2FzZSBHRU4xMV9QQ09ERV9SRUpFQ1RF
RDoKKwkJcmV0dXJuIC1FQUNDRVM7CiAJY2FzZSBHRU43X1BDT0RFX01JTl9GUkVRX1RBQkxFX0dU
X1JBVElPX09VVF9PRl9SQU5HRToKIAkJcmV0dXJuIC1FT1ZFUkZMT1c7CiAJZGVmYXVsdDoKLS0g
CjIuMjQuMS40ODUuZ2FkMDVhM2Q4ZTUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
