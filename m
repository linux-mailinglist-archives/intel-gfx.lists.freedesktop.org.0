Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2130D5E38
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90CAA6E17A;
	Mon, 14 Oct 2019 09:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 022466E171
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:08:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18828684-1500050 
 for multiple; Mon, 14 Oct 2019 10:07:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:07:45 +0100
Message-Id: <20191014090757.32111-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014090757.32111-1-chris@chris-wilson.co.uk>
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/15] drm/i915/execlists: Assert tasklet is
 locked for process_csb()
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

V2UgcmVseSBvbiBvbmx5IHRoZSB0YXNrbGV0IGJlaW5nIGFsbG93ZWQgdG8gY2FsbCBpbnRvIHBy
b2Nlc3NfY3NiKCksIHNvCmFzc2VydCB0aGF0IGlzIGxvY2tlZCB3aGVuIHdlIGRvLiBBcyB0aGUg
dGFza2xldCB1c2VzIGEgc2ltcGxlIGJpdGxvY2ssCnRoZXJlIGlzIG5vIHN0cm9uZyBsb2NrZGVw
IGNoZWNraW5nIHNvIHdlIG11c3QgbWFrZSBkbyB3aXRoIGEgcGxhaW4KYXNzZXJ0aW9uIHRoYXQg
dGhlIHRhc2tsZXQgaXMgcnVubmluZyBhbmQgYXNzdW1lIHRoYXQgd2UgYXJlIHRoZQp0YXNrbGV0
IQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5oICAgICB8IDUgKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCAxNmI4NzhkMzU4MTQuLmZj
NGJlNzZiMzA3MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE4NDMsNiAr
MTg0Myw3IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKIAl1OCBoZWFkLCB0YWlsOwogCiAJR0VNX0JVR19PTihVU0VTX0dVQ19TVUJNSVNT
SU9OKGVuZ2luZS0+aTkxNSkpOworCUdFTV9CVUdfT04oIXRhc2tsZXRfaXNfbG9ja2VkKCZleGVj
bGlzdHMtPnRhc2tsZXQpKTsKIAogCS8qCiAJICogTm90ZSB0aGF0IGNzYl93cml0ZSwgY3NiX3N0
YXR1cyBtYXkgYmUgZWl0aGVyIGluIEhXU1Agb3IgbW1pby4KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5o
CmluZGV4IGRiMjBkMmIwODQyYi4uZjZmOTY3NTg0OGI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmgKQEAgLTg2LDYgKzg2LDExIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCB0YXNrbGV0X2xvY2soc3Ry
dWN0IHRhc2tsZXRfc3RydWN0ICp0KQogCQljcHVfcmVsYXgoKTsKIH0KIAorc3RhdGljIGlubGlu
ZSBib29sIHRhc2tsZXRfaXNfbG9ja2VkKGNvbnN0IHN0cnVjdCB0YXNrbGV0X3N0cnVjdCAqdCkK
K3sKKwlyZXR1cm4gdGVzdF9iaXQoVEFTS0xFVF9TVEFURV9SVU4sICZ0LT5zdGF0ZSk7Cit9CisK
IHN0YXRpYyBpbmxpbmUgdm9pZCBfX3Rhc2tsZXRfZGlzYWJsZV9zeW5jX29uY2Uoc3RydWN0IHRh
c2tsZXRfc3RydWN0ICp0KQogewogCWlmICghYXRvbWljX2ZldGNoX2luYygmdC0+Y291bnQpKQot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
