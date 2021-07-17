Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 985543CC06F
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 03:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC026E9F9;
	Sat, 17 Jul 2021 01:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1406E9F9
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jul 2021 01:08:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="232656458"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="232656458"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 18:08:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="431385299"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 18:08:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jul 2021 18:12:27 -0700
Message-Id: <20210717011227.204494-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210717011227.204494-1-jose.souza@intel.com>
References: <20210717011227.204494-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display/psr2: Force a PSR exit in
 the frontbuffer modification flushes
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

VGhlIENVUlNVUkZMSVZFKCkgd3JpdGUgZG8gbm90IHdvcmtzIHdpdGggUFNSMiBzZWxlY3RpdmUg
ZmV0Y2gsIHRoZQpvbmx5IHdheSB0byB1cGRhdGUgc2NyZWVuIGlzIHRvIHByb2dyYW0gUFNSMiBw
bGFuZSBhbmQgdHJhbnNjb2RlcgpyZWdpc3RlcnMgZHVyaW5nIHRoZSB2YmxhbmsuCgpXZSBjb3Vs
ZCB1c2UgdGhlIGZyb250YnVmZmVyIGRpcnR5IGFyZWFzIHNldCBieSB1c2Vyc3BhY2Ugd2l0aApk
cm1Nb2RlRGlydHlGQigpIGJ1dCB3ZSB3b3VsZCBzdGlsbCBuZWVkIHRvIHdhaXQgZm9yIHRoZSB2
YmxhbmsgdG8KcHJvcGVybHkgdXBkYXRlIHRoZSBQU1IyIHJlZ2lzdGVycy4KV2hhdCBJIHRoaW5r
IGlzIG5vdCB3b3J0aHkgdGhlIGRldmVsb3BtZW50IHRpbWUgY29uc2lkZXJpbmcgdGhhdCB0aGVy
ZQppcyBzbyBmZXcgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyB0aGF0IG1ha2VzIHVzZSBvZiB0aGlz
IG9sZCBtZXRob2QuCgpTbyBoZXJlIGZvcmNpbmcgYSBQU1IgZXhpdCBpbiB0aGlzIGNhc2UsIHRo
aXMgd2lsbCBndWFyYXRlZSB0aGF0IHBhbmVsCndpbGwgYmUgcHJvcGVybHkgdXBkYXRlZC4KCkNj
OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCAxYzQxMDQyODQxZmIxLi43MzE2OTY3YWJhOTRiIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTE0NDgsNyArMTQ0
OCw3IEBAIHN0YXRpYyB2b2lkIHBzcl9mb3JjZV9od190cmFja2luZ19leGl0KHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
ZHBfdG9faTkxNShpbnRlbF9kcCk7CiAKLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkp
CisJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA5ICYmICFpbnRlbF9kcC0+cHNyLnBzcjJf
c2VsX2ZldGNoX2VuYWJsZWQpCiAJCS8qCiAJCSAqIERpc3BsYXkgV0EgIzA4ODQ6IHNrbCsKIAkJ
ICogVGhpcyBkb2N1bWVudGVkIFdBIGZvciBieHQgY2FuIGJlIHNhZmVseSBhcHBsaWVkCi0tIAoy
LjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
