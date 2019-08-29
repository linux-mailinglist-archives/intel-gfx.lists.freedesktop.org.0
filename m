Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCEDA2873
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 22:53:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3396E1B1;
	Thu, 29 Aug 2019 20:53:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267F16E1B1;
 Thu, 29 Aug 2019 20:53:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 13:53:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,444,1559545200"; d="scan'208";a="332641507"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga004.jf.intel.com with ESMTP; 29 Aug 2019 13:53:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 13:52:55 -0700
Message-Id: <20190829205255.862-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <5b979337dee5e5e56dfee60af4b33f68961b6fc7.camel@intel.com>
References: <5b979337dee5e5e56dfee60af4b33f68961b6fc7.camel@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/kms_plane_lowres: Skip if no
 suitable mode is possible
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

V2hlbiBjaG9vc2luZyBhIGxvdyByZXNvbHV0aW9uIG1vZGUgdG8gc3dpdGNoIHRvLCB3ZSBzZWFy
Y2ggdGhlCmNvbm5lY3RvcidzIG1vZGUgbGlzdCBmb3IgYSBtb2RlIHRoYXQncyBzbWFsbCBlbm91
Z2ggdGhhdCBhIHBsYW5lCnBvc2l0aW9uZWQgaW4gdGhlIGJvdHRvbSBsZWZ0IGNvcm5lciBvZiB0
aGUgc2NyZWVuIGluIHRoZSBvcmlnaW5hbCBtb2RlCndpbGwgYmUgZnVsbHkgb2Zmc2NyZWVuIGlu
IHRoZSBuZXcsIHNtYWxsZXIgbW9kZS4gIEhvd2V2ZXIgaWYgbm8Kc3VpdGFibGUgbW9kZXMgYXJl
IGZvdW5kIGluIHRoZSBtb2RlbGlzdCwgd2UgYmxpbmRseSBmYWxsIGJhY2sgdG8gYSAxMHg3Cm1v
ZGUgd2l0aG91dCBhY3R1YWxseSBjaGVja2luZyB0aGF0IHRoZSBjYW5hcnkgcGxhbmUgd2lsbCBu
b3cgYmUKb2Zmc2NyZWVuLiAgSWYsIGZvciBleGFtcGxlLCB0aGUgb3JpZ2luYWwgbW9kZSB3YXMg
MTN4NywgdGhlbiBzd2l0Y2hpbmcKdG8gMTB4NyB3aWxsIGxlYXZlIHRoZSBwbGFuZSB2aXNpYmxl
IG9uc2NyZWVuLCBjYXVzaW5nIHRoZSB0ZXN0IHRvIGZhaWwuCgpCZWZvcmUgZmFsbGluZyBiYWNr
IHRvIGEgMTB4NyBtb2RlLCBjaGVjayB3aGV0aGVyIHRoYXQncyBhY3R1YWxseSBzbWFsbAplbm91
Z2guICBJZiBpdCBpc24ndCBqdXN0IHNraXAgdGhpcyBzdWJ0ZXN0LgoKdjI6IFJlc3RydWN0dXJl
IHRoZSBza2lwIGNvbmRpdGlvbiB0byBtYWtlIGl0IG1vcmUgb2J2aW91cyB3aHkgdGhpcyBzaXpl
CiAgICBsaW1pdGF0aW9uIGlzIGltcG9ydGFudC4gIChTaW1vbikKCkNjOiBTaW1vbiBTZXIgPHNp
bW9uLnNlckBpbnRlbC5jb20+CkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMDU1ODEKU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9rbXNfcGxhbmVfbG93cmVzLmMgfCA2ICsr
KysrLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL3Rlc3RzL2ttc19wbGFuZV9sb3dyZXMuYyBiL3Rlc3RzL2ttc19wbGFuZV9sb3dy
ZXMuYwppbmRleCA2OGI4NTAyNS4uMWEzMTZjODQgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2ttc19wbGFu
ZV9sb3dyZXMuYworKysgYi90ZXN0cy9rbXNfcGxhbmVfbG93cmVzLmMKQEAgLTU5LDggKzU5LDEy
IEBAIGdldF9sb3dyZXNfbW9kZShpbnQgZHJtZmQsIGlndF9vdXRwdXRfdCAqb3V0cHV0LCBkcm1N
b2RlTW9kZUluZm8gKm1vZGVfZGVmYXVsdCkKIAkJfQogCX0KIAotCWlmICghZm91bmQpCisJaWYg
KCFmb3VuZCkgeworCQlpZ3RfcmVxdWlyZV9mKG1vZGVfZGVmYXVsdC0+dmRpc3BsYXkgLSBTSVpF
ID4gNzY4LAorCQkJICAgICAgIkN1cnJlbnQgbW9kZSBub3QgdGFsbCBlbm91Z2g7IHBsYW5lIHdv
dWxkIHN0aWxsIGJlIG9uc2NyZWVuIGFmdGVyIHN3aXRjaCB0byAxMHg3LlxuIik7CisKIAkJcmV0
dXJuICppZ3Rfc3RkXzEwMjRfbW9kZV9nZXQoKTsKKwl9CiAKIAlyZXR1cm4gbW9kZTsKIH0KLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
