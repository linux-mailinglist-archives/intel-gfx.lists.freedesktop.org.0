Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E32017410D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 21:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA230897C8;
	Fri, 28 Feb 2020 20:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 066976F4C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 20:35:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 12:35:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="350993567"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 28 Feb 2020 12:35:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2020 22:35:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 22:35:49 +0200
Message-Id: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Don't check uv_wm in
 skl_plane_wm_equals()
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
ZSBoYXJkd2FyZSBuZXZlciBzZWVzIHRoZSB1dl93bSB2YWx1ZXMgKGFwYXJ0IGZyb20KdXZfd20u
bWluX2RkYl9hbGxvYyBhZmZlY3RpbmcgdGhlIGRkYiBhbGxvY2F0aW9uKS4gVGh1cyB0aGVyZQpp
cyBubyBwb2ludCBpbiBjb21wYXJpbmcgdXZfd20gdG8gZGV0ZXJtaW5lIGlmIHdlIG5lZWQgdG8K
cmVwcm9ncmFtIHRoZSB3YXRlcm1hcmsgcmVnaXN0ZXJzLiBTbyBsZXQncyBjaGVjayBvbmx5IHRo
ZQpyZ2IveSB3YXRlcm1hcmsgaW4gc2tsX3BsYW5lX3dtX2VxdWFscygpLiBCdXQgbGV0J3MgbGVh
dmUKYSBjb21tZW50IGJlaGluZCBzbyB0aGF0IHRoZSBuZXh0IHBlcnNvbiByZWFkaW5nIHRoaXMg
ZG9lc24ndApnZXQgYXMgY29uZnVzZWQgYXMgSSBkaWQgd2hlbiBJIGFkZGVkIHRoaXMgY2hlY2su
CgpJZiB0aGUgZGRiIGFsbG9jYXRpb24gZW5kcyB1cCBjaGFuZ2luZyBkdWUgdG8gdXZfd20Kc2ts
X2RkYl9hZGRfYWZmZWN0ZWRfcGxhbmVzKCkgdGFrZXMgY2FyZSBvZiBhZGRpbmcgdGhlIHBsYW5l
CnRvIHRoZSBzdGF0ZS4KClRPRE86IHdlIHNob3VsZCBwZXJoYXBzIGp1c3QgZWxpbWluYXRlIHV2
X3dtIGZyb20gdGhlIHN0YXRlCmFuZCBzaW1wbHkgdHJhY2sgdGhlIG1pbl9kZGJfYWxsb2MgZm9y
IHV2IGluc3RlYWQuCgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgOCArKysrKystLQog
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwppbmRleCAzNDU0MjllNWFkNDUuLjM5Mjk5ODExYjY1MCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCkBAIC01NDAwLDggKzU0MDAsMTIgQEAgc3RhdGljIGJvb2wgc2tsX3Bs
YW5lX3dtX2VxdWFscyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJaW50IGxl
dmVsLCBtYXhfbGV2ZWwgPSBpbGtfd21fbWF4X2xldmVsKGRldl9wcml2KTsKIAogCWZvciAobGV2
ZWwgPSAwOyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsKLQkJaWYgKCFza2xfd21fbGV2
ZWxfZXF1YWxzKCZ3bTEtPndtW2xldmVsXSwgJndtMi0+d21bbGV2ZWxdKSB8fAotCQkgICAgIXNr
bF93bV9sZXZlbF9lcXVhbHMoJndtMS0+dXZfd21bbGV2ZWxdLCAmd20yLT51dl93bVtsZXZlbF0p
KQorCQkvKgorCQkgKiBXZSBkb24ndCBjaGVjayB1dl93bSBhcyB0aGUgaGFyZHdhcmUgZG9lc24n
dCBhY3R1YWxseQorCQkgKiB1c2UgaXQuIEl0IG9ubHkgZ2V0cyB1c2VkIGZvciBjYWxjdWxhdGlu
ZyB0aGUgcmVxdWlyZWQKKwkJICogZGRiIGFsbG9jYXRpb24uCisJCSAqLworCQlpZiAoIXNrbF93
bV9sZXZlbF9lcXVhbHMoJndtMS0+d21bbGV2ZWxdLCAmd20yLT53bVtsZXZlbF0pKQogCQkJcmV0
dXJuIGZhbHNlOwogCX0KIAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
