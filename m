Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EACC0173617
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 12:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445736F411;
	Fri, 28 Feb 2020 11:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36646F411
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 11:33:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 03:33:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="232216036"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.22.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 03:33:19 -0800
MIME-Version: 1.0
In-Reply-To: <2132eb14-d887-2739-a183-cb06d5659f88@intel.com>
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
 <157979173710.19995.3438477214193047615@skylake-alporthouse-com>
 <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <157979471850.19995.901739010740499969@skylake-alporthouse-com>
 <op.0e0gqwtixaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <ab0ca807-0e3b-172a-dbd6-6777f5881be1@intel.com>
 <3d4f28e6-c87b-0278-ba3a-64d95d550efd@intel.com>
 <op.0ft9pzk8xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <ab1774c0-69b7-5a9b-c538-f1bf68cfb68e@intel.com>
 <2132eb14-d887-2739-a183-cb06d5659f88@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Fosha, Robert M" <robert.m.fosha@intel.com>, "Ye,
 Tony" <tony.ye@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Fri, 28 Feb 2020 13:33:17 +0200
Message-ID: <158288959705.8183.10803900434216996205@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PiA+Pj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLQo+ID4+Pj4+IMKgwqAgSHVDIHN0
YXRlwqDCoMKgwqDCoMKgIHwgb3B0aW9uIEIKPiA+Pj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0rLS0t
LS0tLS0tLQo+ID4+Pj4+IG5vIEh1QyBoYXJkd2FyZcKgwqAgfCAtRU5PREVWCj4gPj4+Pj4gR3VD
IGZ3IGRpc2FibGVkwqDCoCB8IC1FT1BOT1RTVVBQIC0+IHVzZXIgZGVjaXNpb24sIHdoeSBlcnJv
cj8KPiA+Pj4+PiBIdUMgZncgZGlzYWJsZWTCoMKgIHwgLUVPUE5PVFNVUFAgLT4gdXNlciBkZWNp
c2lvbiwgd2h5IGVycm9yPwo+ID4+Pj4+IEh1QyBmdyBtaXNzaW5nwqDCoMKgIHwgLUVOT0VYRUMK
PiA+Pj4+PiBIdUMgZncgZXJyb3LCoMKgwqDCoMKgIHwgLUVOT0VYRUMKPiA+Pj4+PiBIdUMgZncg
ZmFpbMKgwqDCoMKgwqDCoCB8wqDCoMKgIDDCoMKgwqDCoMKgwqDCoCAtPiB1bmxpa2VseSwgYnV0
IHN0aWxsIGZ3L2h3IGVycm9yCj4gPj4+Pj4gSHVDIGF1dGhlbnRpY2F0ZWQgfMKgwqDCoCAxCj4g
Pj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0KPiA+Pj4+Pgo+ID4+Pj4+IE9uIG90
aGVyIGhhbmQsIG9wdGlvbiBBIHRyZWF0cyBhbGwgZXJyb3IgY29uZGl0aW9ucyBhcyBlcnJvcnMs
IGxlYXZpbmcKPiA+Pj4+PiBzdGF0dXMgY29kZXMgb25seSBmb3Igbm9ybWFsIG9wZXJhdGlvbnM6
IGRpc2FibGVkKDApL2F1dGhlbnRpY2F0ZWQoMSk6Cj4gPj4+Pj4KPiA+Pj4+PiAtLS0tLS0tLS0t
LS0tLS0tLS0rLS0tLS0tLS0tLQo+ID4+Pj4+IMKgwqAgSHVDIHN0YXRlwqDCoMKgwqDCoMKgIHwg
b3B0aW9uIEEKPiA+Pj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLQo+ID4+Pj4+IG5v
IEh1QyBoYXJkd2FyZcKgwqAgfCAtRU5PREVWwqAgLT4geW91IHNob3VsZG4ndCBhc2sKPiA+Pj4+
PiBHdUMgZncgZGlzYWJsZWTCoMKgIHzCoMKgwqDCoCAwwqDCoMKgIC0+IHVzZXIgZGVjaXNpb24s
IG5vdCBhbiBlcnJvcgo+ID4+Pj4+IEh1QyBmdyBkaXNhYmxlZMKgwqAgfMKgwqDCoMKgIDDCoMKg
wqAgLT4gdXNlciBkZWNpc2lvbiwgbm90IGFuIGVycm9yCj4gPj4+Pj4gSHVDIGZ3IG1pc3NpbmfC
oMKgwqAgfCAtRU5PUEtHwqAgLT4gZncgbm90IGluc3RhbGxlZCBjb3JyZWN0bHkKPiA+Pj4+PiBI
dUMgZncgZXJyb3LCoMKgwqDCoMKgIHwgLUVOT0VYRUMgLT4gYmFkL3dyb25nIGZ3Cj4gPj4+Pj4g
SHVDIGZ3IGZhaWzCoMKgwqDCoMKgwqAgfCAtRUFDQ0VTwqAgLT4gZncvaHcgZXJyb3IKPiA+Pj4+
PiBIdUMgYXV0aGVudGljYXRlZCB8wqDCoMKgwqAgMQo+ID4+Pj4+IC0tLS0tLS0tLS0tLS0tLS0t
LSstLS0tLS0tLS0tCgpMZXQncyBnbyB3aXRoIE9wdGlvbiBCIGhlcmUuCgpJdCBjb3JyZWN0bHkg
cmVwb3J0cyBhbnl0aGluZyBhcyBlcnJvciBpZiBpdCBwcmVjZWRlcwp0aGUgYWN0dWFsIGFjdGlv
biBvZiBhdXRoZW50aWNhdGlvbiBhbmQgcHJldmVudHMgaXQgZnJvbQpoYXBwZW5pbmcuCgpTbyB0
aGUgcmVzdWx0IG9uZSBnZXRzIGlzIDAvMSBpcyBmb3IgdGhlIGF1dGhlbnRpY2F0aW9uCnN0YXR1
cyB3aGljaCBpcyB0aGUgb3JpZ2luYWwgaW50ZW50IGhlcmUuIE9yIGFsdGVybmF0aXZlbHkKYW4g
ZXJyb3IgaWYgdGhlIGF1dGhlbnRpY2F0aW9uIHdhcyBub3QgYXR0ZW1wdGVkLgoKUmVnYXJkcywg
Sm9vbmFzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
