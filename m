Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA1020B70
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 17:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0E789623;
	Thu, 16 May 2019 15:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A9D89623
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 15:42:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 08:42:09 -0700
X-ExtLoop1: 1
Received: from fstricch-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.34.28])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 08:42:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Summers\, Stuart" <stuart.summers@intel.com>, "Vivi\,
 Rodrigo" <rodrigo.vivi@intel.com>
In-Reply-To: <a13bccb377efbfe2f4ee9e414e4053610d315e3b.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190514164653.935-1-stuart.summers@intel.com>
 <155785283553.21839.2059003338244451933@skylake-alporthouse-com>
 <4387e52b0895d400d4e0f5c71e4c8e0a164add7c.camel@intel.com>
 <20190515000604.GC18687@intel.com> <87ftpeaff0.fsf@intel.com>
 <a13bccb377efbfe2f4ee9e414e4053610d315e3b.camel@intel.com>
Date: Thu, 16 May 2019 18:42:12 +0300
Message-ID: <87mujm76ej.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Re-add enable_rc6 modparam
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxNiBNYXkgMjAxOSwgIlN1bW1lcnMsIFN0dWFydCIgPHN0dWFydC5zdW1tZXJzQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCAyMDE5LTA1LTE2IGF0IDEyOjU5ICswMzAwLCBKYW5p
IE5pa3VsYSB3cm90ZToKPj4gT24gVHVlLCAxNCBNYXkgMjAxOSwgUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPiB3cm90ZToKPj4gPiBPbmUgcG9zc2liaWxpdHkgdGhhdCBqdXN0
IGNhbWUgdG8gbXkgbWluZCBub3cgaXMsIHdoYXQgaWYgd2UgbWFrZQo+PiA+IHRoaXMgb25seSBm
b3IgcGxhdGZvcm1zIHRoYXQgYXJlIHN0aWxsIHByb3RlY3RlZCBieQo+PiA+IGlzX2FscGhhX3N1
cHBvcnQ9MQo+PiA+IChzb29uIGJlY29taW5nIHJlcXVpcmVfZm9yY2VfcHJvYmU9MSkKPj4gCj4+
IFBsZWFzZSBkb24ndCBjb25mbGF0ZSBhbHBoYV9zdXBwb3J0IG9yIGZvcmNlX3Byb2JlIHdpdGgg
KmFueXRoaW5nKgo+PiBlbHNlLgo+PiAKPj4gPiBCdXQgdGhpcyBpcyBqdXN0IG9uZSBzaWRlIG9m
IHRoZSBjb2luLi4uIHdoZW4gcHJvZHVjdCBpcyBvdXQgdGhlcmUKPj4gPiBhbmQgd2Ugd2FudCB0
aGUgdXNlciB0byBkZWJ1ZyB0aGUgaXNzdWUgdG8gc2VlIGlmIGl0IGlzIGEgUkM2IGJ1Zwo+PiA+
IHdlIGhhdmUgbm8gd2F5IHRvIHZlcmlmeSB0aGF0LiA6Lwo+PiAKPj4gVGhlIHByb2JsZW0gaXMs
IGlmIGl0IHdvcmtzIHdpdGggcmM2IGRpc2FibGVkLCBpdCBkb2Vzbid0IHByb3ZlIGl0J3MKPj4g
YW4KPj4gcmM2IGJ1ZyBlaXRoZXIuCj4KPiBHb29kIHBvaW50LiBJJ20gbm90IHNheWluZyB3ZSBz
aG91bGQgZW5mb3JjZSBhIHByb2Nlc3Mgb2YgZGlzYWJsaW5nIFJDNgo+IGZvciB0aGUgcGxhdGZv
cm0gaWYgZW5hYmxlX3JjNj0wIHJlc3VsdHMgaW4gc3VjY2Vzcy4gSSdtIGp1c3Qgc2F5aW5nCj4g
aGF2aW5nIHRoZSBvcHRpb24gaXMgdXNlZnVsIGZyb20gYSBkZWJ1ZyBwZXJzcGVjdGl2ZS4gV2Ug
d2lsbCBzdGlsbAo+IG5lZWQgdG8gZG8gdGhlIGFwcHJvcHJpYXRlIGZ1bGwgYW5hbHlzaXMsIGlu
Y2x1ZGluZyB0aGUgbm9ybWFsIGNvZGUKPiByZXZpZXcgcHJvY2VzcyBvbiBhIHByZS1jYXNlIGJh
c2lzIHdoZW4gZGVidWcgaW52b2x2ZXMgdGhpcyBwYXJhbWV0ZXIuCj4gQnV0IHRoZSBwYXJhbWV0
ZXIgaXRzZWxmIGlzIHN0aWxsIHVzZWZ1bC4KClRoZSB0cm91YmxlIHN0YXJ0cyB3aGVuIHVzZXJz
IGZpZ3VyZSBvdXQgdGhhdCBlbmFibGVfcmM2PTAgd29ya3MgYXJvdW5kCmEgcGFydGljdWxhciBw
cm9ibGVtIHRoZXkgaGF2ZSAobGlrZWx5IGJ5IHdheSBvZiBkaXNhYmxpbmcgcnVudGltZSBwbSwK
bm90IGRpcmVjdGx5IHJlbGF0ZWQgdG8gcmM2KS4gWW91IGNvdWxkIGFyZ3VlIHRoaXMgaXMgYSBn
b29kIHRoaW5nLCBidXQKdW5mb3J0dW5hdGVseSB3ZSBnZW5lcmFsbHkgbmV2ZXIgaGVhciBmcm9t
IHRoZW0gYWdhaW4sIGFuZCB0aGUgcm9vdApjYXVzZSByZW1haW5zIHVuc29sdmVkLCB3aXRoIGRl
Z3JhZGVkIHVzZXIgZXhwZXJpZW5jZSB3cnQgcG93ZXIKbWFuYWdlbWVudC4KCkJSLApKYW5pLgoK
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
