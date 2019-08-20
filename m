Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5CE96C9F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 01:04:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3623A6E8A1;
	Tue, 20 Aug 2019 23:04:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C92C6E14A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 23:04:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 16:04:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="377944594"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga005.fm.intel.com with ESMTP; 20 Aug 2019 16:04:52 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:05:33 -0700
Message-Id: <20190820230544.170010-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/11] Refactor to expand subslice mask (rev 2)
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
cmVzcyBmZWVkYmFjawogICAgZnJvbSBDaHJpcwp2NTogTm8gY2hhbmdlcyBpbiBjb2RlLiBSZXNl
bmRpbmcgZHVlIHRvIHVucmVsYXRlZCBmYWlsdXJlcyAtIGNvbmZpcm1lZAogICAgbm8gZmFpbHVy
ZXMgd2l0aCB0cnlib3QuCnY2OiBNaW5vciBjaGFuZ2UgaW4gaW50ZWxfd29ya2Fyb3VuZHMuYyB0
byB1c2UgdGhlIG5ldyBoZWxwZXIgZnVuY3Rpb24Kdjc6IFNwbGl0IHNldCBzdWJsaWNlIGZ1bmN0
aW9uIGludG8gbXVsdGlwbGUgbW9yZSBtYW5hZ2VhYmxlIHBhdGNoZXMKICAgIEFuZCBhZGQgYSBj
b3VwbGUgb2YgR0VNX0JVR19PTiBjaGVja3MgcmVxdWVzdGVkIGJ5IENocmlzCgpTdHVhcnQgU3Vt
bWVycyAoMTEpOgogIGRybS9pOTE1OiBVc2UgdmFyaWFibGUgZm9yIGRlYnVnZnMgZGV2aWNlIHN0
YXR1cwogIGRybS9pOTE1OiBBZGQgZnVuY3Rpb24gdG8gc2V0IFNTRVUgaW5mbyBwZXIgcGxhdGZv
cm0KICBkcm0vaTkxNTogQWRkIHN1YnNsaWNlIHN0cmlkZSBydW50aW1lIHBhcmFtZXRlcgogIGRy
bS9pOTE1OiBBZGQgRVUgc3RyaWRlIHJ1bnRpbWUgcGFyYW1ldGVyCiAgZHJtL2k5MTU6IFVzZSBs
b2NhbCB2YXJpYWJsZXMgZm9yIHN1YnNsaWNlX21hc2sgZm9yIGRldmljZSBpbmZvCiAgZHJtL2k5
MTU6IEFkZCBmdW5jdGlvbiB0byBzZXQgc3Vic2xpY2VzCiAgZHJtL2k5MTU6IFVzZSBzdWJzbGlj
ZSBzdHJpZGUgdG8gc2V0IHN1YnNsaWNlcyBmb3IgYSBnaXZlbiBzbGljZQogIGRybS9pOTE1OiBB
ZGQgZnVuY3Rpb24gdG8gZGV0ZXJtaW5lIGlmIGEgc2xpY2UgaGFzIGEgc3Vic2xpY2UKICBkcm0v
aTkxNTogUmVmYWN0b3IgaW5zdGRvbmUgbG9vcHMgb24gbmV3IHN1YnNsaWNlIGZ1bmN0aW9ucwog
IGRybS9pOTE1OiBBZGQgbmV3IGZ1bmN0aW9uIHRvIGNvcHkgc3Vic2xpY2VzIGZvciBhIHNsaWNl
CiAgZHJtL2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrCgogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgIDMxICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9oYW5nY2hlY2suYyAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfc3NldS5jICAgICAgICAgfCAgNTIgKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3NzZXUuaCAgICAgICAgIHwgIDMwICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgfCAgNDkgKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3F1ZXJ5LmMgICAgICAgICAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyAgICAgfCAxMjIgKysrKysrKysrLS0tLS0tLS0tLQogMTAgZmls
ZXMgY2hhbmdlZCwgMTk2IGluc2VydGlvbnMoKyksIDExNCBkZWxldGlvbnMoLSkKCi0tIAoyLjIy
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
