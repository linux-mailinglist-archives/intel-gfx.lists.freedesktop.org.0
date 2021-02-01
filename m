Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6C330AF6A
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:34:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275686E9A5;
	Mon,  1 Feb 2021 18:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E266E9A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:34:18 +0000 (UTC)
IronPort-SDR: 9lnTDEQBzQ7q7MrlnoAjpJ0uSJ9NlxqZuCNrohP4D18R4XS3au1DJyxvliYFLcIqHj6vMY04QT
 hNOmYHDPjpYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="265564107"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="265564107"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:34:18 -0800
IronPort-SDR: F5k96PEG/N9gzRJYxYX3q64kByp4EcjRYPGQoLi6/wqZzSBcWLr5rnuyFpSAhPkJ62goRgARbV
 8C7D+JdCriiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="479193580"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 01 Feb 2021 10:34:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:34:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:39 +0200
Message-Id: <20210201183343.15292-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/15] drm/i915: Sprinkle WARN(!pll) into
 icl/dg1 .clock_enable()
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
ZSBvdGhlciBEREkgLmVuYWJsZV9jbG9jaygpIGZ1bmN0aW9ucyBhcmUgdHJ5aW5nIHRvIHByb3Rl
Y3QgdXMKYWdhaW5zdCBwbGw9PU5VTEwuIEEgYml0IHRlbXB0ZWQgdG8gdGhyb3cgb3V0IGFsbCB0
aGUgV0FSTnMgYXMKanVzdCB1bm5lY2Vzc2FyeSBub2lzZSwgYnV0IEkgZ3Vlc3MgdGhleSBtaWdo
dCBoYXZlIHNvbWUgdXNlCndoZW4gcG9raW5nIGFyb3VuZCB0aGUgc2hhcmVkX2RwbGwgY29kZSAo
bm90IHN1cmUgaXQgd291bGRuJ3QKb29wcyBlbHNld2hlcmUgdGhvdWdoKS4gU28gbGV0J3MgdW5p
ZnkgaXQgYWxsIGFuZCBzcHJpbmtsZSBpbgp0aGUgbWlzc2luZyBXQVJOcyBmb3IgaWNsL2RnMS4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDYg
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggOTM1NTJmM2MyYzQzLi5iNDk4NGJiZDc4MTcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzE2NSw2ICsz
MTY1LDkgQEAgc3RhdGljIHZvaWQgZGcxX2RkaV9lbmFibGVfY2xvY2soc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCiAJc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwgPSBjcnRjX3N0
YXRlLT5zaGFyZWRfZHBsbDsKIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZf
cHJpdiwgZW5jb2Rlci0+cG9ydCk7CiAKKwlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0s
ICFwbGwpKQorCQlyZXR1cm47CisKIAkvKgogCSAqIElmIHdlIGZhaWwgdGhpcywgc29tZXRoaW5n
IHdlbnQgdmVyeSB3cm9uZzogZmlyc3QgMiBQTExzIHNob3VsZCBiZQogCSAqIHVzZWQgYnkgZmly
c3QgMiBwaHlzIGFuZCBsYXN0IDIgUExMcyBieSBsYXN0IHBoeXMKQEAgLTMyMDcsNiArMzIxMCw5
IEBAIHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fZW5hYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAogCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9w
cml2LCBlbmNvZGVyLT5wb3J0KTsKIAlpOTE1X3JlZ190IHJlZyA9IGljbF9kcGNsa2FfY2ZnY3Iw
X3JlZyhkZXZfcHJpdiwgcGh5KTsKIAorCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwg
IXBsbCkpCisJCXJldHVybjsKKwogCW11dGV4X2xvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOwog
CiAJLyoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
