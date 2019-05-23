Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E52827C07
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 13:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A79E89DFF;
	Thu, 23 May 2019 11:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E4289DFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 11:46:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 04:46:23 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com ([10.103.238.204])
 by orsmga004.jf.intel.com with ESMTP; 23 May 2019 04:46:22 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 12:46:18 +0100
Message-Id: <20190523114620.19335-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: timeline semaphore support
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

SGkgYWxsLAoKVGhpcyBzZXJpZXMgaW1wbGVtZW50IHJlcXVpcmVkIGNoYW5nZXMgdG8gc3VwcG9y
dCBWdWxrYW4gdGltZWxpbmUKc2VtYXBob3Jlcy4gTWVzYSdzIEFudiBkcml2ZXIgd2lsbCBtYWtl
IHVzZSBvZiB0aGlzLCB1bmZvcnR1bmF0ZWx5IHdlCmNhbid0IGRpc2Nsb3NlIHRoZSB1c2Vyc3Bh
Y2UgY2hhbmdlcyB5ZXQuCgpIb3Bpbmcgd2UgY2FuIGJlbmQgdGhlIHJ1bGVzIGEgYml0IChsaWtl
IGZvciB0aGUgZHJtLXN5bmNvYmogY2hhbmdlcwpsYW5kZWQgYWxyZWFkeSksIHNvIHRoYXQgd2Ug
Y2FuIGJlIGNvbXBsaWFudCBvbiB0aGUgZmlyc3QgZGF5IHRoZQpWdWxrYW4gc3BlYyBpcyByZWxl
YXNlZC4KCkNoZWVycywKCkxpb25lbCBMYW5kd2VybGluICgyKToKICBkcm0vc3luY29iajogYWRk
IGFuIG91dHB1dCBzeW5jb2JqIHBhcmFtZXRlciB0byBmaW5kX2ZlbmNlCiAgZHJtL2k5MTU6IGFk
ZCBzeW5jb2JqIHRpbWVsaW5lIHN1cHBvcnQKCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfY3MuYyAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fc3luY29iai5jICAg
ICAgICAgICAgICB8ICA0NSArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAg
ICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgfCAxOTAgKysrKysrKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vdjNkL3Yz
ZF9nZW0uYyAgICAgICAgICAgICAgfCAgIDUgKy0KIGluY2x1ZGUvZHJtL2RybV9zeW5jb2JqLmgg
ICAgICAgICAgICAgICAgICB8ICAgMSArCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAg
ICAgICAgICAgICAgfCAgMzggKysrKy0KIDcgZmlsZXMgY2hhbmdlZCwgMjIwIGluc2VydGlvbnMo
KyksIDY3IGRlbGV0aW9ucygtKQoKLS0KMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
