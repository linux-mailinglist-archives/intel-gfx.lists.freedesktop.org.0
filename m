Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9532A95016
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 23:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68EBA6E391;
	Mon, 19 Aug 2019 21:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFFDB89C07
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 21:49:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 14:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,406,1559545200"; d="scan'208";a="189657605"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga002.jf.intel.com with ESMTP; 19 Aug 2019 14:49:11 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 14:49:54 -0700
Message-Id: <20190819215003.48305-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
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
cmVzcyBmZWVkYmFjawogICAgZnJvbSBDaHJpcwp2NTogTm8gY2hhbmdlcyBpbiBjb2RlLiBSZXNl
bmRpbmcgZHVlIHRvIHVucmVsYXRlZCBmYWlsdXJlcyAtIGNvbmZpcm1lZAogICAgbm8gZmFpbHVy
ZXMgd2l0aCB0cnlib3QuCnY2OiBNaW5vciBjaGFuZ2UgaW4gaW50ZWxfd29ya2Fyb3VuZHMuYyB0
byB1c2UgdGhlIG5ldyBoZWxwZXIgZnVuY3Rpb24KClN0dWFydCBTdW1tZXJzICg5KToKICBkcm0v
aTkxNTogVXNlIHZhcmlhYmxlIGZvciBkZWJ1Z2ZzIGRldmljZSBzdGF0dXMKICBkcm0vaTkxNTog
QWRkIGZ1bmN0aW9uIHRvIHNldCBTU0VVIGluZm8gcGVyIHBsYXRmb3JtCiAgZHJtL2k5MTU6IEFk
ZCBzdWJzbGljZSBzdHJpZGUgcnVudGltZSBwYXJhbWV0ZXIKICBkcm0vaTkxNTogQWRkIEVVIHN0
cmlkZSBydW50aW1lIHBhcmFtZXRlcgogIGRybS9pOTE1OiBBZGQgZnVuY3Rpb24gdG8gc2V0IHN1
YnNsaWNlcwogIGRybS9pOTE1OiBBZGQgZnVuY3Rpb24gdG8gZGV0ZXJtaW5lIGlmIGEgc2xpY2Ug
aGFzIGEgc3Vic2xpY2UKICBkcm0vaTkxNTogUmVmYWN0b3IgaW5zdGRvbmUgbG9vcHMgb24gbmV3
IHN1YnNsaWNlIGZ1bmN0aW9ucwogIGRybS9pOTE1OiBBZGQgbmV3IGZ1bmN0aW9uIHRvIGNvcHkg
c3Vic2xpY2VzIGZvciBhIHNsaWNlCiAgZHJtL2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrCgog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICAgfCAgIDMgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgIDMxICsrKy0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYyAgICB8ICAgMyArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jICAgICAgICAgfCAgNDggKysrKysrKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCAgICAgICAgIHwgIDI0ICsrKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgIHwgICA1ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICB8ICA0OSArKysrKy0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyAgICAgICAgfCAgIDUgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyAgICAgICAgICAgIHwgIDEwICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jICAgICB8IDEyMiArKysrKysr
KystLS0tLS0tLS0tCiAxMCBmaWxlcyBjaGFuZ2VkLCAxODYgaW5zZXJ0aW9ucygrKSwgMTE0IGRl
bGV0aW9ucygtKQoKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
