Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3347C78D9D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 16:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD8B89FD4;
	Mon, 29 Jul 2019 14:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4B089FD4
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 14:17:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 06:04:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="190567248"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2019 06:04:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Mon, 29 Jul 2019 16:08:25 +0300
Message-ID: <87r269ng3a.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] Fixes that failed to apply to v5.3-rc2
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

ClRoZSBmb2xsb3dpbmcgY29tbWl0cyBoYXZlIGJlZW4gbWFya2VkIGFzIENjOiBzdGFibGUgb3Ig
Zml4aW5nIHNvbWV0aGluZwppbiB2NS4zLXJjMiBvciBlYXJsaWVyLCBidXQgZmFpbGVkIHRvIGNo
ZXJyeS1waWNrIHRvCmRybS1pbnRlbC1maXhlcy4gUGxlYXNlIHNlZSBpZiB0aGV5IGFyZSB3b3J0
aCBiYWNrcG9ydGluZywgYW5kIHBsZWFzZSBkbwpzbyBpZiB0aGV5IGFyZS4KCkZhaWxlZCB0byBj
aGVycnktcGljazoKMTgzOTg5MDRjYTllICgiZHJtL2k5MTU6IE9ubHkgcmVjb3ZlciBhY3RpdmUg
ZW5naW5lcyIpCjA5MmJlMzgyYTI2MCAoImRybS9pOTE1OiBMaWZ0IGludGVsX2VuZ2luZXNfcmVz
dW1lKCkgdG8gY2FsbGVycyIpCmZmZjgxMDJhYWVkNSAoImRybS9pOTE1L2V4ZWNsaXN0czogUHJv
Y2VzcyBpbnRlcnJ1cHRlZCBjb250ZXh0IG9uIHJlc2V0IikKNmMyYjAxMDNhZDkyICgiZHJtL2k5
MTU6IEZpeCBhbmQgaW1wcm92ZSBNQ1Igc2VsZWN0aW9uIGxvZ2ljIikKCkNoZXJyeS1waWNrIGZp
bmUgYnV0IGZhaWwgdG8gYnVpbGQgKCopOgoyYThkYjU2MzMxMWEgKCJkcm0vaTkxNTogVXNlIG1h
eGltdW0gd3JpdGUgZmx1c2ggZm9yIHB3cml0ZV9ndHQiKQoKCkJSLApKYW5pLgoKCigqKQoKZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYzogSW4gZnVuY3Rpb24g4oCYaTkxNV9nZW1fZ3R0
X3B3cml0ZV9mYXN04oCZOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jOjY1Mzo0OiBl
cnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYaW50ZWxfZ3RfZmx1c2hf
Z2d0dF93cml0ZXPigJk7IGRpZCB5b3UgbWVhbiDigJhpOTE1X2dlbV9mbHVzaF9nZ3R0X3dyaXRl
c+KAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgICBpbnRlbF9n
dF9mbHVzaF9nZ3R0X3dyaXRlcyhnZ3R0LT52bS5ndCk7CiAgICBefn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fgogICAgaTkxNV9nZW1fZmx1c2hfZ2d0dF93cml0ZXMKZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYzo2NTM6Mzk6IGVycm9yOiDigJhzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl
4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYZ3TigJkKICAgIGludGVsX2d0X2ZsdXNoX2dndHRf
d3JpdGVzKGdndHQtPnZtLmd0KTsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jOjY4MjozNzogZXJyb3I6IOKAmHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2XigJkgaGFzIG5vIG1lbWJlciBuYW1lZCDigJhndOKAmQog
IGludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKGdndHQtPnZtLmd0KTsKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
