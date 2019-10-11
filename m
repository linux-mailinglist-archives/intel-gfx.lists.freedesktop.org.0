Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DD5D4181
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 15:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC816E459;
	Fri, 11 Oct 2019 13:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C316E459
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 13:39:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 06:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="200790920"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Oct 2019 06:39:41 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id C6B1484075B; Fri, 11 Oct 2019 16:39:14 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 16:39:09 +0300
Message-Id: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Include ro parts of l3 to
 invalidate
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWltIGZvciBjb21wbGV0ZW5lc3MgYW5kIGludmFsaWRhdGUgYWxzbyB0aGUgcm8gcGFydHMKaW4g
bDMgY2FjaGUuIFRoaXMgbWlnaHQgYWxsb3cgdG8gZ2V0IHJpZCBvZiB0aGUgcHJlcGFyc2VyCmRp
c2FibGUvZW5hYmxlIHdvcmthcm91bmQgb24gaW52YWxpZGF0aW9uIHBhdGguCgpDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyAgICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVf
Y29tbWFuZHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5o
CmluZGV4IGIwMjI3YWIyZmUxYi4uOGM4ZTZiZjgyNGE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaApAQCAtMjMwLDYgKzIzMCw3IEBACiAjZGVmaW5l
ICAgUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FDSEVfRkxVU0gJKDE8PDEyKSAvKiBnZW42
KyAqLwogI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9JTlNUUlVDVElPTl9DQUNIRV9JTlZBTElEQVRF
CSgxPDwxMSkgLyogTUJaIG9uIElMSyAqLwogI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9URVhUVVJF
X0NBQ0hFX0lOVkFMSURBVEUJCSgxPDwxMCkgLyogR000NSsgb25seSAqLworI2RlZmluZSAgIFBJ
UEVfQ09OVFJPTF9MM19ST19DQUNIRV9JTlZBTElEQVRFCQkoMTw8MTApIC8qIGdlbjEyICovCiAj
ZGVmaW5lICAgUElQRV9DT05UUk9MX0lORElSRUNUX1NUQVRFX0RJU0FCTEUJCSgxPDw5KQogI2Rl
ZmluZSAgIFBJUEVfQ09OVFJPTF9OT1RJRlkJCQkJKDE8PDgpCiAjZGVmaW5lICAgUElQRV9DT05U
Uk9MX0ZMVVNIX0VOQUJMRQkJCSgxPDw3KSAvKiBnZW43KyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwppbmRleCBiMDA0OTljYzc1ODYuLmM2ZmJjNzIzNTY2ZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTMyMTMsNiArMzIxMyw3IEBAIHN0YXRpYyBpbnQgZ2Vu
MTJfZW1pdF9mbHVzaF9yZW5kZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKIAkJZmxh
Z3MgfD0gUElQRV9DT05UUk9MX1ZGX0NBQ0hFX0lOVkFMSURBVEU7CiAJCWZsYWdzIHw9IFBJUEVf
Q09OVFJPTF9DT05TVF9DQUNIRV9JTlZBTElEQVRFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xf
U1RBVEVfQ0FDSEVfSU5WQUxJREFURTsKKwkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0wzX1JPX0NB
Q0hFX0lOVkFMSURBVEU7CiAKIAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX1NUT1JFX0RBVEFfSU5E
RVg7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9RV19XUklURTsKLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
