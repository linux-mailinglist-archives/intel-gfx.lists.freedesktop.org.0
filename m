Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6E2D36BA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 03:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A51CD6E3F2;
	Fri, 11 Oct 2019 01:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722AF6E0D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 01:09:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 18:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="394243461"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.11.83])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2019 18:09:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 18:09:07 -0700
Message-Id: <20191011010907.103309-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011010907.103309-1-lucas.demarchi@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/dp-mst: fix warning on unused var
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

Rml4ZXM6IDgzZmE5ODQyYWZlNyAoImRybS9kcC1tc3Q6IERyb3AgY29ubmVjdGlvbl9tdXRleCBj
aGVjayIpClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgfCAyIC0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3Rf
dG9wb2xvZ3kuYwppbmRleCA5MzY0ZTRmNDI5NzUuLjljY2NjNWU2MzMwOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2RwX21zdF90b3BvbG9neS5jCkBAIC00MTg0LDggKzQxODQsNiBAQCBFWFBPUlRfU1lN
Qk9MKGRybV9kcF9tc3RfdG9wb2xvZ3lfc3RhdGVfZnVuY3MpOwogc3RydWN0IGRybV9kcF9tc3Rf
dG9wb2xvZ3lfc3RhdGUgKmRybV9hdG9taWNfZ2V0X21zdF90b3BvbG9neV9zdGF0ZShzdHJ1Y3Qg
ZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJCQkJCSAgICBzdHJ1Y3QgZHJtX2RwX21zdF90
b3BvbG9neV9tZ3IgKm1ncikKIHsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gbWdyLT5kZXY7
Ci0KIAlyZXR1cm4gdG9fZHBfbXN0X3RvcG9sb2d5X3N0YXRlKGRybV9hdG9taWNfZ2V0X3ByaXZh
dGVfb2JqX3N0YXRlKHN0YXRlLCAmbWdyLT5iYXNlKSk7CiB9CiBFWFBPUlRfU1lNQk9MKGRybV9h
dG9taWNfZ2V0X21zdF90b3BvbG9neV9zdGF0ZSk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
