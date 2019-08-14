Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 514AC8D5DF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 16:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EF636E1F8;
	Wed, 14 Aug 2019 14:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550526E1F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 14:24:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 07:24:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; d="scan'208";a="205555174"
Received: from pachecof-ubuntu.fm.intel.com (HELO [10.1.27.43]) ([10.1.27.43])
 by fmsmga002.fm.intel.com with ESMTP; 14 Aug 2019 07:24:15 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190813162628.18531-1-fernando.pacheco@intel.com>
 <39d7f313-dec7-6432-af08-a9127d3032ce@intel.com>
From: Fernando Pacheco <fernando.pacheco@intel.com>
Message-ID: <c4936883-a45f-823b-0dba-e7214fb67a00@intel.com>
Date: Wed, 14 Aug 2019 07:20:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <39d7f313-dec7-6432-af08-a9127d3032ce@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Fini hw even if GuC is not
 running
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDgvMTMvMTkgMToxNiBQTSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPgo+Cj4g
T24gOC8xMy8xOSA5OjI2IEFNLCBGZXJuYW5kbyBQYWNoZWNvIHdyb3RlOgo+PiBXZSBzaG91bGQg
bm90IGJlIHNraXBwaW5nIHVjX2ZpbmlfaHcgb24gZmluZGluZyBHdUMKPj4gaXMgbm8gbG9uZ2Vy
IHJ1bm5pbmcuIFRoZXJlIGlzIHBsZW50eSBvZiBodyBhbmQgaW50ZXJuYWwKPj4gc3RhdGUgdGhh
dCBjYW4gYmUgY2xlYW5lZCB1cCB3aXRob3V0IGhhdmluZyB0byBjb21tdW5pY2F0ZQo+PiB3aXRo
IEd1Qy4KPj4KPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMTA5NDMKPgo+PiBTaWduZWQtb2ZmLWJ5OiBGZXJuYW5kbyBQYWNoZWNvIDxm
ZXJuYW5kby5wYWNoZWNvQGludGVsLmNvbT4KPj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8g
PGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IENjOiBNaWNoYWwgV2FqZGVjemtv
IDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgfCAyICstCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjLmMKPj4gaW5kZXggMGRjMmIwY2Y0NjA0Li5jNjk4Y2RkYzE0ZGMgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwo+PiBAQCAtNTIxLDcgKzUyMSw3IEBAIHZv
aWQgaW50ZWxfdWNfZmluaV9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+PiDCoCB7Cj4+IMKgwqDC
oMKgwqAgc3RydWN0IGludGVsX2d1YyAqZ3VjID0gJnVjLT5ndWM7Cj4+IMKgIC3CoMKgwqAgaWYg
KCFpbnRlbF9ndWNfaXNfcnVubmluZyhndWMpKQo+PiArwqDCoMKgIGlmICghaW50ZWxfdWNfc3Vw
cG9ydHNfZ3VjKHVjKSkKPgo+IEJvdGggY2FsbHMgYmVsb3cgaGFuZGxlIHRoZSBjYXNlIHdoZXJl
IEd1QyBpcyBhbHJlYWR5IG5vdCBydW5uaW5nIHNvIHdlJ3JlIHNhZmUsIGJ1dCBub3cgdGhhdCB3
ZSB3ZWRnZSB3aGVuIHdlIGhpdCBhIGd1YyBlcnJvciB3ZSBjYW4gYWxzbyBkbyBzb21ldGhpbmcg
bGlrZToKPgo+IMKgwqDCoMKgLUVJTyBsb2FkIGVycm9yIC0+IHVjX2ZpbmlfaHcoKSAtPiB3ZWRn
ZQo+IGFuZCB0aGVuCj4gwqDCoMKgwqB1bmxvYWQgLT4gdWNfZmluaV9odygpCj4KPiBpdCBzaG91
bGQgYmUgYWxsIGJlIGhhbmRsZWQgc2FmZWx5ICh0aGUgZmF1bHQgaW5qZWN0aW9uIHRlc3QgaXMg
cGFzc2luZyB3aGVyZSB3ZSd2ZSBydW4gaXQpLCBidXQgd2UgZW5kIHVwIHdpdGggIkd1QyBjb21t
dW5pY2F0aW9uIGRpc2FibGVkIiBtdWx0aXBsZSB0aW1lcyBpbiB0aGUgbG9nczoKPgo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEzOTk5L2ZpLXNr
bC1ndWMvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0
bWwKPgo+IDw2PiBbMjM3LjgxODkwNV0gW2RybV0gR3VDIGNvbW11bmljYXRpb24gZW5hYmxlZAo+
IC4uLi4KPiA8Nj4gWzIzNy44MjI3MzldIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOl9faTkxNV9p
bmplY3RfbG9hZF9lcnJvciBbaTkxNV1dIEluamVjdGluZyBmYWlsdXJlIC01IGF0IGNoZWNrcG9p
bnQgNDQgW2k5MTVfZ2VtX2luaXQ6MTUwM10KPiA8Nj4gWzIzNy44NDA4MDhdIFtkcm1dIEd1QyBj
b21tdW5pY2F0aW9uIGRpc2FibGVkCj4gLi4uCj4gPDY+IFsyMzguMTYwOTM1XSBbZHJtXSBHdUMg
Y29tbXVuaWNhdGlvbiBkaXNhYmxlZAo+Cj4gTWF5YmUgcmV0dXJuIGVhcmx5IGZyb20gZ3VjX2Rp
c2FibGVfY29tbXVuaWNhdGlvbiBpZiB0aGUgY29tbXVuaWNhdGlvbiB3YXMgYWxyZWFkeSBkaXNh
YmxlZD8KCkFzIGRpc2N1c3NlZCBvZmZsaW5lLCBhbiBlYXJseSByZXR1cm4gbWlnaHQgYWxzbyBy
ZXF1aXJlIGNoYW5nZXMgdG8gdGhlIHN0b3AgY29tbXVuaWNhdGlvbiBwaGFzZS4KSSdsbCB3b3Jr
IG9uIHRoaXMgc2VwYXJhdGVseSBhcyBmb3Igbm93IHRoZSBleHRyYSBkaXNhYmxlIG9ubHkgcmVz
dWx0cyBpbiB0aGUgZXh0cmEgbG9nZ2luZy4KClRoYW5rcywKRmVybmFuZG8KCj4KPgo+IERhbmll
bGUKPgo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiDCoCDCoMKgwqDCoMKgIGlmIChp
bnRlbF91Y19zdXBwb3J0c19ndWNfc3VibWlzc2lvbih1YykpCj4+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
