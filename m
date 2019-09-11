Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96312AFDBC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 15:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9BC6EAFD;
	Wed, 11 Sep 2019 13:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B02B6EB00
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 13:31:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 06:31:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="185819785"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 11 Sep 2019 06:31:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2019 16:31:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 16:31:28 +0300
Message-Id: <20190911133129.27466-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
References: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Reuse cnl_modeset_calc_cdclk() on
 icl+
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
ZSBjbmwgYW5kIGljbCAubW9kZXNldF9jYWxjX2NkY2xrKCkgZnVuY3Rpb25zIGFyZSBpZGVudGlj
YWwuIERyb3Agb25lCmNvcHkuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYyB8IDM3ICsrLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDM1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCBmNTlhNmY3NzUxNzcuLmY1YTk5ZWI3N2Vm
YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMjIy
NywzOSArMjIyNyw2IEBAIHN0YXRpYyBpbnQgY25sX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAljZGNsayA9IGJ4dF9jYWxjX2NkY2xrKGRldl9w
cml2LCBtaW5fY2RjbGspOwogCXZjbyA9IGJ4dF9jYWxjX2NkY2xrX3BsbF92Y28oZGV2X3ByaXYs
IGNkY2xrKTsKIAotCXN0YXRlLT5jZGNsay5sb2dpY2FsLnZjbyA9IHZjbzsKLQlzdGF0ZS0+Y2Rj
bGsubG9naWNhbC5jZGNsayA9IGNkY2xrOwotCXN0YXRlLT5jZGNsay5sb2dpY2FsLnZvbHRhZ2Vf
bGV2ZWwgPQotCQltYXgoY25sX2NhbGNfdm9sdGFnZV9sZXZlbChjZGNsayksCi0JCSAgICBjbmxf
Y29tcHV0ZV9taW5fdm9sdGFnZV9sZXZlbChzdGF0ZSkpOwotCi0JaWYgKCFzdGF0ZS0+YWN0aXZl
X3BpcGVzKSB7Ci0JCWNkY2xrID0gYnh0X2NhbGNfY2RjbGsoZGV2X3ByaXYsIHN0YXRlLT5jZGNs
ay5mb3JjZV9taW5fY2RjbGspOwotCQl2Y28gPSBieHRfY2FsY19jZGNsa19wbGxfdmNvKGRldl9w
cml2LCBjZGNsayk7Ci0KLQkJc3RhdGUtPmNkY2xrLmFjdHVhbC52Y28gPSB2Y287Ci0JCXN0YXRl
LT5jZGNsay5hY3R1YWwuY2RjbGsgPSBjZGNsazsKLQkJc3RhdGUtPmNkY2xrLmFjdHVhbC52b2x0
YWdlX2xldmVsID0KLQkJCWNubF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoY2RjbGspOwotCX0gZWxzZSB7
Ci0JCXN0YXRlLT5jZGNsay5hY3R1YWwgPSBzdGF0ZS0+Y2RjbGsubG9naWNhbDsKLQl9Ci0KLQly
ZXR1cm4gMDsKLX0KLQotc3RhdGljIGludCBpY2xfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQotewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKLQlpbnQgbWluX2NkY2xrLCBjZGNs
aywgdmNvOwotCi0JbWluX2NkY2xrID0gaW50ZWxfY29tcHV0ZV9taW5fY2RjbGsoc3RhdGUpOwot
CWlmIChtaW5fY2RjbGsgPCAwKQotCQlyZXR1cm4gbWluX2NkY2xrOwotCi0JY2RjbGsgPSBieHRf
Y2FsY19jZGNsayhkZXZfcHJpdiwgbWluX2NkY2xrKTsKLQl2Y28gPSBieHRfY2FsY19jZGNsa19w
bGxfdmNvKGRldl9wcml2LCBjZGNsayk7Ci0KIAlzdGF0ZS0+Y2RjbGsubG9naWNhbC52Y28gPSB2
Y287CiAJc3RhdGUtPmNkY2xrLmxvZ2ljYWwuY2RjbGsgPSBjZGNsazsKIAlzdGF0ZS0+Y2RjbGsu
bG9naWNhbC52b2x0YWdlX2xldmVsID0KQEAgLTI0OTksMTIgKzI0NjYsMTIgQEAgdm9pZCBpbnRl
bF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsK
IAlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7CiAJCWRldl9wcml2LT5kaXNwbGF5LnNl
dF9jZGNsayA9IGJ4dF9zZXRfY2RjbGs7Ci0JCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2Fs
Y19jZGNsayA9IGljbF9tb2Rlc2V0X2NhbGNfY2RjbGs7CisJCWRldl9wcml2LT5kaXNwbGF5Lm1v
ZGVzZXRfY2FsY19jZGNsayA9IGNubF9tb2Rlc2V0X2NhbGNfY2RjbGs7CiAJCWRldl9wcml2LT5k
aXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9IGVobF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7CiAJCWRl
dl9wcml2LT5jZGNsay50YWJsZSA9IGljbF9jZGNsa190YWJsZTsKIAl9IGVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTEpIHsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0g
Ynh0X3NldF9jZGNsazsKLQkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0g
aWNsX21vZGVzZXRfY2FsY19jZGNsazsKKwkJZGV2X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxj
X2NkY2xrID0gY25sX21vZGVzZXRfY2FsY19jZGNsazsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuY2Fs
Y192b2x0YWdlX2xldmVsID0gaWNsX2NhbGNfdm9sdGFnZV9sZXZlbDsKIAkJZGV2X3ByaXYtPmNk
Y2xrLnRhYmxlID0gaWNsX2NkY2xrX3RhYmxlOwogCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShk
ZXZfcHJpdikpIHsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
