Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A991A1636E0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 00:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0979C6EADF;
	Tue, 18 Feb 2020 23:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ADA96EADF
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 23:07:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 15:07:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="436023044"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.232])
 by fmsmga006.fm.intel.com with ESMTP; 18 Feb 2020 15:07:48 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 15:08:22 -0800
Message-Id: <20200218230822.66801-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Remove require_force_probe
 protection
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaGF2ZSBhIGZldyBUR0wgbWFjaGluZXMgaW4gb3VyIENJIGFuZCBpdCBpcyBtb3N0bHkgZ3Jl
ZW4gd2l0aApmYWlsdXJlcyBpbiB0ZXN0cyB0aGF0IHdpbGwgbm90IGltcGFjdCBmdXR1cmUgTGlu
dXggaW5zdGFsbGF0aW9ucy4KQWxzbyB0aGVyZSBpcyBubyB3YXJuaW5ncywgZXJyb3JzLCBmbGlj
a2VyaW5nIG9yIGFueSB2aXN1YWwgZGVmZWN0cwp3aGlsZSBkb2luZyBvcmRpbmFyeSB0YXNrcyBs
aWtlIGJyb3dzaW5nIGFuZCBlZGl0aW5nIGRvY3VtZW50cyBpbiBhCmR1YWwgbW9uaXRvciBzZXR1
cC4KCkFzIGEgcmVtaW5kZXIgaTkxNS5yZXF1aXJlX2ZvcmNlX3Byb2JlIHdhcyBjcmVhdGVkIHRv
IHByb3RlY3QKZnV0dXJlIExpbnV4IGluc3RhbGxhdGlvbidzIGlzbyBpbWFnZXMgdGhhdCBtaWdo
dCBjb250YWluIGEKa2VybmVsIGZyb20gdGhlIGVuYWJsaW5nIHRpbWUgb2YgdGhlIG5ldyBwbGF0
Zm9ybS4gV2l0aG91dCB0aGlzCnByb3RlY3Rpb24gbW9zdCBvZiBsaW51eCBpbnN0YWxsYXRpb24g
d2FzIHJlY29tbWVuZGluZwpub21vZGVzZXQgb3B0aW9uIGR1cmluZyBpbnN0YWxsYXRpb24gdGhh
dCB3YXMgZ2V0dGluZyBzdGljawp0aGVyZSBhZnRlciBpbnN0YWxsYXRpb24uCgpSZWZlcmVuY2U6
IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvZmktdGdsLXUuaHRtbApS
ZWZlcmVuY2U6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvc2hhcmQt
dGdsYi5odG1sCkNjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+CkNjOiBK
YW5pIFNhYXJpbmVuIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAxIC0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggMjRi
MWYwY2U4NzQzLi4yMTQ2YjlhODY1YmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtODIy
LDcgKzgyMiw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gdGdsX2lu
Zm8gPSB7CiAJR0VOMTJfRkVBVFVSRVMsCiAJUExBVEZPUk0oSU5URUxfVElHRVJMQUtFKSwKIAku
cGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0MpIHwgQklU
KFBJUEVfRCksCi0JLnJlcXVpcmVfZm9yY2VfcHJvYmUgPSAxLAogCS5kaXNwbGF5Lmhhc19tb2R1
bGFyX2ZpYSA9IDEsCiAJLmVuZ2luZV9tYXNrID0KIAkJQklUKFJDUzApIHwgQklUKEJDUzApIHwg
QklUKFZFQ1MwKSB8IEJJVChWQ1MwKSB8IEJJVChWQ1MyKSwKLS0gCjIuMjUuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
