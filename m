Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3736218DF9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 18:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6711A89E11;
	Thu,  9 May 2019 16:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA84089E11
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 16:25:49 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 09:25:48 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 09 May 2019 09:25:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 May 2019 19:25:44 +0300
Date: Thu, 9 May 2019 19:25:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190509162544.GI24299@intel.com>
References: <20190509061954.10379-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509061954.10379-1-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 00/11] drm/i915: Add support for
 asynchronous display power disabling
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMDk6MTk6NDNBTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IFRoaXMgcGF0Y2hzZXQgaXMgdjIgb2YgWzFdLiBUaGUgbWFpbiBjaGFuZ2UgaXMgdGhlIHJl
d29yayBvZiBwYXRjaCAxCj4gYmFzZWQgb24gQ2hyaXMnIGZlZWRiYWNrLgo+IAo+IENjOiBWaWxs
ZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmln
by52aXZpQGludGVsLmNvbT4KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+Cj4gCj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjAyNDIvCj4gCj4gSW1yZSBEZWFrICgxMSk6Cj4gICBkcm0vaTkxNTogQWRkIHN1cHBv
cnQgZm9yIHRyYWNraW5nIHdha2VyZWZzIHcvbyBwb3dlci1vbiBndWFyYW50ZWUKPiAgIGRybS9p
OTE1OiBGb3JjZSBwcmludGluZyB3YWtlcmVmIHRhY2tpbmcgZHVyaW5nIHBtX2NsZWFudXAKPiAg
IGRybS9pOTE1OiBWZXJpZnkgcG93ZXIgZG9tYWlucyBzdGF0ZSBkdXJpbmcgc3VzcGVuZCBpbiBh
bGwgY2FzZXMKPiAgIGRybS9pOTE1OiBBZGQgc3VwcG9ydCBmb3IgYXN5bmNocm9ub3VzIGRpc3Bs
YXkgcG93ZXIgZGlzYWJsaW5nCj4gICBkcm0vaTkxNTogRGlzYWJsZSBwb3dlciBhc3luY2hyb25v
dXNseSBkdXJpbmcgRFAgQVVYIHRyYW5zZmVycwo+ICAgZHJtL2k5MTU6IFdBUk4gZm9yIGVEUCBl
bmNvZGVycyBpbiBpbnRlbF9kcF9kZXRlY3RfZHBjZCgpCj4gICBkcm0vaTkxNTogUmVtb3ZlIHRo
ZSB1bm5lZWRlZCBBVVggcG93ZXIgcmVmIGZyb20gaW50ZWxfZHBfZGV0ZWN0KCkKPiAgIGRybS9p
OTE1OiBSZW1vdmUgdGhlIHVubmVlZGVkIEFVWCBwb3dlciByZWYgZnJvbSBpbnRlbF9kcF9ocGRf
cHVsc2UoKQo+ICAgZHJtL2k5MTU6IFJlcGxhY2UgdXNlIG9mIFBMTFMgcG93ZXIgZG9tYWluIHdp
dGggRElTUExBWV9DT1JFIGRvbWFpbgo+ICAgZHJtL2k5MTU6IEF2b2lkIHRha2luZyB0aGUgUFBT
IGxvY2sgZm9yIG5vbi1lRFAvVkxWL0NIVgo+ICAgZHJtL2k5MTU6IEFzc2VydCB0aGF0IFR5cGVD
IHBvcnRzIGFyZSBub3QgdXNlZCBmb3IgZURQCgpJIHRydXN0IENocmlzIHNjcnV0aW5pemVkIHRo
ZSB3YWtlcmVmIHN0dWZmIHN1ZmZpY2llbnRseSBzbwpJIGRpZG4ndCBwYXkgYWxsIHRoYXQgbXVj
aCBhdHRlbnRpb24gdG8gdGhvc2UgcGF0Y2hlcy4KClBhdGNoZXMgNS0xMSBsZ3RtLgpSZXZpZXdl
ZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4g
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICB8ICAgNSArCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyAgICB8ICAgMiArLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmggICAgfCAgIDIgKy0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHAuYyAgICAgICAgIHwgIDgzICsrLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHBsbF9tZ3IuYyAgIHwgIDM2ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2Rydi5oICAgICAgICB8ICA1MiArKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcHNyLmMgICAgICAgIHwgICA2ICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5jIHwgNTk1ICsrKysrKysrKysrKysrKysrKysrKy0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmggfCAgIDggKwo+ICA5IGZpbGVzIGNoYW5nZWQsIDY2
MiBpbnNlcnRpb25zKCspLCAxMjcgZGVsZXRpb25zKC0pCj4gCj4gLS0gCj4gMi4xNy4xCgotLSAK
VmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
