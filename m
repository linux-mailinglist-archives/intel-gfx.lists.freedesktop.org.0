Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F9C3B5A2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 15:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579F0890B9;
	Mon, 10 Jun 2019 13:01:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35061890B9
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 13:01:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 06:01:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,575,1557212400"; d="scan'208";a="183421359"
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2019 06:01:15 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 14:01:10 +0100
Message-Id: <20190610130110.26306-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915/hangcheck: Look at instdone for all
 engines
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkl0IHNlZW1z
IGludGVsX2VuZ2luZV9nZXRfaW5zdGRvbmUgaXMgYWJsZSB0byBnZXQgaW5zdGRvbmUgZm9yIGFs
bCBlbmdpbmVzCmJ1dCBpbnRlbF9oYW5nY2hlY2suYy9zdWJ1bml0c19zdHVjayBkZWNpZGVzIHRv
IGlnbm9yZSBpdCBmb3Igbm9uIHJlbmRlci4KCldlIGNhbiBqdXN0IGRyb3AgdGhlIGNoZWNrIGlu
IHN1YnVuaXRzX3N0dWNrIHNpbmNlIHRoZSBjaGVja3Mgb24KdW5hdmFpbGFibGUgZmllbGRzIHdp
bGwgYWx3YXlzIHJldHVybiBzdHVjaywgd2hpY2ggd2hlbiBiaXR3aXNlIGFuZCB3aXRoCnRoZSBw
b3RlbnRpYWwgdW5zdHVjayBpbnN0ZG9uZSBpcyBoYXJtbGVzcy4KClNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tPgotLS0KV291bGQgYWN0dWFsbHkgdXNpbmcgdGhlIGF2YWlsYWJs
ZSBkYXRhIGltcHJvdmUgaGFuZyBkZXRlY3Rpb24/Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfaGFuZ2NoZWNrLmMgfCAzIC0tLQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNr
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYwppbmRleCAxNzRi
YjBhNjAzMDkuLjcwZjA5NjAyMDBlZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfaGFuZ2NoZWNrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
aGFuZ2NoZWNrLmMKQEAgLTU3LDkgKzU3LDYgQEAgc3RhdGljIGJvb2wgc3VidW5pdHNfc3R1Y2so
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWludCBzbGljZTsKIAlpbnQgc3Vic2xp
Y2U7CiAKLQlpZiAoZW5naW5lLT5pZCAhPSBSQ1MwKQotCQlyZXR1cm4gdHJ1ZTsKLQogCWludGVs
X2VuZ2luZV9nZXRfaW5zdGRvbmUoZW5naW5lLCAmaW5zdGRvbmUpOwogCiAJLyogVGhlcmUgbWln
aHQgYmUgdW5zdGFibGUgc3VidW5pdCBzdGF0ZXMgZXZlbiB3aGVuCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
