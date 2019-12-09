Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEADC116CD6
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 13:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E7D6E428;
	Mon,  9 Dec 2019 12:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3BA6E428
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 12:06:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 04:06:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="387214836"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga005.jf.intel.com with ESMTP; 09 Dec 2019 04:06:18 -0800
Date: Mon, 9 Dec 2019 17:35:51 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191209120550.GB22862@intel.com>
References: <20191202065458.9477-1-ramalingam.c@intel.com>
 <20191202065458.9477-2-ramalingam.c@intel.com>
 <CAM0jSHMP37vD_sz8HMiA7T2A_J08vD4VmvkC-L7WcyBoxTsCaA@mail.gmail.com>
 <157554841226.22727.12524170364084626029@skylake-alporthouse-com>
 <20191205130240.GG25793@intel.com>
 <157555148978.22727.11669212602896257587@skylake-alporthouse-com>
 <20191209115701.GA22862@intel.com>
 <157589300200.2308.4242946026887562657@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157589300200.2308.4242946026887562657@skylake-alporthouse-com>
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

T24gMjAxOS0xMi0wOSBhdCAxMjowMzoyMiArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1
b3RpbmcgUmFtYWxpbmdhbSBDICgyMDE5LTEyLTA5IDExOjU3OjAxKQo+ID4gT24gMjAxOS0xMi0w
NSBhdCAxMzoxMToyOSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBRdW90aW5nIFJh
bWFsaW5nYW0gQyAoMjAxOS0xMi0wNSAxMzowMjo0MCkKPiA+ID4gPiBPbiAyMDE5LTEyLTA1IGF0
IDEyOjIwOjEyICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiA+ID4gPiBRdW90aW5nIE1h
dHRoZXcgQXVsZCAoMjAxOS0xMi0wNSAxMjoxMjoxOSkKPiA+ID4gPiA+ID4gV2Ugd291bGQgc3Rp
bGwgbmVlZCB0byBjbGVhciB0aGUgb2JqZWN0KG1heWJlIEk5MTVfQk9fQUxMT0NfQ0xFQVJFRD8p
Cj4gPiA+ID4gPiA+IGluIG9yZGVyIHRvIHBhc3MgdGhlIElHVHMuIFdlIGFsc28gbmVlZCB0byBh
ZGp1c3QgZHVtYl9idWZmZXIuYywgc2luY2UKPiA+ID4gPiA+ID4gdGhhdCB1c2VzIGdldF9hdmFp
bF9yYW1fbWIoKSBmb3IgYWx3YXlzX2NsZWFyLCBidXQgbWF5YmUgd2UgbmVlZCB0aGUKPiA+ID4g
PiA+ID4gcXVlcnkgcmVnaW9uIHVhcGkgZm9yIHRoYXQ/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IEht
bS4gUXVlc3Rpb25zIG92ZXIgdGhlIG1heGltdW0gc2l6ZSBmb3IgZHVtYiBidWZmZXIsIG1heGlt
dW0gbnVtYmVyIG9mCj4gPiA+ID4gPiBkdW1iIGJ1ZmZlcnMsIGV0Yywgc2hvdWxkIGJlIGFkZHJl
c3NlZCB0byB0aGUgZHVtYiBBUEkuIFNvIHNvbWUgZm9ybSBvZgo+ID4gPiA+ID4gZHJtR2V0Q2Fw
KCkgPwo+ID4gPiA+IENocmlzLCBJcyB0aGlzIHN1Z2dlc3Rpb24gdG8gYWRkIHRoaXMgY2FwYWJp
bGl0eSBwcm9iaW5nIHRocm91Z2ggYSBuZXcgSU9DVEwgZm9yCj4gPiA+ID4gZHVtYiBBUElzPyBQ
bGVhc2UgY2xhcmlmeS4KPiA+ID4gCj4gPiA+IEkgZG9uJ3QgdGhpbmsgd2UgbmVlZCBhIG5ldyBp
b2N0bCwgYXMgZHJtX2dldGNhcCBhbHJlYWR5IGNvdmVycyB0aGUgZHVtYgo+ID4gPiBidWZmZXIg
QVBJLiBXZSBqdXN0IG5lZWQgdG8gZXhwb3NlIHRoZSBsaW1pdHMgb2YgdGhlIGR1bWIgYnVmZmVy
IEFQSQo+ID4gPiB0aHJvdWdoIGl0Lgo+ID4gPiAKPiA+ID4gVGhlIDIgdGhhdCBzcHJpbmcgdG8g
bWluZCBhcmUgbWF4aW11bSBzaXplIG9mIGluZGl2aWR1YWwgYnVmZmVyIGFuZAo+ID4gPiBtYXhp
bXVtIHNpemUgb2YgdG90YWwgZHVtYiBidWZmZXJzLgo+ID4gCj4gPiBXaWxsIHRoZXJlIGJlIHF1
ZXN0aW9uIGZvciB1c2Vyc3BhY2UgZm9yIHRoaXMgZXh0ZW5zaW9uIG9yIG5vPwo+ID4gQUZBSUsg
VGhlcmUgaXMgbm8gY29uc3VtZXIgZXhjZXB0IElHVC4KPiAKPiBUaGVyZSB3YXMgc29tZW9uZSBl
bHNlIGFza2luZyBmb3IgbWF4aW11bSBkdW1iIGJ1ZmZlciBzaXplIG9uIGlyYyBmcm9tCj4gYW4g
YXBwbGljYXRpb24gcGVyc3BlY3RpdmUuCj4gCj4gQnV0IEkgc3Ryb25nbHkgYmVsaWV2ZSB0aGF0
IGRpc2NvdmVyYWJpbGl0eSBhbmQgdGVzdGFiaWxpdHkgb2YgYW4gQVBJCj4gc2hvdWxkIGJlIGEg
Y2VudHJhbCB0ZW5ldCBvZiBBUEkgZGVzaWduLiA6KQpTbyBjYW4gaSB0YWtlIGl0IGZvciAiTm8g
dXNlcnNwYWNlIGlzIHJlcXVpcmVkIGZvciB0aGlzIHVBUEkgZXh0ZW5zaW9uCmFzIHRoaXMgaGVs
cHMgdGhlIHRlc3RpbmciID8KCi1SYW0KPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
