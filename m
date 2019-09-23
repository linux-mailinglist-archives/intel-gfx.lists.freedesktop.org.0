Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE70BB24A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A9F6E868;
	Mon, 23 Sep 2019 10:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D3C86E868
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:34:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:34:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="213279540"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2019 03:34:20 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20190918173121.183132-1-stuart.summers@intel.com>
 <9b3a76d3-f961-95d3-7396-8b638a1cc935@linux.intel.com>
 <794c7d3a4b88d6ff53dc186b342da99575510f86.camel@intel.com>
 <156901497277.11001.11723215496577918349@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6675fc29-9763-da0c-b8be-5624d92a856b@linux.intel.com>
Date: Mon, 23 Sep 2019 11:34:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156901497277.11001.11723215496577918349@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow set context SSEU on
 platforms after gen 11
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

UmVwbHlpbmcgd2l0aCBzb21lIG1vcmUgaW5mb3JtYXRpb24gZm9yIGJlbmVmaXQgb2YgYXJjaGl2
ZXMuCgpPbiAyMC8wOS8yMDE5IDIyOjI5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBT
dW1tZXJzLCBTdHVhcnQgKDIwMTktMDktMjAgMjI6MDk6NDYpCj4+IE9uIFRodSwgMjAxOS0wOS0x
OSBhdCAwODowMCArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+PiBPbiAxOC8wOS8yMDE5
IDE4OjMxLCBTdHVhcnQgU3VtbWVycyB3cm90ZToKPj4+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNTU5Cj4+Pgo+Pj4gVW5sZXNzIHRo
ZXJlIHdhcyBzb21lIGRpc2N1c3Npb24gSSBtaXNzZWQgd2UgY2FuJ3QganVzdCB0dXJuIGl0IG9u
Cj4+PiB0bwo+Pj4gd29yayBhcm91bmQgYSBTS0lQIGluIElHVC4gRmVhdHVyZSB3YXMgZGVsaWJl
cmF0ZWx5IGxpbWl0ZWQgdG8KPj4+IEljZWxha2UKPj4+IGFuZCBldmVuIHRoZXJlIGp1c3QgdG8g
YSBzdWItc2V0IG9mIHBvc3NpYmxlIGNvbmZpZ3VyYXRpb25zLgo+Pgo+PiBObyBjb252ZXJzYXRp
b24gd2FzIG1pc3NlZCwgb3IgYXQgbGVhc3Qgbm9uZSBJIHdhcyBhIHBhcnQgb2YuIElzIHRoZXJl
Cj4+IGEgcmVhc29uIHdlIGRvbid0IGFsbG93IHRoaXMgb24gZnV0dXJlIHBsYXRmb3Jtcz8KPj4K
Pj4gV2UgZG8gY2xhaW0gcG93ZXJnYXRlIHN1cHBvcnQgb24gVEdMLCBzbyBJIGFzc3VtZWQgaXQg
d291bGQgYmUgZ29vZCB0bwo+PiB0YWtlIHRoaXMgcGF0aCBvbiB0aGF0IHBsYXRmb3JtLiBNYXli
ZSBJJ20gbWlzdW5kZXJzdGFuZGluZyBzb21ldGhpbmcKPj4gaGVyZSB0aG91Z2guCj4gCj4gVGhl
IGN1cnJlbnQgaW50ZXJmYWNlIGlzIHB1cmVseSB0byB3b3JrIGFyb3VuZCBhIHNpbGljb24gaXNz
dWUgb24gaWNsLgo+IEl0IHdhcyBub3QgZGV2ZWxvcGVkIGludG8gYSBmdWxseSByZWNvbmZpZ3Vy
YWJsZSBzc2V1IGludGVyZmFjZSBtb3N0bHkKPiBkdWUgdG8gYSBsYWNrIG9mIGRlbW9uc3RyYWJs
ZSBuZWVkIGFuZCBhIGxhY2sgb2YgYXBwcmVjaWF0aW9uIG9mIHRoZQo+IHRyYWRlb2ZmcyBiZXR3
ZWVuIGRpZmZlcmVudCBzeXN0ZW0gdXNlcnMgKGFsb25nIHdpdGggdGhlIGNsYWltIHRoYXQgdGhp
cwo+IGlzIGFsbCBtZWFudCB0byBiZSBoYW5kbGVkIGJ5IGluc3RydWN0aW9ucyBpbiB0aGUgY29t
bWFuZCBzdHJlYW0uLi4pLgoKRm9yIHRoZSByZWNvcmQgYW5kIGZyb20gbXkgbWVtb3J5LCB0aGUg
ZGVtb25zdHJhdGVkIG5lZWQgcHJlLWdlbjExIHdhcyAKZnJvbSB0aGUgbWVkaWEgdHJhbnNjb2Rp
bmcgc2lkZSB3aGVyZSBpdCBiZW5lZml0ZWQgcGVyZm9ybWFuY2UgZm9yIHNvbWUgCndvcmtsb2Fk
IHR5cGVzLiBXaGF0IHdhc24ndCBjbGVhciB3YXMgdGhlIGJlc3Qgc3RyYXRlZ3kgb2Ygc3RyaWtp
bmcgYSAKYmFsYW5jZSBiZXR3ZWVuIGluY3JlYXNlZCBjb3N0IG9mIGNvbnRleHQgc3dpdGNoaW5n
IChiZXR3ZWVuIGNvbnRleHRzIAp3aXRoIGRpZmZlcmVudCBzc2V1IGNvbmZpZ3MpIGFuZCBwZXJm
b3JtYW5jZSBiZW5lZml0IG9mIGdvaW5nIHdpdGggCnJlZHVjZWQgc3NldS4gQWdhaW4gZnJvbSBt
ZW1vcnksIHRoZSBiZXN0IG9wdGlvbiBsb29rZWQgdG8gYmUgYSBoeWJyaWQgCnNvbHV0aW9uIG9m
IG5vdCByZS1jb25maWd1cmluZyBTU0VVIG9uIGV2ZXJ5IGNvbnRleHQgc3dpdGNoLCBidXQgZG9u
ZSAKcGVyaW9kaWNhbGx5IGZyb20gYW4gZXh0ZXJuYWwgZW50aXR5LCBiYXNlZCBvbiB3b3JrbG9h
ZCB0eXBlcyBpbnB1dC4gQXMgCnN1Y2ggaXQgZGlkIG5vdCBhbGlnbiBjb21wbGV0ZWx5IHdpdGgg
dGhlIHBlci1jb250ZXh0IGNvbnRyb2xzLgoKPiBBbm90aGVyIHRlYW0gZGlkIHRyeSB0byBhdXRv
YWRqdXN0IHNzZXUgYnV0IGFsc28gZGlkIG5vdCBwcm9kdWNlIHRoZQo+IHJhdGlvbmFsZSBub3Ig
YXR0ZW1wdCB0byBpbnRlZ3JhdGUgd2l0aCB0aGUgZXhpc3RpbmcgY29kZS4KCkkgZm9yZ290IGFi
b3V0IHRoaXMgb25lLCB3b25kZXIgd2hhdCBoYXBwZW5lZCB0aGVyZS4gVGhpcyB3YXMgYWxzbyBm
b3IgCnByZS1nZW4xMSBidXQgd2l0aCBkZW1vbnN0cmF0ZWQgcGVyZm9ybWFuY2UtcGVyLVdhdHQg
YmVuZWZpdCBmb3Igc29tZSAzZCAKd29ya2xvYWRzIG9uIEFuZHJvaWQuIFRoaXMgd2FzIGtub3du
IGFzICJEeW5hbWljIFNTRVUiLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
