Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254F23631E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 20:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB279895C8;
	Wed,  5 Jun 2019 18:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FFAA895C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 18:10:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 11:10:22 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 05 Jun 2019 11:10:21 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190604202921.22196-1-daniele.ceraolospurio@intel.com>
 <op.z2w3jyehxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <2d68bd63-b845-29c3-fae7-60c3d495fe71@intel.com>
Date: Wed, 5 Jun 2019 11:10:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <op.z2w3jyehxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: always use Command
 Transport Buffers
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

CgpPbiA2LzUvMTkgODoyMCBBTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiBPbiBUdWUsIDA0
IEp1biAyMDE5IDIyOjI5OjIwICswMjAwLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIAo+IDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKPiAKPj4gTm93IHRoYXQgd2UndmUg
bW92ZWQgdGhlIGdlbjkgZ3VjIGJsb2JzIHRvIHZlcnNpb24gMzIgd2UgaGF2ZSBDVEIKPj4gc3Vw
cG9ydCBvbiBhbGwgZ2Vucywgc28gbm8gbmVlZCB0byByZXN0cmljdCB0aGUgdXNhZ2UgdG8gZ2Vu
MTErLgo+PiBOb3RlIHRoYXQgbW1pbyBjb21tdW5pY2F0aW9uIGlzIHN0aWxsIHJlcXVpcmVkIGZv
ciBDVEIgaW5pdGlhbGl6YXRpb24uCj4gCj4gcy9nZW45L0dlbjkKPiBzL2d1Yy9HdUMKPiBzL2dl
bjExL0dlbjExCj4gcy9tbWlvL01NSU8KPiAKPj4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6IE1p
Y2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+PiAtLS0KPiAKPiBG
b3Igc2ltcGxlIGVuYWJsZV9ndWM9MiBtb2RlIChIdUMgYXV0aCBvbmx5KSB1c2Ugb2YgQ1RCIG1p
Z2h0IGJlCj4gdmlld2VkIGFzIHNtYWxsIG92ZXJraWxsLCBidXQgSSBhc3N1bWUgZncgcHJlZmVy
cyB0aGF0IHdheS4KPiAKClNwb2lsZXIgYWxlcnQ6IEkndmUgaGVhcmQgdGhhdCBzaW5jZSBodWMg
YXV0aCBpcyBjdXJyZW50bHkgYSBtdWx0aS1zdGVwIApwcm9jZXNzIHdpdGhpbiBndWMvSFcsIHRv
IG1ha2UgZGVidWdnaW5nIEh1QyBsb2FkaW5nIGlzc3VlcyBlYXNpZXIgdGhlIApndWMgZGV2cyBw
bGFuIHRvIGFkZCBhbiBleHRyYSBHMkggYWZ0ZXIgdGhlIGNvbXBsZXRpb24gb2YgdGhlIGZpcnN0
IApzdGVwLCB3aGljaCB3aWxsIG9ubHkgYmUgc3VwcG9ydGVkIHZpYSBDVEIuIFRoaXMgd2FzIG5v
dCB0aGUgcmVhc29uIHdoeSAKSSBzZW50IHRoaXMgcGF0Y2ggKEknbSBub3QgZXZlbiBzdXJlIGlm
IHRoZSBwbGFuIGlzIGNvbmZpcm1lZCksIGJ1dCBJIApndWVzcyBpdCBoZWxwcyByZWluZm9yY2lu
ZyB0aGUgYXJndW1lbnQgZm9yIHVzaW5nIENUQiB3aXRoIGVuYWJsZV9ndWM9Mi4KCkRhbmllbGUK
Cj4gV2l0aCBhYm92ZSBjb21taXQgbWVzc2FnZSBuaXRzLAo+IFJldmlld2VkLWJ5OiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiAKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
