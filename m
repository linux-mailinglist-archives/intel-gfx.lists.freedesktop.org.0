Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D23EBFDE6D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A5116E5D7;
	Fri, 15 Nov 2019 12:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E6F6E5D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:56:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 04:56:19 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199192680"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Nov 2019 04:56:18 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191114225736.616885-1-chris@chris-wilson.co.uk>
 <273f2ba3-02d5-f99b-03ba-f55868ea5259@linux.intel.com>
 <157382214554.11997.1888308848075709685@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b01bd300-4386-e041-d1f7-8f46aa0bdf59@linux.intel.com>
Date: Fri, 15 Nov 2019 12:56:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157382214554.11997.1888308848075709685@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gt: Wait for new requests in
 intel_gt_retire_requests()
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

Ck9uIDE1LzExLzIwMTkgMTI6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTE1IDEyOjQ1OjUyKQo+Pgo+PiBPbiAxNC8xMS8yMDE5IDIyOjU3
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBPdXIgY2FsbGVycyBmYWxsIGludG8gdHdvIGNhdGVn
b3JpZXMsIHRob3NlIHBhc3NpbmcgdGltZW91dD0wIHdobyBqdXN0Cj4+PiB3YW50IHRvIGZsdXNo
IHJlcXVlc3QgcmV0aXJlbWVudHMgYW5kIHRob3NlIHBhc3NpbmcgYSB0aW1lb3V0IHRoYXQgbmVl
ZAo+Pj4gdG8gd2FpdCBmb3Igc3VibWlzc2lvbiBjb21wbGV0aW9uIChlLmcuIGludGVsX2d0X3dh
aXRfZm9yX2lkbGUoKSkuCj4+PiBDdXJyZW50bHksIHdlIG9ubHkgd2FpdCBmb3IgYSBzbmFwc2hv
dCBvZiB0aW1lbGluZXMgYXQgdGhlIHN0YXJ0IG9mIHRoZQo+Pj4gd2FpdCAoYnV0IHRoZXJlIHdh
cyBhbiBleHBlY3Rpb24gdGhhdCBuZXcgcmVxdWVzdHMgd291bGQgY2F1c2UgdGltZWxpbmVzCj4+
Cj4+IGV4cGVjdGF0aW9uPyBleGNlcHRpb24/Cj4gZXhwZWN0YXRpb24KPiAKPj4+IHRvIGFwcGVh
ciBhdCB0aGUgZW5kKS4gSG93ZXZlciwgb3VyIGNhbGxlcnMsIHN1Y2ggYXMKPj4+IGludGVsX2d0
X3dhaXRfZm9yX2lkbGUoKSBiZWZvcmUgc3VzcGVuZCwgZG8gcmVxdWlyZSB1cyB0byB3YWl0IGZv
ciB0aGUKPj4+IHBvd2VyIG1hbmFnZW1lbnQgcmVxdWVzdHMgZW1pdHRlZCBieSByZXRpcmVtZW50
IGFzIHdlbGwuIElmIHdlIGRvbid0LAo+Pj4gdGhlbiBpdCB0YWtlcyBhbiBleHRyYSBzZWNvbmQg
b3IgdHdvIGZvciB0aGUgYmFja2dyb3VuZCB3b3JrZXIgdG8gZmx1c2gKPj4+IHRoZSBxdWV1ZSBh
bmQgbWFyayB0aGUgR1QgYXMgaWRsZS4KPj4KPj4gU28gd2l0aCB0aGlzIGNoYW5nZSB3YWl0X2Zv
cl9pZGxlIHdhaXRzIGZvciB0aGUga2VybmVsIGNvbnRleHQgdG8gZ2V0Cj4+IHJldGlyZWQgYXMg
d2VsbC4gQW5kIHlvdSBzYXkgdGhhdCdzIGZhc3RlciBieSBhIHNlY29uZCBvciB0d28/IFdoaWNo
Cj4+IGZsdXNoIGdldHMgc28gbXVjaCBzbG93ZXIsIEkgbWVhbiBmcm9tIHdoZXJlLCBpZiB3ZSBk
b24ndCB3YWl0IGhlcmU/Cj4gCj4gaW50ZWxfZ3RfcG1fd2FpdF9mb3JfaWRsZSgpIChzbyBpOTE1
X2dlbV9zdXNwZW5kLCBhbmQgc2VsZnRlc3RzIHRoYXQKPiBleGVyY2lzZSB0aG9zZSBzYW1lIHBh
dGhzKSB0aGVuIGhhcyB0byB3YWl0IGZvciB0aGUgYmFja2dyb3VuZCByZXRpcmUKPiB3b3JrZXIg
dG8gZmx1c2ggdGhlIGZpbmFsIHJlcXVlc3RzIGFuZCBkcm9wIHRoZSB3YWtlcmVmLgoKQWNrLgoK
UmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpS
ZWdhcmRzLAoKVHZydGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
