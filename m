Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF153278939
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 15:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 493A36ECF1;
	Fri, 25 Sep 2020 13:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC566ECEF
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 13:17:14 +0000 (UTC)
IronPort-SDR: 5D5P0ndNN3pHX5JDRBJcHhywg9WghaToWOA7hC3cBfLV8vbggz8ZhWghD7hYVFGlQ2bVMkXtsf
 KsYI3ittaJMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="223118124"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="223118124"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 06:17:14 -0700
IronPort-SDR: zepcpaTpP03/YsSNswE8QBgq6GtQyVOvHHH86Y5WkSGJeBsZ5a5/W+B1qg5/ILRo0O9U5i8CFH
 LPqJDOYu5+fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="383470941"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 25 Sep 2020 06:17:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 16:17:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Sep 2020 16:16:52 +0300
Message-Id: <20200925131656.10022-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
References: <20200925131656.10022-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Reset glk degamma index after
 programming/readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkp1
c3QgZm9yIHNvbWUgZXh0cmEgY29uc2lzdGVuY3kgbGV0J3MgcmVzZXQgdGhlIGdsayBkZWdhbW1h
IExVVAppbmRleCBiYWNrIHRvIDAgYWZ0ZXIgd2UncmUgZG9uZyB0cmF3bGluZyB0aGUgTFVULgoK
UmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgNiArKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKaW5kZXggNzdjMTAzYTg2YTMwLi4z
N2E0ZmVkZTdiYzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMKQEAgLTgxOCwxMiArODE4LDE0IEBAIHN0YXRpYyB2b2lkIGdsa19sb2FkX2RlZ2FtbWFfbHV0
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQkgKiBhcyBjb21w
YXJlZCB0byBqdXN0IDE2IHRvIGFjaGlldmUgdGhpcy4KIAkJICovCiAJCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBQUkVfQ1NDX0dBTUNfREFUQShwaXBlKSwKLQkJICAgICAgICAgICAgICAgbHV0
W2ldLmdyZWVuKTsKKwkJCSAgICAgICBsdXRbaV0uZ3JlZW4pOwogCX0KIAogCS8qIENsYW1wIHZh
bHVlcyA+IDEuMC4gKi8KIAl3aGlsZSAoaSsrIDwgMzUpCiAJCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LCBQUkVfQ1NDX0dBTUNfREFUQShwaXBlKSwgMSA8PCAxNik7CisKKwlpbnRlbF9kZV93cml0
ZShkZXZfcHJpdiwgUFJFX0NTQ19HQU1DX0lOREVYKHBpcGUpLCAwKTsKIH0KIAogc3RhdGljIHZv
aWQgZ2xrX2xvYWRfZGVnYW1tYV9sdXRfbGluZWFyKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQpAQCAtODUxLDYgKzg1Myw4IEBAIHN0YXRpYyB2b2lkIGdsa19sb2Fk
X2RlZ2FtbWFfbHV0X2xpbmVhcihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0CiAJLyogQ2xhbXAgdmFsdWVzID4gMS4wLiAqLwogCXdoaWxlIChpKysgPCAzNSkKIAkJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBSRV9DU0NfR0FNQ19EQVRBKHBpcGUpLCAxIDw8IDE2KTsK
KworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQUkVfQ1NDX0dBTUNfSU5ERVgocGlwZSksIDAp
OwogfQogCiBzdGF0aWMgdm9pZCBnbGtfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
