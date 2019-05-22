Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C67F26516
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E76189AB5;
	Wed, 22 May 2019 13:51:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF4989A9F;
 Wed, 22 May 2019 13:51:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:14 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:13 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:50:58 +0100
Message-Id: <20190522135104.26930-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
References: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 08/14] test/i915: gem_cs_tlb: use the
 gem_engine_topology library
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpSZXBsYWNlIHRoZSBsZWdh
Y3kgZm9yX2VhY2hfZW5naW5lKiBkZWZpbmVzIHdpdGggdGhlIG9uZXMKaW1wbGVtZW50ZWQgaW4g
dGhlIGdlbV9lbmdpbmVfdG9wb2xvZ3kgbGlicmFyeS4KClNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5
dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0t
CiB0ZXN0cy9pOTE1L2dlbV9jc190bGIuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9n
ZW1fY3NfdGxiLmMgYi90ZXN0cy9pOTE1L2dlbV9jc190bGIuYwppbmRleCA1MWUxYzRlMTk5MzAu
LjEzZGU1NDk5ZjFjNyAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3NfdGxiLmMKKysrIGIv
dGVzdHMvaTkxNS9nZW1fY3NfdGxiLmMKQEAgLTE0MCw3ICsxNDAsNyBAQCBzdGF0aWMgdm9pZCBy
dW5fb25fcmluZyhpbnQgZmQsIHVuc2lnbmVkIHJpbmdfaWQsIGNvbnN0IGNoYXIgKnJpbmdfbmFt
ZSkKIAogaWd0X21haW4KIHsKLQljb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZSAq
ZTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmU7CiAJaW50IGZkID0g
LTE7CiAKIAlpZ3Rfc2tpcF9vbl9zaW11bGF0aW9uKCk7CkBAIC0xNTAsOSArMTUwLDkgQEAgaWd0
X21haW4KIAkJaWd0X3JlcXVpcmVfZ2VtKGZkKTsKIAl9CiAKLQlmb3IgKGUgPSBpbnRlbF9leGVj
dXRpb25fZW5naW5lczsgZS0+bmFtZTsgZSsrKQotCQlpZ3Rfc3VidGVzdF9mKCIlcyVzIiwgZS0+
ZXhlY19pZCA/ICIiIDogImJhc2ljLSIsIGUtPm5hbWUpCi0JCQlydW5fb25fcmluZyhmZCwgZS0+
ZXhlY19pZCB8IGUtPmZsYWdzLCBlLT5uYW1lKTsKKwlfX2Zvcl9lYWNoX3BoeXNpY2FsX2VuZ2lu
ZShmZCwgZSkKKwkJaWd0X3N1YnRlc3RfZigiJXMiLCBlLT5uYW1lKQorCQkJcnVuX29uX3Jpbmco
ZmQsIGUtPmZsYWdzLCBlLT5uYW1lKTsKIAogCWlndF9maXh0dXJlCiAJCWNsb3NlKGZkKTsKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
