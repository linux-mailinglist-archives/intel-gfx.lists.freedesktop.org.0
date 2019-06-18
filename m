Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FEE4A0C5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 417096E15E;
	Tue, 18 Jun 2019 12:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02586E15A;
 Tue, 18 Jun 2019 12:28:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 564482861EA
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>, "Ser, Simon" <simon.ser@intel.com>
Date: Tue, 18 Jun 2019 13:27:44 +0100
Message-Id: <20190618122746.61310-3-guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618122746.61310-1-guillaume.tucker@collabora.com>
References: <20190618122746.61310-1-guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 2/4] gitlab-ci: add libatomic to docker
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
ZGQgbGliYXRvbWljMSB0byBEZWJpYW4KZG9ja2VyIGltYWdlcyBhcyBpdCBpcyBuZWVkZWQgaW4g
cGFydGljdWxhciBvbiBub24teDg2IGFyY2hpdGVjdHVyZXMKZm9yIHJ1bi10aW1lIGxpbmthZ2Uu
CgpTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxndWlsbGF1bWUudHVja2VyQGNvbGxh
Ym9yYS5jb20+Ci0tLQoKTm90ZXM6CiAgICB2MjogYWRkIGxpYmF0b21pYzEgaW4gRGViaWFuIGRv
Y2tlciBpbWFnZXMKICAgIHYzOiBhZGQgbGliYXRvbWljMSBmb3Igbm9uLXg4NiBhcmNoZXMgaW4g
RGViaWFuIGRvY2tlciBpbWFnZXMKCiBEb2NrZXJmaWxlLmRlYmlhbiAgICAgICB8IDEgKwogRG9j
a2VyZmlsZS5kZWJpYW4tYXJtNjQgfCAxICsKIERvY2tlcmZpbGUuZGViaWFuLWFybWhmIHwgMSAr
CiBEb2NrZXJmaWxlLmZlZG9yYSAgICAgICB8IDIgKy0KIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4g
Yi9Eb2NrZXJmaWxlLmRlYmlhbgppbmRleCBiOWMzYmUzOTQ1ZTAuLmQyMzU5MTg1MGM0ZSAxMDA2
NDQKLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4KKysrIGIvRG9ja2VyZmlsZS5kZWJpYW4KQEAgLTYs
NiArNiw3IEBAIFJVTiBhcHQtZ2V0IGluc3RhbGwgLXkgXAogCQkJZmxleCBcCiAJCQliaXNvbiBc
CiAJCQlwa2ctY29uZmlnIFwKKwkJCWxpYmF0b21pYzEgXAogCQkJbGlicGNpYWNjZXNzLWRldiBc
CiAJCQlsaWJrbW9kLWRldiBcCiAJCQlsaWJwcm9jcHMtZGV2IFwKZGlmZiAtLWdpdCBhL0RvY2tl
cmZpbGUuZGViaWFuLWFybTY0IGIvRG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQKaW5kZXggN2IzYTNj
N2NhODAzLi5jOWZiMjhjODA0YjggMTAwNjQ0Ci0tLSBhL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0
CisrKyBiL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0CkBAIC0xNCw2ICsxNCw3IEBAIFJVTiBkcGtn
IC0tYWRkLWFyY2hpdGVjdHVyZSBhcm02NAogUlVOIGFwdC1nZXQgdXBkYXRlCiBSVU4gYXB0LWdl
dCBpbnN0YWxsIC15IFwKIAkJCWdjYy1hYXJjaDY0LWxpbnV4LWdudSBcCisJCQlsaWJhdG9taWMx
OmFybTY0IFwKIAkJCWxpYnBjaWFjY2Vzcy1kZXY6YXJtNjQgXAogCQkJbGlia21vZC1kZXY6YXJt
NjQgXAogCQkJbGlicHJvY3BzLWRldjphcm02NCBcCmRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmRl
Ymlhbi1hcm1oZiBiL0RvY2tlcmZpbGUuZGViaWFuLWFybWhmCmluZGV4IGM2N2ExZTJhY2Y2YS4u
M2ExMzNkODQ5ZDY4IDEwMDY0NAotLS0gYS9Eb2NrZXJmaWxlLmRlYmlhbi1hcm1oZgorKysgYi9E
b2NrZXJmaWxlLmRlYmlhbi1hcm1oZgpAQCAtMTQsNiArMTQsNyBAQCBSVU4gZHBrZyAtLWFkZC1h
cmNoaXRlY3R1cmUgYXJtaGYKIFJVTiBhcHQtZ2V0IHVwZGF0ZQogUlVOIGFwdC1nZXQgaW5zdGFs
bCAteSBcCiAJCQlnY2MtYXJtLWxpbnV4LWdudWVhYmloZiBcCisJCQlsaWJhdG9taWMxOmFybWhm
IFwKIAkJCWxpYnBjaWFjY2Vzcy1kZXY6YXJtaGYgXAogCQkJbGlia21vZC1kZXY6YXJtaGYgXAog
CQkJbGlicHJvY3BzLWRldjphcm1oZiBcCmRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmZlZG9yYSBi
L0RvY2tlcmZpbGUuZmVkb3JhCmluZGV4IDY2ODZlNTg3NjEzZC4uYzg0YjQxMmIwNzIzIDEwMDY0
NAotLS0gYS9Eb2NrZXJmaWxlLmZlZG9yYQorKysgYi9Eb2NrZXJmaWxlLmZlZG9yYQpAQCAtMSw3
ICsxLDcgQEAKIEZST00gZmVkb3JhOjMwCiAKIFJVTiBkbmYgaW5zdGFsbCAteSBcCi0JZ2NjIGZs
ZXggYmlzb24gbWVzb24gbmluamEtYnVpbGQgeGRvdG9vbCBcCisJZ2NjIGZsZXggYmlzb24gbGli
YXRvbWljIG1lc29uIG5pbmphLWJ1aWxkIHhkb3Rvb2wgXAogCSdwa2djb25maWcobGliZHJtKScg
XAogCSdwa2djb25maWcocGNpYWNjZXNzKScgXAogCSdwa2djb25maWcobGlia21vZCknIFwKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
