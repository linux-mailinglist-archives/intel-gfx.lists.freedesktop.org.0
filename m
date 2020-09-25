Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FC1278937
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75556ECEE;
	Fri, 25 Sep 2020 13:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9008E6ECED
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:17:08 +0000 (UTC)
IronPort-SDR: zVDOy3gX35nDCsxDII6mWAAzNDxVJBPy5tYlFnmeyMWoad+cVMjFch3JI1TQqzFi1W20c9j2Aj
 TKxj/1YKxPTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="140934912"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="140934912"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:17:08 -0700
IronPort-SDR: GgLyeyhPqed8PRkCxTsvnKeHZ7cQ1Nh/vqDJS/lTEaJFsTLmBsP7ph9m/as4rLNJG242qr4gbA
 7m6zoHPQE2wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="291764006"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 25 Sep 2020 06:17:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:17:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:50 +0300
Message-Id: <20200925131656.10022-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
References: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Include the LUT sizes in the
 state dump
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkR1
bXAgdGhlIHNpemVzIG9mIHRoZSBzb2Z0d2FyZSBMVVRzIGluIHRoZSBzdGF0ZSBkdW1wLiBNYWtl
cwppdCBhIGJpdCBlYXNpZXIgdG8gc2VlIHdoaWNoIGlzIHByZXNlbnQgd2l0aG91dCBoYXZpbmcg
dG8KZGVjb2RlIGl0IGZyb20gdGhlIGdhbW1hX21vZGUgYW5kIG90aGVyIGJpdHMgb2Ygc3RhdGUu
Cgp2MjogRHJvcCBhIHNwdXJpb3VzICJpcyIgaW4gY29tbWl0IG1zZyAoVW1hKQoKUmV2aWV3ZWQt
Ynk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZTViYThkYmJjYTFiLi5kYWRmODk1OWY2MjUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzE5Nyw2
ICsxMzE5NywxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAkJCSAgICBwaXBlX2NvbmZpZy0+
Y3NjX21vZGUsIHBpcGVfY29uZmlnLT5nYW1tYV9tb2RlLAogCQkJICAgIHBpcGVfY29uZmlnLT5n
YW1tYV9lbmFibGUsIHBpcGVfY29uZmlnLT5jc2NfZW5hYmxlKTsKIAorCWRybV9kYmdfa21zKCZk
ZXZfcHJpdi0+ZHJtLCAiZGVnYW1tYSBsdXQ6ICVkIGVudHJpZXMsIGdhbW1hIGx1dDogJWQgZW50
cmllc1xuIiwKKwkJICAgIHBpcGVfY29uZmlnLT5ody5kZWdhbW1hX2x1dCA/CisJCSAgICBkcm1f
Y29sb3JfbHV0X3NpemUocGlwZV9jb25maWctPmh3LmRlZ2FtbWFfbHV0KSA6IDAsCisJCSAgICBw
aXBlX2NvbmZpZy0+aHcuZ2FtbWFfbHV0ID8KKwkJICAgIGRybV9jb2xvcl9sdXRfc2l6ZShwaXBl
X2NvbmZpZy0+aHcuZ2FtbWFfbHV0KSA6IDApOworCiBkdW1wX3BsYW5lczoKIAlpZiAoIXN0YXRl
KQogCQlyZXR1cm47Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
