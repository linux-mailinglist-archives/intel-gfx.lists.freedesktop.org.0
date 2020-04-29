Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2B81BD92F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D62A6EE59;
	Wed, 29 Apr 2020 10:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF846EE02
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:11:09 +0000 (UTC)
IronPort-SDR: +UX47iRHmlWz8rrrITXwgM3+x7zfz8i3jFjBrpLIx8E/uoLuP4qHieGMiZKuImQnTXQ3+T3Z4m
 gsRnCL7nhQTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:11:09 -0700
IronPort-SDR: eHkNM8As+NyMGT4X2aANYR3QJfem3m/0+WJdC1acgEzCPVxgwJyFrkndv2ntoFk88ekVj5HpaA
 CTD0KAzPydNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="261388427"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 29 Apr 2020 03:11:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:11:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:33 +0300
Message-Id: <20200429101034.8208-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: Fix g4x fbc watermark enable
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCids
ZXZlbCcgaGVyZSBtZWFucyB0aGUgaGlnaGVzdCBsZXZlbCB3ZSBjYW4ndCB1c2UsIHNvIHdoZW4g
Y2hlY2tpbmcKdGhlIGZiYyB3YXRlcm1hcmtzIHdlIG5lZWQgYSAtMSB0byBnZXQgYXQgdGhlIGxh
c3QgZW5hYmxlZCBsZXZlbC4KCldoaWxlIGF0IGlmIHJlZmFjdG9yIHRoZSBjb2RlIGEgYml0IHRv
IGRlY2x1dHRlcgpnNHhfY29tcHV0ZV9waXBlX3dtKCkuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgfCAzMyArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAxZTk5YjM1ZjAwN2UuLjFjOTJlYmY2NGEzNCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0xMzQ0LDYgKzEzNDQsMjMgQEAgc3RhdGljIHZvaWQg
ZzR4X2ludmFsaWRhdGVfd21zKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCX0KIH0KIAorc3Rh
dGljIGJvb2wgZzR4X2NvbXB1dGVfZmJjX2VuKGNvbnN0IHN0cnVjdCBnNHhfd21fc3RhdGUgKndt
X3N0YXRlLAorCQkJICAgICAgIGludCBsZXZlbCkKK3sKKwlpZiAobGV2ZWwgPCBHNFhfV01fTEVW
RUxfU1IpCisJCXJldHVybiBmYWxzZTsKKworCWlmIChsZXZlbCA+PSBHNFhfV01fTEVWRUxfU1Ig
JiYKKwkgICAgd21fc3RhdGUtPnNyLmZiYyA+IGc0eF9mYmNfZmlmb19zaXplKEc0WF9XTV9MRVZF
TF9TUikpCisJCXJldHVybiBmYWxzZTsKKworCWlmIChsZXZlbCA+PSBHNFhfV01fTEVWRUxfSFBM
TCAmJgorCSAgICB3bV9zdGF0ZS0+aHBsbC5mYmMgPiBnNHhfZmJjX2ZpZm9fc2l6ZShHNFhfV01f
TEVWRUxfSFBMTCkpCisJCXJldHVybiBmYWxzZTsKKworCXJldHVybiB0cnVlOworfQorCiBzdGF0
aWMgaW50IGc0eF9jb21wdXRlX3BpcGVfd20oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNf
c3RhdGUtPnVhcGkuY3J0Yyk7CkBAIC0xMzgzLDcgKzE0MDAsNiBAQCBzdGF0aWMgaW50IGc0eF9j
b21wdXRlX3BpcGVfd20oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCXdt
X3N0YXRlLT53bS5wbGFuZVtwbGFuZV9pZF0gPSByYXctPnBsYW5lW3BsYW5lX2lkXTsKIAogCWxl
dmVsID0gRzRYX1dNX0xFVkVMX1NSOwotCiAJaWYgKCFnNHhfcmF3X2NydGNfd21faXNfdmFsaWQo
Y3J0Y19zdGF0ZSwgbGV2ZWwpKQogCQlnb3RvIG91dDsKIApAQCAtMTM5NSw3ICsxNDExLDYgQEAg
c3RhdGljIGludCBnNHhfY29tcHV0ZV9waXBlX3dtKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQogCXdtX3N0YXRlLT5jeHNyID0gbnVtX2FjdGl2ZV9wbGFuZXMgPT0gQklUKFBM
QU5FX1BSSU1BUlkpOwogCiAJbGV2ZWwgPSBHNFhfV01fTEVWRUxfSFBMTDsKLQogCWlmICghZzR4
X3Jhd19jcnRjX3dtX2lzX3ZhbGlkKGNydGNfc3RhdGUsIGxldmVsKSkKIAkJZ290byBvdXQ7CiAK
QEAgLTE0MTgsMTcgKzE0MzMsMTEgQEAgc3RhdGljIGludCBnNHhfY29tcHV0ZV9waXBlX3dtKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCS8qCiAJICogRGV0ZXJtaW5lIGlm
IHRoZSBGQkMgd2F0ZXJtYXJrKHMpIGNhbiBiZSB1c2VkLiBJRgogCSAqIHRoaXMgaXNuJ3QgdGhl
IGNhc2Ugd2UgcHJlZmVyIHRvIGRpc2FibGUgdGhlIEZCQwotCSAoIHdhdGVybWFyayhzKSByYXRo
ZXIgdGhhbiBkaXNhYmxlIHRoZSBTUi9IUExMCi0JICogbGV2ZWwocykgZW50aXJlbHkuCisJICog
d2F0ZXJtYXJrKHMpIHJhdGhlciB0aGFuIGRpc2FibGUgdGhlIFNSL0hQTEwKKwkgKiBsZXZlbChz
KSBlbnRpcmVseS4gJ2xldmVsLTEnIGlzIHRoZSBoaWdoZXN0IHZhbGlkCisJICogbGV2ZWwgaGVy
ZS4KIAkgKi8KLQl3bV9zdGF0ZS0+ZmJjX2VuID0gbGV2ZWwgPiBHNFhfV01fTEVWRUxfTk9STUFM
OwotCi0JaWYgKGxldmVsID49IEc0WF9XTV9MRVZFTF9TUiAmJgotCSAgICB3bV9zdGF0ZS0+c3Iu
ZmJjID4gZzR4X2ZiY19maWZvX3NpemUoRzRYX1dNX0xFVkVMX1NSKSkKLQkJd21fc3RhdGUtPmZi
Y19lbiA9IGZhbHNlOwotCWVsc2UgaWYgKGxldmVsID49IEc0WF9XTV9MRVZFTF9IUExMICYmCi0J
CSB3bV9zdGF0ZS0+aHBsbC5mYmMgPiBnNHhfZmJjX2ZpZm9fc2l6ZShHNFhfV01fTEVWRUxfSFBM
TCkpCi0JCXdtX3N0YXRlLT5mYmNfZW4gPSBmYWxzZTsKKwl3bV9zdGF0ZS0+ZmJjX2VuID0gZzR4
X2NvbXB1dGVfZmJjX2VuKHdtX3N0YXRlLCBsZXZlbCAtIDEpOwogCiAJcmV0dXJuIDA7CiB9Ci0t
IAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
