Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D51D7003
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 09:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D2D6E618;
	Tue, 15 Oct 2019 07:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48ABB6E604
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 07:14:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 00:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,298,1566889200"; d="scan'208";a="195201496"
Received: from pkumarva-server.ra.intel.com ([10.23.184.130])
 by fmsmga007.fm.intel.com with ESMTP; 15 Oct 2019 00:14:31 -0700
From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 03:31:28 -0400
Message-Id: <20191015073129.2375-1-prathap.kumar.valsan@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/1] Add sysfs interface to control
 class-of-service
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
Cc: reinette.chatre@intel.com, Chris P Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIEdFTjExIE1PQ1MgYXJlIHBhcnQgb2YgY29udGV4dCByZWdpc3RlciBzdGF0ZS4gVGhpcyBt
ZWFucyB1cGRhdGluZwpDTE9TIGFsc28gbmVlZHMgdG8gdXBkYXRlIHRoZSBjb250ZXh0IHN0YXRl
IG9mIGFjdGl2ZSBjb250ZXh0cy4KCnY0OiAKLSBNYWtlIGl0IGV4cGxpY2l0IGluIHRoZSBjb21t
aXQgbWVzc2FnZSB0aGF0IHdlIHdhbnQgdG8gc2V0IENMT1MgZ2xvYmFsCiAgb24gZGV2aWNlIChD
aHJpcykKLSBGaXhlIHRoZSBMb2NraW5nIChDaHJpcykKLSBNb3ZlIHRoZSBnbG9iYWwgY29uZmln
dXJhdGlvbiBvZiBjb250ZXh0cyBhd2F5IGZyb20gZ3QuKENocmlzKQoKdjM6IFJlYmFzZQoKdjI6
IAotIFVwZGF0ZSB0aGUgaW50ZXJmYWNlIHRvIHVzZSB0d28gc3lzZnMgZmlsZXMoSm9vbmFzKQot
IEdlbjEyIFBDb2RlIGludGVyZmFjZSBpcyBub3QgcmVhZHkgeWV0IHRvIHJlYWQgdGhlIHdheSBt
YXNrLgogIFNvIHJlbW92ZWQgVEdMIHN1cHBvcnQgYW5kIGFkZGVkIHN1cHBvcnQgZm9yIEdlbjEx
LgotIFVwZGF0aW5nIE1PQ1MgaW4gR2VuIDExIGFsc28gcmVxdWlyZSBjaGFuZ2luZyB0aGUgY29u
dGV4dCBpbWFnZSBvZgogIGV4aXN0aW5nIGNvbnRleHRzLgotIFJlZmVycmVkIHRvIGdlbjhfY29u
ZmlndXJlX2FsbF9jb250ZXh0cygpIGFzIHN1Z2dlc3RlZCBieSBDaHJpcy4KClByYXRoYXAgS3Vt
YXIgVmFsc2FuICgxKToKICBkcm0vaTkxNTogQWRkIHN5c2ZzIGludGVyZmFjZSB0byBjb250cm9s
IGNsYXNzLW9mLXNlcnZpY2UKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAg
ICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgIHwgICA3
ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmggfCAgIDEgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jICAgIHwgMTE1ICsrKysrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5oICAgIHwgICA3ICsr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Nsb3MuYyAgICAgICAgfCAxMjggKysrKysrKysr
KysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Nsb3MuaCAgICAgICAg
fCAgMTUgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgfCAgMTAg
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICB8ICAgMyArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zeXNmcy5jICAgICAgIHwgMTA1ICsrKysrKysrKysrKysrKysrKysKIDEx
IGZpbGVzIGNoYW5nZWQsIDM5MyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbG9zLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Nsb3MuaAoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
