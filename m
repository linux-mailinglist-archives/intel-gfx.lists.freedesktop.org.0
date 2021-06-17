Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BFE3ABDD3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019CF6E952;
	Thu, 17 Jun 2021 21:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B4976E9B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 21:12:27 +0000 (UTC)
IronPort-SDR: mWA3kQ7m70T67ea6jleHGDuhC2HWj8aFG0r+Y4Zhs6yy3JdEywOQrn8b1p2KOw0PK48c370a/M
 P9qCkV3B7Xzg==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="292081541"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="292081541"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 14:12:27 -0700
IronPort-SDR: SyZbPEo62SE9JIyxiYLST4cqfe1hds/dnj0KjAHntwWPKZkdapeu2odBMFxEcMTTRc8+MVbHcr
 S/h4mqH9rLpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="622168079"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005.jf.intel.com with ESMTP; 17 Jun 2021 14:12:25 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Jun 2021 14:12:21 -0700
Message-Id: <20210617211225.13549-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210617211225.13549-1-anusha.srivatsa@intel.com>
References: <20210617211225.13549-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/display: Limit disabling PSR
 around cdclk changes to ADL-P
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

RnJvbTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgoKT25seSBB
REwtUCBwbGF0Zm9ybSByZXF1aXJlcyBhIHRlbXBvcmFsIGRpc2FibGluZyBvZiBQU1IgZm9yIGNo
YW5naW5nIHRoZQpDRENMSyBQTEwgZnJlcXVlbmN5IHdpdGggY3Jhd2xpbmcuIENoYW5naW5nIHRo
ZSBDRENMSyBQTEwgZnJlcXVlbmN5IG9uCnByaW9yIHBsYXRmb3JtcyBvZiBBREwtUCBvciBjaGFu
Z2luZyB0aGUgQ0RDTEsgUExMIGZyZXF1ZW5jeSB3aXRob3V0CmNyYXdsaW5nIG9uIEFETC1QIGRv
bid0IG5lZWQgdG8gZGlzYWJsZSBvZiBQU1IuCgpCc3BlYzogNDkyMDcKCkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWlrYSBLYWhvbGEgPG1p
a2Eua2Fob2xhQGludGVsLmNvbT4KQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5s
aXNvdnNraXlAaW50ZWwuY29tPgpDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FA
aW50ZWwuY29tPgpGaXhlczogMTdjMWE0YjdhYzZmICgiZHJtL2k5MTU6IERpc2FibGUgUFNSIGFy
b3VuZCBjZGNsayBjaGFuZ2UiKQpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4t
Z3llb25nLm11bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIHwgMjIgKysrKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDE2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jCmluZGV4IDYxM2ZmY2M2OGViYS4uNmRhNDI2ZDI2YWFjIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0xOTYyLDEw
ICsxOTYyLDE4IEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlpbnRlbF9kdW1wX2NkY2xrX2NvbmZpZyhjZGNsa19jb25m
aWcsICJDaGFuZ2luZyBDRENMSyB0byIpOwogCi0JZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRo
X3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2RlcikgewotCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOworCS8qCisJICogT25seSBBREwtUCBwbGF0
Zm9ybSByZXF1aXJlcyBhIHRlbXBvcmFsIGRpc2FibGluZyBvZiBQU1IgZm9yIGNoYW5naW5nCisJ
ICogdGhlIENEQ0xLIFBMTCBmcmVxdWVuY3kgd2l0aCBjcmF3bGluZy4KKwkgKiBDaGFuZ2luZyB0
aGUgQ0RDTEsgUExMIGZyZXF1ZW5jeSBvbiBwcmlvciBwbGF0Zm9ybXMgb2YgQURMLVAgb3IgY2hh
bmdpbmcKKwkgKiB0aGUgQ0RDTEsgUExMIGZyZXF1ZW5jeSB3aXRob3V0IGNyYXdsaW5nIG9uIEFE
TC1QIGRvbid0IG5lZWQgdG8gZGlzYWJsZSBvZiBQU1IuCisJICovCisJaWYgKElTX0FMREVSTEFL
RV9QKGRldl9wcml2KSkgeworCQlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZf
cHJpdi0+ZHJtLCBlbmNvZGVyKSB7CisJCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5j
X3RvX2ludGVsX2RwKGVuY29kZXIpOwogCi0JCWludGVsX3Bzcl9wYXVzZShpbnRlbF9kcCk7CisJ
CQlpbnRlbF9wc3JfcGF1c2UoaW50ZWxfZHApOworCQl9CiAJfQogCiAJLyoKQEAgLTE5OTAsMTAg
KzE5OTgsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKIAl9CiAJbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+Z21idXNfbXV0
ZXgpOwogCi0JZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwg
ZW5jb2RlcikgewotCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2Rw
KGVuY29kZXIpOworCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpIHsKKwkJZm9yX2VhY2hf
aW50ZWxfZW5jb2Rlcl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2RlcikgeworCQkJc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsKIAotCQlp
bnRlbF9wc3JfcmVzdW1lKGludGVsX2RwKTsKKwkJCWludGVsX3Bzcl9yZXN1bWUoaW50ZWxfZHAp
OworCQl9CiAJfQogCiAJaWYgKGRybV9XQVJOKCZkZXZfcHJpdi0+ZHJtLAotLSAKMi4zMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
