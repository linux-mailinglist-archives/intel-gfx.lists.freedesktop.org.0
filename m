Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F571D7838
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 14:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5593C6E155;
	Mon, 18 May 2020 12:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78E116E155
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 12:13:58 +0000 (UTC)
IronPort-SDR: W4c1xEueDnMePl2CuZ4mAgoEaVF9TZ3doUsCOa4xl6z6Bw8Q+b/bt9DzJDsnDKyC0Mt0LiafbF
 14U2O+8tcU+w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 05:13:59 -0700
IronPort-SDR: AT33pBrcNqkeIG2XxbG7DasDmnwVaelDXO93Y2s0VgDHCHY4msG749oEpY4s3PeHObFuOWhr7b
 fggRsIqmF5jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="299752917"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 18 May 2020 05:13:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 May 2020 15:13:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 15:13:54 +0300
Message-Id: <20200518121354.20401-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
References: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix dbuf slice mask when turning
 off all the pipes
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjdXJyZW50IGRidWYgc2xpY2UgY29tcHV0YXRpb24gb25seSBoYXBwZW5zIHdoZW4gdGhlcmUg
YXJlCmFjdGl2ZSBwaXBlcy4gSWYgd2UgYXJlIHR1cm5pbmcgb2ZmIGFsbCB0aGUgcGlwZXMgd2Ug
anVzdCBsZWF2ZQp0aGUgZGJ1ZiBzbGljZSBtYXNrIGF0IGl0J3MgcHJldmlvdXMgdmFsdWUsIHdo
aWNoIG1heSBiZSBzb21ldGhpbmcKb3RoZXIgdGhhdCBCSVQoUzEpLiBJZiBydW50aW1lIFBNIHdp
bGwga2ljayBpbiBpdCB3aWxsIGhvd2V2ZXIKdHVybiBvZmYgZXZlcnl0aGluZyBidXQgUzEuIFRo
ZW4gb24gdGhlIG5leHQgYXRvbWljIGNvbW1pdCAoaWYKdGhlIG5ldyBkYnVmIHNsaWNlIG1hc2sg
bWF0Y2hlcyB0aGUgc3RhbGUgdmFsdWUgd2UgbGVmdCBiZWhpbmQpCnRoZSBjb2RlIHdpbGwgbm90
IHR1cm4gb24gdGhlIG90aGVyIHNsaWNlcyB3ZSBub3cgbmVlZC4gVGhpcyB3aWxsCmxlYWQgdG8g
dW5kZXJydW5zIGFzIHRoZSBwbGFuZXMgYXJlIHRyeWluZyB0byB1c2UgYSBkYnVmIHNsaWNlCnRo
YXQncyBub3QgcG93ZXJlZCB1cC4KClRvIHdvcmsgYXJvdW5kIGxldCdzIGp1c3QganVzdCBleHBs
aWNpdGx5IHNldCB0aGUgZGJ1ZiBzbGljZSBtYXNrCnRvIEJJVChTMSkgd2hlbiB3ZSBhcmUgdHVy
bmluZyBvZmYgYWxsIHRoZSBwaXBlcy4gUmVhbGx5IHRoZSBjb2RlCnNob3VsZCBqdXN0IGNhbGN1
bGF0ZSB0aGlzIHN0dWZmIHRoZSBzYW1lIHdheSByZWdhcmRsZXNzIHdoZXRoZXIKdGhlIHBpcGVz
IGFyZSBvbiBvciBvZmYsIGJ1dCB3ZSdyZSBub3QgcXVpdGUgdGhlcmUgeWV0IChuZWVkIGEKYml0
IG1vcmUgd29yayBvbiB0aGUgZGJ1ZiBzdGF0ZSBmb3IgdGhhdCkuCgp2MjogTGV0J3Mgbm90IHB1
dCB0aGUgZml4IGludG8gZGVhZCBjb2RlCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3Rhbmlz
bGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CkFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4gI3YxCkZpeGVzOiAzY2Y0M2NkYzYzZmIgKCJkcm0vaTkxNTogSW50
cm9kdWNlIHByb3BlciBkYnVmIHN0YXRlIikKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMjQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGEyMWUzNmVk
MWE3Ny4uMDA4MjU4MmQ4MzUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTQ3NjQsNiAr
NDc2NCwzMCBAQCBza2xfYWxsb2NhdGVfcGlwZV9kZGIoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpCiAJbWVtc2V0KGNydGNfc3RhdGUtPndtLnNrbC5wbGFuZV9kZGJfdXYsIDAs
IHNpemVvZihjcnRjX3N0YXRlLT53bS5za2wucGxhbmVfZGRiX3V2KSk7CiAKIAlpZiAoIWNydGNf
c3RhdGUtPmh3LmFjdGl2ZSkgeworCQlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9
CisJCQl0b19pbnRlbF9hdG9taWNfc3RhdGUoY3J0Y19zdGF0ZS0+dWFwaS5zdGF0ZSk7CisJCXN0
cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpuZXdfZGJ1Zl9zdGF0ZSA9CisJCQlpbnRlbF9hdG9taWNf
Z2V0X25ld19kYnVmX3N0YXRlKHN0YXRlKTsKKwkJY29uc3Qgc3RydWN0IGludGVsX2RidWZfc3Rh
dGUgKm9sZF9kYnVmX3N0YXRlID0KKwkJCWludGVsX2F0b21pY19nZXRfb2xkX2RidWZfc3RhdGUo
c3RhdGUpOworCisJCS8qCisJCSAqIEZJWE1FIGhhY2sgdG8gbWFrZSBzdXJlIHdlIGNvbXB1dGUg
dGhpcyBzZW5zaWJseSB3aGVuCisJCSAqIHR1cm5pbmcgb2ZmIGFsbCB0aGUgcGlwZXMuIE90aGVy
d2lzZSB3ZSBsZWF2ZSBpdCBhdAorCQkgKiB3aGF0ZXZlciB3ZSBoYWQgcHJldmlvdXNseSwgYW5k
IHRoZW4gcnVudGltZSBQTSB3aWxsCisJCSAqIG1lc3MgaXQgdXAgYnkgdHVybmluZyBvZmYgYWxs
IGJ1dCBTMS4gUmVtb3ZlIHRoaXMKKwkJICogb25jZSB0aGUgZGJ1ZiBzdGF0ZSBjb21wdXRhdGlv
biBmbG93IGJlY29tZXMgc2FuZS4KKwkJICovCisJCWlmIChuZXdfZGJ1Zl9zdGF0ZS0+YWN0aXZl
X3BpcGVzID09IDApIHsKKwkJCW5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyA9IEJJVChE
QlVGX1MxKTsKKworCQkJaWYgKG9sZF9kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyAhPSBuZXdf
ZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMpIHsKKwkJCQlyZXQgPSBpbnRlbF9hdG9taWNfc2Vy
aWFsaXplX2dsb2JhbF9zdGF0ZSgmbmV3X2RidWZfc3RhdGUtPmJhc2UpOworCQkJCWlmIChyZXQp
CisJCQkJCXJldHVybiByZXQ7CisJCQl9CisJCX0KKwogCQlhbGxvYy0+c3RhcnQgPSBhbGxvYy0+
ZW5kID0gMDsKIAkJcmV0dXJuIDA7CiAJfQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
