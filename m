Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D331028DF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D1F6E216;
	Tue, 19 Nov 2019 16:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A8CA6E216
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:08:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 08:07:52 -0800
X-IronPort-AV: E=Sophos;i="5.69,218,1571727600"; d="scan'208";a="200397967"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Nov 2019 08:07:51 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-15-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <07242b22-6625-390c-19cf-9c37a32a43b4@linux.intel.com>
Date: Tue, 19 Nov 2019 16:07:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118230254.2615942-15-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/19] drm/i915/gt: Schedule next retirement
 worker first
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

Ck9uIDE4LzExLzIwMTkgMjM6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB3ZSBtYXkgcGFy
ayB0aGUgZ3QgZHVyaW5nIHJlcXVlc3QgcmV0aXJlbWVudCwgd2UgbWF5IHRoZW4gY2FuY2VsIHRo
ZQo+IHJldGlyZW1lbnQgd29ya2VyIG9ubHkgdG8gdGhlbiBwcm9ncmFtIHRoZSBkZWxheWVkIHdv
cmtlciBvbmNlIG1vcmUuCj4gCj4gSWYgd2Ugc2NoZWR1bGUgdGhlIG5leHQgZGVsYXllZCByZXRp
cmVtZW50IHdvcmtlciBmaXJzdCwgaWYgd2UgdGhlbiBwYXJrCj4gdGhlIGd0LCB0aGUgd29yayBy
ZW1haW4gY2FuY2VsbGVkIFt1bnRpbCB3ZSB1bnBhcmtdLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwo+IGluZGV4IDc0MzU2ZGI0MzMyNS4uNGRjM2Ni
ZWIxYjM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3Jl
cXVlc3RzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0
cy5jCj4gQEAgLTEwOSw5ICsxMDksOSBAQCBzdGF0aWMgdm9pZCByZXRpcmVfd29ya19oYW5kbGVy
KHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0KPiAg
IAkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqZ3QpLCByZXF1ZXN0cy5yZXRpcmVfd29yay53
b3JrKTsKPiAgIAo+IC0JaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzKGd0KTsKPiAgIAlzY2hlZHVs
ZV9kZWxheWVkX3dvcmsoJmd0LT5yZXF1ZXN0cy5yZXRpcmVfd29yaywKPiAgIAkJCSAgICAgIHJv
dW5kX2ppZmZpZXNfdXBfcmVsYXRpdmUoSFopKTsKPiArCWludGVsX2d0X3JldGlyZV9yZXF1ZXN0
cyhndCk7Cj4gICB9Cj4gICAKPiAgIHZvaWQgaW50ZWxfZ3RfaW5pdF9yZXF1ZXN0cyhzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KQoKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
