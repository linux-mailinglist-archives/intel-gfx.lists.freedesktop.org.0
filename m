Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32718323F2F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 15:42:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5006EACC;
	Wed, 24 Feb 2021 14:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DD036EACC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 14:42:23 +0000 (UTC)
IronPort-SDR: GAlKycqpFfqdvKHHpcCYfmiWPhnluShJK7PVess82BMffhYsKJbA4n9hDxYKdd4yJsEOuMdM2I
 kDsQqtGLUfGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="204653354"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="204653354"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 06:42:22 -0800
IronPort-SDR: I+ARcl5OnwEh0K0I0B2LOUSJONNcWjxj2Gaodn1EBtXvHSU450drKd5h8789+XMg+SDP5jZ5si
 mrIa4xwQm6DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="499607859"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 24 Feb 2021 06:42:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Feb 2021 16:42:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Feb 2021 16:42:10 +0200
Message-Id: <20210224144214.24803-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210224144214.24803-1-ville.syrjala@linux.intel.com>
References: <20210224144214.24803-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Do intel_dpll_readout_hw_state()
 after encoder readout
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
ZSBjbG9jayByZWFkb3V0IGZvciBEREkgZW5jb2RlcnMgbmVlZHMgdG8gbW92ZWQgaW50byB0aGUg
ZW5jb2RlcnMuClRvIHRoYXQgZW5kIGludGVsX2RwbGxfcmVhZG91dF9od19zdGF0ZSgpIG5lZWRz
IHRvIGhhcHBlbiBhZnRlcgp0aGUgZW5jb2RlciByZWFkb3V0IGFzIG90aGVyd2lzZSBpdCBjYW4n
dCBjb3JyZWN0bHkgcG9wdWxhdGUKdGhlIFBMTCBjcnRjX21hc2svYWN0aXZlX21hc2sgYml0bWFz
a3MuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5k
ZXggZDBkYTg4NzUxYzcyLi5iMzQ2MjA1NDVkM2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzQ0NCw4ICsxMzQ0NCw2IEBAIHN0YXRpYyB2
b2lkIGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
KQogCiAJcmVhZG91dF9wbGFuZV9zdGF0ZShkZXZfcHJpdik7CiAKLQlpbnRlbF9kcGxsX3JlYWRv
dXRfaHdfc3RhdGUoZGV2X3ByaXYpOwotCiAJZm9yX2VhY2hfaW50ZWxfZW5jb2RlcihkZXYsIGVu
Y29kZXIpIHsKIAkJcGlwZSA9IDA7CiAKQEAgLTEzNDgwLDYgKzEzNDc4LDggQEAgc3RhdGljIHZv
aWQgaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
CiAJCQkgICAgcGlwZV9uYW1lKHBpcGUpKTsKIAl9CiAKKwlpbnRlbF9kcGxsX3JlYWRvdXRfaHdf
c3RhdGUoZGV2X3ByaXYpOworCiAJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfYmVnaW4oZGV2LCAm
Y29ubl9pdGVyKTsKIAlmb3JfZWFjaF9pbnRlbF9jb25uZWN0b3JfaXRlcihjb25uZWN0b3IsICZj
b25uX2l0ZXIpIHsKIAkJaWYgKGNvbm5lY3Rvci0+Z2V0X2h3X3N0YXRlKGNvbm5lY3RvcikpIHsK
LS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
