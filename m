Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0774AFBC61
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 00:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 531806EE96;
	Wed, 13 Nov 2019 23:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212F66EE96
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 23:17:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 15:17:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="288036770"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga001.jf.intel.com with ESMTP; 13 Nov 2019 15:17:58 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 15:19:53 -0800
Message-Id: <20191113231953.24853-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113191840.23620-1-radhakrishna.sripada@intel.com>
References: <20191113191840.23620-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Wa_1606679103
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

RXh0ZW5kIGRpc2FibGluZyBTQU1QTEVSX1NUQVRFIHByZWZldGNoIHdvcmthcm91bmQgdG8gZ2Vu
MTIuCgp2MjogTGltaXQgdGhlIFdBIHRvIFRHTCBBMCBhbmQgdXBkYXRlIHRoZSBXQSBubyhDaHJp
cykKCkJTcGVjOiA1Mjg5MApDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IHwgMTUgKysrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwppbmRleCBlNGJjY2MxNDYwMmYuLmRhMjdlYjFjZDdjZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMzcwLDExICsxMzcwLDYgQEAgcmNz
X2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5
MTVfd2FfbGlzdCAqd2FsKQogCQkJCSAgICBHRU43X1NBUkNIS01ELAogCQkJCSAgICBHRU43X0RJ
U0FCTEVfREVNQU5EX1BSRUZFVENIKTsKIAotCQkvKiBXYV8xNjA2NjgyMTY2OmljbCAqLwotCQl3
YV93cml0ZV9vcih3YWwsCi0JCQkgICAgR0VON19TQVJDSEtNRCwKLQkJCSAgICBHRU43X0RJU0FC
TEVfU0FNUExFUl9QUkVGRVRDSCk7Ci0KIAkJLyogV2FfMTQwOTE3ODA5MjppY2wgKi8KIAkJd2Ff
d3JpdGVfbWFza2VkX29yKHdhbCwKIAkJCQkgICBHRU4xMV9TQ1JBVENIMiwKQEAgLTEzODIsNiAr
MTM3NywxNiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCQkJICAgMCk7CiAJfQogCisJaWYgKElT
X1RHTF9SRVZJRChpOTE1LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkgfHwgSVNfR0VOKGk5
MTUsIDExKSkgeworCQkvKgorCQkgKiBXYV8xNjA2NjgyMTY2OmljbAorCQkgKiBXYV8xNjA2Njc5
MTAzOnRnbAorCQkgKi8KKwkJd2Ffd3JpdGVfb3Iod2FsLAorCQkJICAgIEdFTjdfU0FSQ0hLTUQs
CisJCQkgICAgR0VON19ESVNBQkxFX1NBTVBMRVJfUFJFRkVUQ0gpOworCX0KKwogCWlmIChJU19H
RU5fUkFOR0UoaTkxNSwgOSwgMTEpKSB7CiAJCS8qIEZ0clBlckN0eHRQcmVlbXB0aW9uR3JhbnVs
YXJpdHlDb250cm9sOnNrbCxieHQsa2JsLGNmbCxjbmwsaWNsICovCiAJCXdhX21hc2tlZF9lbih3
YWwsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
