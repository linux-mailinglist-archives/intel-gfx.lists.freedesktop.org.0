Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB9B5BB62
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 14:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9C8589C21;
	Mon,  1 Jul 2019 12:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C604D89C21
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 12:21:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 05:21:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="190231144"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 01 Jul 2019 05:21:29 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x61CLSrF027546; Mon, 1 Jul 2019 13:21:28 +0100
To: intel-gfx@lists.freedesktop.org, "Anusha Srivatsa"
 <anusha.srivatsa@intel.com>
References: <20190629003709.14513-1-anusha.srivatsa@intel.com>
Date: Mon, 01 Jul 2019 14:21:28 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z380l2qvxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190629003709.14513-1-anusha.srivatsa@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Define GuC firmware version
 for Comet Lake
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAyOSBKdW4gMjAxOSAwMjozNzowOSArMDIwMCwgQW51c2hhIFNyaXZhdHNhICAKPGFu
dXNoYS5zcml2YXRzYUBpbnRlbC5jb20+IHdyb3RlOgoKPiBMb2FkIEd1QyBmb3IgQ29tZXQgTGFr
ZS4gRGVwZW5kaW5nIG9uIHRoZSBSRVZJRCwKPiB3ZSBsb2FkIGVpdGhlciB0aGUgS0JMIGZpcm13
YXJlIG9yIHRoZSBDTUwgZmlybXdhcmUuCj4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFs
LndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZh
dHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9ndWNfZncuYyB8IDE3ICsrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZ3VjX2Z3LmMgIAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3
LmMKPiBpbmRleCA5NzBmMzllZjI0OGIuLmViMGJlODdjMzU4ZiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2d1Y19mdy5jCj4gQEAgLTU4LDYgKzU4LDEzIEBAIE1PRFVMRV9GSVJNV0FSRShC
WFRfR1VDX0ZJUk1XQVJFX1BBVEgpOwo+ICAjZGVmaW5lIEtCTF9HVUNfRklSTVdBUkVfUEFUSCBf
X01BS0VfR1VDX0ZXX1BBVEgoS0JMKQo+ICBNT0RVTEVfRklSTVdBUkUoS0JMX0dVQ19GSVJNV0FS
RV9QQVRIKTsKPiArI2RlZmluZSBDTUxfR1VDX0ZXX1BSRUZJWCBjbWwKPiArI2RlZmluZSBDTUxf
R1VDX0ZXX01BSk9SIDMzCj4gKyNkZWZpbmUgQ01MX0dVQ19GV19NSU5PUiAwCj4gKyNkZWZpbmUg
Q01MX0dVQ19GV19QQVRDSCAwCgp5b3UgY2FuJ3QgYWRkIEd1QyBmaXJtd2FyZSB3aXRoIGRpZmZl
cmVudCBtYWpvciB2ZXJzaW9uIHRoZW4gY3VycmVudGx5CnN1cHBvcnRlZCBieSB0aGUgZHJpdmVy
IGFzIGl0IHdpbGwgbm90IHdvcmsuIHBsZWFzZSBub3RlIHRoYXQgc2VyaWVzIGZvcgplbmFibGlu
ZyBHdUMgMzMuMC4wIGlzIHN0aWxsIG5vdCBtZXJnZWQsIHNlZSBsYXRlc3QgZHJvcCBvbiB0cnli
b3QgWzFdCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Mjc3
NC8KCj4gKyNkZWZpbmUgQ01MX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFLRV9HVUNfRldfUEFUSChL
QkwpCj4gK01PRFVMRV9GSVJNV0FSRShDTUxfR1VDX0ZJUk1XQVJFX1BBVEgpOwo+ICsKPiAgI2Rl
ZmluZSBHTEtfR1VDX0ZXX1BSRUZJWCBnbGsKPiAgI2RlZmluZSBHTEtfR1VDX0ZXX01BSk9SIDMy
Cj4gICNkZWZpbmUgR0xLX0dVQ19GV19NSU5PUiAwCj4gQEAgLTk0LDYgKzEwMSwxNiBAQCBzdGF0
aWMgdm9pZCBndWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19mdyAqZ3VjX2Z3KQo+ICAJCWd1
Y19mdy0+cGF0aCA9IEdMS19HVUNfRklSTVdBUkVfUEFUSDsKPiAgCQlndWNfZnctPm1ham9yX3Zl
cl93YW50ZWQgPSBHTEtfR1VDX0ZXX01BSk9SOwo+ICAJCWd1Y19mdy0+bWlub3JfdmVyX3dhbnRl
ZCA9IEdMS19HVUNfRldfTUlOT1I7Cj4gKwl9IGVsc2UgaWYgKElTX0NPTUVUTEFLRShpOTE1KSkg
ewoKd2UgdHJlYXQgQ01MIGFzIENPRkZFRUxBS0UKCj4gKwkJaWYgKFJFVklEKGRldl9wcml2KSA9
PSA1KSB7CgptYXliZSB0byBiZSBmdXR1cmUgcHJvb2YsIHRoaXMgc2hvdWxkIGJlID49IDUgPwoK
PiArCQkJZ3VjX2Z3LT5wYXRoID0gQ01MX0dVQ19GSVJNV0FSRV9QQVRIOwo+ICsJCQlndWNfZnct
Pm1ham9yX3Zlcl93YW50ZWQgPSBDTUxfR1VDX0ZXX01BSk9SOwo+ICsJCQlndWNfZnctPm1pbm9y
X3Zlcl93YW50ZWQgPSBDTUxfR1VDX0ZXX01JTk9SOwo+ICsJCX0gZWxzZSB7Cj4gKwkJCWd1Y19m
dy0+cGF0aCA9IEtCTF9HVUNfRklSTVdBUkVfUEFUSDsKPiArCQkJZ3VjX2Z3LT5tYWpvcl92ZXJf
d2FudGVkID0gS0JMX0dVQ19GV19NQUpPUjsKPiArCQkJZ3VjX2Z3LT5taW5vcl92ZXJfd2FudGVk
ID0gS0JMX0dVQ19GV19NSU5PUjsKPiArCQl9Cj4gIAl9IGVsc2UgaWYgKElTX0tBQllMQUtFKGk5
MTUpIHx8IElTX0NPRkZFRUxBS0UoaTkxNSkpIHsKCnBsZWFzZSByZW1vdmUgQ0ZMIGZyb20gaGVy
ZQoKPiAgCQlndWNfZnctPnBhdGggPSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEg7Cj4gIAkJZ3VjX2Z3
LT5tYWpvcl92ZXJfd2FudGVkID0gS0JMX0dVQ19GV19NQUpPUjsKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
