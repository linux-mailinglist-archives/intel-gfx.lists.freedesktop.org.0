Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9412EF361
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 14:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E366689CD9;
	Fri,  8 Jan 2021 13:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A15A89CD9
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 13:47:12 +0000 (UTC)
IronPort-SDR: JTvC9F9v5aQR4NyQlu2mKnSgEMSHw/m76L6GhMqZn7lnj4oxr0AKm3KrEZEaJ75rALK05LV2wo
 Gxt/Hoewt19w==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="157374384"
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="157374384"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 05:47:11 -0800
IronPort-SDR: GI2AvtqR3niBnTulN0Jt3GOX67+nvrayt4k/5HG5m5kDSlG+jP+sK4D6f6bnW/OHEdg3zHzcf7
 Q8JkvtU1n9eg==
X-IronPort-AV: E=Sophos;i="5.79,331,1602572400"; d="scan'208";a="351683568"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 05:47:10 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 05:48:02 -0800
Message-Id: <20210108134802.21280-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix HTI port checking
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

VGhlcmUgd2FzIHNvbWUgbWlzaW50ZXJwcmV0YXRpb24gb2Ygc3BlY2lmaWNhdGlvbiwgd2hlbiBE
RElYX1VTRUQgaXMKc2V0LCB0aGUgbmV4dCBiaXQgbWVhbnMgMCBmb3IgRFAgYW5kIDEgZm9yIEhE
TUkuCgpBbnl3YXlzIHRoaXMgbWlzaW50ZXJwcmV0YXRpb24gaXMgbm90IGNhdXNpbmcgYW55IGlz
c3VlcywgdGhpcyBjaGFuZ2UKaXMganVzdCB0byBjb21wbHkgd2l0aCBzcGVjaWZpY2F0aW9uLgpB
bHNvIGFzIGZvciB1cyBpdCBkbyBub3QgbWF0dGVycyBpZiBpdCBpcyBIRE1JIG9yIERQLCBub3Qg
Y2hlY2tpbmcgdGhlCnBvcnQgdHlwZSB0aGF0IEhUSSBpcyB1c2luZy4KCkNjOiBBbnVzaGEgU3Jp
dmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3
LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHwgMyArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
ICAgICAgfCAzICstLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggM2Rm
NjkxMzM2OWJjLi5lOTBkMWFmMWE1NGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwpAQCAtNTMyMSw4ICs1MzIxLDcgQEAgaW50ZWxfZGRpX21heF9sYW5lcyhzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIHN0YXRpYyBib29sIGh0aV91c2VzX3Bo
eShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgZW51bSBwaHkgcGh5KQogewogCXJldHVy
biBpOTE1LT5odGlfc3RhdGUgJiBIRFBPUlRfRU5BQkxFRCAmJgotCQkoaTkxNS0+aHRpX3N0YXRl
ICYgSERQT1JUX1BIWV9VU0VEX0RQKHBoeSkgfHwKLQkJIGk5MTUtPmh0aV9zdGF0ZSAmIEhEUE9S
VF9QSFlfVVNFRF9IRE1JKHBoeSkpOworCSAgICAgICBpOTE1LT5odGlfc3RhdGUgJiBIRFBPUlRf
RERJX1VTRUQocGh5KTsKIH0KIAogc3RhdGljIGVudW0gaHBkX3BpbiBkZzFfaHBkX3BpbihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRl
eCAwMDIzYzAyM2Y0NzIuLjFkOGJhMTA4NDdjYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBA
IC0yOTI4LDggKzI5MjgsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxp
ZChpOTE1X3JlZ190IHJlZykKIAogI2RlZmluZSBIRFBPUlRfU1RBVEUJCQlfTU1JTygweDQ1MDUw
KQogI2RlZmluZSAgIEhEUE9SVF9EUExMX1VTRURfTUFTSwkJUkVHX0dFTk1BU0soMTQsIDEyKQot
I2RlZmluZSAgIEhEUE9SVF9QSFlfVVNFRF9EUChwaHkpCVJFR19CSVQoMiAqIChwaHkpICsgMikK
LSNkZWZpbmUgICBIRFBPUlRfUEhZX1VTRURfSERNSShwaHkpCVJFR19CSVQoMiAqIChwaHkpICsg
MSkKKyNkZWZpbmUgICBIRFBPUlRfRERJX1VTRUQocGh5KQkJUkVHX0JJVCgyICogKHBoeSkgKyAx
KQogI2RlZmluZSAgIEhEUE9SVF9FTkFCTEVECQlSRUdfQklUKDApCiAKIC8qIE1ha2UgcmVuZGVy
L3RleHR1cmUgVExCIGZldGNoZXMgbG93ZXIgcHJpb3J0eSB0aGFuIGFzc29jaWF0ZWQgZGF0YQot
LSAKMi4zMC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
