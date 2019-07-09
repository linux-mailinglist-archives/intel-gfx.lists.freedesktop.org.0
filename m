Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E268163D11
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 23:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03AD96E061;
	Tue,  9 Jul 2019 21:06:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611E089E57
 for <Intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 21:06:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 14:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="364267283"
Received: from dawalker-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.80.131])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jul 2019 14:06:23 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 22:06:16 +0100
Message-Id: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] MCR fixes
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkEgZmV3IGJ1
Z3MgaW4gcHJvZ3JhbW1pbmcgdGhlIE1DUiByZWdpc3RlciBzbmVha2VkIGluIHBhc3QgcmV2aWV3
LgoKRmlyc3Qgb2YgYWxsIGZscygpIHVzYWdlIGlzIHdyb25nIGFuZCBzdWZmZXJzIGZyb20gb2Zm
LWJ5LW9uZSBwcm9ibGVtLgoKU2Vjb25kbHkgdGhlIGFzc2VydCBpbiBXYVByb2dyYW1NZ3NyRm9y
TDNCYW5rU3BlY2lmaWNNbWlvUmVhZHMgaXMgYWxzbyB3cm9uZwpkdWUgaW52ZXJ0ZWQgbG9naWMu
CgpXaXRoIE1DUiBwcm9ncmFtbWluZyBmaXhlZCB3ZSBjYW4gc3RvcCBpZ25vcmluZyB0aGUgZW5n
aW5lIHdvcmthcm91bmRzCnZlcmlmaWNhdGlvbiBvZiBHRU44X0wzU1FDUkVHNC4KClR2cnRrbyBV
cnN1bGluICg0KToKICBkcm0vaTkxNTogRml4IEdFTjhfTUNSX1NFTEVDVE9SIHByb2dyYW1taW5n
CiAgZHJtL2k5MTU6IEZpeCBXYVByb2dyYW1NZ3NyRm9yTDNCYW5rU3BlY2lmaWNNbWlvUmVhZHMK
ICBkcm0vaTkxNTogTW92ZSBpbnRlbF9jYWxjdWxhdGVfbWNyX3Nfc3Nfc2VsZWN0IHRvIGludGVs
X3NzZXUuYwogIGRybS9pOTE1L2ljbDogVmVyaWZ5IGVuZ2luZSB3b3JrYXJvdW5kcyBpbiBHRU44
X0wzU1FDUkVHNAoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAg
fCAxOSAtLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jICAgICAg
ICB8IDI0ICsrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCAg
ICAgICAgfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IHwgNTMgKysrKysrKystLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oICAgICAgICAgICAgIHwgIDIgLQogNSBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCsp
LCA1NSBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
