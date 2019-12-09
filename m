Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A67E116C9D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 12:57:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0D06E417;
	Mon,  9 Dec 2019 11:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF71B6E417
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 11:57:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 03:57:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="202810418"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga007.jf.intel.com with ESMTP; 09 Dec 2019 03:57:28 -0800
Date: Mon, 9 Dec 2019 17:27:01 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191209115701.GA22862@intel.com>
References: <20191202065458.9477-1-ramalingam.c@intel.com>
 <20191202065458.9477-2-ramalingam.c@intel.com>
 <CAM0jSHMP37vD_sz8HMiA7T2A_J08vD4VmvkC-L7WcyBoxTsCaA@mail.gmail.com>
 <157554841226.22727.12524170364084626029@skylake-alporthouse-com>
 <20191205130240.GG25793@intel.com>
 <157555148978.22727.11669212602896257587@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157555148978.22727.11669212602896257587@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Create dumb buffer from
 LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMi0wNSBhdCAxMzoxMToyOSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1
b3RpbmcgUmFtYWxpbmdhbSBDICgyMDE5LTEyLTA1IDEzOjAyOjQwKQo+ID4gT24gMjAxOS0xMi0w
NSBhdCAxMjoyMDoxMiArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBRdW90aW5nIE1h
dHRoZXcgQXVsZCAoMjAxOS0xMi0wNSAxMjoxMjoxOSkKPiA+ID4gPiBXZSB3b3VsZCBzdGlsbCBu
ZWVkIHRvIGNsZWFyIHRoZSBvYmplY3QobWF5YmUgSTkxNV9CT19BTExPQ19DTEVBUkVEPykKPiA+
ID4gPiBpbiBvcmRlciB0byBwYXNzIHRoZSBJR1RzLiBXZSBhbHNvIG5lZWQgdG8gYWRqdXN0IGR1
bWJfYnVmZmVyLmMsIHNpbmNlCj4gPiA+ID4gdGhhdCB1c2VzIGdldF9hdmFpbF9yYW1fbWIoKSBm
b3IgYWx3YXlzX2NsZWFyLCBidXQgbWF5YmUgd2UgbmVlZCB0aGUKPiA+ID4gPiBxdWVyeSByZWdp
b24gdWFwaSBmb3IgdGhhdD8KPiA+ID4gCj4gPiA+IEhtbS4gUXVlc3Rpb25zIG92ZXIgdGhlIG1h
eGltdW0gc2l6ZSBmb3IgZHVtYiBidWZmZXIsIG1heGltdW0gbnVtYmVyIG9mCj4gPiA+IGR1bWIg
YnVmZmVycywgZXRjLCBzaG91bGQgYmUgYWRkcmVzc2VkIHRvIHRoZSBkdW1iIEFQSS4gU28gc29t
ZSBmb3JtIG9mCj4gPiA+IGRybUdldENhcCgpID8KPiA+IENocmlzLCBJcyB0aGlzIHN1Z2dlc3Rp
b24gdG8gYWRkIHRoaXMgY2FwYWJpbGl0eSBwcm9iaW5nIHRocm91Z2ggYSBuZXcgSU9DVEwgZm9y
Cj4gPiBkdW1iIEFQSXM/IFBsZWFzZSBjbGFyaWZ5Lgo+IAo+IEkgZG9uJ3QgdGhpbmsgd2UgbmVl
ZCBhIG5ldyBpb2N0bCwgYXMgZHJtX2dldGNhcCBhbHJlYWR5IGNvdmVycyB0aGUgZHVtYgo+IGJ1
ZmZlciBBUEkuIFdlIGp1c3QgbmVlZCB0byBleHBvc2UgdGhlIGxpbWl0cyBvZiB0aGUgZHVtYiBi
dWZmZXIgQVBJCj4gdGhyb3VnaCBpdC4KPiAKPiBUaGUgMiB0aGF0IHNwcmluZyB0byBtaW5kIGFy
ZSBtYXhpbXVtIHNpemUgb2YgaW5kaXZpZHVhbCBidWZmZXIgYW5kCj4gbWF4aW11bSBzaXplIG9m
IHRvdGFsIGR1bWIgYnVmZmVycy4KCldpbGwgdGhlcmUgYmUgcXVlc3Rpb24gZm9yIHVzZXJzcGFj
ZSBmb3IgdGhpcyBleHRlbnNpb24gb3Igbm8/CkFGQUlLIFRoZXJlIGlzIG5vIGNvbnN1bWVyIGV4
Y2VwdCBJR1QuCgotUmFtCgo+IChUaGUgbGF0dGVyIG1heSBiZSBpbmZpbml0ZSBmb3IKPiBkcml2
ZXJzIHRoYXQgYWxsb3cgc3dhcHBpbmcgb2YgaW5hY3RpdmUgYnVmZmVycy4pIFRoZXJlIHdhcyBh
IHJlcXVlc3Qgb24KPiBpcmMgZm9yIHNvbWV0aGluZyBsaWtlIHRoaXMgYXMgd2VsbCwgYnV0IEkn
bSBub3QgYXdhcmUgb2YgdGhlIGNvbnRleHQuCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
