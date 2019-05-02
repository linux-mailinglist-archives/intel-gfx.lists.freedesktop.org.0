Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8619711B53
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0490389623;
	Thu,  2 May 2019 14:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A91589598
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:24:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 07:24:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140683823"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 07:24:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-3-chris@chris-wilson.co.uk>
 <2aec6c87-7142-4756-b4ed-db9ff6e057d7@linux.intel.com>
 <155680523278.9023.7792263043329338669@skylake-alporthouse-com>
 <d9f738e1-52a9-ef72-374c-c42dbbedcbbb@linux.intel.com>
 <155680686989.9023.6629699137280028848@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b15679f8-dc34-93d0-fe59-7690acc24a20@linux.intel.com>
Date: Thu, 2 May 2019 15:24:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155680686989.9023.6629699137280028848@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915/execlists: Flush the tasklet
 on parking
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

Ck9uIDAyLzA1LzIwMTkgMTU6MjEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTAyIDE1OjE0OjA4KQo+Pgo+PiBPbiAwMi8wNS8yMDE5IDE0OjUz
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTAyIDE0OjQ4OjE4KQo+Pj4+Cj4+Pj4gT24gMDEvMDUvMjAxOSAxMjo0NSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBUaWR5IHVwIHRoZSBjbGVhbnVwIHNlcXVlbmNlIGJ5IGFsd2F5cyBlbnN1
cmUgdGhhdCB0aGUgdGFza2xldCBpcwo+Pj4+PiBmbHVzaGVkIG9uIHBhcmtpbmcgKGJlZm9yZSB3
ZSBjbGVhbnVwKS4gVGhlIHBhcmtpbmcgcHJvdmlkZXMgYQo+Pj4+PiBjb252ZW5pZW50IHBvaW50
IHRvIGVuc3VyZSB0aGF0IHRoZSBiYWNrZW5kIGlzIHRydWx5IGlkbGUuCj4+Pj4+Cj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4+
PiAtLS0KPj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAg
ICAgfCA3ICsrKysrKy0KPj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19z
dWJtaXNzaW9uLmMgfCAxICsKPj4+Pj4gICAgIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCj4+Pj4+IGluZGV4IDg1MWU2MmRkY2I4Ny4uN2JlNTRiODY4ZDhlIDEwMDY0NAo+Pj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4+PiBAQCAtMjMzMSw2ICsyMzMxLDEx
IEBAIHN0YXRpYyBpbnQgZ2VuOF9pbml0X3Jjc19jb250ZXh0KHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxKQo+Pj4+PiAgICAgICAgIHJldHVybiBpOTE1X2dlbV9yZW5kZXJfc3RhdGVfZW1pdChycSk7
Cj4+Pj4+ICAgICB9Cj4+Pj4+ICAgICAKPj4+Pj4gK3N0YXRpYyB2b2lkIGV4ZWNsaXN0c19wYXJr
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPj4+Pj4gK3sKPj4+Pj4gKyAgICAgdGFz
a2xldF9raWxsKCZlbmdpbmUtPmV4ZWNsaXN0cy50YXNrbGV0KTsKPj4+Pgo+Pj4+IElzbid0IGl0
IGFjdHVhbGx5IGEgcHJvYmxlbSBpZiB0YXNrbGV0IGlzIHNjaGVkdWxlZCBhbmQgdW5zdGFydGVk
LCBvcgo+Pj4+IGV2ZW4gaW4gcHJvZ3Jlc3MgYXQgdGhlIHBvaW50IG9mIGVuZ2luZSBnZXR0aW5n
IHBhcmtlZD8KPj4+Cj4+PiBUaGF0IHdvdWxkIGJlIGEgYnJva2VuIGRyaXZlci4gOnwKPj4+Cj4+
PiBXZSBtdXN0IGJlIHF1aXRlIHN1cmUgdGhhdCBlbmdpbmUgaXNuJ3QgZ29pbmcgdG8gc2VuZCBh
biBpbnRlcnJ1cHQgYXMgd2UKPj4+IGFyZSBqdXN0IGFib3V0IHRvIGRyb3AgdGhlIHdha2VyZWYg
d2UgbmVlZCB0byBzZXJ2aWNlIHRoYXQgaW50ZXJydXB0Lgo+Pj4KPj4+IHRhc2tsZXRfa2lsbCgp
Cj4+PiBHRU1fQlVHX09OKGVuZ2luZS0+ZXhlY2xpc3RzLmFjdGl2ZSk7Cj4+Cj4+IE9yIGluc3Rl
YWQgb2YgYm90aDoKPj4KPj4gLyogVGFza2xldCBtdXN0IG5vdCBiZSBydW5uaW5nIG9yIHNjaGVk
dWxlZCBhdCB0aGlzIHBvaW50LiAqLwo+PiBHRU1fQlVHX09OKGVuZ2luZS0+ZXhlY2xpc3RzLnRh
c2tsZXQuc3RhdGUpOwo+IAo+IFRoZXJlJ3MgdGhlIGRpbGVtbWEgdGhhdCB3ZSBzdGFydCBwYXJr
aW5nIGJhc2VkIG9uIHJldGlyZW1lbnQgbm90Cj4gZmluYWwgQ1MgZXZlbnQuCgpCdXQgZW5naW5l
LT5wYXJrKCkgaXMgY2FsbGVkIG9uY2UgdGhlIGxhc3QgZW5naW5lIHBtIHJlZmVyZW5jZSBpcyAK
ZHJvcHBlZC4gQXJlIHdlIGRyb3BwaW5nIHRoZSBsYXN0IHJlZmVyZW5jZSB3aXRoIGEgQ1MgZXZl
bnQgcGVuZGluZz8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
