Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B22A6D7F91
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 21:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34358996F;
	Tue, 15 Oct 2019 19:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A57E8996F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 19:05:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 12:05:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="201848880"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 15 Oct 2019 12:05:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Oct 2019 22:05:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 22:05:38 +0300
Message-Id: <20191015190538.27539-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix MST oops due to MSA changes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBNU0EgTUlTQyBjb21wdXRhdGlvbiBub3cgZGVwZW5kcyBvbiB0aGUgY29ubmVjdG9yIHN0YXRl
LCBhbmQKd2UgZG8gaXQgZnJvbSB0aGUgRERJIC5wcmVfZW5hYmxlKCkgaG9vay4gQWxsIHRoYXQg
aXMgZmluZSBmb3IKRFAgU1NUIGJ1dCB3aXRoIE1TVCB3ZSBkb24ndCBhY3R1YWxseSBwYXNzIHRo
ZSBjb25uZWN0b3Igc3RhdGUKdG8gdGhlIGRpZyBwb3J0J3MgLnByZV9lbmFibGUoKSBob29rIHdo
aWNoIGxlYWRzIHRvIGFuIG9vcHMuCgpOZWVkIHRvIHRoaW5rIG1vcmUgaG93IHRvIHNvbHZlIHRo
aXMgaW4gYSBjbGVhbmVyIGZhc2hpb24sIGJ1dApmb3Igbm93IGxldCdzIGp1c3QgYWRkIGEgTlVM
TCBjaGVjayB0byBzdG9wIHRoZSBvb3BzaW5nLgoKQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1n
eWVvbmcubXVuQGludGVsLmNvbT4KQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+CkZpeGVzOiAwYzA2ZmExNTYwMDYgKCJkcm0vaTkxNS9kcDogQWRkIHN1cHBvcnQgb2YgQlQu
MjAyMCBDb2xvcmltZXRyeSB0byBEUCBNU0EiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCA4MGY4ZTI2OThiZTAuLjRjODE0NDllYzE0NCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0xNzk0LDggKzE3OTQsMTAgQEAgdm9pZCBp
bnRlbF9kZGlfc2V0X2RwX21zYShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKIAkgKiBvZiBDb2xvciBFbmNvZGluZyBGb3JtYXQgYW5kIENvbnRlbnQgQ29sb3IgR2Ft
dXRdIHdoaWxlIHNlbmRpbmcKIAkgKiBZQ0JDUiA0MjAsIEhEUiBCVC4yMDIwIHNpZ25hbHMgd2Ug
c2hvdWxkIHByb2dyYW0gTVNBIE1JU0MxIGZpZWxkcwogCSAqIHdoaWNoIGluZGljYXRlIFZTQyBT
RFAgZm9yIHRoZSBQaXhlbCBFbmNvZGluZy9Db2xvcmltZXRyeSBGb3JtYXQuCisJICoKKwkgKiBG
SVhNRSBNU1QgZG9lc24ndCBwYXNzIGluIHRoZSBjb25uX3N0YXRlCiAJICovCi0JaWYgKGludGVs
X2RwX25lZWRzX3ZzY19zZHAoY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSkpCisJaWYgKGNvbm5fc3Rh
dGUgJiYgaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjcnRjX3N0YXRlLCBjb25uX3N0YXRlKSkKIAkJ
dGVtcCB8PSBEUF9NU0FfTUlTQ19DT0xPUl9WU0NfU0RQOwogCiAJSTkxNV9XUklURShUUkFOU19N
U0FfTUlTQyhjcHVfdHJhbnNjb2RlciksIHRlbXApOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
