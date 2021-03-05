Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C0632EEF7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 16:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178A46EBC4;
	Fri,  5 Mar 2021 15:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 427B86EBC4
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 15:36:20 +0000 (UTC)
IronPort-SDR: KrEJ2JyE5xt+mwFsdyvfaz7WwGbbUwWJghXqL6zEic1++7sJ6Km0KZ+tkY49yqdPjYpGC6ZpC/
 kZCwjGp3oNpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="249055564"
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="249055564"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 07:36:19 -0800
IronPort-SDR: b2jXA8iV6NUgJlTgZT02EpVOjd+zqTnre1/5a6KaIDY2IaVZrR7N+BEObdTEug8FLbNVG83rhM
 eg8tn9XD9MUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="408341336"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 05 Mar 2021 07:36:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Mar 2021 17:36:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Mar 2021 17:36:06 +0200
Message-Id: <20210305153610.12177-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Tighten SAGV constraint for
 pre-tgl
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNh
eSB3ZSBoYXZlIHR3byBwbGFuZXMgZW5hYmxlZCB3aXRoIHdhdGVybWFya3MgY29uZmlndXJlZAph
cyBmb2xsb3dzOgpwbGFuZSBBOiB3bTA9ZW5hYmxlZC9jYW5fc2Fndj1mYWxzZSwgd20xPWVuYWJs
ZWQvY2FuX3NhZ3Y9dHJ1ZQpwbGFuZSBCOiB3bTA9ZW5hYmxlZC9jYW5fc2Fndj10cnVlLCAgd20x
PWRpc2FibGVkCgpUaGlzIGlzIHBvc3NpYmxlIHNpbmNlIHRoZSBsYXRlbmN5IHdlIHVzZSB0byBj
YWxjdWxhdGUKY2FuX3NhZ3YgbWF5IG5vdCBiZSB0aGUgc2FtZSBmb3IgYm90aCBwbGFuZXMgZHVl
IHRvCnNrbF9uZWVkc19tZW1vcnlfYndfd2EoKS4KCkluIHRoaXMgY2FzZSBza2xfY3J0Y19jYW5f
ZW5hYmxlX3NhZ3YoKSB3aWxsIHNlZSB0aGF0CmJvdGggcGxhbmVzIGhhdmUgZW5hYmxlZCBhdCBs
ZWFzdCBvbmUgd2F0ZXJtYXJrIGxldmVsCndpdGggY2FuX3NhZ3Y9PXRydWUsIGFuZCB0aHVzIHBy
b2NlZWRzIHRvIGFsbG93IFNBR1YuCkhvd2V2ZXIsIHNpbmNlIHBsYW5lIEIgZG9lcyBub3QgaGF2
ZSB3bTEgZW5hYmxlZApwbGFuZSBBIGNhbid0IGFjdHVhbGx5IHVzZSBpdCBlaXRoZXIuIFRodXMg
d2UgYXJlCm5vdyBydW5uaW5nIHdpdGggU0FHViBlbmFibGVkLCBidXQgcGxhbmUgQSBjYW4ndAph
Y3R1YWxseSB0b2xlcmF0ZSB0aGUgZXh0cmEgbGF0ZW5jeSBpdCBpbXBvc2VzLgoKVG8gcmVtZWR5
IHRoaXMgb25seSBhbGxvdyBTQUdWIG9uIGlmIHRoZSBoaWdoZXN0IGNvbW1vbgplbmFibGVkIHdh
dGVybWFyayBsZXZlbCBmb3IgYWxsIGFjdGl2ZSBwbGFuZXMgY2FuIHRvbGVyYXRlCnRoZSBleHRy
YSBTQUdWIGxhdGVuY3kuCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyB8IDIwICsrKysrKysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA4NTRmZmVj
ZDk4ZDkuLmI2ZTM0ZDE3MDFhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0zODc2LDYg
KzM4NzYsNyBAQCBzdGF0aWMgYm9vbCBza2xfY3J0Y19jYW5fZW5hYmxlX3NhZ3YoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAJZW51bSBw
bGFuZV9pZCBwbGFuZV9pZDsKKwlpbnQgbWF4X2xldmVsID0gSU5UX01BWDsKIAogCWlmICghaW50
ZWxfaGFzX3NhZ3YoZGV2X3ByaXYpKQogCQlyZXR1cm4gZmFsc2U7CkBAIC0zOTAwLDEyICszOTAx
LDIzIEBAIHN0YXRpYyBib29sIHNrbF9jcnRjX2Nhbl9lbmFibGVfc2Fndihjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJICAgICAhd20tPndtW2xldmVsXS5wbGFu
ZV9lbjsgLS1sZXZlbCkKIAkJICAgICB7IH0KIAorCQkvKiBIaWdoZXN0IGNvbW1vbiBlbmFibGVk
IHdtIGxldmVsIGZvciBhbGwgcGxhbmVzICovCisJCW1heF9sZXZlbCA9IG1pbihsZXZlbCwgbWF4
X2xldmVsKTsKKwl9CisKKwkvKiBObyBlbmFibGVkIHBsYW5lcz8gKi8KKwlpZiAobWF4X2xldmVs
ID09IElOVF9NQVgpCisJCXJldHVybiB0cnVlOworCisJZm9yX2VhY2hfcGxhbmVfaWRfb25fY3J0
YyhjcnRjLCBwbGFuZV9pZCkgeworCQljb25zdCBzdHJ1Y3Qgc2tsX3BsYW5lX3dtICp3bSA9CisJ
CQkmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwucGxhbmVzW3BsYW5lX2lkXTsKKwogCQkvKgot
CQkgKiBJZiBhbnkgb2YgdGhlIHBsYW5lcyBvbiB0aGlzIHBpcGUgZG9uJ3QgZW5hYmxlIHdtIGxl
dmVscyB0aGF0Ci0JCSAqIGluY3VyIG1lbW9yeSBsYXRlbmNpZXMgaGlnaGVyIHRoYW4gc2Fndl9i
bG9ja190aW1lX3VzIHdlCi0JCSAqIGNhbid0IGVuYWJsZSBTQUdWLgorCQkgKiBBbGwgZW5hYmxl
ZCBwbGFuZXMgbXVzdCBoYXZlIGVuYWJsZWQgYSBjb21tb24gd20gbGV2ZWwgdGhhdAorCQkgKiBj
YW4gdG9sZXJhdGUgbWVtb3J5IGxhdGVuY2llcyBoaWdoZXIgdGhhbiBzYWd2X2Jsb2NrX3RpbWVf
dXMKIAkJICovCi0JCWlmICghd20tPndtW2xldmVsXS5jYW5fc2FndikKKwkJaWYgKHdtLT53bVsw
XS5wbGFuZV9lbiAmJiAhd20tPndtW21heF9sZXZlbF0uY2FuX3NhZ3YpCiAJCQlyZXR1cm4gZmFs
c2U7CiAJfQogCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
