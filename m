Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5994104564
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 21:57:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD0D6E7D5;
	Wed, 20 Nov 2019 20:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7746E7D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 20:57:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 12:57:28 -0800
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="196995722"
Received: from zimmerma-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.32.60])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 12:57:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 22:57:29 +0200
Message-Id: <20191120205729.15919-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120205729.15919-1-jani.nikula@intel.com>
References: <cover.1573831924.git.jani.nikula@intel.com>
 <20191120205729.15919-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dsi: account for slower link in
 transcoder timings for DSC
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

RklYTUU6IFRvIGJlIHNxdWFzaGVkIHRvIGFub3RoZXIgcGF0Y2guCgpDYzogVmFuZGl0YSBLdWxr
YXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMgfCAyMSArKysrKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMKaW5kZXggZjA5ZTJlMzdkNDQyLi5lMzQzZTQ3NmRiYjUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC03OTksMTEgKzc5OSwyNiBAQCBnZW4x
MV9kc2lfc2V0X3RyYW5zY29kZXJfdGltaW5ncyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKIAl1MTYgaGJhY2tfcG9yY2g7CiAJLyogdmVydGljYWwgdGltaW5ncyAqLwogCXUxNiB2dG90
YWwsIHZhY3RpdmUsIHZzeW5jX3N0YXJ0LCB2c3luY19lbmQsIHZzeW5jX3NoaWZ0OworCWludCBj
ZnI7CisKKwkvKgorCSAqIEFkanVzdCBob3Jpem9udGFsIHRpbWluZ3MgKGh0b3RhbCwgaHN5bmNf
c3RhcnQsIGhzeW5jX2VuZCkgdG8gYWNjb3VudAorCSAqIGZvciBzbG93ZXIgbGluayBzcGVlZCBp
ZiBEU0MgaXMgZW5hYmxlZC4KKwkgKgorCSAqIGNmciBmb3IgY29tcHJlc3Npb24gZnJlcXVlbmN5
IHJhdGlvLgorCSAqCisJICogRklYTUU6IFRoZSBjbG9jayBzb3VyY2VzIGFyZSB1Z2x5LgorCSAq
LworCWlmIChwaXBlX2NvbmZpZy0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSkKKwkJY2ZyID0gRElW
X1JPVU5EX1VQKDEwMCAqIGFmZV9jbGsoZW5jb2RlciwgcGlwZV9jb25maWcpLAorCQkJCSAgIGlu
dGVsX2RzaV9iaXRyYXRlKGludGVsX2RzaSkpOworCWVsc2UKKwkJY2ZyID0gMTAwOwogCiAJaGFj
dGl2ZSA9IGFkanVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXk7Ci0JaHRvdGFsID0gYWRqdXN0ZWRf
bW9kZS0+Y3J0Y19odG90YWw7Ci0JaHN5bmNfc3RhcnQgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX2hz
eW5jX3N0YXJ0OwotCWhzeW5jX2VuZCA9IGFkanVzdGVkX21vZGUtPmNydGNfaHN5bmNfZW5kOwor
CWh0b3RhbCA9IERJVl9ST1VORF9VUChhZGp1c3RlZF9tb2RlLT5jcnRjX2h0b3RhbCAqIGNmciwg
MTAwKTsKKwloc3luY19zdGFydCA9IERJVl9ST1VORF9VUChhZGp1c3RlZF9tb2RlLT5jcnRjX2hz
eW5jX3N0YXJ0ICogY2ZyLCAxMDApOworCWhzeW5jX2VuZCA9IERJVl9ST1VORF9VUChhZGp1c3Rl
ZF9tb2RlLT5jcnRjX2hzeW5jX2VuZCAqIGNmciwgMTAwKTsKIAloc3luY19zaXplICA9IGhzeW5j
X2VuZCAtIGhzeW5jX3N0YXJ0OwogCWhiYWNrX3BvcmNoID0gKGFkanVzdGVkX21vZGUtPmNydGNf
aHRvdGFsIC0KIAkJICAgICAgIGFkanVzdGVkX21vZGUtPmNydGNfaHN5bmNfZW5kKTsKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
