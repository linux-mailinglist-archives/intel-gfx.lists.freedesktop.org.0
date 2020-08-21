Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4F224D8CB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 17:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39EFC6E161;
	Fri, 21 Aug 2020 15:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C605E6E161;
 Fri, 21 Aug 2020 15:38:25 +0000 (UTC)
IronPort-SDR: 2nbG7DGDrgZiJNExFV7RnTEBITrojP83Sa0B2AIvsdk/aM6bX8ecEJkZBqYM6YV0tiYBdocSLT
 KdPt1DTlGN8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="240381838"
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="240381838"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:25 -0700
IronPort-SDR: A3+p6+ooTNXyxtCoaAy1obi7AFvMczC8fy8hhpyrE+CIu93q/yYJUUwc2xqVjBJzmNi8JUIzlZ
 cF6kzgT9QulQ==
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="473086514"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:23 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 21 Aug 2020 17:37:49 +0200
Message-Id: <20200821153807.18613-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
References: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 02/20] tests/core_hotunplug: Constify
 dev_bus_addr string
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGV2aWNlIGJ1cyBhZGRyZXNzIHN0cnVjdHVyZSBmaWVsZCBpcyBhbHdheXMgaW5pdGlhbGl6ZWQg
d2l0aCBhIHBvaW50ZXIKdG8gYSBzdWJzdHJpbmcgb2YgdGhlIGRldmljZSBzeXNmcyBwYXRoIGFu
ZCBuZXZlciB1c2VkIGZvciBpdHMKbW9kaWZpY2F0aW9uLiAgRGVjbGFyZSBpdCBhcyBhIGNvbnN0
YW50IHN0cmluZy4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6Lmty
enlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pY2hhxYIgV2luaWFyc2tp
IDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9jb3JlX2hvdHVucGx1Zy5j
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVn
LmMKaW5kZXggNzQzMTM0NmIxLi5hNDA3MWY1MWUgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NvcmVfaG90
dW5wbHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAtNDQsNyArNDQsNyBAQCBz
dHJ1Y3QgaG90dW5wbHVnIHsKIAkJaW50IHN5c2ZzX2J1czsKIAkJaW50IHN5c2ZzX2RydjsKIAl9
IGZkOwotCWNoYXIgKmRldl9idXNfYWRkcjsKKwljb25zdCBjaGFyICpkZXZfYnVzX2FkZHI7CiB9
OwogCiAvKiBIZWxwZXJzICovCi0tIAoyLjIxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
