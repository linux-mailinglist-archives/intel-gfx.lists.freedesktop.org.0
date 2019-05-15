Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCD51E803
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 07:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0289A8945A;
	Wed, 15 May 2019 05:42:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 149478945A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 05:42:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 22:42:03 -0700
X-ExtLoop1: 1
Received: from lstanule-mobl1.ger.corp.intel.com (HELO [10.252.8.33])
 ([10.252.8.33])
 by orsmga007.jf.intel.com with ESMTP; 14 May 2019 22:42:02 -0700
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Summers, Stuart" <stuart.summers@intel.com>
References: <20190514164653.935-1-stuart.summers@intel.com>
 <155785283553.21839.2059003338244451933@skylake-alporthouse-com>
 <4387e52b0895d400d4e0f5c71e4c8e0a164add7c.camel@intel.com>
 <20190515000604.GC18687@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a6dbd575-172b-fc4e-667a-637fd8c96aca@linux.intel.com>
Date: Wed, 15 May 2019 06:43:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515000604.GC18687@intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE1LzA1LzIwMTkgMDE6MDYsIFJvZHJpZ28gVml2aSB3cm90ZToKPiBPbiBUdWUsIE1heSAx
NCwgMjAxOSBhdCAwNjozMjowMVBNICswMDAwLCBTdW1tZXJzLCBTdHVhcnQgd3JvdGU6Cj4+IE9u
IFR1ZSwgMjAxOS0wNS0xNCBhdCAxNzo1MyArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wNS0xNCAxNzo0Njo1MikKPj4+PiBUbyBhbGxv
dyBlYXNpZXIgZGVidWcgb2YgcGxhdGZvcm1zIHdoaWNoIGRvIG5vdCBmdWxseSBzdXBwb3J0Cj4+
Pj4gcG93ZXItc2F2aW5nIHJlbmRlciBDLXN0YXRlIDYsIGFkZCBiYWNrIHRoZSBtb2R1bGUgcGFy
YW1ldGVyCj4+Pj4gdG8gYWxsb3cgUkM2IGZsb3dzIHRvIGJlIGRpc2FibGVkLiBJbnN0ZWFkIG9m
IGRpcmVjdGx5IGFmZmVjdGluZwo+Pj4+IHRoZSBSQzYgc3RhdGVzIHZpYSBhIGJpdG1hc2sgYXMg
ZG9uZSBwcmV2aW91c2x5LCB1c2UgdGhpcyBtb2R1bGUKPj4+PiBwYXJhbWV0ZXIgdG8gY2xlYXIg
dGhlIGhhc19yYzYgZmllbGQgZm9yIHRoZXNlIHBsYXRmb3Jtcy4KPj4+Cj4+PiBJZiB5b3Uga25v
dyB3aGljaCBwbGF0Zm9ybXMgZG9uJ3Qgc3VwcG9ydCByYzYsIGRvbid0IGVuYWJsZSByYzYuCj4+
Cj4+IEknZCByZWFsbHkgcHJlZmVyIHRvIGhhdmUgdGhpcyBwYXJhbWV0ZXIgaW4gcGxhY2UgZm9y
IGRlYnVnIHB1cnBvc2VzLgo+PiBJdCBzZWVtcyBtb3JlIHVzZWZ1bCB0byBhbGxvdyBxdWljayB0
ZXN0aW5nIGJ5IHJlbG9hZGluZyBpOTE1IHRoYW4gYnkKPj4gcmVxdWlyaW5nIGEgcmVidWlsZC4K
Pj4KPj4gT2YgY291cnNlLCBvbmNlIGRlYnVnIGlzIGNvbXBsZXRlIGFuZCB0aGUgcGxhdGZvcm0g
aXMga25vd24gdG8gZWl0aGVyCj4+IG5vdCBzdXBwb3J0IHRoZSBmZWF0dXJlIG9yIGhhcyBzb21l
IGNyaXBsaW5nIGJ1ZyBhcm91bmQgdGhpcywgSSBhZ3JlZSwKPj4gcmM2IHNob3VsZG4ndCBiZSBl
bmFibGVkIG9uIHRoYXQgcGxhdGZvcm0gYW5kIGk5MTUgc2hvdWxkIGJlIHVwZGF0ZWQuCj4gCj4g
RXhhY3RseS4gV2UgbmVlZCB0aGUgZmxleGliaWxpdHkgZm9yIGRlYnVnIHRoYXQuCj4gdW5mb3J0
dW5hdGVseSB1c2luZyBkZWJ1Z2ZzIGRvZXNuJ3QgbG9vayBhIHNvbHV0aW9uLgo+IAo+IE9uZSBw
b3NzaWJpbGl0eSB0aGF0IGp1c3QgY2FtZSB0byBteSBtaW5kIG5vdyBpcywgd2hhdCBpZiB3ZSBt
YWtlCj4gdGhpcyBvbmx5IGZvciBwbGF0Zm9ybXMgdGhhdCBhcmUgc3RpbGwgcHJvdGVjdGVkIGJ5
IGlzX2FscGhhX3N1cHBvcnQ9MQo+IChzb29uIGJlY29taW5nIHJlcXVpcmVfZm9yY2VfcHJvYmU9
MSkKPiAKPiBCdXQgdGhpcyBpcyBqdXN0IG9uZSBzaWRlIG9mIHRoZSBjb2luLi4uIHdoZW4gcHJv
ZHVjdCBpcyBvdXQgdGhlcmUKPiBhbmQgd2Ugd2FudCB0aGUgdXNlciB0byBkZWJ1ZyB0aGUgaXNz
dWUgdG8gc2VlIGlmIGl0IGlzIGEgUkM2IGJ1Zwo+IHdlIGhhdmUgbm8gd2F5IHRvIHZlcmlmeSB0
aGF0LiA6Lwo+IAo+IFBsZWFzZSBsZXQncyBhZGQgdGhpcyBiYWNrIG9uZSB3YXkgb3IgYW5vdGhl
ci4KClRvIHRocm93IGEgY29tcHJvbWlzZSBvcHRpb24gb3V0IHRoZXJlIC0gYWRkIHRoZSBtb2Rw
YXJhbSBmb3IgZGVidWcgCmJ1aWxkcyBvbmx5IChDT05GSUdfRFJNX0k5MTVfREVCVUcpPwoKUmVn
YXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
