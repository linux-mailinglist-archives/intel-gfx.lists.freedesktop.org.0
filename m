Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F73856C4C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CD16E45E;
	Wed, 26 Jun 2019 14:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537F56E457
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:38:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:38:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183183296"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 07:38:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:40:20 +0300
Message-Id: <20190626144020.2155-14-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626144020.2155-1-jani.nikula@intel.com>
References: <20190626144020.2155-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 13/13] drm/i915: use wildcard to ensure all
 headers stay self-contained
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

U2tpcCB0aGUgZ2VuZXJhdGVkIGk5MTVfb2FfKi5oIGZpbGVzLgoKUmV2aWV3ZWQtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlLmhlYWRlci10ZXN0IHwgMjggKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMjcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAppbmRleCAyZmQ2MTg2OWJkYWEuLmY2NjQxZWNhMGQy
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKQEAgLTIsMzMg
KzIsNyBAQAogIyBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgogCiAjIFRlc3Qg
dGhlIGhlYWRlcnMgYXJlIGNvbXBpbGFibGUgYXMgc3RhbmRhbG9uZSB1bml0cwotaGVhZGVyX3Rl
c3QgOj0gXAotCWk5MTVfYWN0aXZlX3R5cGVzLmggXAotCWk5MTVfZGVidWdmcy5oIFwKLQlpOTE1
X2Rydi5oIFwKLQlpOTE1X2ZpeGVkLmggXAotCWk5MTVfZ2VtX2d0dC5oIFwKLQlpOTE1X2dsb2Jh
bHMuaCBcCi0JaTkxNV9pcnEuaCBcCi0JaTkxNV9wYXJhbXMuaCBcCi0JaTkxNV9wcmlvbGlzdF90
eXBlcy5oIFwKLQlpOTE1X3B2aW5mby5oIFwKLQlpOTE1X3JlZy5oIFwKLQlpOTE1X3NjaGVkdWxl
cl90eXBlcy5oIFwKLQlpOTE1X3V0aWxzLmggXAotCWk5MTVfdmdwdS5oIFwKLQlpbnRlbF9jc3Iu
aCBcCi0JaW50ZWxfZHJ2LmggXAotCWludGVsX2d1Y19jdC5oIFwKLQlpbnRlbF9ndWNfZndpZi5o
IFwKLQlpbnRlbF9ndWNfcmVnLmggXAotCWludGVsX2d2dC5oIFwKLQlpbnRlbF9wbS5oIFwKLQlp
bnRlbF9ydW50aW1lX3BtLmggXAotCWludGVsX3NpZGViYW5kLmggXAotCWludGVsX3VjX2Z3Lmgg
XAotCWludGVsX3VuY29yZS5oIFwKLQlpbnRlbF93YWtlcmVmLmgKK2hlYWRlcl90ZXN0IDo9ICQo
bm90ZGlyICQoZmlsdGVyLW91dCAkKHNyYykvaTkxNV9vYV8lLmgsJCh3aWxkY2FyZCAkKHNyYykv
Ki5oKSkpCiAKIHF1aWV0X2NtZF9oZWFkZXJfdGVzdCA9IEhEUlRFU1QgJEAKICAgICAgIGNtZF9o
ZWFkZXJfdGVzdCA9IGVjaG8gIlwjaW5jbHVkZSBcIiQoPEYpXCIiID4gJEAKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
