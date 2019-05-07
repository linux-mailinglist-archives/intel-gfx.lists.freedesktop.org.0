Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3DC16AC5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 20:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53976E827;
	Tue,  7 May 2019 18:55:13 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 853616E827
 for <Intel-GFX@lists.freedesktop.org>; Tue,  7 May 2019 18:55:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 11:55:12 -0700
X-ExtLoop1: 1
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.251.138.102])
 ([10.251.138.102])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2019 11:55:11 -0700
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20190424015013.30540-1-John.C.Harrison@Intel.com>
 <20190506213653.GE26797@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <7368d070-8179-3398-2f4b-10f3ec4a03d6@Intel.com>
Date: Tue, 7 May 2019 11:55:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506213653.GE26797@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Engine relative MMIO
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
Cc: Intel-GFX@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gNS82LzIwMTkgMTQ6MzYsIFJvZHJpZ28gVml2aSB3cm90ZToKPiBPbiBUdWUsIEFwciAyMywg
MjAxOSBhdCAwNjo1MDoxM1BNIC0wNzAwLCBKb2huLkMuSGFycmlzb25ASW50ZWwuY29tIHdyb3Rl
Ogo+PiBGcm9tOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+Pgo+
PiBXaXRoIHZpcnR1YWwgZW5naW5lcywgaXQgaXMgbm8gbG9uZ2VyIHBvc3NpYmxlIHRvIGtub3cg
d2hpY2ggc3BlY2lmaWMKPj4gcGh5c2ljYWwgZW5naW5lIGEgZ2l2ZW4gcmVxdWVzdCB3aWxsIGJl
IGV4ZWN1dGVkIG9uIGF0IHRoZSB0aW1lIHRoYXQKPj4gcmVxdWVzdCBpcyBnZW5lcmF0ZWQuIFRo
aXMgbWVhbnMgdGhhdCB0aGUgcmVxdWVzdCBpdHNlbGYgbXVzdCBiZSBlbmdpbmUKPj4gYWdub3N0
aWMgLSBhbnkgZGlyZWN0IHJlZ2lzdGVyIHdyaXRlcyBtdXN0IGJlIHJlbGF0aXZlIHRvIHRoZSBl
bmdpbmUKPj4gYW5kIG5vdCBhYnNvbHV0ZSBhZGRyZXNzZXMuCj4+Cj4+IFRoZSBMUkkgY29tbWFu
ZCBoYXMgc3VwcG9ydCBmb3IgZW5naW5lIHJlbGF0aXZlIGFkZHJlc3NpbmcuIEhvd2V2ZXIsCj4+
IHRoZSBtZWNoYW5pc20gaXMgbm90IHRyYW5zcGFyZW50IHRvIHRoZSBkcml2ZXIuIFRoZSBzY2hl
bWUgZm9yIEdlbjExCj4+IChNSV9MUklfQUREX0NTX01NSU9fU1RBUlQpIHJlcXVpcmVzIHRoZSBM
UkkgYWRkcmVzcyB0byBoYXZlIG5vCj4+IGFic29sdXRlIGVuZ2luZSBiYXNlIGNvbXBvbmVudC4g
VGhlIGhhcmR3YXJlIHRoZW4gYWRkcyBvbiB0aGUgY29ycmVjdAo+PiBlbmdpbmUgb2Zmc2V0IGF0
IGV4ZWN1dGlvbiB0aW1lLgo+Pgo+PiBEdWUgdG8gdGhlIG5vbi10cml2aWFsIGFuZCBkaWZmZXJp
bmcgc2NoZW1lcyBvbiBkaWZmZXJlbnQgaGFyZHdhcmUsIGl0Cj4+IGlzIG5vdCBwb3NzaWJsZSB0
byBzaW1wbHkgdXBkYXRlIHRoZSBjb2RlIHRoYXQgY3JlYXRlcyB0aGUgTFJJCj4+IGNvbW1hbmRz
IHRvIHNldCBhIHJlbWFwIGZsYWcgYW5kIGxldCB0aGUgaGFyZHdhcmUgZ2V0IG9uIHdpdGggaXQu
Cj4+IEluc3RlYWQsIHRoaXMgcGF0Y2ggYWRkcyBmdW5jdGlvbiB3cmFwcGVycyBmb3IgZ2VuZXJh
dGluZyB0aGUgTFJJCj4+IGNvbW1hbmQgaXRzZWxmIGFuZCB0aGVuIGZvciBjb25zdHJ1Y3Rpbmcg
dGhlIGNvcnJlY3QgYWRkcmVzcyB0byB1c2UKPj4gd2l0aCB0aGUgTFJJLgo+Pgo+PiB2MjogRml4
IGJ1aWxkIGJyZWFrIGluIEdWVC4gUmVtb3ZlIGZsYWdzIHBhcmFtZXRlciBbcmV2aWV3IGZlZWRi
YWNrCj4+IGZyb20gQ2hyaXMgV10uCj4+Cj4+IHYzOiBGaXggYnVpbGQgYnJlYWsgaW4gc2VsZnRl
c3QuIFJlYmFzZSB0byBuZXdlciBiYXNlIHRyZWUgYW5kIGZpeAo+PiBtZXJnZSBjb25mbGljdC4K
Pj4KPj4gdjQ6IE1vcmUgcmViYXNpbmcuIFJtb3ZlZCByZWxhdGl2ZSBhZGRyZXNzaW5nIHN1cHBv
cnQgZnJvbSBHZW43LTkgb25seQo+PiBjb2RlIHBhdGhzIFtyZXZpZXcgZmVlZGJhY2sgZnJvbSBD
aHJpcyBXXS4KPiBGaXJzdCBvZiBhbGwsIHdvdWxkIHlvdSBoYXZlIGEgcmViYXNlZCB2ZXJzaW9u
IGFmdGVyIGd0LyA/CkkgaGF2ZSBqdXN0IGRvbmUgdGhlIHJlYmFzZS4gV2FzIHBsYW5uaW5nIHRv
IHJlc2VuZCBzaG9ydGx5LiBBbHRob3VnaCBpZiAKdGhlcmUgaXMgbW9yZSBkaXNjdXNzaW9uIGFi
b3V0IHRoZSBiZXN0IGRpcmVjdGlvbiB0byB0YWtlIHRoZW4gSSB3b3VsZCAKcmF0aGVyIGhvbGQg
b2ZmIHBvc3RpbmcgdW50aWwgYSBjb25zZW5zdXMgaXMgcmVhY2hlZC4KCgo+IFNvLCBmcm9tIG15
IHBvaW50IG9mIHZpZXcgdjMgd2FzIGJldHRlciB0aGFuIHRoaXMgYmVjYXVzZSB0aGlzIHNwcmVh
ZAo+IHRoZSBfX01JX0xPQURfUkVHSVNURVJfSU1NIGV2ZXJ5d2hlcmUuCj4KPiBNYXliZSBJIGp1
c3QgZGlzYWdyZWUgd2l0aCBDaHJpcyBhbmQgSSdkIHByZWZlciBhIHNpbmdsZSBwbGFjZQo+IGxp
a2UgdjMsIGJ1dCBhbnl3YXkgd2UgY291bGQgcHJvYmFibHkgYXJyaXZlIGluIGFuIGludGVybWVk
aWF0ZQo+IHNvbHV0aW9uIGxpa2U6IENvdWxkbid0IHdlIGRvIGluIGEgd2F5IHRoYXQgd2Uga2Vl
cCB0aGUgTUlfTFJJIHdpdGhvdXQKPiAnX18nIGFuZCB1c2UgdGhpcyBuZXcgZnVuY3Rpb24gb25s
eSBvbiB0aGUgcGF0aHMgbmVlZGVkPwo+Cj4gYW5kIG1heWJlIG5hbWUgdGhpcyBmdW5jdGlvbiBn
ZW4xMV9nZXRfbHJpX2NtZD8gdG8gbWFrZSBpdCBjbGVhcgo+IHRoYXQgZ2VuMTErIG5lZWRzIHRv
IHVzZSB0aGlzIHBhdGguCgpUaGUgaW50ZW50aW9uIHdhcyB0byBtYWtlIGl0IGNsZWFyIHRoYXQg
bm8gbmV3IGNvZGUgc2hvdWxkIGJlIGRpcmVjdGx5IAp3cml0aW5nIE1JX0xSSS4gRXZlcnl0aGlu
ZyBzaG91bGQgZ28gdGhyb3VnaCB0aGUgaGVscGVyIGZ1bmN0aW9uLiBIZW5jZSAKcmVuYW1pbmcg
dG8gYWRkIHRoZSAnX18nIHRvIG1ha2UgaXQgb2J2aW91cy4gT3RoZXJ3aXNlLCBzb21lb25lIG1p
Z2h0IAp1c2UgdGhlIG9sZCBvbmUgYnkgYWNjaWRlbnQgYW5kIHdlIHdvbid0IG5vdGljZSB1bnRp
bCBzb21lIHJhbmRvbSBhbmQgCmhhcmQgdG8gdHJhY2sgZG93biBmYWlsdXJlIHJlbGF0ZWQgdG8g
dmlydHVhbCBlbmdpbmVzLgoKTm90IHN1cmUgSSB3b3VsZCBzYXkgdGhhdCB0aGUgX19NSV9MUknC
oCBpcyBzcHJlYWRpbmcgJ2V2ZXJ5d2hlcmUnLiBUaGVyZSAKYXJlIG9ubHkgOCBpbnN0YW5jZXMg
dmVyc3VzIGRvdWJsZSB0aGF0IG9mIHRoZSBnZXRfbHJpX2NtZCB2ZXJzaW9uLiBOb3RlIAphbHNv
IHRoYXQgaXQgaXMgbm90IG9ubHkgR2VuMTErIHNwZWNpZmljIHBhdGhzLiBUaGVyZSBhcmUgbXVs
dGlwbGUgCnBsYWNlcyB0aGF0IGFyZSBnZW4gYWdub3N0aWMuIFNvLCB1bmxlc3MgeW91IHdhbnQg
dG8gc3BsaXQgdGhvc2UgaW50byAKcHJlL3Bvc3QgR2VuMTEgdmVyc2lvbnMgYXMgd2VsbCwgeW91
IHdvdWxkIGVuZCB1cCB3aXRoIEdlbjcgY2FsbGluZyBhIApHZW4xMSBsYWJlbGxlZCBmdW5jdGlv
bi4KCkpvaG4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
