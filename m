Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BBB3A0F19
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 10:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C636E4A5;
	Wed,  9 Jun 2021 08:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CEE6E408
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 08:56:41 +0000 (UTC)
IronPort-SDR: DJj2PERF+ZDNYqz5GKRSECzIlDMON2yC5/lMcU5CgRIHdtZOfyHiZFj0slk8u+UKACWwFS+fY1
 W20JysMBqfYA==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="290663377"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="290663377"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 01:56:38 -0700
IronPort-SDR: ntGh32WNIrQVShrksZSXac00aR3nsslTJf1x+626eq8tTq6lrZyGNcJEGLWdxt8ZkXKKaUeXyT
 EM2Kv7UIjLzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="419211941"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 09 Jun 2021 01:56:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Jun 2021 11:56:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 11:56:27 +0300
Message-Id: <20210609085632.22026-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
References: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Stop hand rolling drm_crtc_mask()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSBkcm1fY3J0Y19tYXNrKCkgaW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgaXQuCgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNSArKy0tLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDM2MmJmZjliZWI1
Yy4uNjJhZDRjZmFlMDczIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwpAQCAtNjQ4NSw3ICs2NDg1LDcgQEAgaW50IGludGVsX2dldF9sb2FkX2RldGVj
dF9waXBlKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJc3RydWN0IGRybV9hdG9t
aWNfc3RhdGUgKnN0YXRlID0gTlVMTCwgKnJlc3RvcmVfc3RhdGUgPSBOVUxMOwogCXN0cnVjdCBk
cm1fY29ubmVjdG9yX3N0YXRlICpjb25uZWN0b3Jfc3RhdGU7CiAJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGU7Ci0JaW50IHJldCwgaSA9IC0xOworCWludCByZXQ7CiAKIAlkcm1f
ZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIltDT05ORUNUT1I6JWQ6JXNdLCBbRU5DT0RFUjolZDol
c11cbiIsCiAJCSAgICBjb25uZWN0b3ItPmJhc2UuaWQsIGNvbm5lY3Rvci0+bmFtZSwKQEAgLTY1
MTksOCArNjUxOSw3IEBAIGludCBpbnRlbF9nZXRfbG9hZF9kZXRlY3RfcGlwZShzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCiAJLyogRmluZCBhbiB1bnVzZWQgb25lIChpZiBwb3Nz
aWJsZSkgKi8KIAlmb3JfZWFjaF9jcnRjKGRldiwgcG9zc2libGVfY3J0YykgewotCQlpKys7Ci0J
CWlmICghKGVuY29kZXItPnBvc3NpYmxlX2NydGNzICYgKDEgPDwgaSkpKQorCQlpZiAoIShlbmNv
ZGVyLT5wb3NzaWJsZV9jcnRjcyAmIGRybV9jcnRjX21hc2socG9zc2libGVfY3J0YykpKQogCQkJ
Y29udGludWU7CiAKIAkJcmV0ID0gZHJtX21vZGVzZXRfbG9jaygmcG9zc2libGVfY3J0Yy0+bXV0
ZXgsIGN0eCk7Ci0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
