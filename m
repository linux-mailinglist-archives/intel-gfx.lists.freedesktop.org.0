Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A531880C40
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Aug 2019 21:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B263089D46;
	Sun,  4 Aug 2019 19:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6663589CF5
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Aug 2019 19:51:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Aug 2019 12:51:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,347,1559545200"; d="scan'208";a="192259405"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 04 Aug 2019 12:50:59 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.143])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x74JovTO026070; Sun, 4 Aug 2019 20:50:58 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  4 Aug 2019 19:50:49 +0000
Message-Id: <20190804195052.31140-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190804195052.31140-1-michal.wajdeczko@intel.com>
References: <20190804195052.31140-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/guc: Prefer
 intel_guc_is_submission_supported
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

Tm8gbmVlZCB0byB1c2UgaW50ZWxfdWNfc3VwcG9ydHNfZ3VjX3N1Ym1pc3Npb24odWMpIGFzIHdl
CmNhbiBkaXJlY3RseSB1c2UgaW50ZWxfZ3VjX2lzX3N1Ym1pc3Npb25fc3VwcG9ydGVkKGd1YykK
ClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwu
Y29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jIHwgOCArKysrLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jCmluZGV4IDBlZTgxMzk4ODVhNS4uZjljMzMwNjIyNDlm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwpAQCAtMTQ1LDcgKzE0NSw3
IEBAIHN0YXRpYyB1MzIgZ3VjX2N0bF9mZWF0dXJlX2ZsYWdzKHN0cnVjdCBpbnRlbF9ndWMgKmd1
YykKIHsKIAl1MzIgZmxhZ3MgPSAwOwogCi0JaWYgKCFpbnRlbF91Y19zdXBwb3J0c19ndWNfc3Vi
bWlzc2lvbigmZ3VjX3RvX2d0KGd1YyktPnVjKSkKKwlpZiAoIWludGVsX2d1Y19pc19zdWJtaXNz
aW9uX3N1cHBvcnRlZChndWMpKQogCQlmbGFncyB8PSBHVUNfQ1RMX0RJU0FCTEVfU0NIRURVTEVS
OwogCiAJcmV0dXJuIGZsYWdzOwpAQCAtMTU1LDcgKzE1NSw3IEBAIHN0YXRpYyB1MzIgZ3VjX2N0
bF9jdHhpbmZvX2ZsYWdzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIHsKIAl1MzIgZmxhZ3MgPSAw
OwogCi0JaWYgKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKCZndWNfdG9fZ3QoZ3Vj
KS0+dWMpKSB7CisJaWYgKGludGVsX2d1Y19pc19zdWJtaXNzaW9uX3N1cHBvcnRlZChndWMpKSB7
CiAJCXUzMiBjdHhudW0sIGJhc2U7CiAKIAkJYmFzZSA9IGludGVsX2d1Y19nZ3R0X29mZnNldChn
dWMsIGd1Yy0+c3RhZ2VfZGVzY19wb29sKTsKQEAgLTI5MSw3ICsyOTEsNyBAQCBpbnQgaW50ZWxf
Z3VjX2luaXQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQogCWlmIChyZXQpCiAJCWdvdG8gZXJyX2Fk
czsKIAotCWlmIChpbnRlbF91Y19zdXBwb3J0c19ndWNfc3VibWlzc2lvbigmZ3QtPnVjKSkgewor
CWlmIChpbnRlbF9ndWNfaXNfc3VibWlzc2lvbl9zdXBwb3J0ZWQoZ3VjKSkgewogCQkvKgogCQkg
KiBUaGlzIGlzIHN0dWZmIHdlIG5lZWQgdG8gaGF2ZSBhdmFpbGFibGUgYXQgZncgbG9hZCB0aW1l
CiAJCSAqIGlmIHdlIGFyZSBwbGFubmluZyB0byBlbmFibGUgc3VibWlzc2lvbiBsYXRlcgpAQCAt
MzMwLDcgKzMzMCw3IEBAIHZvaWQgaW50ZWxfZ3VjX2Zpbmkoc3RydWN0IGludGVsX2d1YyAqZ3Vj
KQogCiAJaTkxNV9nZ3R0X2Rpc2FibGVfZ3VjKGd0LT5nZ3R0KTsKIAotCWlmIChpbnRlbF91Y19z
dXBwb3J0c19ndWNfc3VibWlzc2lvbigmZ3QtPnVjKSkKKwlpZiAoaW50ZWxfZ3VjX2lzX3N1Ym1p
c3Npb25fc3VwcG9ydGVkKGd1YykpCiAJCWludGVsX2d1Y19zdWJtaXNzaW9uX2ZpbmkoZ3VjKTsK
IAogCWludGVsX2d1Y19jdF9maW5pKCZndWMtPmN0KTsKLS0gCjIuMTkuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
