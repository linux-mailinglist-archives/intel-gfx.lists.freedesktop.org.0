Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7834A436F8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA5D89AA7;
	Thu, 13 Jun 2019 13:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DF9E89A8B;
 Thu, 13 Jun 2019 13:54:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id C27D62809AE
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Thu, 13 Jun 2019 14:53:20 +0100
Message-Id: <d23e7d953526d4f2e569d375523829f21091255d.1560433744.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1560433744.git.guillaume.tucker@collabora.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 2/4] gitlab-ci: add libatomic to docker
 images
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGxpYmF0b21pYyB0byB0aGUgRmVkb3JhIGRvY2tlciBpbWFnZSBzbyBpdCBjYW4gbGluayBi
aW5hcmllcyB0aGF0CnVzZSBfX2F0b21pY18qIGZ1bmN0aW9ucy4gIEFsc28gZXhwbGljaXRseSBh
ZGQgbGliYXRvbWljMSB0byBEZWJpYW4KZG9ja2VyIGltYWdlcyBldmVuIHRob3VnaCBpdCdzIGFs
cmVhZHkgaW5zdGFsbGVkIGFzIGEgZGVwZW5kZW5jeS4KClNpZ25lZC1vZmYtYnk6IEd1aWxsYXVt
ZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4KLS0tCiBEb2NrZXJmaWxl
LmRlYmlhbiAgICAgICB8IDEgKwogRG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQgfCAxICsKIERvY2tl
cmZpbGUuZGViaWFuLWFybWhmIHwgMSArCiBEb2NrZXJmaWxlLmZlZG9yYSAgICAgICB8IDIgKy0K
IDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4gYi9Eb2NrZXJmaWxlLmRlYmlhbgppbmRleCBiOWMzYmUz
OTQ1ZTAuLmQyMzU5MTg1MGM0ZSAxMDA2NDQKLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4KKysrIGIv
RG9ja2VyZmlsZS5kZWJpYW4KQEAgLTYsNiArNiw3IEBAIFJVTiBhcHQtZ2V0IGluc3RhbGwgLXkg
XAogCQkJZmxleCBcCiAJCQliaXNvbiBcCiAJCQlwa2ctY29uZmlnIFwKKwkJCWxpYmF0b21pYzEg
XAogCQkJbGlicGNpYWNjZXNzLWRldiBcCiAJCQlsaWJrbW9kLWRldiBcCiAJCQlsaWJwcm9jcHMt
ZGV2IFwKZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0IGIvRG9ja2VyZmlsZS5k
ZWJpYW4tYXJtNjQKaW5kZXggN2IzYTNjN2NhODAzLi4wMDNiYjIyYjMyMTUgMTAwNjQ0Ci0tLSBh
L0RvY2tlcmZpbGUuZGViaWFuLWFybTY0CisrKyBiL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0CkBA
IC01LDYgKzUsNyBAQCBSVU4gYXB0LWdldCBpbnN0YWxsIC15IFwKIAkJCWZsZXggXAogCQkJYmlz
b24gXAogCQkJcGtnLWNvbmZpZyBcCisJCQlsaWJhdG9taWMxIFwKIAkJCXgxMXByb3RvLWRyaTIt
ZGV2IFwKIAkJCXB5dGhvbi1kb2N1dGlscyBcCiAJCQl2YWxncmluZCBcCmRpZmYgLS1naXQgYS9E
b2NrZXJmaWxlLmRlYmlhbi1hcm1oZiBiL0RvY2tlcmZpbGUuZGViaWFuLWFybWhmCmluZGV4IGM2
N2ExZTJhY2Y2YS4uMzEzOTkyN2MxOTNhIDEwMDY0NAotLS0gYS9Eb2NrZXJmaWxlLmRlYmlhbi1h
cm1oZgorKysgYi9Eb2NrZXJmaWxlLmRlYmlhbi1hcm1oZgpAQCAtNSw2ICs1LDcgQEAgUlVOIGFw
dC1nZXQgaW5zdGFsbCAteSBcCiAJCQlmbGV4IFwKIAkJCWJpc29uIFwKIAkJCXBrZy1jb25maWcg
XAorCQkJbGliYXRvbWljMSBcCiAJCQl4MTFwcm90by1kcmkyLWRldiBcCiAJCQlweXRob24tZG9j
dXRpbHMgXAogCQkJdmFsZ3JpbmQgXApkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5mZWRvcmEgYi9E
b2NrZXJmaWxlLmZlZG9yYQppbmRleCA2Njg2ZTU4NzYxM2QuLmM4NGI0MTJiMDcyMyAxMDA2NDQK
LS0tIGEvRG9ja2VyZmlsZS5mZWRvcmEKKysrIGIvRG9ja2VyZmlsZS5mZWRvcmEKQEAgLTEsNyAr
MSw3IEBACiBGUk9NIGZlZG9yYTozMAogCiBSVU4gZG5mIGluc3RhbGwgLXkgXAotCWdjYyBmbGV4
IGJpc29uIG1lc29uIG5pbmphLWJ1aWxkIHhkb3Rvb2wgXAorCWdjYyBmbGV4IGJpc29uIGxpYmF0
b21pYyBtZXNvbiBuaW5qYS1idWlsZCB4ZG90b29sIFwKIAkncGtnY29uZmlnKGxpYmRybSknIFwK
IAkncGtnY29uZmlnKHBjaWFjY2VzcyknIFwKIAkncGtnY29uZmlnKGxpYmttb2QpJyBcCi0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
