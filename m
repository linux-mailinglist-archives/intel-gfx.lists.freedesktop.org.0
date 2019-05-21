Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BC325189
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 16:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C4689320;
	Tue, 21 May 2019 14:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453D089320
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 14:09:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 07:09:22 -0700
X-ExtLoop1: 1
Received: from ylukoyan-mobl.ccr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.251.94.80])
 by fmsmga005.fm.intel.com with ESMTP; 21 May 2019 07:09:20 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 May 2019 15:08:50 +0100
Message-Id: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Vulkan performance query support
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
a2FuIElOVEVMIGV4dGVuc2lvbiAoaXQgc2hvdWxkIGFwcGVhciBvbiBbMV0Kc29vbmlzaCkuCgpX
ZSdsbCBwdWJsaXNoIHRoZSBNZXNhIHNpZGUgc2hvcnRseS4KCkNoZWVycywKCiBbMV0gOiBodHRw
czovL2dpdGh1Yi5jb20vS2hyb25vc0dyb3VwL1Z1bGthbi1Eb2NzCgpMaW9uZWwgTGFuZHdlcmxp
biAoNSk6CiAgZHJtL2k5MTUvcGVyZjogaW50cm9kdWNlIGEgdmVyc2lvbmluZyBvZiB0aGUgaTkx
NS1wZXJmIHVhcGkKICBkcm0vaTkxNS9wZXJmOiBhbGxvdyBob2xkaW5nIHByZWVtcHRpb24gb24g
ZmlsdGVyZWQgY3R4CiAgZHJtL2k5MTUvcGVyZjogYWxsb3cgZm9yIENTIE9BIGNvbmZpZ3MgdG8g
YmUgY3JlYXRlZCBsYXppbHkKICBkcm0vaTkxNTogYWRkIGEgbmV3IHBlcmYgY29uZmlndXJhdGlv
biBleGVjYnVmIHBhcmFtZXRlcgogIGRybS9pOTE1OiBhZGQgc3VwcG9ydCBmb3IgcGVyZiBjb25m
aWd1cmF0aW9uIHF1ZXJpZXMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0
LmMgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90
eXBlcy5oIHwgICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBl
cy5oICB8ICAgNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMu
aCAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAg
IHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgICAg
fCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8
ICAgNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAg
MjkgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDEx
MyArKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAg
fCAyMjYgKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyAg
ICAgICAgICAgICB8IDI3NyArKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvdWFwaS9kcm0vaTkx
NV9kcm0uaCAgICAgICAgICAgICAgICAgICB8IDExMiArKysrKystCiAxMiBmaWxlcyBjaGFuZ2Vk
LCA3MjcgaW5zZXJ0aW9ucygrKSwgNTYgZGVsZXRpb25zKC0pCgotLQoyLjIxLjAuMzkyLmdmOGY2
Nzg3MTU5ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
