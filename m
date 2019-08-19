Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 504BE94FB8
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 23:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF0A96E2B6;
	Mon, 19 Aug 2019 21:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B8DE6E29E
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 21:17:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 14:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,406,1559545200"; d="scan'208";a="329496177"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga004.jf.intel.com with ESMTP; 19 Aug 2019 14:17:57 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 14:18:40 -0700
Message-Id: <20190819211849.34085-1-stuart.summers@intel.com>
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
ZXMgd2l0aCB0cnlib3QuCgpTdHVhcnQgU3VtbWVycyAoOSk6CiAgZHJtL2k5MTU6IFVzZSB2YXJp
YWJsZSBmb3IgZGVidWdmcyBkZXZpY2Ugc3RhdHVzCiAgZHJtL2k5MTU6IEFkZCBmdW5jdGlvbiB0
byBzZXQgU1NFVSBpbmZvIHBlciBwbGF0Zm9ybQogIGRybS9pOTE1OiBBZGQgc3Vic2xpY2Ugc3Ry
aWRlIHJ1bnRpbWUgcGFyYW1ldGVyCiAgZHJtL2k5MTU6IEFkZCBFVSBzdHJpZGUgcnVudGltZSBw
YXJhbWV0ZXIKICBkcm0vaTkxNTogQWRkIGZ1bmN0aW9uIHRvIHNldCBzdWJzbGljZXMKICBkcm0v
aTkxNTogQWRkIGZ1bmN0aW9uIHRvIGRldGVybWluZSBpZiBhIHNsaWNlIGhhcyBhIHN1YnNsaWNl
CiAgZHJtL2k5MTU6IFJlZmFjdG9yIGluc3Rkb25lIGxvb3BzIG9uIG5ldyBzdWJzbGljZSBmdW5j
dGlvbnMKICBkcm0vaTkxNTogQWRkIG5ldyBmdW5jdGlvbiB0byBjb3B5IHN1YnNsaWNlcyBmb3Ig
YSBzbGljZQogIGRybS9pOTE1OiBFeHBhbmQgc3Vic2xpY2UgbWFzawoKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgIHwgICAzICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCB8ICAzMSArKystLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3NzZXUuYyAgICAgICAgIHwgIDQ4ICsrKysrKystCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggICAgICAgICB8ICAyNCArKystCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgfCAgNDkgKysrKystLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAgIHwgICA1ICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3F1ZXJ5LmMgICAgICAgICAgICB8ICAxMCArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyAgICAgfCAxMjIgKysrKysrKysrLS0tLS0tLS0tLQog
MTAgZmlsZXMgY2hhbmdlZCwgMTg1IGluc2VydGlvbnMoKyksIDExMyBkZWxldGlvbnMoLSkKCi0t
IAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
