Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B701433483A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 20:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D0B6E2DC;
	Wed, 10 Mar 2021 19:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D56FF6E2DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 19:43:54 +0000 (UTC)
IronPort-SDR: QAn2lsgErTwTQJXVR7dOssy0aa8iT0kqcYxr0kVywmcMoa8jdzKhqV4NAplxb4JHWberGZrxiW
 8dCZwWmIA98w==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="167824553"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="167824553"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 11:43:54 -0800
IronPort-SDR: E6XgrSLxpJ1nw6Bn3G30MBOTmgas64fw6BUJtb98ay6Ol7Yg7F09dQI0EEXDPv5EoB18zaH+qr
 mSNkV4PX4mYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="386754306"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 10 Mar 2021 11:43:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Mar 2021 21:43:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Mar 2021 21:43:51 +0200
Message-Id: <20210310194351.6233-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Tolerate bogus DPLL selection
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIGNoZWNrIHRoYXQgd2UgYWN0dWFsbHkgZm91bmQgdGhlIFBMTCBiZWZvcmUgZG9pbmcgdGhl
CnBvcnRfY2xvY2sgcmVhZG91dCwganVzdCBpbiBjYXNlIHRoZSBoYXJkd2FyZSBpcyBzZXZlcmx5
Cm1pc3Byb2dyYW1taW5nIGJ5IHRoZSBwcmV2aW91cyBndXkuIE5vdCBzdXJlIHRoZSBodyB3b3Vs
ZApldmVuIHN1cnZpdmUgc3VjaCBtaXNwcm9ncmFtbWluZyB3aXRob3V0IGhhbmdpbmcgYnV0IG5v
CnJlYWwgaGFybSBpbiBjaGVja2luZyBhbnl3YXkuCgpDYzogS2FydGhpayBCIFMgPGthcnRoaWsu
Yi5zQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jIHwgMTcgKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCmluZGV4IGJhODM2ODJlMWQzZS4uNjRhOTUyZGI4NTI4IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM3MTYsNiArMzcxNiw5IEBAIHZvaWQg
aW50ZWxfZGRpX2dldF9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlzdHJ1
Y3QgaWNsX3BvcnRfZHBsbCAqcG9ydF9kcGxsID0gJmNydGNfc3RhdGUtPmljbF9wb3J0X2RwbGxz
W3BvcnRfZHBsbF9pZF07CiAJYm9vbCBwbGxfYWN0aXZlOwogCisJaWYgKGRybV9XQVJOX09OKCZp
OTE1LT5kcm0sICFwbGwpKQorCQlyZXR1cm47CisKIAlwb3J0X2RwbGwtPnBsbCA9IHBsbDsKIAlw
bGxfYWN0aXZlID0gaW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoaTkxNSwgcGxsLCAmcG9ydF9kcGxs
LT5od19zdGF0ZSk7CiAJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIXBsbF9hY3RpdmUpOwpAQCAt
Mzc1NCwxNiArMzc1NywxNyBAQCBzdGF0aWMgdm9pZCBpY2xfZGRpX2NvbWJvX2dldF9jb25maWco
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaW50ZWxfZGRpX2dldF9jb25maWcoZW5j
b2RlciwgY3J0Y19zdGF0ZSk7CiB9CiAKLXN0YXRpYyB2b2lkIGljbF9kZGlfdGNfZ2V0X2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKLQkJCQkgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQorc3RhdGljIHZvaWQgaWNsX2RkaV90Y19nZXRfY2xvY2soc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCQkJIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAorCQkJCSBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCkKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYp
OwogCWVudW0gaWNsX3BvcnRfZHBsbF9pZCBwb3J0X2RwbGxfaWQ7CiAJc3RydWN0IGljbF9wb3J0
X2RwbGwgKnBvcnRfZHBsbDsKLQlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbDsKIAlib29s
IHBsbF9hY3RpdmU7CiAKLQlwbGwgPSBpY2xfZGRpX3RjX2dldF9wbGwoZW5jb2Rlcik7CisJaWYg
KGRybV9XQVJOX09OKCZpOTE1LT5kcm0sICFwbGwpKQorCQlyZXR1cm47CiAKIAlpZiAoaW50ZWxf
Z2V0X3NoYXJlZF9kcGxsX2lkKGk5MTUsIHBsbCkgPT0gRFBMTF9JRF9JQ0xfVEJUUExMKQogCQlw
b3J0X2RwbGxfaWQgPSBJQ0xfUE9SVF9EUExMX0RFRkFVTFQ7CkBAIC0zNzgzLDcgKzM3ODcsMTIg
QEAgc3RhdGljIHZvaWQgaWNsX2RkaV90Y19nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAogCWVsc2UKIAkJY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9IGludGVsX2RwbGxf
Z2V0X2ZyZXEoaTkxNSwgY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwsCiAJCQkJCQkJICAgICAmY3J0
Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZSk7Cit9CiAKK3N0YXRpYyB2b2lkIGljbF9kZGlfdGNfZ2V0
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCQkgIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCWljbF9kZGlfdGNfZ2V0X2Nsb2NrKGVuY29k
ZXIsIGNydGNfc3RhdGUsIGljbF9kZGlfdGNfZ2V0X3BsbChlbmNvZGVyKSk7CiAJaW50ZWxfZGRp
X2dldF9jb25maWcoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CiB9CiAKLS0gCjIuMjYuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
