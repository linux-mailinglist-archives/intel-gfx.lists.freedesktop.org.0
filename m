Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DC47A6F2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 13:30:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8A789C19;
	Tue, 30 Jul 2019 11:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5F089C19
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 11:30:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 04:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="190841115"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2019 04:30:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 14:34:30 +0300
Message-Id: <20190730113432.22146-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/oa: add content to Makefile
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXBwYXJlbnRseSB0aGUgZW1wdHkgTWFrZWZpbGUgaGFzIGNhdXNlZCBzb21lIGNvbmZ1c2lvbi4g
QWRkIHRoZQpzdWJkaXItY2MtZmxhZ3MteSBhcyBpbiA3ZmNjN2NhNTQ5ZDQgKCJkcm0vaTkxNTog
YWRkIGhlYWRlciBzZWFyY2ggcGF0aAp0byBzdWJkaXIgTWFrZWZpbGVzIikgd2hpY2ggc2hvdWxk
IGJlIHVzZWZ1bC4KClRoZSBnZW5lcmF0ZWQgaGVhZGVycyBzdGlsbCBhcmVuJ3Qgc2VsZi1jb250
YWluZWQsIHNvIGNhbid0IGFkZCB0aGF0LgoKUmVmZXJlbmNlczogaHR0cDovL21hcmMuaW5mby8/
aT04MGJmMjIwNC01NThhLTZkM2YtYzQ5My1iZjE3Yjg5MWZjOGFAaW5mcmFkZWFkLm9yZwpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBMaW9uZWwgTGFuZHdl
cmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CkNjOiBNaWNoYWwgV2FqZGVjemtv
IDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KCi0tLQoKVGhpcyBzaG91bGQgZml4IHRoZSBrZXJuZWwg
aGVhZGVyIGdlbmVyYXRpb246Cmh0dHBzOi8vZ2l0aHViLmNvbS9yaWIvZ3B1dG9wL3B1bGwvMjAz
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvb2EvTWFrZWZpbGUgfCA0ICsrKysKIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9vYS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L29hL01ha2VmaWxlCmluZGV4IGU2
OWRlMjliYjJkMS4uMjU2YmZkZTRhMjg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9vYS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9vYS9NYWtlZmlsZQpAQCAt
MCwwICsxLDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorCisjIEZvciBidWls
ZGluZyBpbmRpdmlkdWFsIHN1YmRpciBmaWxlcyBvbiB0aGUgY29tbWFuZCBsaW5lCitzdWJkaXIt
Y2NmbGFncy15ICs9IC1JJChzcmN0cmVlKS8kKHNyYykvLi4KLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
