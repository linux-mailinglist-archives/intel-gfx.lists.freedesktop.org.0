Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BE7C0D65
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 23:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72406E28E;
	Fri, 27 Sep 2019 21:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FBA06E28E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 21:42:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 14:42:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,557,1559545200"; d="scan'208";a="273960723"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 27 Sep 2019 14:42:50 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 14:42:41 -0700
Message-Id: <20190927214243.18558-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Add microcontrollers
 documentation section
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

VG8gYmV0dGVyIG9yZ2FuaXplIHRoZSBpbmZvcm1hdGlvbiwgYWRkIGEgbWljcm9jb250cm9sbGVy
cyBzZWN0aW9uIGFuZAptb3ZlL2xpbmsgdGhlIEd1QywgSHVDIGFuZCBETUMgZG9jdW1lbnRhdGlv
biB1bmRlciBpdC4gQWxzbyBhZGQgYSBzbWFsbAppbnRyby4KClNpZ25lZC1vZmYtYnk6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBN
aWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KLS0tCiBEb2N1bWVu
dGF0aW9uL2dwdS9pOTE1LnJzdCB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1
LnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CmluZGV4IDQ2NTc3OTY3MGZkNC4uZjFi
YWU3ODY3MDQ1IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAorKysgYi9E
b2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdApAQCAtNDE1LDYgKzQxNSwxNSBAQCBPYmplY3QgVGls
aW5nIElPQ1RMcwogLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV90aWxpbmcuYwogICAgOmRvYzogYnVmZmVyIG9iamVjdCB0aWxpbmcKIAorTWljcm9jb250
cm9sbGVycworPT09PT09PT09PT09PT09PQorCitTdGFydGluZyBmcm9tIGdlbjksIHRocmVlIG1p
Y3JvY29udHJvbGxlcnMgYXJlIGF2YWlsYWJsZSBvbiB0aGUgSFc6IHRoZQorZ3JhcGhpY3MgbWlj
cm9jb250cm9sbGVyIChHdUMpLCB0aGUgSEVWQy9ILjI2NSBtaWNyb2NvbnRyb2xsZXIgKEh1Qykg
YW5kIHRoZQorZGlzcGxheSBtaWNyb2NvbnRyb2xsZXIgKERNQykuIFRoZSBkcml2ZXIgaXMgcmVz
cG9uc2libGUgZm9yIGxvYWRpbmcgdGhlCitmaXJtd2FyZXMgb24gdGhlIG1pY3JvY29udHJvbGxl
cnM7IHRoZSBHdUMgYW5kIEh1QyBmaXJtd2FyZXMgYXJlIHRyYW5zZmVycmVkCit0byBXT1BDTSB1
c2luZyB0aGUgRE1BIGVuZ2luZSwgd2hpbGUgdGhlIERNQyBmaXJtd2FyZSBpcyB3cml0dGVuIHRo
cm91Z2ggTU1JTy4KKwogV09QQ00KIC0tLS0tCiAKQEAgLTQ1NCw2ICs0NjMsMTUgQEAgR3VDIEFk
ZHJlc3MgU3BhY2UKIC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWMuYwogICAgOmRvYzogR3VDIEFkZHJlc3MgU3BhY2UKIAorSHVDCistLS0KKy4uIGtl
cm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYworICAg
OmRvYzogSHVDIEZpcm13YXJlCisKK0RNQworLS0tCitTZWUgYENTUiBmaXJtd2FyZSBzdXBwb3J0
IGZvciBETUNgXworCiBUcmFjaW5nCiA9PT09PT09CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
