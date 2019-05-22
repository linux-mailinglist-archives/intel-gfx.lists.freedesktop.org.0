Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 955CA2644A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BD889A57;
	Wed, 22 May 2019 13:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEDCF89A4F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 13:08:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:08:23 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com ([10.103.238.204])
 by fmsmga006.fm.intel.com with ESMTP; 22 May 2019 06:08:22 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 14:05:19 +0100
Message-Id: <20190522130524.10223-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915: Vulkan performance query
 support
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

SGkgYWxsLAoKVGhpcyBzbWFsbCAoYnV0IG1heWJlIG5vdCB0byBldmVyeWJvZHkncyB0YXN0ZSkg
c2VyaWVzIGVuYWJsZXMgdXMgdG8Kc3VwcG9ydCBwZXJmb3JtYW5jZSBxdWVyaWVzIG9uIFZ1bGth
bi4gV2UndmUgZ29uZSB0aHJvdWdoIHRoZSBwcm9jZXNzCnRvIGRlZmluZSB0aGlzIGFzIGEgVnVs
a2FuIElOVEVMIGV4dGVuc2lvbiAoaXQgc2hvdWxkIGFwcGVhciBvbiBbMV0Kc29vbmlzaCkuCgpU
aGlzIHYyIGluY2x1ZGVzIGZpeGVzIGFmdGVyIENocmlzJyBmaXJzdCByb3VuZCBvZiByZXZpZXcu
CgpDaGVlcnMsCgogWzFdIDogaHR0cHM6Ly9naXRodWIuY29tL0tocm9ub3NHcm91cC9WdWxrYW4t
RG9jcwoKTGlvbmVsIExhbmR3ZXJsaW4gKDUpOgogIGRybS9pOTE1L3BlcmY6IGludHJvZHVjZSBh
IHZlcnNpb25pbmcgb2YgdGhlIGk5MTUtcGVyZiB1YXBpCiAgZHJtL2k5MTUvcGVyZjogYWxsb3cg
aG9sZGluZyBwcmVlbXB0aW9uIG9uIGZpbHRlcmVkIGN0eAogIGRybS9pOTE1L3BlcmY6IGFsbG93
IGZvciBDUyBPQSBjb25maWdzIHRvIGJlIGNyZWF0ZWQgbGF6aWx5CiAgZHJtL2k5MTU6IGFkZCBh
IG5ldyBwZXJmIGNvbmZpZ3VyYXRpb24gZXhlY2J1ZiBwYXJhbWV0ZXIKICBkcm0vaTkxNTogYWRk
IHN1cHBvcnQgZm9yIHBlcmYgY29uZmlndXJhdGlvbiBxdWVyaWVzCgogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaCB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jICAgICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ2J1ZmZlci5jICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jICAgICAgICAgICAgICAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgICAgICAgICAgIHwgIDI5ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMgICAgfCAgOTcgKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYyAgICAgICAgICAgICAgfCAyMTQgKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcXVlcnkuYyAgICAgICAgICAgICB8IDI3NyArKysrKysrKysrKysrKysrKysK
IGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8IDExMiArKysr
KystCiAxMiBmaWxlcyBjaGFuZ2VkLCA3MDUgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25zKC0p
CgotLQoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
