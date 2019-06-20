Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EDB4C4B0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 03:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95B06E4A0;
	Thu, 20 Jun 2019 01:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964B86E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 01:00:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 18:00:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="150774341"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 19 Jun 2019 18:00:39 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 18:00:15 -0700
Message-Id: <20190620010021.20637-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/6] Display uncore prep patches
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

bWFpbiBjaGFuZ2VzIGFyZSB0aGUgcmVtb3ZhbCBvZiB0aGUgX2ZvcmNld2FrZV8gc3VzcGVuZC9y
ZXN1bWUgY2FsbHMgYW5kCnRoZSB1cGRhdGVkIGxvZ2ljIGZvciB0aGUgZHluYW1pYyBhbGxvY2F0
aW9uIG9mIGZ3IGRvbWFpbnMuCgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29t
PgoKRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoNik6CiAgZHJtL2k5MTU6IHVzZSB2ZnVuY3MgZm9y
IHJlZ19yZWFkL3dyaXRlX2Z3X2RvbWFpbnMKICBkcm0vaTkxNToga2lsbCB1bmNvcmVfc2FuaXRp
emUKICBkcm0vaTkxNToga2lsbCB1bmNvcmVfdG9faTkxNQogIGRybS9pOTE1OiBza2lwIGZvcmNl
d2FrZSBhY3Rpb25zIG9uIGZvcmNld2FrZS1sZXNzIHVuY29yZQogIGRybS9pOTE1OiBkeW5hbWlj
YWxseSBhbGxvY2F0ZSBmb3JjZXdha2UgZG9tYWlucwogIGRybS9pOTE1L2d2dDogZGVjb3VwbGUg
Y2hlY2tfdmdwdSgpIGZyb20gdW5jb3JlX2luaXQoKQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMgICAgICAgICAgICAgIHwgIDE2ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICB8ICAgNSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3B2
aW5mby5oICAgICAgICAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1
LmMgICAgICAgICAgICAgfCAgMzUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5o
ICAgICAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUu
YyAgICAgICAgICB8IDQyNSArKysrKysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF91bmNvcmUuaCAgICAgICAgICB8ICAyMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL21vY2tfdW5jb3JlLmMgfCAgIDQgKy0KIDggZmlsZXMgY2hhbmdlZCwgMjg1IGlu
c2VydGlvbnMoKyksIDIzMCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
