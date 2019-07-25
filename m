Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 720FF746AD
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 07:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A481189F31;
	Thu, 25 Jul 2019 05:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0A789EB1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 05:59:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 22:59:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,305,1559545200"; d="scan'208";a="369025137"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jul 2019 22:59:38 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.128.222])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6P5xboI003385; Thu, 25 Jul 2019 06:59:37 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190725001813.4740-1-daniele.ceraolospurio@intel.com>
 <20190725001813.4740-5-daniele.ceraolospurio@intel.com>
Date: Thu, 25 Jul 2019 07:59:37 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5gyxnmmxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190725001813.4740-5-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v3 4/8] drm/i915/uc: Unify uc_fw status
 tracking
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

T24gVGh1LCAyNSBKdWwgMjAxOSAwMjoxODowOSArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gV2UgY3VycmVu
dGx5IHRyYWNrIGZldGNoIGFuZCBsb2FkIHN0YXR1cyBzZXBhcmF0ZWx5LCBidXQgdGhlIDIgYXJl
Cj4gYWN0dWFsbHkgc2VxdWVudGlhbCBpbiB0aGUgdWMgbGlmZXRpbWUgKGZldGNoIG11c3QgY29t
cGxldGUgYmVmb3JlIHdlCj4gY2FuIGF0dGVtcHQgdGhlIGxvYWQhKS4gVW5pZnlpbmcgdGhlIDIg
dmFyaWFibGVzIHdlIGNhbiBiZXR0ZXIgZm9sbG93Cj4gdGhlIHNlcXVlbnRpYWwgc3RhdGVzIGFu
ZCBpbXByb3ZlIG91ciB0cmFja25nIG9mIHRoZSB1QyBzdGF0ZS4KPgo+IEFsc28sIHNwcmlua2xl
IHNvbWUgR0VNX0JVR19PTiB0byBtYWtlIHN1cmUgd2UgdHJhbnNpdGlvbiBjb3JyZWN0bHkKPiBi
ZXR3ZWVuIHN0YXRlcy4KPgo+IHYyOiByZW5hbWUgc3RhdGVzLCBhZGQgdGhlIHJ1bm5pbmcgc3Rh
dGUgKE1pY2hhbCksIGRyb3Agc29tZSBsb2dzIGluCj4gICAgIHRoZSBmZXRjaCBwYXRoIChNaWNo
YWwsIENocmlzKQo+Cj4gdjM6IHJlLXJlbmFtZSBzdGF0ZXMsIGV4dGVuZCBlYXJseSBzdGF0dXMg
Y2hlY2sgdG8gYWxsIGhlbHBlcnMgKE1pY2hhbCkKPgo+IFN1Z2dlc3RlZC1ieTogTWljaGFsIFdh
amRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBD
YzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQoKUmV2aWV3ZWQtYnk6
IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgoKLi4uCgo+ICtz
dGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaHVjX2lzX2F1dGhlbnRpY2F0ZWQoc3RydWN0IGludGVs
X2h1YyAqaHVjKQo+ICt7Cj4gKwlyZXR1cm4gaW50ZWxfdWNfZndfaXNfcnVubmluZygmaHVjLT5m
dyk7Cj4gK30KPiArCgpidHcsIG1heWJlIGxhdGVyIHdlIGNhbiB1c2UgdGhhdCBpbnN0ZWFkIG9m
IGludGVsX2h1Y19jaGVja19zdGF0dXMoKSA/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
