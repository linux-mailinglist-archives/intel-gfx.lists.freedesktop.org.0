Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 641F7C3966
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 17:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F6D6E83C;
	Tue,  1 Oct 2019 15:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 338D16E83A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 15:46:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 08:46:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="275030391"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 01 Oct 2019 08:46:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2019 18:46:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 18:46:29 +0300
Message-Id: <20191001154629.11063-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001154629.11063-1-ville.syrjala@linux.intel.com>
References: <20191001154629.11063-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Polish intel_tv_mode_valid()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRy
b3AgdGhlIHR2X21vZGUgTlVMTCBjaGVjayBzaW5jZSBpbnRlbF90dl9tb2RlX2ZpbmQoKSBuZXZl
cgphY3R1YWxseSByZXR1cm5zIE5VTEwsIGFuZCBmbGlwIHRoZSBjb25kaXRpb24gYXJvdW5kIHNv
IHRoYXQKdGhlIE1PREVfT0sgY2FzZSBpcyBhdCB0aGUgZW5kLCB3aGljaCBpcyBjdXN0b21hcnkg
dG8gYWxsCnRoZSBvdGhlciAubW9kZV92YWxpZCgpIGltcGxlbWVudGF0aW9ucy4KClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jIHwgNyArKystLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYwppbmRleCBiNzAyMjFmNTExMmEuLjcxYzNmN2U1
ZGY3ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYwpAQCAtOTYxLDEx
ICs5NjEsMTAgQEAgaW50ZWxfdHZfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAogCQlyZXR1cm4gTU9ERV9DTE9DS19ISUdIOwogCiAJLyogRW5zdXJlIFRWIHJlZnJl
c2ggaXMgY2xvc2UgdG8gZGVzaXJlZCByZWZyZXNoICovCi0JaWYgKHR2X21vZGUgJiYgYWJzKHR2
X21vZGUtPnJlZnJlc2ggLSBkcm1fbW9kZV92cmVmcmVzaChtb2RlKSAqIDEwMDApCi0JCQkJPCAx
MDAwKQotCQlyZXR1cm4gTU9ERV9PSzsKKwlpZiAoYWJzKHR2X21vZGUtPnJlZnJlc2ggLSBkcm1f
bW9kZV92cmVmcmVzaChtb2RlKSAqIDEwMDApID49IDEwMDApCisJCXJldHVybiBNT0RFX0NMT0NL
X1JBTkdFOwogCi0JcmV0dXJuIE1PREVfQ0xPQ0tfUkFOR0U7CisJcmV0dXJuIE1PREVfT0s7CiB9
CiAKIHN0YXRpYyBpbnQKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
