Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 031D4997F2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 17:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09B806EB7A;
	Thu, 22 Aug 2019 15:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 529A96EB79;
 Thu, 22 Aug 2019 15:19:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 08:19:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="181415415"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga003.jf.intel.com with ESMTP; 22 Aug 2019 08:19:50 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Thu, 22 Aug 2019 20:49:01 +0530
Message-Id: <20190822151904.17919-4-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190822151904.17919-1-ramalingam.c@intel.com>
References: <20190822151904.17919-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 3/6] drm: Extend I915 mei interface for
 transcoder info
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
Cc: Jani Nikula <jani.nikula@intel.com>, tomas.winkler@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

STkxNSBuZWVkcyB0byBzZW5kIHRoZSBpbmRleCBvZiB0aGUgdHJhbnNjb2RlciBhcyBwZXIgTUUg
RlcuClRvIHN1cHBvcnQgdGhpcywgZGVmaW5lIGVudW0gbWVpX2Z3X2RkaSBhbmQgYWRkIGFzIGEg
bWVtYmVyIGludG8KdGhlIHN0cnVjdCBoZGNwX3BvcnRfZGF0YS4KClNpZ25lZC1vZmYtYnk6IFJh
bWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KQWNrZWQtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9tZWlfaGRjcF9p
bnRlcmZhY2UuaCB8IDEzICsrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9tZWlfaGRjcF9pbnRlcmZhY2Uu
aCBiL2luY2x1ZGUvZHJtL2k5MTVfbWVpX2hkY3BfaW50ZXJmYWNlLmgKaW5kZXggYTk3YWNmMWM5
NzEwLi4wZGU2MjliZjJmNjIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfbWVpX2hkY3Bf
aW50ZXJmYWNlLmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9tZWlfaGRjcF9pbnRlcmZhY2UuaApA
QCAtNTQsOSArNTQsMjEgQEAgZW51bSBtZWlfZndfZGRpIHsKIAlNRUlfRERJX1JBTkdFX0VORCA9
IE1FSV9ERElfQSwKIH07CiAKK2VudW0gbWVpX2Z3X3RjIHsKKwlNRUlfSU5WQUxJRF9UUkFOU0NP
REVSID0gMHgwMCwJLyogSW52YWxpZCB0cmFuc2NvZGVyIHR5cGUgKi8KKwlNRUlfVENfRURQLAkJ
CS8qIFRyYW5zY29kZXIgZm9yIGVEUCAqLworCU1FSV9UQ19EU0kwLAkJCS8qIFRyYW5zY29kZXIg
Zm9yIERTSTAgKi8KKwlNRUlfVENfRFNJMSwJCQkvKiBUcmFuc2NvZGVyIGZvciBEU0kxICovCisJ
TUVJX1RDX0EgPSAweDEwLAkJLyogVHJhbnNjb2RlciBUQ0EgKi8KKwlNRUlfVENfQiwJCQkvKiBU
cmFuc2NvZGVyIFRDQiAqLworCU1FSV9UQ19DLAkJCS8qIFRyYW5zY29kZXIgVENDICovCisJTUVJ
X1RDX0QJCQkvKiBUcmFuc2NvZGVyIFRDRCAqLworfTsKKwogLyoqCiAgKiBzdHJ1Y3QgaGRjcF9w
b3J0X2RhdGEgLSBpbnRlbCBzcGVjaWZpYyBIRENQIHBvcnQgZGF0YQogICogQGZ3X2RkaTogZGRp
IGluZGV4IGFzIHBlciBNRSBGVworICogQGZ3X3RjOiB0cmFuc2NvZGVyIGluZGV4IGFzIHBlciBN
RSBGVwogICogQHBvcnRfdHlwZTogSERDUCBwb3J0IHR5cGUgYXMgcGVyIE1FIEZXIGNsYXNzaWZp
Y2F0aW9uCiAgKiBAcHJvdG9jb2w6IEhEQ1AgYWRhcHRhdGlvbiBhcyBwZXIgTUUgRlcKICAqIEBr
OiBObyBvZiBzdHJlYW1zIHRyYW5zbWl0dGVkIG9uIGEgcG9ydC4gT25seSBvbiBEUCBNU1QgdGhp
cyBpcyAhPSAxCkBAIC02OSw2ICs4MSw3IEBAIGVudW0gbWVpX2Z3X2RkaSB7CiAgKi8KIHN0cnVj
dCBoZGNwX3BvcnRfZGF0YSB7CiAJZW51bSBtZWlfZndfZGRpIGZ3X2RkaTsKKwllbnVtIG1laV9m
d190YyBmd190YzsKIAl1OCBwb3J0X3R5cGU7CiAJdTggcHJvdG9jb2w7CiAJdTE2IGs7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
