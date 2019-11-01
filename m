Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D307EC489
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 15:21:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62B56F80F;
	Fri,  1 Nov 2019 14:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95DC6F80C;
 Fri,  1 Nov 2019 14:21:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19048098-1500050 
 for multiple; Fri, 01 Nov 2019 14:21:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 14:21:23 +0000
Message-Id: <20191101142123.18136-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/i915_selftests: Expose 'perf'
 selftests
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
Cc: igt-dev@lists.freedesktop.org, Tomi Sarvela <tomi.p.sarvela@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RmluZCBhbGwgdGhlIHBlcmYqIHNlbGZ0ZXN0cyBhbmQgZXhwb3NlIHRoZW0gaW4gb3VyIGlndC4g
SW4gQ0kgd2UgZXhwZWN0CnRoZXNlIG5vdCB0byBiZSBydW4gaW4gQkFUIChzaW5jZSB0aGV5IGFy
ZSBqdXN0IHBlcmZvcm1hbmNlIHRlc3RzIHJhdGhlcgp0aGFuIGNvbmZvcm1hbmNlKSwgYnV0IGV4
cGVjdCB0aGUgcmVzdWx0cyB0byBiZSBhdmFpbGFibGUgZnJvbSB0aGUKc2hhcmRzLgoKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBUb21pIFNhcnZlbGEgPHRvbWku
cC5zYXJ2ZWxhQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2k5MTVfc2VsZnRlc3QuYyB8IDUg
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90ZXN0
cy9pOTE1L2k5MTVfc2VsZnRlc3QuYyBiL3Rlc3RzL2k5MTUvaTkxNV9zZWxmdGVzdC5jCmluZGV4
IDZkNTk3ZTY4Mi4uYWJjOGM5Yzc5IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2k5MTVfc2VsZnRl
c3QuYworKysgYi90ZXN0cy9pOTE1L2k5MTVfc2VsZnRlc3QuYwpAQCAtNDAsNCArNDAsOSBAQCBp
Z3RfbWFpbgogCQkJICAgICJsaXZlX3NlbGZ0ZXN0cz0tMSBkaXNhYmxlX2Rpc3BsYXk9MSBzdF9m
aWx0ZXI9JXMiLAogCQkJICAgIGVudikgPCBzaXplb2Yob3B0cykpOwogCWlndF9rc2VsZnRlc3Rz
KCJpOTE1Iiwgb3B0cywgImxpdmVfc2VsZnRlc3RzIiwgImxpdmUiKTsKKworCWlndF9hc3NlcnQo
c25wcmludGYob3B0cywgc2l6ZW9mKG9wdHMpLAorCQkJICAgICJwZXJmX3NlbGZ0ZXN0cz0tMSBk
aXNhYmxlX2Rpc3BsYXk9MSBzdF9maWx0ZXI9JXMiLAorCQkJICAgIGVudikgPCBzaXplb2Yob3B0
cykpOworCWlndF9rc2VsZnRlc3RzKCJpOTE1Iiwgb3B0cywgInBlcmZfc2VsZnRlc3RzIiwgInBl
cmYiKTsKIH0KLS0gCjIuMjQuMC5yYzIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
