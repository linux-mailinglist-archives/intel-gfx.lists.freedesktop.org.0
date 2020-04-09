Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 972561A352B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 15:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEDC6E1CD;
	Thu,  9 Apr 2020 13:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F736E20D;
 Thu,  9 Apr 2020 13:52:51 +0000 (UTC)
IronPort-SDR: lSWm3rU998/7MTLwGZ9DG0DAN6i2k/b6LEn3rSHEiL6D4ohlxTpMnAo6Zgd3JDt2qAPQhlAckh
 GKTj1uA641PQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 06:52:51 -0700
IronPort-SDR: s6Teh3APypyVL3GVbEqVrqq7s1ZgRrz+k5INA2UWYM2eVau7d09S1jV+pBS3aZI1Uyso6LYmoW
 q+YjebtuHM0A==
X-IronPort-AV: E=Sophos;i="5.72,362,1580803200"; d="scan'208";a="398573498"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 06:52:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  9 Apr 2020 15:52:23 +0200
Message-Id: <20200409135224.24509-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200409135224.24509-1-janusz.krzysztofik@linux.intel.com>
References: <20200409135224.24509-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] tests/gem_userptr_blits: Refresh
 readonly-mmap-unsync exercise
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXBncmFkZSB0aGUgc3VidGVzdCB0byB1c2UgTU1BUF9HVFQgQVBJIHY0IChha2EgTU1BUF9PRkZT
RVQpLApkeW5hbWljYWxseSBleGFtaW5lIGVhY2ggbWFwcGluZyB0eXBlIHN1cHBvcnRlZCBieSBp
OTE1IGRyaXZlci4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6Lmty
enlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFpiaWduaWV3IEtlbXBjennF
hHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvZ2Vt
X3VzZXJwdHJfYmxpdHMuYyB8IDIxICsrKysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMv
aTkxNS9nZW1fdXNlcnB0cl9ibGl0cy5jIGIvdGVzdHMvaTkxNS9nZW1fdXNlcnB0cl9ibGl0cy5j
CmluZGV4IGJlY2VkMjk4YS4uOTc1Y2Q5ZGFiIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV91
c2VycHRyX2JsaXRzLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fdXNlcnB0cl9ibGl0cy5jCkBAIC0x
Mjc3LDcgKzEyNzcsNyBAQCBzdGF0aWMgdm9pZCBzaWdqbXBfaGFuZGxlcihpbnQgc2lnKQogCXNp
Z2xvbmdqbXAoc2lnam1wLCBzaWcpOwogfQogCi1zdGF0aWMgdm9pZCB0ZXN0X3JlYWRvbmx5X21t
YXAoaW50IGk5MTUpCitzdGF0aWMgdm9pZCB0ZXN0X3JlYWRvbmx5X21tYXAoaW50IGk5MTUsIGNv
bnN0IHN0cnVjdCBtbWFwX29mZnNldCAqdCkKIHsKIAljaGFyICpvcmlnaW5hbCwgKnJlc3VsdDsK
IAl1aW50MzJfdCBoYW5kbGU7CkBAIC0xMjk0LDYgKzEyOTQsMTQgQEAgc3RhdGljIHZvaWQgdGVz
dF9yZWFkb25seV9tbWFwKGludCBpOTE1KQogCSAqIG9uIHRoZSBHUFUgYXMgd2VsbC4KIAkgKi8K
IAorCWhhbmRsZSA9IGdlbV9jcmVhdGUoaTkxNSwgUEFHRV9TSVpFKTsKKwlwdHIgPSBfX2dlbV9t
bWFwX29mZnNldChpOTE1LCBoYW5kbGUsIDAsIFBBR0VfU0laRSwKKwkJCQlQUk9UX1JFQUQgfCBQ
Uk9UX1dSSVRFLCB0LT50eXBlKTsKKwlnZW1fY2xvc2UoaTkxNSwgaGFuZGxlKTsKKwlpZ3RfcmVx
dWlyZV9mKHB0ciwgIkhXICYga2VybmVsIHN1cHBvcnQgZm9yIG1tYXAtb2Zmc2V0KCVzKVxuIiwK
KwkJICAgICAgdC0+bmFtZSk7CisJbXVubWFwKHB0ciwgUEFHRV9TSVpFKTsKKwogCWlndF9yZXF1
aXJlKGlndF9zZXR1cF9jbGZsdXNoKCkpOwogCiAJc3ogPSAxNiA8PCAxMjsKQEAgLTEzMDcsMTEg
KzEzMTUsMTEgQEAgc3RhdGljIHZvaWQgdGVzdF9yZWFkb25seV9tbWFwKGludCBpOTE1KQogCWln
dF9jbGZsdXNoX3JhbmdlKHBhZ2VzLCBzeik7CiAJb3JpZ2luYWwgPSBnX2NvbXB1dGVfY2hlY2tz
dW1fZm9yX2RhdGEoR19DSEVDS1NVTV9TSEExLCBwYWdlcywgc3opOwogCi0JcHRyID0gX19nZW1f
bW1hcF9fZ3R0KGk5MTUsIGhhbmRsZSwgc3osIFBST1RfV1JJVEUpOworCXB0ciA9IF9fZ2VtX21t
YXBfb2Zmc2V0KGk5MTUsIGhhbmRsZSwgMCwgc3osIFBST1RfV1JJVEUsIHQtPnR5cGUpOwogCWln
dF9hc3NlcnQocHRyID09IE5VTEwpOwogCiAJLyogT3B0aW9uYWwga2VybmVsIHN1cHBvcnQgZm9y
IEdUVCBtbWFwcyBvZiB1c2VycHRyICovCi0JcHRyID0gX19nZW1fbW1hcF9fZ3R0KGk5MTUsIGhh
bmRsZSwgc3osIFBST1RfUkVBRCk7CisJcHRyID0gX19nZW1fbW1hcF9vZmZzZXQoaTkxNSwgaGFu
ZGxlLCAwLCBzeiwgUFJPVF9SRUFELCB0LT50eXBlKTsKIAlnZW1fY2xvc2UoaTkxNSwgaGFuZGxl
KTsKIAogCWlmIChwdHIpIHsgLyogQ2hlY2sgdGhhdCBhIHdyaXRlIGludG8gdGhlIEdUVCByZWFk
b25seSBtYXAgZmFpbHMgKi8KQEAgLTIxMTAsOCArMjExOCwxMSBAQCBpZ3RfbWFpbl9hcmdzKCJj
OiIsIE5VTEwsIGhlbHBfc3RyLCBvcHRfaGFuZGxlciwgTlVMTCkKIAkJaWd0X3N1YnRlc3QoInJl
YWRvbmx5LXVuc3luYyIpCiAJCQl0ZXN0X3JlYWRvbmx5KGZkKTsKIAotCQlpZ3Rfc3VidGVzdCgi
cmVhZG9ubHktbW1hcC11bnN5bmMiKQotCQkJdGVzdF9yZWFkb25seV9tbWFwKGZkKTsKKwkJaWd0
X2Rlc2NyaWJlKCJFeGFtaW5lIG1tYXAtb2Zmc2V0IG1hcHBpbmcgdG8gcmVhZC1vbmx5IHVzZXJw
dHIiKTsKKwkJaWd0X3N1YnRlc3Rfd2l0aF9keW5hbWljKCJyZWFkb25seS1tbWFwLXVuc3luYyIp
CisJCQlmb3JfZWFjaF9tbWFwX29mZnNldF90eXBlKGZkLCB0KQorCQkJCWlndF9keW5hbWljKHQt
Pm5hbWUpCisJCQkJCXRlc3RfcmVhZG9ubHlfbW1hcChmZCwgdCk7CiAKIAkJaWd0X3N1YnRlc3Qo
InJlYWRvbmx5LXB3cml0ZS11bnN5bmMiKQogCQkJdGVzdF9yZWFkb25seV9wd3JpdGUoZmQpOwot
LSAKMi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
