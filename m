Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D47951874
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 18:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB5A89CF3;
	Mon, 24 Jun 2019 16:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E8C89CE3;
 Mon, 24 Jun 2019 16:23:23 +0000 (UTC)
Received: from submarine.cbg.collabora.co.uk (unknown
 [IPv6:2a00:5f00:102:0:6dae:eb08:2e0f:5281])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 03D66287B41;
 Mon, 24 Jun 2019 17:23:22 +0100 (BST)
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>, "Ser, Simon" <simon.ser@intel.com>
Date: Mon, 24 Jun 2019 17:22:34 +0100
Message-Id: <def2edafe1432008d56bc7da892c374f46ef1aac.1561393147.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1561393147.git.guillaume.tucker@collabora.com>
References: <cover.1561393147.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 2/4] gitlab-ci: add libatomic to docker
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
RGViaWFuIGRvY2tlciBpbWFnZXMKICAgIHY0OiByZWJhc2UgdG8gYWRkIGxpYmF0b21pYzEgaW4g
RG9ja2VyZmlsZS5kZWJpYW4tbWluaW1hbAoKIERvY2tlcmZpbGUuZGViaWFuLWFybTY0ICAgfCAx
ICsKIERvY2tlcmZpbGUuZGViaWFuLWFybWhmICAgfCAxICsKIERvY2tlcmZpbGUuZGViaWFuLW1p
bmltYWwgfCAxICsKIERvY2tlcmZpbGUuZmVkb3JhICAgICAgICAgfCAyICstCiA0IGZpbGVzIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY2tl
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
CQkJbGlicHJvY3BzLWRldjphcm1oZiBcCmRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmRlYmlhbi1t
aW5pbWFsIGIvRG9ja2VyZmlsZS5kZWJpYW4tbWluaW1hbAppbmRleCBiYmU3MGJlZDJmYjQuLjYz
ODQ0Njk0ZGFmYSAxMDA2NDQKLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4tbWluaW1hbAorKysgYi9E
b2NrZXJmaWxlLmRlYmlhbi1taW5pbWFsCkBAIC02LDYgKzYsNyBAQCBSVU4gYXB0LWdldCBpbnN0
YWxsIC15IFwKIAkJCWZsZXggXAogCQkJYmlzb24gXAogCQkJcGtnLWNvbmZpZyBcCisJCQlsaWJh
dG9taWMxIFwKIAkJCWxpYnBjaWFjY2Vzcy1kZXYgXAogCQkJbGlia21vZC1kZXYgXAogCQkJbGli
cHJvY3BzLWRldiBcCmRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmZlZG9yYSBiL0RvY2tlcmZpbGUu
ZmVkb3JhCmluZGV4IDY2ODZlNTg3NjEzZC4uYzg0YjQxMmIwNzIzIDEwMDY0NAotLS0gYS9Eb2Nr
ZXJmaWxlLmZlZG9yYQorKysgYi9Eb2NrZXJmaWxlLmZlZG9yYQpAQCAtMSw3ICsxLDcgQEAKIEZS
T00gZmVkb3JhOjMwCiAKIFJVTiBkbmYgaW5zdGFsbCAteSBcCi0JZ2NjIGZsZXggYmlzb24gbWVz
b24gbmluamEtYnVpbGQgeGRvdG9vbCBcCisJZ2NjIGZsZXggYmlzb24gbGliYXRvbWljIG1lc29u
IG5pbmphLWJ1aWxkIHhkb3Rvb2wgXAogCSdwa2djb25maWcobGliZHJtKScgXAogCSdwa2djb25m
aWcocGNpYWNjZXNzKScgXAogCSdwa2djb25maWcobGlia21vZCknIFwKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
