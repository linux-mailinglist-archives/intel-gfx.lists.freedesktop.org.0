Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3558617410E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 21:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9316F4C6;
	Fri, 28 Feb 2020 20:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D986F4C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 20:35:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 12:35:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="257229211"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 28 Feb 2020 12:35:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2020 22:35:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 22:35:50 +0200
Message-Id: <20200228203552.30273-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
References: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Don't check for wm changes until
 we've compute the wms fully
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSdyZSBjb21wYXJpbmcgdGhlIHdhdGVybWFya3MgYmV0d2VlbiB0aGUgb2xkIGFu
ZCBuZXcgc3RhdGVzCmJlZm9yZSB3ZSd2ZSBmdWxseSBjb21wdXRlZCB0aGUgbmV3IHdhdGVybWFy
a3MuIEluIHBhcnRpY3VsYXIKc2tsX2J1aWxkX3BpcGVfd20oKSB3aWxsIG5vdCBhY2NvdW50IGZv
ciB0aGUgYW1vdW50IG9mIGRkYiBzcGFjZSB3ZSdsbApoYXZlLiBUaGF0IGluZm9ybWF0aW9uIGlz
IG9ubHkgYXZhaWxhYmxlIGR1cmluZyBza2xfY29tcHV0ZV9kZGIoKQp3aGljaCB3aWxsIHByb2Nl
ZWQgdG8gemVybyBvdXQgYW55IHdhdGVybWFyayBsZXZlbCBleGNlZWRpbmcgdGhlCmRkYiBhbGxv
Y2F0aW9uLiBJZiB3ZSdyZSBzaG9ydCBvbiBkZGIgc3BhY2UgdGhpcyB3aWxsIGVuZCB1cAphZGRp
bmcgdGhlIHBsYW5lIHRvIHRoZSBzdGF0ZSBkdWUgZXJyb25vdXNseSBkZXRlcm1pbmluZyB0aGF0
IHRoZQp3YXRlcm1hcmtzIGhhdmUgY2hhbmdlZC4gRml4IHRoZSBwcm9ibGVtIGJ5IGRlZmVycmlu
Zwpza2xfd21fYWRkX2FmZmVjdGVkX3BsYW5lcygpIHVudGlsIHdlIGhhdmUgdGhlIGZpbmFsIHdh
dGVybWFya3MKY29tcHV0ZWQuCgpOb3RpY2VkIHRoaXMgd2hlbiB0cnlpbmcgZW5hYmxlIHRyYW5z
aXRpb24gd2F0ZXJtYXJrcyBvbiBnbGsuCldlIG5vdyBjb21wdXRlZCB0aGUgdHJhbnNfd20gYXMg
MjgsIGJ1dCB3ZSBvbmx5IGhhZCAxNCBibG9ja3MKb2YgZGRiLCBhbmQgdGh1cyBza2xfY29tcHV0
ZV9kZGIoKSBlbmRlZCB1cCBkaXNhYmxpbmcgdGhlIGN1cnNvcgp0cmFuc193bSBldmVyeSB0aW1l
LiBUaHVzIHdlIGVuZGVkIHVwIGFkZGluZyB0aGUgY3Vyc29yIHRvIGV2ZXJ5CmNvbW1pdCB0aGF0
IGRpZG4ndCBhY3R1YWxseSBhZmZlY3QgdGhlIGN1cnNvciBhdCBhbGwuCgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAxNiArKysrKysrKysrKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYwppbmRleCAzOTI5OTgxMWI2NTAuLmEzZDc2ZTY5Y2FhZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jCkBAIC01NzYyLDE2ICs1NzYyLDI0IEBAIHNrbF9jb21wdXRlX3dtKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCQlyZXQgPSBza2xfYnVpbGRfcGlwZV93bShu
ZXdfY3J0Y19zdGF0ZSk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwotCi0JCXJldCA9IHNr
bF93bV9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0YXRlLCBjcnRjKTsKLQkJaWYgKHJldCkKLQkJCXJl
dHVybiByZXQ7CiAJfQogCiAJcmV0ID0gc2tsX2NvbXB1dGVfZGRiKHN0YXRlKTsKIAlpZiAocmV0
KQogCQlyZXR1cm4gcmV0OwogCisJLyoKKwkgKiBza2xfY29tcHV0ZV9kZGIoKSB3aWxsIGhhdmUg
YWRqdXN0ZWQgdGhlIGZpbmFsIHdhdGVybWFya3MKKwkgKiBiYXNlZCBvbiBob3cgbXVjaCBkZGIg
aXMgYXZhaWxhYmxlLiBOb3cgd2UgY2FuIGFjdHVhbGx5CisJICogY2hlY2sgaWYgdGhlIGZpbmFs
IHdhdGVybWFya3MgY2hhbmdlZC4KKwkgKi8KKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19p
bl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCisJCQkJCSAgICBuZXdfY3J0Y19z
dGF0ZSwgaSkgeworCQlyZXQgPSBza2xfd21fYWRkX2FmZmVjdGVkX3BsYW5lcyhzdGF0ZSwgY3J0
Yyk7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OworCX0KKwogCXNrbF9wcmludF93bV9jaGFu
Z2VzKHN0YXRlKTsKIAogCXJldHVybiAwOwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
