Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 036DEE8562
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:20:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2726B6E1C4;
	Tue, 29 Oct 2019 10:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253D36E1C4;
 Tue, 29 Oct 2019 10:20:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:20:48 -0700
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="202798045"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:20:44 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 11:20:34 +0100
Message-Id: <20191029102036.6326-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RESUBMIT PATCH v2 0/2] drm/i915: Conclude load ->
 probe naming convention switch
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGVzdC13aXRoOiA8MjAxOTEwMjkxMDE3NTEuNTg0OC0yLWphbnVzei5rcnp5c3p0b2Zpa0BsaW51
eC5pbnRlbC5jb20+CgpUaGUgcHVycG9zZSBpczoKKiB0byBmaXggaW5jb21wYXRpYmxlIG5hbWVz
IG9mIG5ldyBmdW5jdGlvbnMgaW50cm9kdWNlZCBtZWFud2hpbGUsCiogdG8gY29tcGxldGUgcG9z
dHBvbmVkIHJlbmFtZSBvZiBtb2R1bGUgcGFyYW1ldGVyLgoKdjI6ICogZHJvcCB1bm5lY2Vzc2Fy
eSBzdGF0ZW1lbnQgYWJvdXQgY3VzdG9tIHVzZXIgYXBwbGljYXRpb25zIGZyb20KICAgICAgY29t
bWl0IG1lc3NhZ2Ugb2YgMi8yLCB0aGVyZSBhcmUgbm8gc3VjaCAoQ2hyaXMpLAogICAgKiBhZGQg
Ui1iICh0aGFua3MgQ2hyaXMpLAogICAgKiB1c2UgY29ycmVjdCBtZXNzYWdlIElEIG9mIChhbHNv
IHJlcm9sbGVkKSBJR1QgY291bnRlcnBhcnQgdG8gYmUKICAgICAgdGVzdGVkIHdpdGguCgpKYW51
c3ogS3J6eXN6dG9maWsgKDIpOgogIGRybS9pOTE1OiBGaXggaTkxNV9pbmplY3RfbG9hZF9lcnJv
cigpIG5hbWUgdG8gcmVhZCAqX3Byb2JlXyoKICBkcm0vaTkxNTogUmVuYW1lICJpbmplY3RfbG9h
ZF9mYWlsdXJlIiBtb2R1bGUgcGFyYW1ldGVyCgogLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9ndWNfc3VibWlzc2lvbi5jIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2h1Yy5jICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjLmMgICAgICAgICB8ICA2ICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWNfZncuYyAgICAgIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgIDQgKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGFyYW1zLmggICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3V0aWxzLmMgICAgICAgICAgICAgfCAxNCArKysrKystLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggICAgICAgICAgICAgfCAxMiArKysrKy0tLS0tLQog
OSBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlvbnMoLSkKCi0tIAoy
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
