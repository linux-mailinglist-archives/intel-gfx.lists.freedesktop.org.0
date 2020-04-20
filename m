Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ED41B0730
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 13:17:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE2D6E50D;
	Mon, 20 Apr 2020 11:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F686E50D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 11:17:45 +0000 (UTC)
IronPort-SDR: x+GQjPp4O8HDtdN2imJ8NfBKS/E2w0Hk4Nd0CM24cC3G+XvAnbWwGolT0aOX9uU2B4MIV9AfOR
 HamWEn8xnU3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 04:17:45 -0700
IronPort-SDR: 6EGKROWWwihiolTBTr2rc4OyYHLu8+hDrQ6qan3w/nCOO5CgK23xwNkhy2hDLkERJl1FIo9Cc6
 4gseiyxs+2jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="290053369"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2020 04:17:43 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 14:14:13 +0300
Message-Id: <20200420111416.23550-6-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200420111416.23550-1-stanislav.lisovskiy@intel.com>
References: <20200420111416.23550-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v25 5/8] drm/i915: Added required new PCode
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbmVlZCBhIG5ldyBQQ29kZSByZXF1ZXN0IGNvbW1hbmRzIGFuZCByZXBseSBjb2Rlcwp0byBi
ZSBhZGRlZCBhcyBhIHByZXBhcnRpb24gcGF0Y2ggZm9yIFFHViBwb2ludHMKcmVzdHJpY3Rpbmcg
Zm9yIG5ldyBTQUdWIHN1cHBvcnQuCgp2MjogLSBFeHRyYWN0ZWQgdGhvc2UgY2hhbmdlcyBpbnRv
IHNlcGFyYXRlIHBhdGNoCiAgICAgIChWaWxsZSBTeXJqw6Rsw6QpCgp2MzogLSBNb3ZlZCBuZXcg
UENvZGUgbWFza3MgdG8gYW5vdGhlciBwbGFjZSBmcm9tCiAgICAgIFBDb2RlIGNvbW1hbmRzKFZp
bGxlKQoKU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAg
ICB8IDUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMgfCAyICsr
CiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CmluZGV4IDY5MzMyYmU1YWM0MS4uOTVkZTUzMjdhY2YxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKQEAgLTkwODUsNiArOTA4NSw3IEBAIGVudW0gewogI2RlZmluZSAgICAgR0VON19QQ09ERV9J
TExFR0FMX0RBVEEJCTB4MwogI2RlZmluZSAgICAgR0VOMTFfUENPREVfSUxMRUdBTF9TVUJDT01N
QU5ECTB4NAogI2RlZmluZSAgICAgR0VOMTFfUENPREVfTE9DS0VECQkJMHg2CisjZGVmaW5lICAg
ICBHRU4xMV9QQ09ERV9SRUpFQ1RFRAkJMHgxMQogI2RlZmluZSAgICAgR0VON19QQ09ERV9NSU5f
RlJFUV9UQUJMRV9HVF9SQVRJT19PVVRfT0ZfUkFOR0UgMHgxMAogI2RlZmluZSAgIEdFTjZfUENP
REVfV1JJVEVfUkM2VklEUwkJMHg0CiAjZGVmaW5lICAgR0VONl9QQ09ERV9SRUFEX1JDNlZJRFMJ
CTB4NQpAQCAtOTEwNiw2ICs5MTA3LDcgQEAgZW51bSB7CiAjZGVmaW5lICAgSUNMX1BDT0RFX01F
TV9TVUJTWVNZU1RFTV9JTkZPCTB4ZAogI2RlZmluZSAgICAgSUNMX1BDT0RFX01FTV9TU19SRUFE
X0dMT0JBTF9JTkZPCSgweDAgPDwgOCkKICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVB
RF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkJKCgocG9pbnQpIDw8IDE2KSB8ICgweDEgPDwgOCkpCisj
ZGVmaW5lICAgSUNMX1BDT0RFX1NBR1ZfREVfTUVNX1NTX0NPTkZJRwkweGUKICNkZWZpbmUgICBH
RU42X1BDT0RFX1JFQURfRF9DT01QCQkweDEwCiAjZGVmaW5lICAgR0VONl9QQ09ERV9XUklURV9E
X0NPTVAJCTB4MTEKICNkZWZpbmUgICBJQ0xfUENPREVfRVhJVF9UQ0NPTEQJCQkweDEyCkBAIC05
MTM5LDYgKzkxNDEsOSBAQCBlbnVtIHsKICNkZWZpbmUgR0VOOF9HVF9TTElDRV9JTkZPCQlfTU1J
TygweDEzODA2NCkKICNkZWZpbmUgICBHRU44X0xTTElDRVNUQVRfTUFTSwkJMHg3CiAKKyNkZWZp
bmUgR0VOMTFfUENPREVfUE9JTlRTX1JFU1RSSUNURUQJCTB4MAorI2RlZmluZSBHRU4xMV9QQ09E
RV9QT0lOVFNfUkVTVFJJQ1RFRF9NQVNLCTB4MQorCiAjZGVmaW5lIENIVl9QT1dFUl9TUzBfU0lH
MQkJX01NSU8oMHhhNzIwKQogI2RlZmluZSBDSFZfUE9XRVJfU1MxX1NJRzEJCV9NTUlPKDB4YTcy
OCkKICNkZWZpbmUgICBDSFZfU1NfUEdfRU5BQkxFCQkoMSA8PCAxKQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3NpZGViYW5kLmMKaW5kZXggM2YxM2JhYWVmMDU4Li5iMDFmMTUwMTdhZTQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYwpAQCAtMzcxLDYgKzM3MSw4IEBAIHN0YXRp
YyBpbmxpbmUgaW50IGdlbjdfY2hlY2tfbWFpbGJveF9zdGF0dXModTMyIG1ib3gpCiAJCXJldHVy
biAtRU5YSU87CiAJY2FzZSBHRU4xMV9QQ09ERV9MT0NLRUQ6CiAJCXJldHVybiAtRUJVU1k7CisJ
Y2FzZSBHRU4xMV9QQ09ERV9SRUpFQ1RFRDoKKwkJcmV0dXJuIC1FQUNDRVM7CiAJY2FzZSBHRU43
X1BDT0RFX01JTl9GUkVRX1RBQkxFX0dUX1JBVElPX09VVF9PRl9SQU5HRToKIAkJcmV0dXJuIC1F
T1ZFUkZMT1c7CiAJZGVmYXVsdDoKLS0gCjIuMjQuMS40ODUuZ2FkMDVhM2Q4ZTUKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
