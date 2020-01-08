Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2156134A46
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 19:12:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4B689C60;
	Wed,  8 Jan 2020 18:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEC989C60
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 18:12:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 10:12:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="218135017"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 08 Jan 2020 10:12:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 20:12:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 20:12:34 +0200
Message-Id: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/sdvo: Reduce the size of the on
 stack buffers
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
ZSBzdHJpbmdzIHdlIHdhbnQgdG8gcHJpbnQgdG8gdGhlIG9uIHN0YWNrIGJ1ZmZlcnMgc2hvdWxk
CmJlIG5vIG1vcmUgdGhhbgo4ICogMyArIHN0cmxlbigiKEdFVF9TQ0FMRURfSERUVl9SRVNPTFVU
SU9OX1NVUFBPUlQpIikgKyAxID0gNjEKYnl0ZXMuIFNvIGxldCdzIHNocmluayB0aGUgYnVmZmVy
cyBkb3duIHRvIDY0IGJ5dGVzLgoKQWxzbyBzd2l0Y2ggdGhlIEJVR19PTigpcyB0byBXQVJOX09O
KClzIGlmIEkgbWFkZSBhIG1pc3Rha2UgaW4KbXkgYXJpdGhtZW50aWMuCgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIHwgMTkgKysrKysrKystLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwppbmRleCA4NzU4ZWUy
YTQ0NDIuLjAyMTE5YzgyN2M4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zZHZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zZHZvLmMKQEAgLTQxNCwxMiArNDE0LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX3Nkdm9fZGVi
dWdfd3JpdGUoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sIHU4IGNtZCwKIHsKIAljb25z
dCBjaGFyICpjbWRfbmFtZTsKIAlpbnQgaSwgcG9zID0gMDsKLSNkZWZpbmUgQlVGX0xFTiAyNTYK
LQljaGFyIGJ1ZmZlcltCVUZfTEVOXTsKKwljaGFyIGJ1ZmZlcls2NF07CiAKICNkZWZpbmUgQlVG
X1BSSU5UKGFyZ3MuLi4pIFwKLQlwb3MgKz0gc25wcmludGYoYnVmZmVyICsgcG9zLCBtYXhfdChp
bnQsIEJVRl9MRU4gLSBwb3MsIDApLCBhcmdzKQotCisJcG9zICs9IHNucHJpbnRmKGJ1ZmZlciAr
IHBvcywgbWF4X3QoaW50LCBzaXplb2YoYnVmZmVyKSAtIHBvcywgMCksIGFyZ3MpCiAKIAlmb3Ig
KGkgPSAwOyBpIDwgYXJnc19sZW47IGkrKykgewogCQlCVUZfUFJJTlQoIiUwMlggIiwgKCh1OCAq
KWFyZ3MpW2ldKTsKQEAgLTQzMyw5ICs0MzEsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZHZvX2Rl
YnVnX3dyaXRlKHN0cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvLCB1OCBjbWQsCiAJCUJVRl9Q
UklOVCgiKCVzKSIsIGNtZF9uYW1lKTsKIAllbHNlCiAJCUJVRl9QUklOVCgiKCUwMlgpIiwgY21k
KTsKLQlCVUdfT04ocG9zID49IEJVRl9MRU4gLSAxKTsKKworCVdBUk5fT04ocG9zID49IHNpemVv
ZihidWZmZXIpIC0gMSk7CiAjdW5kZWYgQlVGX1BSSU5UCi0jdW5kZWYgQlVGX0xFTgogCiAJRFJN
X0RFQlVHX0tNUygiJXM6IFc6ICUwMlggJXNcbiIsIFNEVk9fTkFNRShpbnRlbF9zZHZvKSwgY21k
LCBidWZmZXIpOwogfQpAQCAtNTQwLDggKzUzOCw3IEBAIHN0YXRpYyBib29sIGludGVsX3Nkdm9f
cmVhZF9yZXNwb25zZShzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywKIAl1OCByZXRyeSA9
IDE1OyAvKiA1IHF1aWNrIGNoZWNrcywgZm9sbG93ZWQgYnkgMTAgbG9uZyBjaGVja3MgKi8KIAl1
OCBzdGF0dXM7CiAJaW50IGksIHBvcyA9IDA7Ci0jZGVmaW5lIEJVRl9MRU4gMjU2Ci0JY2hhciBi
dWZmZXJbQlVGX0xFTl07CisJY2hhciBidWZmZXJbNjRdOwogCiAJYnVmZmVyWzBdID0gJ1wwJzsK
IApAQCAtNTgxLDcgKzU3OCw3IEBAIHN0YXRpYyBib29sIGludGVsX3Nkdm9fcmVhZF9yZXNwb25z
ZShzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywKIAl9CiAKICNkZWZpbmUgQlVGX1BSSU5U
KGFyZ3MuLi4pIFwKLQlwb3MgKz0gc25wcmludGYoYnVmZmVyICsgcG9zLCBtYXhfdChpbnQsIEJV
Rl9MRU4gLSBwb3MsIDApLCBhcmdzKQorCXBvcyArPSBzbnByaW50ZihidWZmZXIgKyBwb3MsIG1h
eF90KGludCwgc2l6ZW9mKGJ1ZmZlcikgLSBwb3MsIDApLCBhcmdzKQogCiAJY21kX3N0YXR1cyA9
IHNkdm9fY21kX3N0YXR1cyhzdGF0dXMpOwogCWlmIChjbWRfc3RhdHVzKQpAQCAtNjAwLDkgKzU5
Nyw5IEBAIHN0YXRpYyBib29sIGludGVsX3Nkdm9fcmVhZF9yZXNwb25zZShzdHJ1Y3QgaW50ZWxf
c2R2byAqaW50ZWxfc2R2bywKIAkJCWdvdG8gbG9nX2ZhaWw7CiAJCUJVRl9QUklOVCgiICUwMlgi
LCAoKHU4ICopcmVzcG9uc2UpW2ldKTsKIAl9Ci0JQlVHX09OKHBvcyA+PSBCVUZfTEVOIC0gMSk7
CisKKwlXQVJOX09OKHBvcyA+PSBzaXplb2YoYnVmZmVyKSAtIDEpOwogI3VuZGVmIEJVRl9QUklO
VAotI3VuZGVmIEJVRl9MRU4KIAogCURSTV9ERUJVR19LTVMoIiVzOiBSOiAlc1xuIiwgU0RWT19O
QU1FKGludGVsX3Nkdm8pLCBidWZmZXIpOwogCXJldHVybiB0cnVlOwotLSAKMi4yNC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
