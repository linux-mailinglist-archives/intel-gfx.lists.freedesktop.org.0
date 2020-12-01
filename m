Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4753E2C9FBA
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 11:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720776E58E;
	Tue,  1 Dec 2020 10:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A50196E865;
 Tue,  1 Dec 2020 10:36:01 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 426AAACF1;
 Tue,  1 Dec 2020 10:36:00 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie,
	daniel@ffwll.ch
Date: Tue,  1 Dec 2020 11:35:37 +0100
Message-Id: <20201201103542.2182-16-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201103542.2182-1-tzimmermann@suse.de>
References: <20201201103542.2182-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 15/20] drm/radeon: Fix trailing whitespaces
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
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, spice-devel@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRoZXJlIHRvIGtlcm5lbCBjb2Rpbmcgc3R5bGUuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmlt
bWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQWNrZWQtYnk6IEFsZXggRGV1Y2hlciA8YWxl
eGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNo
ZXJAYW1kLmNvbT4KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3IxMDAuYyAgICAgICB8IDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5jIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JhZGVvbi9yMTAwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3IxMDAuYwppbmRleCAy
NGM4ZGI2NzM5MzEuLmU0YWUwOWI1Mjk0ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yMTAwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yMTAwLmMKQEAgLTI3OTcs
NyArMjc5Nyw3IEBAIHZvaWQgcjEwMF92cmFtX2luaXRfc2l6ZXMoc3RydWN0IHJhZGVvbl9kZXZp
Y2UgKnJkZXYpCiAJCQlyZGV2LT5tYy5yZWFsX3ZyYW1fc2l6ZSA9IDgxOTIgKiAxMDI0OwogCQkJ
V1JFRzMyKFJBREVPTl9DT05GSUdfTUVNU0laRSwgcmRldi0+bWMucmVhbF92cmFtX3NpemUpOwog
CQl9Ci0JCS8qIEZpeCBmb3IgUk41MCwgTTYsIE03IHdpdGggOC8xNi8zMig/PykgTUJzIG9mIFZS
QU0gLSAKKwkJLyogRml4IGZvciBSTjUwLCBNNiwgTTcgd2l0aCA4LzE2LzMyKD8/KSBNQnMgb2Yg
VlJBTSAtCiAJCSAqIE5vdmVsbCBidWcgMjA0ODgyICsgYWxvbmcgd2l0aCBsb3RzIG9mIHVidW50
dSBvbmVzCiAJCSAqLwogCQlpZiAocmRldi0+bWMuYXBlcl9zaXplID4gY29uZmlnX2FwZXJfc2l6
ZSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5jIGIvZHJp
dmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fa21zLmMKaW5kZXggYWJiM2JkZDljYTI1Li43NWIw
Mzg3NDBlYTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2ttcy5jCkBAIC03NCw3ICs3NCw3
IEBAIHZvaWQgcmFkZW9uX2RyaXZlcl91bmxvYWRfa21zKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
CiAJfQogCiAJcmFkZW9uX2FjcGlfZmluaShyZGV2KTsKLQkKKwogCXJhZGVvbl9tb2Rlc2V0X2Zp
bmkocmRldik7CiAJcmFkZW9uX2RldmljZV9maW5pKHJkZXYpOwogCi0tIAoyLjI5LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
