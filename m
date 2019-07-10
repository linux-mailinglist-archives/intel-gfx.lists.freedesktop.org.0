Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB2864691
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 14:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E99AA6E0D6;
	Wed, 10 Jul 2019 12:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 750866E0D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 12:58:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 05:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="176830626"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 10 Jul 2019 05:58:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Jul 2019 15:58:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 15:58:51 +0300
Message-Id: <20190710125851.3275-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't overestimate 4:2:0 link symbol
 clock
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldp
dGggNDoyOjAgb3V0cHV0IHRoZSBMUyBjbG9jayBjYW4gYmUgaGFsZiBvZiB3aGF0IGl0IGlzIHdp
dGggNDo0OjQuCk1ha2UgdGhhdCBoYXBwZW4uCgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5
ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRl
eCAwYmRiN2VjYzVhODEuLjFkZmFjZjA5MGZiOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwpAQCAtMTg1Myw4ICsxODUzLDEwIEBAIGludGVsX2RwX2NvbXB1dGVfbGlu
a19jb25maWdfd2lkZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWludCBtb2RlX3JhdGUs
IGxpbmtfY2xvY2ssIGxpbmtfYXZhaWw7CiAKIAlmb3IgKGJwcCA9IGxpbWl0cy0+bWF4X2JwcDsg
YnBwID49IGxpbWl0cy0+bWluX2JwcDsgYnBwIC09IDIgKiAzKSB7CisJCWludCBvdXRwdXRfYnBw
ID0gaW50ZWxfZHBfb3V0cHV0X2JwcChwaXBlX2NvbmZpZywgYnBwKTsKKwogCQltb2RlX3JhdGUg
PSBpbnRlbF9kcF9saW5rX3JlcXVpcmVkKGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2ssCi0JCQkJ
CQkgICBicHApOworCQkJCQkJICAgb3V0cHV0X2JwcCk7CiAKIAkJZm9yIChjbG9jayA9IGxpbWl0
cy0+bWluX2Nsb2NrOyBjbG9jayA8PSBsaW1pdHMtPm1heF9jbG9jazsgY2xvY2srKykgewogCQkJ
Zm9yIChsYW5lX2NvdW50ID0gbGltaXRzLT5taW5fbGFuZV9jb3VudDsKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
