Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E0C2DBF62
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 12:29:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0D489444;
	Wed, 16 Dec 2020 11:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB4789444
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 11:29:52 +0000 (UTC)
IronPort-SDR: b8dLd7SG1c+dXIjd9piFW1DSea26wq2qKtUlH1hTwqUXEhYZWioemQHSsuA5rdO8FyxOVsdbIG
 rUDsprFAdr4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="162099211"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="162099211"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:29:51 -0800
IronPort-SDR: K1Ti8NbTF6cZ4oQCnTYBS4D8dWIc2JrfqyPVpQG5djQIAz6ZNgQB3XS9RS5roKfOVI2483jUKR
 XvXHPa2w18Gw==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="412554688"
Received: from slevy-mobl.ger.corp.intel.com (HELO localhost)
 ([10.214.192.176])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 03:29:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 13:29:10 +0200
Message-Id: <113b30d56bccf9d54a8cc8832cbebe5c84a24b30.1608117676.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608117676.git.jani.nikula@intel.com>
References: <cover.1608117676.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 03/11] drm/i915/display: fix misused comma
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
eCBmM2Y1YTdiOGRmOWIuLmVmNzE5YTQ0ZDRmMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
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
