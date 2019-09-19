Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A54B7F29
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677A36F7EE;
	Thu, 19 Sep 2019 16:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE8746F7E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="194432423"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 19 Sep 2019 09:31:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:06 +0300
Message-Id: <20190919163113.17402-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 14/21] sna/fb: Use memcpy() to
 avoid strict aliasing violations
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhlIGNhc3QrZGVyZWYgd2l0aCBtZW1jcHkoKSBzbyB0aGF0IHdlIGRvbid0IHVwc2V0
CnRoZSBjb21waWxlcidzIHN0cmljdCBhbGlhc2luZyBydWxlcy4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogc3JjL3Nu
YS9mYi9mYnNwYW4uYyB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9zbmEvZmIvZmJzcGFuLmMgYi9zcmMv
c25hL2ZiL2Zic3Bhbi5jCmluZGV4IDQ1Y2I3Y2M3YmQ2Yy4uMTgxMzZjMjAwNDU4IDEwMDY0NAot
LS0gYS9zcmMvc25hL2ZiL2Zic3Bhbi5jCisrKyBiL3NyYy9zbmEvZmIvZmJzcGFuLmMKQEAgLTM5
LDEyICszOSwxMyBAQCBmYkZpbGxTcGFucyhEcmF3YWJsZVB0ciBkcmF3YWJsZSwgR0NQdHIgZ2Ms
CiAJd2hpbGUgKG4tLSkgewogCQlCb3hSZWMgYm94OwogCi0JCSooRERYUG9pbnRQdHIpJmJveCA9
ICpwdCsrOworCQltZW1jcHkoJmJveCwgcHQsIHNpemVvZihib3gpKTsKIAkJYm94LngyID0gYm94
LngxICsgKndpZHRoKys7CiAJCWJveC55MiA9IGJveC55MSArIDE7CiAKIAkJLyogWFhYIGZTb3J0
ZWQgKi8KIAkJZmJEcmF3YWJsZVJ1bihkcmF3YWJsZSwgZ2MsICZib3gsIGZiRmlsbFNwYW4sIE5V
TEwpOworCQlwdCsrOwogCX0KIH0KIApAQCAtOTEsNyArOTIsOCBAQCBmYlNldFNwYW5zKERyYXdh
YmxlUHRyIGRyYXdhYmxlLCBHQ1B0ciBnYywKIAl3aGlsZSAobi0tKSB7CiAJCUJveFJlYyBib3g7
CiAKLQkJKihERFhQb2ludFB0cikmYm94ID0gZGF0YS5wdCA9ICpwdDsKKwkJbWVtY3B5KCZib3gs
IHB0LCBzaXplb2YoYm94KSk7CisJCWRhdGEucHQgPSAqcHQ7CiAJCWJveC54MiA9IGJveC54MSAr
ICp3aWR0aDsKIAkJYm94LnkyID0gYm94LnkxICsgMTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
