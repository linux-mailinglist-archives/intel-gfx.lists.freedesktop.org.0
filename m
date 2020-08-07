Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D0523EA17
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7356D6E993;
	Fri,  7 Aug 2020 09:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D796E993;
 Fri,  7 Aug 2020 09:21:50 +0000 (UTC)
IronPort-SDR: L99x32KjNr2sMri5hLWDJzT9A+A7jI17N2X95oaJzfysE202rXKKgj/Ev/WPRl0LMzuKaHJe13
 LPKH9Ot5bG9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106842"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106842"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:43 -0700
IronPort-SDR: q6bHAa/bVVhSmAwX33LdWERJa8kFy1/tOky/TMRRtEpDXG9xxAqG5Jp34A2rTSi36Q/ZUCIPCD
 qK6yrsrSt/9g==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492074"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:41 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:19:48 +0200
Message-Id: <20200807092002.32350-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 02/16] tests/core_hotunplug: Constify
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGV2aWNlIGJ1cyBhZGRyZXNzIHN0cnVjdHVyZSBmaWVsZCBpcyBhbHdheXMgaW5pdGlhbGl6ZWQg
d2l0aCBhIHBvaW50ZXIKdG8gYSBzdWJzdHJpbmcgb2YgdGhlIGRldmljZSBzeXNmcyBwYXRoIGFu
ZCBuZXZlciB1c2VkIGZvciBpdHMKbW9kaWZpY2F0aW9uLiAgRGVjbGFyZSBpdCBhcyBhIGNvbnN0
YW50IHN0cmluZy4KCnYyOiBSZWJhc2Ugb24gY3VycmVudCB1cHN0cmVhbSBtYXN0ZXIuCgpTaWdu
ZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5p
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNr
aUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9ob3R1bnBsdWcuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3Rz
L2NvcmVfaG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCmluZGV4IDc0MzEzNDZi
MS4uYTQwNzFmNTFlIDEwMDY0NAotLS0gYS90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCisrKyBiL3Rl
c3RzL2NvcmVfaG90dW5wbHVnLmMKQEAgLTQ0LDcgKzQ0LDcgQEAgc3RydWN0IGhvdHVucGx1ZyB7
CiAJCWludCBzeXNmc19idXM7CiAJCWludCBzeXNmc19kcnY7CiAJfSBmZDsKLQljaGFyICpkZXZf
YnVzX2FkZHI7CisJY29uc3QgY2hhciAqZGV2X2J1c19hZGRyOwogfTsKIAogLyogSGVscGVycyAq
LwotLSAKMi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
