Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9907F29CCBA
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 00:45:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21216E3FE;
	Tue, 27 Oct 2020 23:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85296E405
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 23:45:49 +0000 (UTC)
IronPort-SDR: bHLmhgmHpmZNEe++dLpiOOkCL9CUvirPU3Y4NghZrFHmYo0S8MjLTj+QgZZyys4Q9vTid8msXe
 nbiyTfm23UCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="164680890"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="164680890"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 16:45:49 -0700
IronPort-SDR: icQ4A2XRis08SWoTrGG/O4CYZKNSQjGMc7MZ+VdC6U1W0vLZen2ZWkO9JatdbUsky5OBF738dC
 RseVYFvLnRpw==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="355729357"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.55])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 16:45:49 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Oct 2020 16:45:22 -0700
Message-Id: <20201027234526.33043-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201027234526.33043-1-jose.souza@intel.com>
References: <20201027234526.33043-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915/display/psr: Use plane damage
 clips to calculate damaged area
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

Tm93IHVzaW5nIHBsYW5lIGRhbWFnZSBjbGlwcyBwcm9wZXJ0eSB0byBjYWxjdWFsdGUgdGhlIGRh
bWFnZWQgYXJlYS4KU2VsZWN0aXZlIGZldGNoIG9ubHkgc3VwcG9ydHMgb25lIHJlZ2lvbiB0byBi
ZSBmZXRjaGVkIHNvIHNvZnR3YXJlCm5lZWRzIHRvIGNhbGN1bGF0ZSBhIGJvdW5kaW5nIGJveCBh
cm91bmQgYWxsIGRhbWFnZSBjbGlwcy4KCnYyOgotIGRvIG5vdCBzaGlmdGhpbmcgbmV3X3BsYW5l
X3N0YXRlLT51YXBpLmRzdCBvbmx5IHNyYyBpcyBpbiAxNi4xNiBmb3JtYXQKCkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogR3dhbi1neWVvbmcg
TXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNTQgKysrKysrKysrKysrKysrKysrKysrLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCA2ZGVhZDUxZDdhODEuLjFjMzMz
MGUwOTZjNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC0x
Mjg3LDYgKzEyODcsOSBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9p
bl9zdGF0ZShzdGF0ZSwgcGxhbmUsIG9sZF9wbGFuZV9zdGF0ZSwKIAkJCQkJICAgICBuZXdfcGxh
bmVfc3RhdGUsIGkpIHsKIAkJc3RydWN0IGRybV9yZWN0ICpzZWxfZmV0Y2hfYXJlYSwgdGVtcDsK
KwkJc3RydWN0IGRybV9tb2RlX3JlY3QgKmRhbWFnZWRfY2xpcHM7CisJCXUzMiBudW1fY2xpcHM7
CisJCWludCBqOwogCiAJCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuY3J0YyAhPSBjcnRjX3N0
YXRlLT51YXBpLmNydGMpCiAJCQljb250aW51ZTsKQEAgLTEzMDUsMTMgKzEzMDgsNTQgQEAgaW50
IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwKIAkJaWYgKCFuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkKIAkJCWNvbnRpbnVl
OwogCisJCXNlbF9mZXRjaF9hcmVhID0gJm5ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hf
YXJlYTsKKwkJc2VsX2ZldGNoX2FyZWEtPnkxID0gLTE7CisKKwkJZGFtYWdlZF9jbGlwcyA9IGRy
bV9wbGFuZV9nZXRfZGFtYWdlX2NsaXBzKCZuZXdfcGxhbmVfc3RhdGUtPnVhcGkpOworCQludW1f
Y2xpcHMgPSBkcm1fcGxhbmVfZ2V0X2RhbWFnZV9jbGlwc19jb3VudCgmbmV3X3BsYW5lX3N0YXRl
LT51YXBpKTsKKwogCQkvKgotCQkgKiBGb3Igbm93IGRvaW5nIGEgc2VsZWN0aXZlIGZldGNoIGlu
IHRoZSB3aG9sZSBwbGFuZSBhcmVhLAotCQkgKiBvcHRpbWl6YXRpb25zIHdpbGwgY29tZSBpbiB0
aGUgZnV0dXJlLgorCQkgKiBJZiBwbGFuZSBtb3ZlZCwgbWFyayB0aGUgd2hvbGUgcGxhbmUgYXJl
YSBhcyBkYW1hZ2VkIGFzIGl0CisJCSAqIG5lZWRzIHRvIGJlIGNvbXBsZXRlIHJlZHJhdyBpbiB0
aGUgbmV3IHBvc2l0aW9uLgogCQkgKi8KLQkJc2VsX2ZldGNoX2FyZWEgPSAmbmV3X3BsYW5lX3N0
YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhOwotCQlzZWxfZmV0Y2hfYXJlYS0+eTEgPSBuZXdfcGxh
bmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+IDE2OwotCQlzZWxfZmV0Y2hfYXJlYS0+eTIgPSBuZXdf
cGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkyID4+IDE2OworCQlpZiAoIWRybV9yZWN0X2VxdWFscygm
bmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdCwKKwkJCQkgICAgICZvbGRfcGxhbmVfc3RhdGUtPnVh
cGkuZHN0KSkgeworCQkJbnVtX2NsaXBzID0gMDsKKwkJCXNlbF9mZXRjaF9hcmVhLT55MSA9IG5l
d19wbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTEgPj4gMTY7CisJCQlzZWxfZmV0Y2hfYXJlYS0+eTIg
PSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkyID4+IDE2OworCQl9IGVsc2UgaWYgKCFudW1f
Y2xpcHMgJiYgbmV3X3BsYW5lX3N0YXRlLT51YXBpLmZiICE9CisJCQkgICBvbGRfcGxhbmVfc3Rh
dGUtPnVhcGkuZmIpIHsKKwkJCS8qCisJCQkgKiBJZiB0aGUgcGxhbmUgZG9uJ3QgaGF2ZSBkYW1h
Z2UgYXJlYXMgYnV0IHRoZQorCQkJICogZnJhbWVidWZmZXIgY2hhbmdlZCwgbWFyayB0aGUgd2hv
bGUgcGxhbmUgYXJlYSBhcworCQkJICogZGFtYWdlZC4KKwkJCSAqLworCQkJc2VsX2ZldGNoX2Fy
ZWEtPnkxID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyYy55MSA+PiAxNjsKKwkJCXNlbF9mZXRj
aF9hcmVhLT55MiA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTIgPj4gMTY7CisJCX0KKwor
CQlmb3IgKGogPSAwOyBqIDwgbnVtX2NsaXBzOyBqKyspIHsKKwkJCXN0cnVjdCBkcm1fcmVjdCBk
YW1hZ2VfYXJlYTsKKworCQkJZGFtYWdlX2FyZWEueTEgPSBkYW1hZ2VkX2NsaXBzW2pdLnkxOwor
CQkJZGFtYWdlX2FyZWEueTIgPSBkYW1hZ2VkX2NsaXBzW2pdLnkyOworCQkJY2xpcF9hcmVhX3Vw
ZGF0ZShzZWxfZmV0Y2hfYXJlYSwgJmRhbWFnZV9hcmVhKTsKKwkJfQorCisJCS8qCisJCSAqIE5v
IHBhZ2UgZmxpcCwgbm8gcGxhbmUgbW92ZW1lbnQgb3Igbm8gZGFtYWdlIGFyZWFzLCBzbyBkb24n
dAorCQkgKiBmZXRjaCBhbnkgcGl4ZWwgZnJvbSBtZW1vcnkgZm9yIHRoaXMgcGxhbmUKKwkJICov
CisJCWlmIChzZWxfZmV0Y2hfYXJlYS0+eTEgPT0gLTEpIHsKKwkJCXNlbF9mZXRjaF9hcmVhLT55
MSA9IDA7CisJCQlzZWxfZmV0Y2hfYXJlYS0+eTIgPSAwOworCQl9CisKKwkJLyogRG9uJ3QgbmVl
ZCB0byByZWRyYXcgcGxhbmUgZGFtYWdlZCBhcmVhcyBvdXRzaWRlIG9mIHNjcmVlbiAqLworCQlq
ID0gc2VsX2ZldGNoX2FyZWEtPnkyICsgbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsKKwkJ
aiA9IGNydGNfc3RhdGUtPnVhcGkuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5IC0gajsKKwkJ
aWYgKGogPCAwKQorCQkJc2VsX2ZldGNoX2FyZWEtPnkyICs9IGo7CiAKIAkJdGVtcCA9ICpzZWxf
ZmV0Y2hfYXJlYTsKIAkJdGVtcC55MSArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOwot
LSAKMi4yOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
