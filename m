Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B43851C5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138AA6E749;
	Wed,  7 Aug 2019 17:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAD76E6DE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:12:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 09:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="177020452"
Received: from jssummer-desk.jf.intel.com ([10.165.21.197])
 by orsmga003.jf.intel.com with ESMTP; 07 Aug 2019 09:58:32 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 09:58:23 -0700
Message-Id: <20190807165832.26324-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] Refactor to expand subslice mask (rev 2)
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
ICAgcHJpbnQKdjQ6IE1lcmdlIHBhdGNoIHRvIEhTVyBpbiBwcmV2aW91cyByZXZpc2lvbiB3aXRo
IHBhdGNoIHRvCiAgICBzZXQgc3Vic2xpY2VfbWFzayBmb3IgZWFjaCBwbGF0Zm9ybSBhbmQgYWRk
cmVzcyBmZWVkYmFjawogICAgZnJvbSBDaHJpcwoKU3R1YXJ0IFN1bW1lcnMgKDkpOgogIGRybS9p
OTE1OiBVc2UgdmFyaWFibGUgZm9yIGRlYnVnZnMgZGV2aWNlIHN0YXR1cwogIGRybS9pOTE1OiBB
ZGQgZnVuY3Rpb24gdG8gc2V0IFNTRVUgaW5mbyBwZXIgcGxhdGZvcm0KICBkcm0vaTkxNTogQWRk
IHN1YnNsaWNlIHN0cmlkZSBydW50aW1lIHBhcmFtZXRlcgogIGRybS9pOTE1OiBBZGQgRVUgc3Ry
aWRlIHJ1bnRpbWUgcGFyYW1ldGVyCiAgZHJtL2k5MTU6IEFkZCBmdW5jdGlvbiB0byBzZXQgc3Vi
c2xpY2VzCiAgZHJtL2k5MTU6IEFkZCBmdW5jdGlvbiB0byBkZXRlcm1pbmUgaWYgYSBzbGljZSBo
YXMgYSBzdWJzbGljZQogIGRybS9pOTE1OiBSZWZhY3RvciBpbnN0ZG9uZSBsb29wcyBvbiBuZXcg
c3Vic2xpY2UgZnVuY3Rpb25zCiAgZHJtL2k5MTU6IEFkZCBuZXcgZnVuY3Rpb24gdG8gY29weSBz
dWJzbGljZXMgZm9yIGEgc2xpY2UKICBkcm0vaTkxNTogRXhwYW5kIHN1YnNsaWNlIG1hc2sKCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICB8ICAgMyArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggfCAgMzEgKysrLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVjay5jICAgIHwgICAzICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMgICAgICAgICB8ICA0OCArKysrKysrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oICAgICAgICAgfCAgMjQgKysrLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyAgfCAgIDMgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgIHwgIDQ5ICsrKysrLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICAgICB8ICAgNSArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAgICAgfCAgMTAgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgICAgIHwgMTIyICsrKysrKysr
Ky0tLS0tLS0tLS0KIDEwIGZpbGVzIGNoYW5nZWQsIDE4NSBpbnNlcnRpb25zKCspLCAxMTMgZGVs
ZXRpb25zKC0pCgotLSAKMi4yMS4wLjUuZ2FlYjU4MmE5ODMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
