Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D58177261
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 10:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6736EA5D;
	Tue,  3 Mar 2020 09:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC5776EA5D
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 09:29:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 01:29:54 -0800
X-IronPort-AV: E=Sophos;i="5.70,510,1574150400"; d="scan'208";a="233563088"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 01:29:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Sharma\, Swati2" <swati2.sharma@intel.com>, =?utf-8?Q?Jos=C3=A9?=
 Roberto de Souza <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <aae242f3-3730-f9fd-0adf-85805c9bb0e4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200227235005.18706-1-jose.souza@intel.com>
 <87lfonqive.fsf@intel.com> <aae242f3-3730-f9fd-0adf-85805c9bb0e4@intel.com>
Date: Tue, 03 Mar 2020 11:29:49 +0200
Message-ID: <87o8tdpz02.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use firmware v2.06 for TGL
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyOCBGZWIgMjAyMCwgIlNoYXJtYSwgU3dhdGkyIiA8c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIDI4LUZlYi0yMCAxMjo0OSBQTSwgSmFuaSBOaWt1bGEgd3JvdGU6
Cj4+IE9uIFRodSwgMjcgRmViIDIwMjAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPiB3cm90ZToKPj4+IE5ldyBmaXJtd2FyZSBjb250YWlucyBtaW5vciBmaXhl
cyBhcm91bmQgY29udGV4dCByZXN0b3JlLgo+PiAKPj4gUGxlYXNlIGdldCB0aGUgZmlybXdhcmUg
aW4gbGludXgtZmlybXdhcmUgYW5kIENJIGZpcnN0Ogo+PiAKPj4gPDc+WyAgICA2LjMyODg4NF0g
aTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aW50ZWxfY3NyX3Vjb2RlX2luaXQgW2k5MTVdXSBMb2Fk
aW5nIGk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbgo+PiA8ND5bICAgIDYuMzMwNjEyXSBpOTE1IDAw
MDA6MDA6MDIuMDogRGlyZWN0IGZpcm13YXJlIGxvYWQgZm9yIGk5MTUvdGdsX2RtY192ZXIyXzA2
LmJpbiBmYWlsZWQgd2l0aCBlcnJvciAtMgo+PiA8NT5bICAgIDYuMzMwNjQ1XSBpOTE1IDAwMDA6
MDA6MDIuMDogW2RybV0gRmFpbGVkIHRvIGxvYWQgRE1DIGZpcm13YXJlIGk5MTUvdGdsX2RtY192
ZXIyXzA2LmJpbi4gRGlzYWJsaW5nIHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudC4KPj4gPDU+WyAg
ICA2LjMzMDY0OF0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dIERNQyBmaXJtd2FyZSBob21lcGFn
ZTogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZmlybXdh
cmUvbGludXgtZmlybXdhcmUuZ2l0L3RyZWUvaTkxNQo+PiAKPj4gQlIsCj4+IEphbmkuCj4+IAo+
IFVwZGF0ZSBmcm9tIENJIHRlYW06IGxpbnV4LWZpcm13YXJlIHVwZGF0ZWQgKG1hbnVhbGx5KSB3
aXRoIAo+IGk5MTUvdGdsX2RtY192ZXIyXzA2LmJpbi4gUmVydW4gaW5pdGlhdGVkLiBOZXh0IHJ1
biwgdjJfMDYgc2hvdWxkIGJlIGxvYWRlZC4KCkNvbmZpcm1lZCBpbiB0aGUgbG9ncy4KClBsZWFz
ZSBlbnN1cmUgMi4wNiBpcyBpbiBsaW51eC1maXJtd2FyZSB1cHN0cmVhbSBiZWZvcmUgdjUuNiBr
ZXJuZWwKcmVsZWFzZS4KCkJSLApKYW5pLgoKCgo+PiAKPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jIHwgNCArKy0tCj4+PiAg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pgo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jCj4+PiBpbmRleCA1NzMyMGMx
MjgzOWYuLjMxMTI1NzJjZmI3ZCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3NyLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3NyLmMKPj4+IEBAIC00MCw4ICs0MCw4IEBACj4+PiAgIAo+Pj4gICAjZGVmaW5l
IEdFTjEyX0NTUl9NQVhfRldfU0laRQkJSUNMX0NTUl9NQVhfRldfU0laRQo+Pj4gICAKPj4+IC0j
ZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wNC5iaW4iCj4+PiAtI2Rl
ZmluZSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgNCkKPj4+ICsjZGVm
aW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8wNi5iaW4iCj4+PiArI2RlZmlu
ZSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgNikKPj4+ICAgI2RlZmlu
ZSBUR0xfQ1NSX01BWF9GV19TSVpFCQkweDYwMDAKPj4+ICAgTU9EVUxFX0ZJUk1XQVJFKFRHTF9D
U1JfUEFUSCk7Cj4+IAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
