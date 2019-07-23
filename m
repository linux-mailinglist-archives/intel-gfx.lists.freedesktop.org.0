Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A62071C25
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 17:49:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D51089FD4;
	Tue, 23 Jul 2019 15:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A1289FD4;
 Tue, 23 Jul 2019 15:49:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 08:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="177331098"
Received: from jssummer-desk.ra.intel.com ([10.54.134.159])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jul 2019 08:49:34 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 08:49:25 -0700
Message-Id: <20190723154934.26967-1-stuart.summers@intel.com>
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
Cc: intel-gfx-trybot@lists.freedesktop.org
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
ZXNrdG9wLm9yZy9zZXJpZXMvNTk3NDIvCgpTdHVhcnQgU3VtbWVycyAoOSk6CiAgZHJtL2k5MTU6
IFVzZSB2YXJpYWJsZSBmb3IgZGVidWdmcyBkZXZpY2Ugc3RhdHVzCiAgZHJtL2k5MTU6IEFkZCBm
dW5jdGlvbiB0byBzZXQgU1NFVSBpbmZvIHBlciBwbGF0Zm9ybQogIGRybS9pOTE1OiBBZGQgc3Vi
c2xpY2Ugc3RyaWRlIHJ1bnRpbWUgcGFyYW1ldGVyCiAgZHJtL2k5MTU6IEFkZCBFVSBzdHJpZGUg
cnVudGltZSBwYXJhbWV0ZXIKICBkcm0vaTkxNTogQWRkIGZ1bmN0aW9uIHRvIHNldCBzdWJzbGlj
ZXMKICBkcm0vaTkxNTogQWRkIGZ1bmN0aW9uIHRvIGRldGVybWluZSBpZiBhIHNsaWNlIGhhcyBh
IHN1YnNsaWNlCiAgZHJtL2k5MTU6IFJlZmFjdG9yIGluc3Rkb25lIGxvb3BzIG9uIG5ldyBzdWJz
bGljZSBmdW5jdGlvbnMKICBkcm0vaTkxNTogQWRkIG5ldyBmdW5jdGlvbiB0byBjb3B5IHN1YnNs
aWNlcyBmb3IgYSBzbGljZQogIGRybS9pOTE1OiBFeHBhbmQgc3Vic2xpY2UgbWFzawoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgIHwgICAzICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCB8ICAzMSArKystLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMgICAgfCAgIDMgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYyAgICAgICAgIHwgIDQ3ICsrKysrKystCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggICAgICAgICB8ICAyNCArKystCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICB8ICAgMyArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgfCAgNDcgKysrKystLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAgIHwgICA1ICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMgICAgICAgICAgICB8ICAxMCArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyAgICAgfCAxMTggKysrKysrKysrLS0t
LS0tLS0tLQogMTAgZmlsZXMgY2hhbmdlZCwgMTg0IGluc2VydGlvbnMoKyksIDEwNyBkZWxldGlv
bnMoLSkKCi0tIAoyLjIxLjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
