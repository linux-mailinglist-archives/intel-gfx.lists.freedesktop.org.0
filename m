Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B5158386
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 15:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9F26E334;
	Thu, 27 Jun 2019 13:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8633E6E334;
 Thu, 27 Jun 2019 13:31:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 40A0F2877BF
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Thu, 27 Jun 2019 14:30:58 +0100
Message-Id: <40326e43def140d19e0d57604e41aa10d1466f7a.1561642240.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] gitlab-ci: add tests for MIPS
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
Cc: "Ser, Simon" <simon.ser@intel.com>, igt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIHRoZSBsaWJhdG9taWMxOm1pcHMgcGFja2FnZSBvbmx5IGluIHRoZSBEZWJpYW4gU3RyZXRj
aCBEb2NrZXIKaW1hZ2UgZm9yIE1JUFMgYW5kIGFkZCBHaXRsYWIgQ0kgc3RlcCB0byBydW4gdGVz
dHMgb24gTUlQUy4KClNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50
dWNrZXJAY29sbGFib3JhLmNvbT4KLS0tCiAuZ2l0bGFiLWNpLnltbCAgICAgICAgIHwgMTQgKysr
KysrKysrKysrKysKIERvY2tlcmZpbGUuZGViaWFuLW1pcHMgfCAgMiArLQogMiBmaWxlcyBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvLmdpdGxh
Yi1jaS55bWwgYi8uZ2l0bGFiLWNpLnltbAppbmRleCAzNzE4NGI5OGY1ZGEuLjY2NWZiYjc5YzUy
MyAxMDA2NDQKLS0tIGEvLmdpdGxhYi1jaS55bWwKKysrIGIvLmdpdGxhYi1jaS55bWwKQEAgLTE3
Myw2ICsxNzMsMjAgQEAgdGVzdDpuaW5qYS10ZXN0LWFybWhmOgogICAgICAgLSBidWlsZAogICAg
IHdoZW46IG9uX2ZhaWx1cmUKIAordGVzdDpuaW5qYS10ZXN0LW1pcHM6CisgIGltYWdlOiAkQ0lf
UkVHSVNUUlkvJENJX1BST0pFQ1RfUEFUSC9pZ3QtZGViaWFuLW1pcHM6bGF0ZXN0CisgIGRlcGVu
ZGVuY2llczoKKyAgICAtIGJ1aWxkOnRlc3RzLWRlYmlhbi1tZXNvbi1taXBzCisgIHN0YWdlOiB0
ZXN0CisgIHNjcmlwdDoKKyAgICAtIGV4cG9ydCBQS0dfQ09ORklHX1BBVEg9L3Vzci9saWIvbWlw
cy1saW51eC1nbnUvcGtnY29uZmlnLworICAgIC0gZW52ID4gYnVpbGQvZW52ZHVtcC50eHQKKyAg
ICAtIG5pbmphIC1DIGJ1aWxkIHRlc3QKKyAgYXJ0aWZhY3RzOgorICAgIHBhdGhzOgorICAgICAg
LSBidWlsZAorICAgIHdoZW46IG9uX2ZhaWx1cmUKKwogdGVzdDp0ZXN0LWxpc3QtZGlmZjoKICAg
ZGVwZW5kZW5jaWVzOgogICAgIC0gYnVpbGQ6dGVzdHMtZGViaWFuLWF1dG90b29scwpkaWZmIC0t
Z2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4tbWlwcyBiL0RvY2tlcmZpbGUuZGViaWFuLW1pcHMKaW5k
ZXggZWJlMDhkYjY0NGVhLi5lZTI5ZjVmNGNjZGEgMTAwNjQ0Ci0tLSBhL0RvY2tlcmZpbGUuZGVi
aWFuLW1pcHMKKysrIGIvRG9ja2VyZmlsZS5kZWJpYW4tbWlwcwpAQCAtNSw3ICs1LDYgQEAgUlVO
IGFwdC1nZXQgaW5zdGFsbCAteSBcCiAJCQlmbGV4IFwKIAkJCWJpc29uIFwKIAkJCXBrZy1jb25m
aWcgXAotCQkJbGliYXRvbWljMSBcCiAJCQl4MTFwcm90by1kcmkyLWRldiBcCiAJCQlweXRob24t
ZG9jdXRpbHMgXAogCQkJdmFsZ3JpbmQgXApAQCAtMTUsNiArMTQsNyBAQCBSVU4gZHBrZyAtLWFk
ZC1hcmNoaXRlY3R1cmUgbWlwcwogUlVOIGFwdC1nZXQgdXBkYXRlCiBSVU4gYXB0LWdldCBpbnN0
YWxsIC15IFwKIAkJCWdjYy1taXBzLWxpbnV4LWdudSBcCisJCQlsaWJhdG9taWMxOm1pcHMgXAog
CQkJbGlicGNpYWNjZXNzLWRldjptaXBzIFwKIAkJCWxpYmttb2QtZGV2Om1pcHMgXAogCQkJbGli
cHJvY3BzLWRldjptaXBzIFwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
