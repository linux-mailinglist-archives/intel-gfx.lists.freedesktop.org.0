Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 099F21E42E1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 15:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDC76E2E6;
	Wed, 27 May 2020 13:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDDE46E0A2;
 Wed, 27 May 2020 13:03:23 +0000 (UTC)
IronPort-SDR: pbVTfLp8V5aocm7I9loTwQZ6WeTPmwhIDz5Wx+qTwywatF055HFfIYsEp0sO64NovoC1gaEHWR
 7I5scUU32sSw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 06:03:23 -0700
IronPort-SDR: PqLV4jVuB3C/bGojlNRHUisL5j5CVHoPT/ndWeyNHUPrCp0X0GomfrwmCQs5bukpI9fA801e0i
 jam3ong7sh+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,441,1583222400"; d="scan'208";a="345523943"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 27 May 2020 06:03:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 May 2020 16:03:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 27 May 2020 16:03:10 +0300
Message-Id: <20200527130310.27099-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527130310.27099-1-ville.syrjala@linux.intel.com>
References: <20200527130310.27099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/edid: Clean up some curly braces
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRy
b3Agc29tZSBwb2ludGxlc3MgY3VybHkgYnJhY2VzLCBhbmQgYWRkIHNvbWUgYWNyb3NzIHRoZQpl
bHNlIHdoZW4gdGhlIGlmIGhhcyB0aGVtIHRvby4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2RybV9lZGlkLmMgfCA5ICsrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IGRjYjIzNTYzZDI5ZC4uOGE5NTFl
MmJmYjQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwpAQCAtNTgzNiwyMiArNTgzNiwyMSBAQCBzdGF0aWMgdm9p
ZCBkcm1fcGFyc2VfdGlsZWRfYmxvY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwK
IAlEUk1fREVCVUdfS01TKCJ2ZW5kICVjJWMlY1xuIiwgdGlsZS0+dG9wb2xvZ3lfaWRbMF0sIHRp
bGUtPnRvcG9sb2d5X2lkWzFdLCB0aWxlLT50b3BvbG9neV9pZFsyXSk7CiAKIAl0ZyA9IGRybV9t
b2RlX2dldF90aWxlX2dyb3VwKGNvbm5lY3Rvci0+ZGV2LCB0aWxlLT50b3BvbG9neV9pZCk7Ci0J
aWYgKCF0ZykgeworCWlmICghdGcpCiAJCXRnID0gZHJtX21vZGVfY3JlYXRlX3RpbGVfZ3JvdXAo
Y29ubmVjdG9yLT5kZXYsIHRpbGUtPnRvcG9sb2d5X2lkKTsKLQl9CiAJaWYgKCF0ZykKIAkJcmV0
dXJuOwogCiAJaWYgKGNvbm5lY3Rvci0+dGlsZV9ncm91cCAhPSB0ZykgewogCQkvKiBpZiB3ZSBo
YXZlbid0IGdvdCBhIHBvaW50ZXIsCiAJCSAgIHRha2UgdGhlIHJlZmVyZW5jZSwgZHJvcCByZWYg
dG8gb2xkIHRpbGUgZ3JvdXAgKi8KLQkJaWYgKGNvbm5lY3Rvci0+dGlsZV9ncm91cCkgeworCQlp
ZiAoY29ubmVjdG9yLT50aWxlX2dyb3VwKQogCQkJZHJtX21vZGVfcHV0X3RpbGVfZ3JvdXAoY29u
bmVjdG9yLT5kZXYsIGNvbm5lY3Rvci0+dGlsZV9ncm91cCk7Ci0JCX0KIAkJY29ubmVjdG9yLT50
aWxlX2dyb3VwID0gdGc7Ci0JfSBlbHNlCisJfSBlbHNlIHsKIAkJLyogaWYgc2FtZSB0aWxlIGdy
b3VwLCB0aGVuIHJlbGVhc2UgdGhlIHJlZiB3ZSBqdXN0IHRvb2suICovCiAJCWRybV9tb2RlX3B1
dF90aWxlX2dyb3VwKGNvbm5lY3Rvci0+ZGV2LCB0Zyk7CisJfQogfQogCiBzdGF0aWMgdm9pZCBk
cm1fZGlzcGxheWlkX3BhcnNlX3RpbGVkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3Is
Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
