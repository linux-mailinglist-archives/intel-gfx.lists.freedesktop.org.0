Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B61FC2191DD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 22:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31816E169;
	Wed,  8 Jul 2020 20:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A79589F07
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 20:53:28 +0000 (UTC)
IronPort-SDR: VmWNSzGrqtv7AA19z9GV9/qfXADLH2XT5FmjHXJrln9s0uZxpMxGJAGzPY6ghzAweETq8qp+OL
 229QJhhaVT3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="209427825"
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="209427825"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 13:53:27 -0700
IronPort-SDR: DLe2ARGqh4VJE0GCERBnkSyLTOT8LlQaqQnal5Ee8pcMRB4JG5MCr57hduAsViT9GrqePkfsAp
 Ldr72PQcx31w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,329,1589266800"; d="scan'208";a="388928958"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jul 2020 13:53:26 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 13:55:12 -0700
Message-Id: <20200708205512.21625-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200708205512.21625-1-jose.souza@intel.com>
References: <20200708205512.21625-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 5/5] DO_NOT_MERGE_IT: drm/i915/display:
 Enable HOBL by default
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

RW5hYmxpbmcgYnkgZGVmYXVsdCB0byBoYXZlIHNvbWUgdGVzdGluZyBpbiBDSSBidXQgdGhlIGRl
c2lyZWQgYmVoYXZpb3IKaXMgb25seSBlbmFibGUgaXQgd2hlbiBIVy9WQlQgc2F5cyBpdCBpcyBz
dXBwb3J0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYmY4NmM1ODhm
NzI2Li4xZjgyYzUzODQzNWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwpAQCAtMTA1OSw3ICsxMDU5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1
Zl90cmFucyAqCiB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRlLAogCQkJaW50ICpuX2VudHJpZXMpCiB7Ci0JaWYg
KHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCAmJiBkZXZfcHJpdi0+dmJ0LmVkcC5ob2JsKSB7CisJ
aWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgewogCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOwogCiAJCWlmICghaW50ZWxfZHAtPmhvYmxf
ZGlzYWJsZWQgJiYgcmF0ZSA8PSA1NDAwMDApIHsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
