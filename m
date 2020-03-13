Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DBD184C50
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 17:21:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AB56EC15;
	Fri, 13 Mar 2020 16:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2E46EC17;
 Fri, 13 Mar 2020 16:21:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 09:21:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="354399442"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 13 Mar 2020 09:21:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Mar 2020 18:21:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 13 Mar 2020 18:20:51 +0200
Message-Id: <20200313162054.16009-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313162054.16009-1-ville.syrjala@linux.intel.com>
References: <20200313162054.16009-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/edid: Don't parse garbage as DispID
 blocks
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB0aGUgY29kZSBhc3N1bWVzIHRoYXQgdGhlIGVudGlyZSBFRElEIGV4dGVzaW9uIGJs
b2NrCmNhbiBiZSB0YWtlbiB1cCBieSB0aGUgRGlzcElEIGJsb2Nrcy4gVGhhdCBpcyBub3QgdHJ1
ZS4gVGhlcmUKaXMgYXQgbGVhc3QgYWx3YXlzIHRoZSBEaXNwSUQgY2hlY2tzdW0sIGFuZCBwb3Rl
bnRpYWxseSBmaWxsCmJ5dGVzIGlmIHRoZSBleHRlbnNpb24gYmxvY2sgdXNlcyB0aGUgaW50ZXJp
b3IgZmlsbCBzY2hlbWUKdG8gcGFkIG91dCB0byBmaWxsIEVESUQgYmxvY2sgc2l6ZS4KClNvIGxl
dCdzIG5vdCBwYXJzZSB0aGUgY2hlY2tzdW0gb3IgdGhlIGZpbGwgYnl0ZXMgYXMgRGlzcElECmJs
b2NrcyBieSBoYXZpbmcgZHJtX2ZpbmRfZGlzcGxheWlkX2V4dGVuc2lvbigpIHJldHVybiB0aGUK
YWN0dWFsIGxlbmd0aCBvZiB0aGUgRGlzcElEIGRhdGEgdG8gdGhlIGNhbGxlci4KClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IGRiZDJlODQ3NGMyYS4uMzA2N2JlNzEw
ZTViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2VkaWQuYwpAQCAtMzIxNiw2ICszMjE2LDcgQEAgc3RhdGljIHU4ICpkcm1f
ZmluZF9kaXNwbGF5aWRfZXh0ZW5zaW9uKGNvbnN0IHN0cnVjdCBlZGlkICplZGlkLAogCQkJCQlp
bnQgKmxlbmd0aCwgaW50ICppZHgpCiB7CiAJdTggKmRpc3BsYXlpZCA9IGRybV9maW5kX2VkaWRf
ZXh0ZW5zaW9uKGVkaWQsIERJU1BMQVlJRF9FWFQpOworCXN0cnVjdCBkaXNwbGF5aWRfaGRyICpi
YXNlOwogCWludCByZXQ7CiAKIAlpZiAoIWRpc3BsYXlpZCkKQEAgLTMyMjgsNiArMzIyOSw5IEBA
IHN0YXRpYyB1OCAqZHJtX2ZpbmRfZGlzcGxheWlkX2V4dGVuc2lvbihjb25zdCBzdHJ1Y3QgZWRp
ZCAqZWRpZCwKIAlpZiAocmV0KQogCQlyZXR1cm4gTlVMTDsKIAorCWJhc2UgPSAoc3RydWN0IGRp
c3BsYXlpZF9oZHIgKikmZGlzcGxheWlkWyppZHhdOworCSpsZW5ndGggPSAqaWR4ICsgc2l6ZW9m
KCpiYXNlKSArIGJhc2UtPmJ5dGVzOworCiAJcmV0dXJuIGRpc3BsYXlpZDsKIH0KIAotLSAKMi4y
NC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
