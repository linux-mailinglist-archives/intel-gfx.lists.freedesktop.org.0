Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7C910A35B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71CFF6E461;
	Tue, 26 Nov 2019 17:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8472C6E461
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:33:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 09:33:12 -0800
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="202787786"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 09:33:11 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191126152616.2748154-1-chris@chris-wilson.co.uk>
 <ce4ba2d7-3623-8983-a1f6-60b400fc14c2@linux.intel.com>
 <157478894313.18552.6870774925616835042@skylake-alporthouse-com>
 <157478910493.18552.10671765314502666049@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6ba7582e-ba64-f237-abe8-2c3c5c2374de@linux.intel.com>
Date: Tue, 26 Nov 2019 17:33:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157478910493.18552.10671765314502666049@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Double check vma placement upon
 gaining the vm lock
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

Ck9uIDI2LzExLzIwMTkgMTc6MjUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0xMS0yNiAxNzoyMjoyMykKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0xMS0yNiAxNzowNDo0MykKPj4+Cj4+PiBPbiAyNi8xMS8yMDE5IDE1OjI2LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCj4+Pj4gaW5kZXggZTU1MTJm
MjZlMjBhLi5mNmU2NjE0MjhiMDIgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV92bWEuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMK
Pj4+PiBAQCAtOTA1LDYgKzkwNSwxMiBAQCBpbnQgaTkxNV92bWFfcGluKHN0cnVjdCBpOTE1X3Zt
YSAqdm1hLCB1NjQgc2l6ZSwgdTY0IGFsaWdubWVudCwgdTY0IGZsYWdzKQo+Pj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgX19pOTE1X3ZtYV9zZXRfbWFwX2FuZF9mZW5jZWFibGUodm1hKTsKPj4+
PiAgICAgICAgfQo+Pj4+ICAgIAo+Pj4+ICsgICAgIC8qIFNvbWVib2R5IGVsc2UgbWFuYWdlZCB0
byBnYXp1bXAgb3VyIHBsYWNlbWVudD8gKi8KPj4+PiArICAgICBpZiAoaTkxNV92bWFfbWlzcGxh
Y2VkKHZtYSwgc2l6ZSwgYWxpZ25tZW50LCBmbGFncykpIHsKPj4+PiArICAgICAgICAgICAgIGVy
ciA9IC1FQUdBSU47Cj4+Pj4gKyAgICAgICAgICAgICBnb3RvIGVycl9hY3RpdmU7Cj4+Pj4gKyAg
ICAgfQo+Pj4+ICsKPj4+Cj4+PiBXaGF0IGFib3V0IG90aGVyIGNhbGxlcnM/IFRoZXkgd2lsbCBu
b3QgYmUgZXhwZWN0aW5nIHRoaXMuCj4+Cj4+IFRoZSBvdGhlciBwYXRocyBzaG91bGQgYmUgcXVp
dGUgaGFwcHkgd2l0aCAtRUFHQUlOIGZyb20gdm1hX3BpbiwgaXQncwo+PiBhbHJlYWR5IHBhcnQg
b2YgdGhlaXIgcmV0cnkgcHJvY2VkdXJlLiBJZiBub3QsIHRoZXJlJ3MgYWx3YXlzIG1vcmUgZHVj
dAo+PiB0YXBlLiBIb3BlZnVsbHkgdGhlIHJlcGxhY2VtZW50IGlzIG11Y2ggc2ltcGxlciAoc3Rv
cCBsYXVnaGluZyBiYWNrCj4+IHRoZXJlKS4KPiAKPiBUaGUgYWx0ZXJuYXRpdmUgaGVyZSBpcyB0
byBwdWxsIGluIF9faTkxNV92bWFfdW5iaW5kKCksIHdoaWNoIG1pZ2h0IGJlCj4gcGxhdXNpYmxl
LgoKVG8gbWFrZSB1bmJpbmQgYW5kIHBpbiBhdG9taWM/IFlvdSdkIG5lZWQgdW5sb2NrZWQgdm1h
X3BpbiBhcyB3ZWxsLiBPciAKc29tZSBkaWZmZXJlbnQgaWRlYT8KClJlZ2FyZHMsCgpUdnJ0a28K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
