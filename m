Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD753BF67D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 18:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136E66EDD1;
	Thu, 26 Sep 2019 16:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F21266EDD1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 16:13:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 09:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="390775450"
Received: from noezdal-mobl.ger.corp.intel.com (HELO [10.252.53.218])
 ([10.252.53.218])
 by fmsmga006.fm.intel.com with ESMTP; 26 Sep 2019 09:13:54 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-16-maarten.lankhorst@linux.intel.com>
 <20190926130600.GM1208@intel.com>
 <ee604986-eb7b-05ce-ca2f-7c1789e1050c@linux.intel.com>
 <20190926160922.GN1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <9571386c-7199-ce39-a48e-58bb66c87c19@linux.intel.com>
Date: Thu, 26 Sep 2019 18:13:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190926160922.GN1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915: Program planes in bigjoiner
 mode.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjYtMDktMjAxOSBvbSAxODowOSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBUaHUs
IFNlcCAyNiwgMjAxOSBhdCAwNTo1MDowNVBNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gT3AgMjYtMDktMjAxOSBvbSAxNTowNiBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPj4+
IE9uIEZyaSwgU2VwIDIwLCAyMDE5IGF0IDAxOjQyOjI4UE0gKzAyMDAsIE1hYXJ0ZW4gTGFua2hv
cnN0IHdyb3RlOgo+Pj4+IE5vdyB0aGF0IHdlIGNhbiBwcm9ncmFtIHBsYW5lcyBmcm9tIHRoZSB1
cGRhdGVfc2xhdmUgY2FsbGJhY2ssIGFuZAo+Pj4+IHdlIGhhdmUgZG9uZSBhbGwgZmIgcGlubmlu
ZyBjb3JyZWN0bHksIGl0J3MgdGltZSB0byBwcm9ncmFtIHRob3NlCj4+Pj4gcGxhbmVzIGFzIHdl
bGwuCj4+Pj4KPj4+PiBXZSB1c2UgdGhlIHVwZGF0ZV9zbGF2ZSBjYWxsYmFjayBhcyBpdCBhbGxv
d3MgdXMgdG8gdXNlIHRoZQo+Pj4+IHNlcGFyYXRlIHN0YXRlcyBjb3JyZWN0bHkuCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+Pj4+IC0tLQo+Pj4+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMgfCA1MyArKysrKysrKysrKysrKysrKysrCj4+Pj4gIC4uLi9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAyICsKPj4+PiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQgKy0KPj4+PiAgMyBm
aWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5j
Cj4+Pj4gaW5kZXggY2MwODg2NzZmMGEyLi41ZGIwOTFlNGFkNmEgMTAwNjQ0Cj4+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+Pj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPj4+
PiBAQCAtMzY2LDYgKzM2Niw1OSBAQCB2b2lkIHNrbF91cGRhdGVfcGxhbmVzX29uX2NydGMoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4+Pj4gIAl9Cj4+Pj4gIH0KPj4+PiAgCj4+
Pj4gK3ZvaWQgaWNsX3VwZGF0ZV9iaWdqb2luZXJfcGxhbmVzX29uX2NydGMoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsCj4+Pj4gKwkJCQkJIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQo+Pj4gVGhpcyBwbGFuZSBzdHVmZiBpcyB3aGVyZSB0aGluZ3MgZ28gdmVyeSBtdWNoIG9mZiB0
aGUgcmFpbHMgSU1PLgo+Pj4gUGxhbmVzIHNob3VsZCBub3QgaGF2ZSB0byBrbm93IGFueXRoaW5n
IGFib3V0IGJpZ2pvaW5lci4gVGhleSBzaG91bGQKPj4+IGp1c3QgaGF2ZSB0aGVpciBhcHByb3By
aWF0ZSBodyBzdGF0ZSBhbmQgYmxpbmRseSBiYXNoIGl0IGludG8gdGhlCj4+PiBoYXJkd2FyZS4K
Pj4gV2UgYWxyZWFkeSBuZWVkIHRoaXMgZm9yIHBsYW5hciBzbGF2ZS9tYXN0ZXIsIHdoYXQncyB0
aGUgaXNzdWUgZXhhY3RseT8KPiBUaGF0IGFscmVhZHkgaXMgdG9vIGZyYWdpbGUuIEkgZG9uJ3Qg
d2FudCB0aGlzIHNwcmVhZGluZyBhbGwgb3Zlcgo+IHRoZSBkcml2ZXIgYW5kIGNvdXBsaW5nIGV2
ZXJ5dGhpbmcgdG8gdGhlIGJpZ2pvaW5lciBsb2dpYy4KPgo+IEhlcmUncyBhIGNydWRlIGlkZWEg
aG93IEkgdGhpbmsgd2UgbWlnaHQgYXZvaWQgdGhpczoKPiBnaXQ6Ly9naXRodWIuY29tL3ZzeXJq
YWxhL2xpbnV4LmdpdCB1YXBpX2h3X3N0YXRlX3NwbGl0Cj4KPiBCdXQgSSBkaWRuJ3QgZGFyZSBi
b290IGl0IHlldC4uLgoKU28geW91IGJhc2ljYWxseSB3YW50IHRoZSBzYW1lIHVhcGkvaHcgc3Bs
aXQgZm9yIHBsYW5lcyBhcyB3ZSBkaWQgd2l0aCBjcnRjJ3MgYWJvdmU/CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
