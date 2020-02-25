Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9106A16EC2C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E09706E8ED;
	Tue, 25 Feb 2020 17:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84E516E8ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:11:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:11:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="231516904"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 25 Feb 2020 09:11:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Feb 2020 19:11:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 19:11:07 +0200
Message-Id: <20200225171125.28885-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/20] drm/i915: Remove garbage WARNs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZXNlIHRoaW5ncyBjYW4gbmV2ZXIgaGFwcGVuLCBhbmQgcHJvYmFibHkgd2UnZCBoYXZlIG9vcHNl
ZCBsb25nIGFnbwppZiB0aGV5IGRpZC4gSnVzdCBnZXQgcmlkIG9mIHRoaXMgcG9pbnRsZXNzIG5v
aXNlIGluIHRoZSBjb2RlLgoKQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgfCAxMSAtLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDU0MzYzNGQzZTEwYy4uNTlmYzQ2MWJjNDU0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTQ0NzAsMTQgKzQ0NzAsMTAgQEAgc2tsX2dldF90b3Rh
bF9yZWxhdGl2ZV9kYXRhX3JhdGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
CiAJCQkJIHU2NCAqcGxhbmVfZGF0YV9yYXRlLAogCQkJCSB1NjQgKnV2X3BsYW5lX2RhdGFfcmF0
ZSkKIHsKLQlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT51YXBp
LnN0YXRlOwogCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7CiAJY29uc3Qgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZTsKIAl1NjQgdG90YWxfZGF0YV9yYXRlID0gMDsKIAot
CWlmIChXQVJOX09OKCFzdGF0ZSkpCi0JCXJldHVybiAwOwotCiAJLyogQ2FsY3VsYXRlIGFuZCBj
YWNoZSBkYXRhIHJhdGUgZm9yIGVhY2ggcGxhbmUgKi8KIAlpbnRlbF9hdG9taWNfY3J0Y19zdGF0
ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZShwbGFuZSwgcGxhbmVfc3RhdGUsIGNydGNfc3RhdGUpIHsK
IAkJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5pZDsKQEAgLTQ1MDUsOSArNDUwMSw2
IEBAIGljbF9nZXRfdG90YWxfcmVsYXRpdmVfZGF0YV9yYXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLAogCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVf
c3RhdGU7CiAJdTY0IHRvdGFsX2RhdGFfcmF0ZSA9IDA7CiAKLQlpZiAoV0FSTl9PTighY3J0Y19z
dGF0ZS0+dWFwaS5zdGF0ZSkpCi0JCXJldHVybiAwOwotCiAJLyogQ2FsY3VsYXRlIGFuZCBjYWNo
ZSBkYXRhIHJhdGUgZm9yIGVhY2ggcGxhbmUgKi8KIAlpbnRlbF9hdG9taWNfY3J0Y19zdGF0ZV9m
b3JfZWFjaF9wbGFuZV9zdGF0ZShwbGFuZSwgcGxhbmVfc3RhdGUsIGNydGNfc3RhdGUpIHsKIAkJ
ZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5pZDsKQEAgLTQ1NDgsNyArNDU0MSw2IEBA
IGljbF9nZXRfdG90YWxfcmVsYXRpdmVfZGF0YV9yYXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAogc3RhdGljIGludAogc2tsX2FsbG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewotCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRl
ICpzdGF0ZSA9IGNydGNfc3RhdGUtPnVhcGkuc3RhdGU7CiAJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAJc3RydWN0
IHNrbF9kZGJfZW50cnkgKmFsbG9jID0gJmNydGNfc3RhdGUtPndtLnNrbC5kZGI7CkBAIC00NTY3
LDkgKzQ1NTksNiBAQCBza2xfYWxsb2NhdGVfcGlwZV9kZGIoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCiAJbWVtc2V0KGNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeSwg
MCwgc2l6ZW9mKGNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfeSkpOwogCW1lbXNldChjcnRj
X3N0YXRlLT53bS5za2wucGxhbmVfZGRiX3V2LCAwLCBzaXplb2YoY3J0Y19zdGF0ZS0+d20uc2ts
LnBsYW5lX2RkYl91dikpOwogCi0JaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhc3Rh
dGUpKQotCQlyZXR1cm4gMDsKLQogCWlmICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKSB7CiAJCWFs
bG9jLT5zdGFydCA9IGFsbG9jLT5lbmQgPSAwOwogCQlyZXR1cm4gMDsKLS0gCjIuMjQuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
