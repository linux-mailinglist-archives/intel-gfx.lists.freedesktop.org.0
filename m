Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B88013760C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A14C6EA7C;
	Fri, 10 Jan 2020 18:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F81F6EA7C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:32:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 10:32:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="272489166"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 10 Jan 2020 10:32:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jan 2020 20:32:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 20:32:24 +0200
Message-Id: <20200110183228.8199-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Clear old hw.fb & co. from slave
 plane's state
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIGRvIHRoZSBpbnRlbF9wbGFuZV9jb3B5X3VhcGlfdG9faHdfc3RhdGUoKSBiZWZvcmUgd2Ug
YmFpbCBvdXQKZHVlIHRvIGJvdGggb2xkIGFuZCBuZXcgdWFwaS5jcnRjIGJlaW5nIE5VTEwuIFRo
aXMgd2lsbCBkcm9wIHRoZQpyZWZlcmVuY2UgdG8gdGhlIG9sZCBody5mYiBmb3IgcGxhbmVzIHRo
YXQgYXJlIHRyYW5zaXRpb25pbmcgZnJvbQpiZWluZyBhIHNsYXZlIHBsYW5lIHRvIHNpbXBseSBi
ZWluZyBkaXNhYmxlZC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuYyB8IDYgKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKaW5kZXggM2U5N2FmNjgyYjFiLi43YzY5YjA1MzAw
NWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
X3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNf
cGxhbmUuYwpAQCAtMjI1LDEyICsyMjUsOSBAQCBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNr
X3dpdGhfc3RhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjXwogCQkJ
CQlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSkKIHsKIAlzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUobmV3X3BsYW5lX3N0YXRlLT51YXBp
LnBsYW5lKTsKLQljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYjsKKwljb25zdCBzdHJ1
Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IG5ld19wbGFuZV9zdGF0ZS0+aHcuZmI7CiAJaW50IHJl
dDsKIAotCWludGVsX3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZShuZXdfcGxhbmVfc3RhdGUs
IG5ld19wbGFuZV9zdGF0ZSk7Ci0JZmIgPSBuZXdfcGxhbmVfc3RhdGUtPmh3LmZiOwotCiAJbmV3
X2NydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgJj0gfkJJVChwbGFuZS0+aWQpOwogCW5ld19jcnRj
X3N0YXRlLT5udjEyX3BsYW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7CiAJbmV3X2NydGNfc3RhdGUt
PmM4X3BsYW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7CkBAIC0yOTIsNiArMjg5LDcgQEAgaW50IGlu
dGVsX3BsYW5lX2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
IAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7CiAJc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOwogCisJaW50ZWxfcGxhbmVfY29weV91
YXBpX3RvX2h3X3N0YXRlKG5ld19wbGFuZV9zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKIAluZXdf
cGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSA9IGZhbHNlOwogCWlmICghY3J0YykKIAkJcmV0dXJu
IDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IGZhZmI2NzY4OWRlZS4uMGExZjI1NjRkZWEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTYwMzgsNiArMTYwMzgsOCBAQCBpbnRlbF9sZWdh
Y3lfY3Vyc29yX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJbmV3X3BsYW5lX3N0
YXRlLT51YXBpLmNydGNfdyA9IGNydGNfdzsKIAluZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0Y19o
ID0gY3J0Y19oOwogCisJaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKG5ld19wbGFu
ZV9zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKKwogCXJldCA9IGludGVsX3BsYW5lX2F0b21pY19j
aGVja193aXRoX3N0YXRlKGNydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLAogCQkJCQkJICBvbGRf
cGxhbmVfc3RhdGUsIG5ld19wbGFuZV9zdGF0ZSk7CiAJaWYgKHJldCkKLS0gCjIuMjQuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
