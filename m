Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91626155A9B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 16:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6A86E088;
	Fri,  7 Feb 2020 15:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD33B6E088
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 15:22:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 07:22:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="226503270"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 07 Feb 2020 07:22:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Feb 2020 17:22:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 17:22:28 +0200
Message-Id: <20200207152228.1054-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't use uninitialized 'ret'
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFj
Y2lkZW50YWxseSByZW1vdmVkIHRoZSAncmV0PTAnIGluaXRpYWxpemF0aW9uLCBhbmQgdGh1cwp3
ZSdyZSBwb3RlbnRpYWxseSBsb29raW5nIGF0IHNvbWUgc3RhY2sgZ2FyYmFnZSBoZXJlLgoKVGhl
IHdob2xlICdyZXQgPSBkb19zdHVmZjsgaWYgKCFyZXQpIGRvX290aGVyX3N0dWZmOycgcGF0dGVy
bgpjb25mdXNlcyBteSBicmFpbiBzbyBsZXQncyByZXBsYWNlIGl0IHdpdGggdGhlIHN0YW5kYXJk
CmltbWVkaWF0ZSByZXR1cm4gdGhpbmcuCgpSZXBvcnRlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkZpeGVzOiAyOGEzMGI0NWY1ZTkgKCJkcm0vaTkxNTogQ29u
dmVydCBjZGNsayB0byBnbG9iYWwgc3RhdGUiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDgwZWViZGM0YzY3MC4uNjFiYTFmMjI1
NmEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMTI4NDMsMTEgKzEyODQzLDEzIEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19hdG9taWNfY2hl
Y2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJfQogCiAJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gOSkgewotCQlpZiAobW9kZV9jaGFuZ2VkIHx8IGNydGNfc3RhdGUtPnVw
ZGF0ZV9waXBlKQorCQlpZiAobW9kZV9jaGFuZ2VkIHx8IGNydGNfc3RhdGUtPnVwZGF0ZV9waXBl
KSB7CiAJCQlyZXQgPSBza2xfdXBkYXRlX3NjYWxlcl9jcnRjKGNydGNfc3RhdGUpOwotCQlpZiAo
IXJldCkKLQkJCXJldCA9IGludGVsX2F0b21pY19zZXR1cF9zY2FsZXJzKGRldl9wcml2LCBjcnRj
LAotCQkJCQkJCSBjcnRjX3N0YXRlKTsKKwkJCWlmIChyZXQpCisJCQkJcmV0dXJuIHJldDsKKwkJ
fQorCisJCXJldCA9IGludGVsX2F0b21pY19zZXR1cF9zY2FsZXJzKGRldl9wcml2LCBjcnRjLCBj
cnRjX3N0YXRlKTsKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7CiAJfQotLSAKMi4yNC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
