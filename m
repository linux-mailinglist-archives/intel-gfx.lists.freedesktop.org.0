Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF9616224
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3637D6E215;
	Tue,  7 May 2019 10:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27126E215
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:52:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:52:02 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 03:52:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
 <20190503115225.30831-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <761d2b2b-f03f-9bda-fbc4-5404d5daa9d0@linux.intel.com>
Date: Tue, 7 May 2019 11:52:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503115225.30831-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915: Assert the local
 engine->wakeref is active
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA1LzIwMTkgMTI6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBEdWUgdG8gdGhlIGFz
eW5jaHJvbm91cyB0YXNrbGV0IGFuZCByZWN1cnNpdmUgR1Qgd2FrZXJlZiwgaXQgbWF5IGhhcHBl
bgo+IHRoYXQgd2Ugc3VibWl0IHRvIHRoZSBlbmdpbmUgKHVuZGVybmVhdGggaXQncyBvd24gd2Fr
ZXJlZikgcHJpb3IgdG8gdGhlCj4gY2VudHJhbCB3YWtlcmVmIGJlaW5nIG1hcmtlZCBhcyB0YWtl
bi4gU3dpdGNoIHRvIGNoZWNraW5nIHRoZSBsb2NhbCB3YWtlcmVmCj4gZm9yIGdyZWF0ZXIgY29u
c2lzdGVuY3kuCj4gCj4gRml4ZXM6IDc5ZmZhYzg1OTljNCAoImRybS9pOTE1OiBJbnZlcnQgdGhl
IEdFTSB3YWtlcmVmIGhpZXJhcmNoeSIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYyB8IDMgKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyAgICAgICB8IDQgKystLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMKPiBpbmRleCA1OTA3YTk2MTM2NDEuLjQxNmQ3ZTJlNmY4YyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gQEAgLTEwOTAsNiArMTA5MCw5IEBAIGJv
b2wgaW50ZWxfZW5naW5lX2lzX2lkbGUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+
ICAgCWlmIChpOTE1X3Jlc2V0X2ZhaWxlZChlbmdpbmUtPmk5MTUpKQo+ICAgCQlyZXR1cm4gdHJ1
ZTsKPiAgIAo+ICsJaWYgKCFpbnRlbF93YWtlcmVmX2FjdGl2ZSgmZW5naW5lLT53YWtlcmVmKSkK
PiArCQlyZXR1cm4gdHJ1ZTsKPiArCj4gICAJLyogV2FpdGluZyB0byBkcmFpbiBFTFNQPyAqLwo+
ICAgCWlmIChSRUFEX09OQ0UoZW5naW5lLT5leGVjbGlzdHMuYWN0aXZlKSkgewo+ICAgCQlzdHJ1
Y3QgdGFza2xldF9zdHJ1Y3QgKnQgPSAmZW5naW5lLT5leGVjbGlzdHMudGFza2xldDsKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IDdkNjlkMDc0OTBlOC4uNTU4MGI2ZjFh
YTBjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtNTM1LDcgKzUz
NSw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXRfcG9ydHMoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQo+ICAgCSAqIHRoYXQgYWxsIEVMU1AgYXJlIGRyYWluZWQgaS5lLiB3
ZSBoYXZlIHByb2Nlc3NlZCB0aGUgQ1NCLAo+ICAgCSAqIGJlZm9yZSBhbGxvd2luZyBvdXJzZWx2
ZXMgdG8gaWRsZSBhbmQgY2FsbGluZyBpbnRlbF9ydW50aW1lX3BtX3B1dCgpLgo+ICAgCSAqLwo+
IC0JR0VNX0JVR19PTighZW5naW5lLT5pOTE1LT5ndC5hd2FrZSk7Cj4gKwlHRU1fQlVHX09OKCFp
bnRlbF93YWtlcmVmX2FjdGl2ZSgmZW5naW5lLT53YWtlcmVmKSk7Cj4gICAKPiAgIAkvKgo+ICAg
CSAqIEVMU1Egbm90ZTogdGhlIHN1Ym1pdCBxdWV1ZSBpcyBub3QgY2xlYXJlZCBhZnRlciBiZWlu
ZyBzdWJtaXR0ZWQKPiBAQCAtMTA4NSw3ICsxMDg1LDcgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3Rz
X3N1Ym1pc3Npb25fdGFza2xldCh1bnNpZ25lZCBsb25nIGRhdGEpCj4gICAKPiAgIAlHRU1fVFJB
Q0UoIiVzIGF3YWtlPz0lZCwgYWN0aXZlPSV4XG4iLAo+ICAgCQkgIGVuZ2luZS0+bmFtZSwKPiAt
CQkgICEhZW5naW5lLT5pOTE1LT5ndC5hd2FrZSwKPiArCQkgICEhaW50ZWxfd2FrZXJlZl9hY3Rp
dmUoJmVuZ2luZS0+d2FrZXJlZiksCj4gICAJCSAgZW5naW5lLT5leGVjbGlzdHMuYWN0aXZlKTsK
PiAgIAo+ICAgCXNwaW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPnRpbWVsaW5lLmxvY2ssIGZsYWdz
KTsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
