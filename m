Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BBC3B8E07
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 09:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5C76E9C8;
	Thu,  1 Jul 2021 07:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 994396E9C8
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 07:07:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="269615705"
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; d="scan'208";a="269615705"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 00:07:31 -0700
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; d="scan'208";a="447778411"
Received: from bjvanakk-mobl.ger.corp.intel.com (HELO [10.252.61.209])
 ([10.252.61.209])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 00:07:29 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210630164413.25481-1-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <2edf584b-3835-53ed-f6e3-76c7e8d581ed@linux.intel.com>
Date: Thu, 1 Jul 2021 09:07:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210630164413.25481-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix -EDEADLK handling
 regression
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@intel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMzAtMDYtMjAyMSBvbSAxODo0NCBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFRoZSBjb252
ZXJzaW9uIHRvIHd3IG11dGV4ZXMgZmFpbGVkIHRvIGFkZHJlc3MgdGhlIGZlbmNlIGNvZGUgd2hp
Y2gKPiBhbHJlYWR5IHJldHVybnMgLUVERUFETEsgd2hlbiB3ZSBydW4gb3V0IG9mIGZlbmNlcy4g
V3cgbXV0ZXhlcyBvbgo+IHRoZSBvdGhlciBoYW5kIHRyZWF0IC1FREVBRExLIGFzIGFuIGludGVy
bmFsIGVycm5vIHZhbHVlIGluZGljYXRpbmcKPiBhIG5lZWQgdG8gcmVzdGFydCB0aGUgb3BlcmF0
aW9uIGR1ZSB0byBhIGRlYWRsb2NrLiBTbyBub3cgd2hlbiB0aGUKPiBmZW5jZSBjb2RlIHJldHVy
bnMgLUVERUFETEsgdGhlIGhpZ2hlciBsZXZlbCBjb2RlIGVycm9uZW91c2x5Cj4gcmVzdGFydHMg
ZXZlcnl0aGluZyBpbnN0ZWFkIG9mIHJldHVybmluZyB0aGUgZXJyb3IgdG8gdXNlcnNwYWNlCj4g
YXMgaXMgZXhwZWN0ZWQuCj4KPiBUbyByZW1lZHkgdGhpcyBsZXQncyBzd2l0Y2ggdGhlIGZlbmNl
IGNvZGUgdG8gdXNlIGEgZGlmZmVyZW50IGVycm5vCj4gdmFsdWUgZm9yIHRoaXMuIC1FTk9CVUZT
IHNlZW1zIGxpa2UgYSBzZW1pLXJlYXNvbmFibGUgdW5pcXVlIGNob2ljZS4KPiBBcGFydCBmcm9t
IGlndCB0aGUgb25seSB1c2VyIG9mIHRoaXMgSSBjb3VsZCBmaW5kIGlzIHNuYSwgYW5kIGV2ZW4K
PiB0aGVyZSBhbGwgd2UgZG8gaXMgZHVtcCB0aGUgY3VycmVudCBmZW5jZSByZWdpc3RlcnMgZnJv
bSBkZWJ1Z2ZzCj4gaW50byB0aGUgWCBzZXJ2ZXIgbG9nLiBTbyBubyB1c2VyIHZpc2libGUgZnVu
Y3Rpb25hbGl0eSBpcyBhZmZlY3RlZC4KPiBJZiB3ZSByZWFsbHkgY2FyZWQgYWJvdXQgcHJlc2Vy
dmluZyB0aGlzIHdlIGNvdWxkIG9mIGNvdXJzZSBjb252ZXJ0Cj4gYmFjayB0byAtRURFQURMSyBo
aWdoZXIgdXAsIGJ1dCBkb2Vzbid0IHNlZW0gbGlrZSB0aGF0J3Mgd29ydGgKPiB0aGUgaGFzc2xl
IGhlcmUuCj4KPiBOb3QgcXVpdGUgc3VyZSB3aGljaCBjb21taXQgc3BlY2lmaWNhbGx5IGJyb2tl
IHRoaXMsIGJ1dCBJJ2xsCj4ganVzdCBhdHRyaWJ1dGUgaXQgdG8gdGhlIGdlbmVyYWwgZ2VtIHd3
IG11dGV4IHdvcmsuCj4KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IENjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBUaG9t
YXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+Cj4gVGVzdGNhc2U6IGln
dC9nZW1fcHJlYWQvZXhoYXVzdGlvbgo+IFRlc3RjYXNlOiBpZ3QvZ2VtX3B3cml0ZS9iYXNpYy1l
eGhhdXN0aW9uCj4gVGVzdGNhc2U6IGlndC9nZW1fZmVuY2VkX2V4ZWNfdGhyYXNoL3Rvby1tYW55
LWZlbmNlcwo+IEZpeGVzOiA4MGYwYjY3OWQ2ZjAgKCJkcm0vaTkxNTogQWRkIGFuIGltcGxlbWVu
dGF0aW9uIGZvciBpOTE1X2dlbV93d19jdHggbG9ja2luZywgdjIuIikKPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0X2ZlbmNpbmcuYyB8IDIgKy0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dF9mZW5jaW5nLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0X2ZlbmNpbmcuYwo+IGluZGV4IGNhYzdmM2Y0
NDY0Mi4uZjg5NDhkZTcyMDM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2dndHRfZmVuY2luZy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ2d0dF9mZW5jaW5nLmMKPiBAQCAtMzQ4LDcgKzM0OCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkx
NV9mZW5jZV9yZWcgKmZlbmNlX2ZpbmQoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKPiAgCWlmIChp
bnRlbF9oYXNfcGVuZGluZ19mYl91bnBpbihnZ3R0LT52bS5pOTE1KSkKPiAgCQlyZXR1cm4gRVJS
X1BUUigtRUFHQUlOKTsKPiAgCj4gLQlyZXR1cm4gRVJSX1BUUigtRURFQURMSyk7Cj4gKwlyZXR1
cm4gRVJSX1BUUigtRU5PQlVGUyk7Cj4gIH0KPiAgCj4gIGludCBfX2k5MTVfdm1hX3Bpbl9mZW5j
ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKCk1ha2VzIHNlbnNlLi4KClJldmlld2VkLWJ5OiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKSXMgaXQg
YSBzbGlnaHRseSBtb3JlIHJlZW50IGNvbW1pdD8gTWlnaHQgcHJvYmFibHkgYmUgdGhlIHBhcnQg
dGhhdCBjb252ZXJ0cyBleGVjYnVmZmVyIHRvIHVzZSB3dyBsb2Nrcy4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
