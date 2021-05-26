Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 610DC39164C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:33:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D4456ECB7;
	Wed, 26 May 2021 11:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB1D6EC9B;
 Wed, 26 May 2021 11:33:41 +0000 (UTC)
IronPort-SDR: h3ywFZRnPuQ7BJWzh0l1OyRhB3XvHghlv/YSc4dRwphIxF0DINl0AZBzmCpuupVO94AHC1+sQV
 F4FRf8BMQClg==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223627325"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223627325"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:40 -0700
IronPort-SDR: q1y9mVZJvWJ+HxyI7+yHDNxqy8eew+k9krJGD71Ukdgr0HycvarZQud53V+V7fkscadaowyz5v
 FbRS7s9Nv10Q==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633457971"
Received: from pegilssx-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:38 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 13:32:58 +0200
Message-Id: <20210526113259.1661914-15-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 14/15] drm/vma: Add a driver_private member
 to vma_node.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KClRoaXMgYWxsb3dzIGRyaXZlcnMgdG8gZGlzdGluZ3Vpc2ggYmV0d2VlbiBkaWZmZXJlbnQg
dHlwZXMgb2Ygdm1hX25vZGUncy4KVGhlIHJlYWRvbmx5IGZsYWcgd2FzIHVudXNlZCBhbmQgaXMg
dGh1cyByZW1vdmVkLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
ZHJtX2dlbS5jICAgICB8IDkgLS0tLS0tLS0tCiBpbmNsdWRlL2RybS9kcm1fdm1hX21hbmFnZXIu
aCB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEwIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2dlbS5jCmluZGV4IDk5ODk0MjVlOTg3NS4uZTcxMGU3OTA2OWY2IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2Vt
LmMKQEAgLTExNDksMTUgKzExNDksNiBAQCBpbnQgZHJtX2dlbV9tbWFwKHN0cnVjdCBmaWxlICpm
aWxwLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKIAkJcmV0dXJuIC1FQUNDRVM7CiAJfQog
Ci0JaWYgKG5vZGUtPnJlYWRvbmx5KSB7Ci0JCWlmICh2bWEtPnZtX2ZsYWdzICYgVk1fV1JJVEUp
IHsKLQkJCWRybV9nZW1fb2JqZWN0X3B1dChvYmopOwotCQkJcmV0dXJuIC1FSU5WQUw7Ci0JCX0K
LQotCQl2bWEtPnZtX2ZsYWdzICY9IH5WTV9NQVlXUklURTsKLQl9Ci0KIAlyZXQgPSBkcm1fZ2Vt
X21tYXBfb2JqKG9iaiwgZHJtX3ZtYV9ub2RlX3NpemUobm9kZSkgPDwgUEFHRV9TSElGVCwKIAkJ
CSAgICAgICB2bWEpOwogCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fdm1hX21hbmFnZXIu
aCBiL2luY2x1ZGUvZHJtL2RybV92bWFfbWFuYWdlci5oCmluZGV4IDc2YWM1ZTk3YTU1OS4uNGY4
YzM1MjA2ZjdjIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fdm1hX21hbmFnZXIuaAorKysg
Yi9pbmNsdWRlL2RybS9kcm1fdm1hX21hbmFnZXIuaApAQCAtNTMsNyArNTMsNyBAQCBzdHJ1Y3Qg
ZHJtX3ZtYV9vZmZzZXRfbm9kZSB7CiAJcndsb2NrX3Qgdm1fbG9jazsKIAlzdHJ1Y3QgZHJtX21t
X25vZGUgdm1fbm9kZTsKIAlzdHJ1Y3QgcmJfcm9vdCB2bV9maWxlczsKLQlib29sIHJlYWRvbmx5
OjE7CisJdm9pZCAqZHJpdmVyX3ByaXZhdGU7CiB9OwogCiBzdHJ1Y3QgZHJtX3ZtYV9vZmZzZXRf
bWFuYWdlciB7Ci0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
