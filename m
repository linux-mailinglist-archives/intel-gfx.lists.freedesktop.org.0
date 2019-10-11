Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ECCD3BDC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 11:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 472406EBE9;
	Fri, 11 Oct 2019 09:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 738B46EBE9
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 09:04:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 02:04:26 -0700
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="197524805"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 02:04:26 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-3-chris@chris-wilson.co.uk>
 <4399eff8-c0f9-bd9e-dba9-4830ed27e03d@linux.intel.com>
 <157078378802.31572.16664143577552592062@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b700a7d0-3062-db04-4ab6-106e11322f7d@linux.intel.com>
Date: Fri, 11 Oct 2019 10:04:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157078378802.31572.16664143577552592062@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Expose engine properties
 via sysfs
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

Ck9uIDExLzEwLzIwMTkgMDk6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTExIDA5OjQ0OjE2KQo+Pgo+PiBPbiAxMC8xMC8yMDE5IDA4OjE0
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBQcmVsaW1pbmFyeSBzdHViIHRvIGFkZCBlbmdpbmVz
IHVuZGVybmVhdGggL3N5cy9jbGFzcy9kcm0vY2FyZE4vLCBzbwo+Pj4gdGhhdCB3ZSBjYW4gZXhw
b3NlIHByb3BlcnRpZXMgb24gZWFjaCBlbmdpbmUgdG8gdGhlIHN5c2FkbWluLgo+Pj4KPj4+IFRv
IHN0YXJ0IHdpdGggd2UgaGF2ZSBiYXNpYyBhbmFsb2d1ZXMgb2YgdGhlIGk5MTVfcXVlcnkgaW9j
dGwgc28gdGhhdCB3ZQo+Pj4gY2FuIHByZXR0eSBwcmludCBlbmdpbmUgZGlzY292ZXJ5IGZyb20g
dGhlIHNoZWxsLCBhbmQgZmxlc2ggb3V0IHRoZQo+Pj4gZGlyZWN0b3J5IHN0cnVjdHVyZS4gTGF0
ZXIgd2Ugd2lsbCBhZGQgd3JpdGVhYmxlIHN5c2FkbWluIHByb3BlcnRpZXMgc3VjaAo+Pj4gYXMg
cGVyLWVuZ2luZSB0aW1lb3V0IGNvbnRyb2xzLgo+Pj4KPj4+IEFuIGV4YW1wbGUgdHJlZSBvZiB0
aGUgZW5naW5lIHByb3BlcnRpZXMgb24gQnJhc3dlbGw6Cj4+PiAgICAgICAvc3lzL2NsYXNzL2Ry
bS9jYXJkMAo+Pj4gICAgICAg4pSU4pSA4pSAIGVuZ2luZQo+Pj4gICAgICAgIMKgwqAg4pSc4pSA
4pSAIGJjczAKPj4+ICAgICAgICDCoMKgIOKUgsKgwqAg4pSc4pSA4pSAIGNsYXNzCj4+PiAgICAg
ICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBoZWFydGJlYXRfaW50ZXJ2YWxfbXMKPj4KPj4gTm90
IHByZXNlbnQgaW4gdGhpcyBwYXRjaC4KPiAKPiBJIGRpZCBzYXkgYW4gZXhhbXBsZSB0cmVlLCBu
b3QgdGhpcyB0cmVlIDopCj4gCj4+PiAgICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBpbnN0
YW5jZQo+Pj4gICAgICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAgbW1pb19iYXNlCj4+Cj4+IEkg
dm90ZSBmb3IgcHV0dGluZyBtbWlvX2Jhc2UgaW4gYSBmb2xsb3d1cCBwYXRjaC4KPiAKPiBEYXJu
IHlvdXIgZWFnbGUgZXllcyA7KQo+IAo+Pgo+PiBBbmQgaG93IGFib3V0IHdlIGFkZCBjYXBhYmls
aXRpZXMgaW4gdGhlIGZpcnN0IHBhdGNoPyBTbyB3ZSBnZXQgYW5vdGhlcgo+PiB3YXkgb2YgZW5n
aW5lIGRpc2NvdmVyeS4gSWRlYWxseSB3aXRoIG1hcHBpbmcgb2YgYml0cyB0byB1c2VyIGZyaWVu
ZGx5Cj4+IHN0cmluZ3MuCj4gCj4gUmlnaHQsIEkgd2FzIGFib3V0IHRvIGFzayBpZiB3ZSBzaG91
bGQgZG8gYSAvcHJvYy9jcHVpbmZvIHN0eWxlCj4gY2FwYWJpbGl0aWVzLiBEbyB3ZSBuZWVkIGJv
dGg/IE9yIGp1c3Qgc3RpY2sgdG8gdGhlIG1vcmUgaHVtYW4gcmVhZGFibGUKPiBvdXRwdXQgZm9y
IHN5c2ZzPwoKSW50ZXJlc3RpbmcgcXVlc3Rpb24gYW5kIEkgYW0gbm90IHN1cmUuIEknZCBkZWZp
bml0ZWx5IGhhdmUgaHVtYW4gCnJlYWRhYmxlIGFuZCB0aGF0IGV2ZW4gYmVpbmcgYW4gYWdncmVn
YXRpb24gb2YgZW5naW5lLT5mbGFncyBhbmQgCmVuZ2luZS0+dWFiaV9jYXBhYmlsaXRpZXMuIFdo
ZXRoZXIgb3Igbm90IHRvIGFsc28gcHV0IGhleCBpbiB0aGVyZS4uIEZvciAKdWFiaV9jYXBhYmls
aXRpZXMgaXQncyBwb3NzaWJsZSwgYnV0IGZvciB0aGUgcmVzdCBub3Qgc28gbXVjaC4gU28gdGhh
dCAKcHJvYmFibHkgbWVhbnMgb25seSBodW1hbiByZWFkYWJsZT8KClJlZ2FyZHMsCgpUdnJ0a28K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
