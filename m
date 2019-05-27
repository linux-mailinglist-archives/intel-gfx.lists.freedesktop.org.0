Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5982BA41
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 20:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5690589A1E;
	Mon, 27 May 2019 18:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16FA789A8B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 18:36:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 11:36:58 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 27 May 2019 11:36:57 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RIaJDN007368; Mon, 27 May 2019 19:36:56 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 18:36:12 +0000
Message-Id: <20190527183613.17076-17-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190527183613.17076-1-michal.wajdeczko@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 16/17] drm/i915/huc: Define HuC firmware
 version for Icelake
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

RGVmaW5lIEh1QyBmaXJtd2FyZSB2ZXJzaW9uIGZvciBJY2VsYWtlLgoKdjI6IDguNC4zMjM4IGlz
IG5vdyBhdmFpbGFibGUKClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53
YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNh
QGludGVsLmNvbT4KQ2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
VG9ueSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfaHVjX2Z3LmMgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWNfZncuYwppbmRleCA4YmFjNmEwNTFjMTgu
LjA1Y2JmODMzOGY1MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVj
X2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3LmMKQEAgLTM4LDYg
KzM4LDEwIEBACiAjZGVmaW5lIEdMS19IVUNfRldfTUlOT1IgMDEKICNkZWZpbmUgR0xLX0JMRF9O
VU0gMjg5MwogCisjZGVmaW5lIElDTF9IVUNfRldfTUFKT1IgOAorI2RlZmluZSBJQ0xfSFVDX0ZX
X01JTk9SIDQKKyNkZWZpbmUgSUNMX0JMRF9OVU0gMzIzOAorCiAjZGVmaW5lIEhVQ19GV19QQVRI
KHBsYXRmb3JtLCBtYWpvciwgbWlub3IsIGJsZF9udW0pIFwKIAkiaTkxNS8iIF9fc3RyaW5naWZ5
KHBsYXRmb3JtKSAiX2h1Y192ZXIiIF9fc3RyaW5naWZ5KG1ham9yKSAiXyIgXAogCV9fc3RyaW5n
aWZ5KG1pbm9yKSAiXyIgX19zdHJpbmdpZnkoYmxkX251bSkgIi5iaW4iCkBAIC01OCw2ICs2Miwx
MCBAQCBNT0RVTEVfRklSTVdBUkUoSTkxNV9LQkxfSFVDX1VDT0RFKTsKIAlHTEtfSFVDX0ZXX01J
Tk9SLCBHTEtfQkxEX05VTSkKIE1PRFVMRV9GSVJNV0FSRShJOTE1X0dMS19IVUNfVUNPREUpOwog
CisjZGVmaW5lIEk5MTVfSUNMX0hVQ19VQ09ERSBIVUNfRldfUEFUSChpY2wsIElDTF9IVUNfRldf
TUFKT1IsIFwKKwlJQ0xfSFVDX0ZXX01JTk9SLCBJQ0xfQkxEX05VTSkKK01PRFVMRV9GSVJNV0FS
RShJOTE1X0lDTF9IVUNfVUNPREUpOworCiBzdGF0aWMgdm9pZCBodWNfZndfc2VsZWN0KHN0cnVj
dCBpbnRlbF91Y19mdyAqaHVjX2Z3KQogewogCXN0cnVjdCBpbnRlbF9odWMgKmh1YyA9IGNvbnRh
aW5lcl9vZihodWNfZncsIHN0cnVjdCBpbnRlbF9odWMsIGZ3KTsKQEAgLTg4LDYgKzk2LDEwIEBA
IHN0YXRpYyB2b2lkIGh1Y19md19zZWxlY3Qoc3RydWN0IGludGVsX3VjX2Z3ICpodWNfZncpCiAJ
CWh1Y19mdy0+cGF0aCA9IEk5MTVfR0xLX0hVQ19VQ09ERTsKIAkJaHVjX2Z3LT5tYWpvcl92ZXJf
d2FudGVkID0gR0xLX0hVQ19GV19NQUpPUjsKIAkJaHVjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0g
R0xLX0hVQ19GV19NSU5PUjsKKwl9IGVsc2UgaWYgKElTX0lDRUxBS0UoZGV2X3ByaXYpKSB7CisJ
CWh1Y19mdy0+cGF0aCA9IEk5MTVfSUNMX0hVQ19VQ09ERTsKKwkJaHVjX2Z3LT5tYWpvcl92ZXJf
d2FudGVkID0gSUNMX0hVQ19GV19NQUpPUjsKKwkJaHVjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0g
SUNMX0hVQ19GV19NSU5PUjsKIAl9CiB9CiAKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
