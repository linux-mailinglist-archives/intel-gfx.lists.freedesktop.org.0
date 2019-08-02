Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFE2801FC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 22:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FFF6E4A1;
	Fri,  2 Aug 2019 20:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A117A6E497
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 20:51:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 13:51:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="175021778"
Received: from jssummer-desk.jf.intel.com ([10.165.21.197])
 by fmsmga007.fm.intel.com with ESMTP; 02 Aug 2019 13:51:34 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 13:51:24 -0700
Message-Id: <20190802205134.303-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/10] Refactor to expand subslice mask (rev 2)
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

Q3VycmVudGx5LCB0aGUgc3Vic2xpY2VfbWFzayBydW50aW1lIHBhcmFtZXRlciBpcyBzdG9yZWQg
YXMgYW4KYXJyYXkgb2Ygc3Vic2xpY2VzIHBlciBzbGljZS4gRXhwYW5kIHRoZSBzdWJzbGljZSBt
YXNrIGFycmF5IHRvCmJldHRlciBtYXRjaCB3aGF0IGlzIHByZXNlbnRlZCB0byB1c2Vyc3BhY2Ug
dGhyb3VnaCB0aGUKSTkxNV9RVUVSWV9UT1BPTE9HWV9JTkZPIGlvY3RsLiBUaGUgaW5kZXggaW50
byB0aGlzIGFycmF5IGlzCnRoZW4gY2FsY3VsYXRlZDoKICBzbGljZSAqIHN1YnNsaWNlIHN0cmlk
ZSArIHN1YnNsaWNlIGluZGV4IC8gOAoKTm90ZSB0aGlzIGlzIHRoZSBzZWNvbmQgaXRlcmF0aW9u
IG9mIGFuIG9yaWdpbmFsIHBhdGNoIHRvIGltcGxlbWVudAp0aGUgc2FtZS4gVGhlcmUgYXJlIGEg
Y291cGxlIG9mIG1pbm9yIGNvZGUgY2hhbmdlcyBiYXNlZCBvbiBjaGFuZ2VzCnNpbmNlIHRoZSBm
aXJzdCBzZXJpZXMgd2FzIHBvc3RlZC4gQWRkaXRpb25hbGx5LCB0aGUgb3JpZ2luYWwgcGF0Y2gK
aGFzIGJlZW4gc3BsaXQgaW50byBzZXZlcmFsIHNtYWxsZXIgcGF0Y2hlcyB3aXRoIG1vcmUgaXNv
bGF0ZWQKY2hhbmdlcyBiYXNlZCBvbiByZXZpZXcgZmVlZGJhY2sgaW4gdGhhdCBmaXJzdCBzZXJp
ZXMuCgpMaW5rIHRvIHRoZSBvcmlnaW5hbCBzZXJpZXM6Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9zZXJpZXMvNTk3NDIvCgp2MjogRml4IDMyLWJpdCBidWlsZAp2MzogRml4IHR5
cG8gaW4gaGFzd2VsbCBzc2V1IGluZm8gcm91dGluZSBhbmQgZml4IFNTRVUgd29ya2Fyb3VuZAog
ICAgcHJpbnQKClN0dWFydCBTdW1tZXJzICgxMCk6CiAgZHJtL2k5MTU6IFVzZSB2YXJpYWJsZSBm
b3IgZGVidWdmcyBkZXZpY2Ugc3RhdHVzCiAgZHJtL2k5MTU6IEFkZCBmdW5jdGlvbiB0byBzZXQg
U1NFVSBpbmZvIHBlciBwbGF0Zm9ybQogIGRybS9pOTE1OiBVc2UgbG9jYWwgdmFyaWFibGUgZm9y
IHN1YnNsaWNlX21hc2sgb24gSFNXCiAgZHJtL2k5MTU6IEFkZCBzdWJzbGljZSBzdHJpZGUgcnVu
dGltZSBwYXJhbWV0ZXIKICBkcm0vaTkxNTogQWRkIEVVIHN0cmlkZSBydW50aW1lIHBhcmFtZXRl
cgogIGRybS9pOTE1OiBBZGQgZnVuY3Rpb24gdG8gc2V0IHN1YnNsaWNlcwogIGRybS9pOTE1OiBB
ZGQgZnVuY3Rpb24gdG8gZGV0ZXJtaW5lIGlmIGEgc2xpY2UgaGFzIGEgc3Vic2xpY2UKICBkcm0v
aTkxNTogUmVmYWN0b3IgaW5zdGRvbmUgbG9vcHMgb24gbmV3IHN1YnNsaWNlIGZ1bmN0aW9ucwog
IGRybS9pOTE1OiBBZGQgbmV3IGZ1bmN0aW9uIHRvIGNvcHkgc3Vic2xpY2VzIGZvciBhIHNsaWNl
CiAgZHJtL2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrCgogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgIDMxICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9oYW5nY2hlY2suYyAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfc3NldS5jICAgICAgICAgfCAgNDggKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3NzZXUuaCAgICAgICAgIHwgIDI0ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYyAgICAgICAgICB8ICA0NyArKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9ncHVfZXJyb3IuYyAgICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcXVlcnkuYyAgICAgICAgICAgIHwgIDEwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5jICAgICB8IDExOCArKysrKysrKystLS0tLS0tLS0tCiAxMCBmaWxl
cyBjaGFuZ2VkLCAxODYgaW5zZXJ0aW9ucygrKSwgMTA4IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEu
MC41LmdhZWI1ODJhOTgzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
