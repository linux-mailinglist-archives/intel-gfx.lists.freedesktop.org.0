Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC952A8097
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 12:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F9A89711;
	Wed,  4 Sep 2019 10:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2E689711
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 10:48:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 03:47:59 -0700
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="176903236"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 03:47:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org
In-Reply-To: <dcdf1abc-7b8e-1f42-a955-0438b90fe9dc@rasmusvillemoes.dk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190903133731.2094-1-jani.nikula@intel.com>
 <dcdf1abc-7b8e-1f42-a955-0438b90fe9dc@rasmusvillemoes.dk>
Date: Wed, 04 Sep 2019 13:47:52 +0300
Message-ID: <87blw049t3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] linux/kernel.h: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwNCBTZXAgMjAxOSwgUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVt
b2VzLmRrPiB3cm90ZToKPiBPbiAwMy8wOS8yMDE5IDE1LjM3LCBKYW5pIE5pa3VsYSB3cm90ZToK
Pgo+PiBXaGlsZSB0aGUgbWFpbiBnb2FsIGhlcmUgaXMgdG8gYWJzdHJhY3QgcmVjdXJyaW5nIHBh
dHRlcm5zLCBhbmQgc2xpZ2h0bHkKPj4gY2xlYW4gdXAgdGhlIGNvZGUgYmFzZSBieSBub3Qgb3Bl
biBjb2RpbmcgdGhlIHRlcm5hcnkgb3BlcmF0b3JzLCB0aGVyZQo+PiBhcmUgYWxzbyBzb21lIHNw
YWNlIHNhdmluZ3MgdG8gYmUgaGFkIHZpYSBiZXR0ZXIgc3RyaW5nIGNvbnN0YW50Cj4+IHBvb2xp
bmcuCj4KPiBFaCwgbm8/IFRoZSBsaW5rZXIgZG9lcyB0aGF0IGFjcm9zcyB0cmFuc2xhdGlvbiB1
bml0cyBhbnl3YXkgLSBtb3Jlb3ZlciwKPiBnaXZlbiB0aGF0IHlvdSBtYWtlIHRoZW0gc3RhdGlj
IGlubGluZXMsICJ5ZXMiIGFuZCAibm8iIHdpbGwgc3RpbGwgbGl2ZQo+IGluIC5yb2RhdGEuc3Ry
WC5ZIGluIGVhY2ggaW5kaXZpZHVhbCBUVSB0aGF0IHVzZXMgdGhlIHllc25vKCkgaGVscGVyLgoK
SSBzaG91bGQndmUgYmVlbiBtb3JlIGNhcmVmdWwgdGhlcmU7IHRoaXMgYWxsb3dzIHVzIHRvIGRv
IGJldHRlcgpjb25zdGFudCBwb29saW5nIGJ1dCBkb2VzIG5vdCBhY3R1YWxseSBkZWxpdmVyIG9u
IHRoYXQgaGVyZS4gWW91J2QgbmVlZAp0byByZXR1cm4gcG9pbnRlcnMgdG8gc3RyaW5ncyBpbiB0
aGUga2VybmVsIGltYWdlLiBUaGUgbGlua2VyIGNhbid0CmNvbnN0YW50IHBvb2wgYWNyb3NzIG1v
ZHVsZXMgYnkgaXRzZWxmLgoKQW55d2F5LCB0aGF0IHdhcyBub3QgdGhlIG1haW4gcG9pbnQgaGVy
ZS4KCj4gVGhlIGVuYWJsZWRkaXNhYmxlZCgpIGlzIGEgbW91dGhmdWwsIHBlcmhhcHMgdGhlIGhl
bHBlcnMgc2hvdWxkIGhhdmUgYW4KPiB1bmRlcnNjb3JlIGJldHdlZW4gdGhlIGNob2ljZXMKPgo+
IHllc19ubygpCj4gZW5hYmxlZF9kaXNhYmxlZCgpCj4gb25fb2ZmKCkKPgo+ID8KCkknbSByZXBs
YWNpbmcgZXhpc3RpbmcgZnVuY3Rpb25zIHRoYXQgYXJlIGJlaW5nIHVzZWQgaW4gdGhlIGtlcm5l
bAphbHJlYWR5LgoKJCBnaXQgZ3JlcCAiW15hLXpBLVowLTlfXVwoeWVzbm9cfG9ub2ZmXHxlbmFi
bGVkZGlzYWJsZWRcKSgiIHwgd2MgLWwKMjQxCgpOb3Qga2VlbiBvbiByZW5hbWluZyBhbGwgb2Yg
dGhlbS4KCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggICAgICAgICAgICAg
fCAxNSAtLS0tLS0tLS0tLS0tCj4+ICAuLi4vZXRoZXJuZXQvY2hlbHNpby9jeGdiNC9jeGdiNF9k
ZWJ1Z2ZzLmMgICAgfCAxMSAtLS0tLS0tLS0tCj4+ICBkcml2ZXJzL3VzYi9jb3JlL2NvbmZpZy5j
ICAgICAgICAgICAgICAgICAgICAgfCAgNSAtLS0tLQo+PiAgZHJpdmVycy91c2IvY29yZS9nZW5l
cmljLmMgICAgICAgICAgICAgICAgICAgIHwgIDUgLS0tLS0KPj4gIGluY2x1ZGUvbGludXgva2Vy
bmVsLmggICAgICAgICAgICAgICAgICAgICAgICB8IDIxICsrKysrKysrKysrKysrKysrKysKPgo+
IFBldCBwZWV2ZTogQ2FuIHdlIHBsZWFzZSBzdG9wIHVzaW5nIGxpbnV4L2tlcm5lbC5oIGFzIGEg
ZHVtcGluZyBncm91bmQKPiBmb3IgZXZlcnkgbGl0dGxlIHV0aWxpdHkvaGVscGVyPyBUaGF0IG1h
a2VzIGVhY2ggYW5kIGV2ZXJ5IHRyYW5zbGF0aW9uCj4gdW5pdCBpbiB0aGUga2VybmVsIHNsaWdo
dGx5IGxhcmdlciwgaGVuY2Ugc2xvd2VyIHRvIGNvbXBpbGUuIFBsZWFzZSBtYWtlCj4gYSBsaW51
eC9zdHJpbmctY2hvaWNlLmggYW5kIHB1dCB0aGVtIHRoZXJlLgoKKmdyaW4qCgpJbiB0aGUgYWJz
ZW5zZSBvZiBhIG5hdHVyYWwgY2FuZGlkYXRlIGluIGluY2x1ZGUvbGludXgvKi5oLCBJIHRob3Vn
aHQKc2hvdmluZyB0aGVtIHRvIGtlcm5lbC5oIHdvdWxkIHByb3Zva2UgdGhlIGJlc3QgZmVlZGJh
Y2sgb24gd2hlcmUgdG8gcHV0CnRoZW0uIEEgbmV3IHN0cmluZy1jaG9pY2UuaCB3b3JrcyBmb3Ig
bWUsIHRoYW5rcy4gOikKCkJSLApKYW5pLgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
