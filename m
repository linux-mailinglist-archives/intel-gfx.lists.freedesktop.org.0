Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7631009AD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D4D6E673;
	Mon, 18 Nov 2019 16:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 412A66E673
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:49:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:49:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="407450026"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga006.fm.intel.com with ESMTP; 18 Nov 2019 08:49:16 -0800
Date: Mon, 18 Nov 2019 08:50:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191118165031.GF21445@mdroper-desk1.amr.corp.intel.com>
References: <20191118164412.26216-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118164412.26216-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Update voltage level checks
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

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMDg6NDQ6MTJBTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBUaGUgYnNwZWMgd2FzIHJlY2VudGx5IHVwZGF0ZWQgd2l0aCBuZXcgY2RjbGsgLT4gdm9s
dGFnZSBsZXZlbCB0YWJsZXMgdG8KPiBhY2NvbW9kYXRlIHRoZSBuZXcgMzI0LzMyNi40IGNkY2xr
IHZhbHVlcy4KPiAKPiBCc3BlYzogMjE4MDkKPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJl
ZGR5QGludGVsLmNvbT4KPiBDYzogQm9iIFBhYXV3ZSA8Ym9iLmoucGFhdXdlQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoK
QW5kCgpGaXhlczogNjNjOWRhZTcxZGM1ICgiZHJtL2k5MTUvZWhsOiBBZGQgdm9sdGFnZSBsZXZl
bCByZXF1aXJlbWVudCB0YWJsZSIpCgpzaW5jZSB1c2luZyB0aGUgb2xkIHRhYmxlIGNvdWxkIHJl
c3VsdCBpbiB1cyByZXF1ZXN0aW5nIHRvbyBsb3cgYQp2b2x0YWdlIGxldmVsIGZvciB0aGUgaGln
aGVzdCBjZGNsayB2YWx1ZXMuCgoKTWF0dAoKPiAtLS0KPiBUaGVyZSBhcmUgc29tZSBwbGF0Zm9y
bSB0YWdnaW5nIGlzc3VlcyBvbiB0aGlzIGJzcGVjIHBhZ2UgYW5kIG11bHRpcGxlCj4gdGFibGVz
IGFyZSBhY3R1YWxseSB0YWdnZWQgd2l0aCB0aGUgRUhMIGxhYmVsLCBidXQgdGhlIGJzcGVjIGNo
YW5nZWxvZwo+IG1ha2VzIGl0IHByZXR0eSBjbGVhciB3aGljaCB0YWJsZSB3ZSdyZSBzdXBwb3Nl
ZCB0byBiZSB1c2luZyAocGx1cyB0aGUKPiBvdGhlciB0YWJsZXMgZG9uJ3QgbWF0Y2ggdGhlIHNl
dCBvZiBjZGNsa3Mgc3VwcG9ydGVkIGJ5IHRoZSBwbGF0Zm9ybSkuCj4gCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+IGluZGV4IDhiNzAyMzE3NTU3ZS4uN2QxYWIxZTVi
N2MzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+
IEBAIC0xMjczLDcgKzEyNzMsOSBAQCBzdGF0aWMgdTggaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChp
bnQgY2RjbGspCj4gIAo+ICBzdGF0aWMgdTggZWhsX2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2Rj
bGspCj4gIHsKPiAtCWlmIChjZGNsayA+IDMxMjAwMCkKPiArCWlmIChjZGNsayA+IDMyNjQwMCkK
PiArCQlyZXR1cm4gMzsKPiArCWVsc2UgaWYgKGNkY2xrID4gMzEyMDAwKQo+ICAJCXJldHVybiAy
Owo+ICAJZWxzZSBpZiAoY2RjbGsgPiAxODAwMDApCj4gIAkJcmV0dXJuIDE7Cj4gLS0gCj4gMi4y
MS4wCj4gCgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NH
QyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
