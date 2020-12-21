Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA602DFA3D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 10:05:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4252E6E47E;
	Mon, 21 Dec 2020 09:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF1C6E47E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 09:05:13 +0000 (UTC)
IronPort-SDR: r/+JlZsq1PAEzfuDdELT/Cxmnvzfh/998ooHBKVwp1Jj/q5vYaNE2WHsgrxcFi+Rdx3SgJyT0R
 gbRkbDxYPDGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="174924933"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="174924933"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 01:05:12 -0800
IronPort-SDR: 4NOkpIfgyFplyox649jpOCPcrub2hzEUyoDcDawaFfkZaCTw0rVNXA3XtMV2tlv7MivaiehWPa
 cUc47h+zA4+A==
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="355543742"
Received: from mlesiews-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.213.22.241])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 01:05:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Dec 2020 11:04:47 +0200
Message-Id: <20201221090449.8288-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201221090449.8288-1-jani.nikula@intel.com>
References: <20201221090449.8288-1-jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/5] drm/i915/display: fix misused comma
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KClRoZXJlIGlzIG5vIG5lZWQg
Zm9yIGEgY29tbWEgdXNlIGhlcmUuCgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGF2ZSBBaXJsaWUgPGFp
cmxpZWRAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRl
eCA5MDYzOTIyZGMwNzMuLmVjOWEyOGI2OWUwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTk4OSw3ICs5ODksOCBAQCBjaHZfZmluZF9iZXN0
X2RwbGwoY29uc3Qgc3RydWN0IGludGVsX2xpbWl0ICpsaW1pdCwKIAkgKiBzZXQgdG8gMi4gIElm
IHJlcXVpcmVzIHRvIHN1cHBvcnQgMjAwTWh6IHJlZmNsaywgd2UgbmVlZCB0bwogCSAqIHJldmlz
aXQgdGhpcyBiZWNhdXNlIG4gbWF5IG5vdCAxIGFueW1vcmUuCiAJICovCi0JY2xvY2subiA9IDEs
IGNsb2NrLm0xID0gMjsKKwljbG9jay5uID0gMTsKKwljbG9jay5tMSA9IDI7CiAJdGFyZ2V0ICo9
IDU7CS8qIGZhc3QgY2xvY2sgKi8KIAogCWZvciAoY2xvY2sucDEgPSBsaW1pdC0+cDEubWF4OyBj
bG9jay5wMSA+PSBsaW1pdC0+cDEubWluOyBjbG9jay5wMS0tKSB7Ci0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
