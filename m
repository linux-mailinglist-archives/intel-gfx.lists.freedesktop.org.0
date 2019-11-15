Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0DCFDE48
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E5386E5CF;
	Fri, 15 Nov 2019 12:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A6E6E5CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:49:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19212398-1500050 for multiple; Fri, 15 Nov 2019 12:49:08 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191114225736.616885-1-chris@chris-wilson.co.uk>
 <273f2ba3-02d5-f99b-03ba-f55868ea5259@linux.intel.com>
In-Reply-To: <273f2ba3-02d5-f99b-03ba-f55868ea5259@linux.intel.com>
Message-ID: <157382214554.11997.1888308848075709685@skylake-alporthouse-com>
Date: Fri, 15 Nov 2019 12:49:05 +0000
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xNSAxMjo0NTo1MikKPiAKPiBPbiAxNC8x
MS8yMDE5IDIyOjU3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBPdXIgY2FsbGVycyBmYWxsIGlu
dG8gdHdvIGNhdGVnb3JpZXMsIHRob3NlIHBhc3NpbmcgdGltZW91dD0wIHdobyBqdXN0Cj4gPiB3
YW50IHRvIGZsdXNoIHJlcXVlc3QgcmV0aXJlbWVudHMgYW5kIHRob3NlIHBhc3NpbmcgYSB0aW1l
b3V0IHRoYXQgbmVlZAo+ID4gdG8gd2FpdCBmb3Igc3VibWlzc2lvbiBjb21wbGV0aW9uIChlLmcu
IGludGVsX2d0X3dhaXRfZm9yX2lkbGUoKSkuCj4gPiBDdXJyZW50bHksIHdlIG9ubHkgd2FpdCBm
b3IgYSBzbmFwc2hvdCBvZiB0aW1lbGluZXMgYXQgdGhlIHN0YXJ0IG9mIHRoZQo+ID4gd2FpdCAo
YnV0IHRoZXJlIHdhcyBhbiBleHBlY3Rpb24gdGhhdCBuZXcgcmVxdWVzdHMgd291bGQgY2F1c2Ug
dGltZWxpbmVzCj4gCj4gZXhwZWN0YXRpb24/IGV4Y2VwdGlvbj8KZXhwZWN0YXRpb24KCj4gPiB0
byBhcHBlYXIgYXQgdGhlIGVuZCkuIEhvd2V2ZXIsIG91ciBjYWxsZXJzLCBzdWNoIGFzCj4gPiBp
bnRlbF9ndF93YWl0X2Zvcl9pZGxlKCkgYmVmb3JlIHN1c3BlbmQsIGRvIHJlcXVpcmUgdXMgdG8g
d2FpdCBmb3IgdGhlCj4gPiBwb3dlciBtYW5hZ2VtZW50IHJlcXVlc3RzIGVtaXR0ZWQgYnkgcmV0
aXJlbWVudCBhcyB3ZWxsLiBJZiB3ZSBkb24ndCwKPiA+IHRoZW4gaXQgdGFrZXMgYW4gZXh0cmEg
c2Vjb25kIG9yIHR3byBmb3IgdGhlIGJhY2tncm91bmQgd29ya2VyIHRvIGZsdXNoCj4gPiB0aGUg
cXVldWUgYW5kIG1hcmsgdGhlIEdUIGFzIGlkbGUuCj4gCj4gU28gd2l0aCB0aGlzIGNoYW5nZSB3
YWl0X2Zvcl9pZGxlIHdhaXRzIGZvciB0aGUga2VybmVsIGNvbnRleHQgdG8gZ2V0IAo+IHJldGly
ZWQgYXMgd2VsbC4gQW5kIHlvdSBzYXkgdGhhdCdzIGZhc3RlciBieSBhIHNlY29uZCBvciB0d28/
IFdoaWNoIAo+IGZsdXNoIGdldHMgc28gbXVjaCBzbG93ZXIsIEkgbWVhbiBmcm9tIHdoZXJlLCBp
ZiB3ZSBkb24ndCB3YWl0IGhlcmU/CgppbnRlbF9ndF9wbV93YWl0X2Zvcl9pZGxlKCkgKHNvIGk5
MTVfZ2VtX3N1c3BlbmQsIGFuZCBzZWxmdGVzdHMgdGhhdApleGVyY2lzZSB0aG9zZSBzYW1lIHBh
dGhzKSB0aGVuIGhhcyB0byB3YWl0IGZvciB0aGUgYmFja2dyb3VuZCByZXRpcmUKd29ya2VyIHRv
IGZsdXNoIHRoZSBmaW5hbCByZXF1ZXN0cyBhbmQgZHJvcCB0aGUgd2FrZXJlZi4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
