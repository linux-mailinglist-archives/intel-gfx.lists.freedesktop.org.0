Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D683AE96C
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 14:52:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DE5D89FE6;
	Mon, 21 Jun 2021 12:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8269089FE6
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 12:52:56 +0000 (UTC)
IronPort-SDR: QyAqpEmIO00KFLrCNM2JxdTAveuHM/uwRaXvXtAm3p6y2LKu+zQBosAKQAaqiEWz33gQWWlTnj
 mHEZFoL4xhfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="193970413"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="193970413"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:52:55 -0700
IronPort-SDR: 6MOEuOH/kidriq9/vJ0gIkIOBvs8J0oxxglI43f0KppRW0FMRvPy1ocpNZtb5MZaGo33Ra1tUo
 CVik583PTERg==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="405949229"
Received: from bchikkop-mobl.ger.corp.intel.com (HELO [10.213.238.150])
 ([10.213.238.150])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 05:52:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
 <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <74c6afe5-a76f-1895-d37b-d738978e2804@linux.intel.com>
Date: Mon, 21 Jun 2021 13:52:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Do not allow setting ring
 size for legacy ring submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIxLzA2LzIwMjEgMTM6MDgsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IEkgaGFkIHNv
bWUgcXVlc3Rpb25zIG9uIHRoZSB0cnlib3QgbWFpbGluZyBsaXN0LCBsZXQgbWUgY29weSZwYXN0
ZS4uCj4gCj4gT24gMjEvMDYvMjAyMSAxMjo0MSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+
IEl0IGRvZXNuJ3Qgd29yayBmb3IgbGVnYWN5IHJpbmcgc3VibWlzc2lvbiwgYW5kIGlzIGluIHRo
ZSBiZXN0IGNhc2UKPj4gaWdub3JlZC4KPiAKPiBMb29rcyByZWplY3RlZCBpbnN0ZWFkIG9mIGln
bm9yZWQ6Cj4gCj4gc3RhdGljIGludCBzZXRfcmluZ3NpemUoc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQgKmN0eCwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2Nv
bnRleHRfcGFyYW0gKmFyZ3MpCj4gewo+ICDCoMKgwqAgaWYgKCFIQVNfTE9HSUNBTF9SSU5HX0NP
TlRFWFRTKGN0eC0+aTkxNSkpCj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+Pgo+
PiBJbiB0aGUgd29yc3QgY2FzZSB3ZSBlbmQgdXAgZnJlZWluZyBlbmdpbmUtPmxlZ2FjeS5yaW5n
IGZvciBhbGwgb3RoZXIKPj4gYWN0aXZlIGVuZ2luZXMsIHJlc3VsdGluZyBpbiBhIHVzZS1hZnRl
ci1mcmVlLgo+IAo+IFdvcnN0IGNhc2UgaXMgY2xvbmluZyBiZWNhdXNlIHJpbmdfY29udGV4dF9h
bGxvYyBpcyBub3QgdGFraW5nIGEgCj4gcmVmZXJlbmNlIHRvIGVuZ2luZS0+bGVnYWN5LnJpbmcs
IG9yIHNvbWV0aGluZyBlbHNlPwoKTm8gY2FuJ3QgYmUgdGhhdCwgaXQgd2FzIG15IGluY29tcGxl
dGUgYW5hbHlzaXMgbGFzdCB3ZWVrLiBTaW5jZSAKcmluZ19jb250ZXh0X2Rlc3Ryb3kgZG9lcyBu
b3QgYWN0dWFsbHkgZnJlZSB0aGUgbGVnYWN5IHJpbmcgSSBkb24ndCBzZWUgCmFueSB1c2UgYWZ0
ZXIgZnJlZSBwYXRocy4KClJlZ2FyZHMsCgpUdnJ0a28KCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+IEZp
eGVzOiA4OGJlNzZjZGFmYzcgKCJkcm0vaTkxNTogQWxsb3cgdXNlcnNwYWNlIHRvIHNwZWNpZnkg
cmluZ3NpemUgb24gCj4+IGNvbnN0cnVjdGlvbiIpCj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2NvbnRleHRfcGFyYW0uYyB8IDMgKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2NvbnRleHRfcGFyYW0uYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9j
b250ZXh0X3BhcmFtLmMKPj4gaW5kZXggNjVkY2QwOTAyNDVkLi40MTJjMzZkMWIxZGQgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfcGFyYW0uYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0X3BhcmFtLmMKPj4g
QEAgLTEyLDYgKzEyLDkgQEAgaW50IGludGVsX2NvbnRleHRfc2V0X3Jpbmdfc2l6ZShzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAKPj4gKmNlLCBsb25nIHN6KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgaW50
IGVycjsKPj4gK8KgwqDCoCBpZiAoY2UtPmVuZ2luZS0+Z3QtPnN1Ym1pc3Npb25fbWV0aG9kID09
IElOVEVMX1NVQk1JU1NJT05fUklORykKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiAr
Cj4+IMKgwqDCoMKgwqAgaWYgKGludGVsX2NvbnRleHRfbG9ja19waW5uZWQoY2UpKQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5UUjsKPj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
