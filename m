Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A170247D13
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 10:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F16489182;
	Mon, 17 Jun 2019 08:30:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30E0A891A4
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 08:30:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 01:30:03 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga008.jf.intel.com with ESMTP; 17 Jun 2019 01:30:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org, 
 Michal Wajdeczko <michal.wajdeczko@intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-2-tvrtko.ursulin@linux.intel.com>
 <op.z3dw1ssrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <156053420952.7796.6822030827876959018@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1a1aaa81-4948-6f1f-d7c5-488ddac97032@linux.intel.com>
Date: Mon, 17 Jun 2019 09:30:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156053420952.7796.6822030827876959018@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 01/31] drm/i915: Convert intel_vgt_(de)balloon
 to uncore
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

Ck9uIDE0LzA2LzIwMTkgMTg6NDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIE1pY2hh
bCBXYWpkZWN6a28gKDIwMTktMDYtMTQgMTg6MTg6NTQpCj4+IE9uIEZyaSwgMTQgSnVuIDIwMTkg
MTc6MTc6MDEgKzAyMDAsIFR2cnRrbyBVcnN1bGluCj4+IDx0dnJ0a28udXJzdWxpbkBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+Pgo+Pj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KPj4+Cj4+PiBNb3JlIHJlbW92YWwgb2YgaW1wbGljaXQgZGV2X3ByaXYg
ZnJvbSB1c2luZyBvbGQgbW1pbyBhY2Nlc3NvcnMuCj4+Pgo+Pj4gRnVydGhlcm1vcmUgdGhlc2Ug
Y2FsbHMgcmVhbGx5IG9wZXJhdGUgb24gZ2d0dCBzbyBpdCBsb2dpY2FsbHkgbWFrZXMKPj4+IHNl
bnNlCj4+PiBpZiB0aGV5IHRha2UgaXQgYXMgcGFyYW1ldGVyLgo+Pgo+PiBIbW0sIEknbSBub3Qg
c3VyZSB0aGF0IHdlIGdvaW5nIGluIHJpZ2h0IGRpcmVjdGlvbiBoZXJlLCBhcyB0aGVzZQo+PiBm
dW5jdGlvbnMgbW9zdGx5IG9wZXJhdGUgb24gYmxfaW5mbyB0aGF0IHRvZGF5IGlzIHNlcGFyYXRl
IHRvIGdndHQuCj4gCj4gVGhhdCB3YXMgbXkgZmlyc3QgdGhvdWdodCB0b28sIGV4Y2VwdCB0aGV5
IGFyZSBvcGVyYXRpbmcgaW5zaWRlIG9mIGdndHQKPiBpbml0L2ZpbmkuCgpBbmQgaXQgZG9lcyBh
Y3R1YWxseSBtb2RpZnkgZ2d0dDogaW50ZWxfdmd0X2JhbGxvb24gLT4gdmd0X2JhbGxvb25fc3Bh
Y2UgCi0+IGk5MTVfZ2VtX2d0dF9yZXNlcnZlLgoKU28gdG8gbWUgaXQgc291bmRlZCBwYXNzYWJs
ZSB0byBtYWtlIHRoZW0gdGFrZSBnZ3R0IGFzIGlucHV0IHBhcmFtZXRlci4gCkl0IGlzIG5vdCBk
ZXRyaW1lbnRhbCBpZiB0aGV5ICh0aGUgZnVuY3Rpb25zKSBvbmUgZGF5IGRlY2lkZSB0byB3cmFw
IApib3RoIGJsX2luZm8gYW5kIGdndHQgaW50byBhIG5ldyBvYmplY3QuCgpTb3VuZHMgcGFzc2Fi
bGUgb3Igb2JqZWN0aW9uIGlzIGhhcmQ/CgpSZWdhcmRzLAoKVHZydGtvCgo+PiBNYXliZSBiZXR0
ZXIgb3B0aW9uIHdvdWxkIGJlIHRvIG1vdmUgcHVyZSBnZ3R0IHJlbGF0ZWQgZnVuY3Rpb25zCj4+
IHZndF9iYWxsb29uX3NwYWNlL3ZndF9kZWJhbGxvb25fc3BhY2UgdG8gaTkxNV9nZW1fZ2d0dC5j
fGggKGFmdGVyCj4+IHJlbmFtZSkgYW5kIGFsbG93IHZncHUgZnVuY3Rpb25zIHRvIGtlZXAgaTkx
NSBhcyBwYXJhbWV0ZXIgPwo+IAo+IFByZXN1bWFibHksIHZncHUgd291bGQgbWlncmF0ZSB0byB0
YWtpbmcgaXRzIG93biBvYmplY3QgYXMgd2VsbC4gU3RpbGwKPiB1bmRlY2lkZWQgaG93IGJlc3Qg
dG8gaGFuZGxlIGdndHQgaW5pdCBwbHVnaW5zLiBNeSBpZGVhbCB3b3VsZCBiZSB0aGF0Cj4gdmdw
dSBpbml0IHdhcyBkeW5hbWljIGFuZCBiZSB0dW5lZCB0byB3b3JrIHdpdGggYW4gZXhpc3Rpbmcg
Z2d0dCwgYW5kCj4gbmV2ZXIgcmVseSBvbiBzdGF0aWMgcGFydGl0aW9uaW5nLgo+IC1DaHJpcwo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
