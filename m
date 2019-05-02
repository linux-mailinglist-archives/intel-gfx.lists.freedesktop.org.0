Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D728011A7B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 15:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA53895B6;
	Thu,  2 May 2019 13:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6F1895CA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 13:48:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 06:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140675522"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 06:48:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2aec6c87-7142-4756-b4ed-db9ff6e057d7@linux.intel.com>
Date: Thu, 2 May 2019 14:48:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501114541.10077-3-chris@chris-wilson.co.uk>
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

Ck9uIDAxLzA1LzIwMTkgMTI6NDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaWR5IHVwIHRoZSBj
bGVhbnVwIHNlcXVlbmNlIGJ5IGFsd2F5cyBlbnN1cmUgdGhhdCB0aGUgdGFza2xldCBpcwo+IGZs
dXNoZWQgb24gcGFya2luZyAoYmVmb3JlIHdlIGNsZWFudXApLiBUaGUgcGFya2luZyBwcm92aWRl
cyBhCj4gY29udmVuaWVudCBwb2ludCB0byBlbnN1cmUgdGhhdCB0aGUgYmFja2VuZCBpcyB0cnVs
eSBpZGxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
ICAgICAgICB8IDcgKysrKysrLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1
Ym1pc3Npb24uYyB8IDEgKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IDg1
MWU2MmRkY2I4Ny4uN2JlNTRiODY4ZDhlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKPiBAQCAtMjMzMSw2ICsyMzMxLDExIEBAIHN0YXRpYyBpbnQgZ2VuOF9pbml0X3Jjc19j
b250ZXh0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICAgCXJldHVybiBpOTE1X2dlbV9yZW5k
ZXJfc3RhdGVfZW1pdChycSk7Cj4gICB9Cj4gICAKPiArc3RhdGljIHZvaWQgZXhlY2xpc3RzX3Bh
cmsoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICt7Cj4gKwl0YXNrbGV0X2tpbGwo
JmVuZ2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQpOwoKSXNuJ3QgaXQgYWN0dWFsbHkgYSBwcm9ibGVt
IGlmIHRhc2tsZXQgaXMgc2NoZWR1bGVkIGFuZCB1bnN0YXJ0ZWQsIG9yIApldmVuIGluIHByb2dy
ZXNzIGF0IHRoZSBwb2ludCBvZiBlbmdpbmUgZ2V0dGluZyBwYXJrZWQ/CgpSZWdhcmRzLAoKVHZy
dGtvCgo+ICt9Cj4gKwo+ICAgdm9pZCBpbnRlbF9leGVjbGlzdHNfc2V0X2RlZmF1bHRfc3VibWlz
c2lvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICB7Cj4gICAJZW5naW5lLT5z
dWJtaXRfcmVxdWVzdCA9IGV4ZWNsaXN0c19zdWJtaXRfcmVxdWVzdDsKPiBAQCAtMjM0Miw3ICsy
MzQ3LDcgQEAgdm9pZCBpbnRlbF9leGVjbGlzdHNfc2V0X2RlZmF1bHRfc3VibWlzc2lvbihzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAJZW5naW5lLT5yZXNldC5yZXNldCA9IGV4
ZWNsaXN0c19yZXNldDsKPiAgIAllbmdpbmUtPnJlc2V0LmZpbmlzaCA9IGV4ZWNsaXN0c19yZXNl
dF9maW5pc2g7Cj4gICAKPiAtCWVuZ2luZS0+cGFyayA9IE5VTEw7Cj4gKwllbmdpbmUtPnBhcmsg
PSBleGVjbGlzdHNfcGFyazsKPiAgIAllbmdpbmUtPnVucGFyayA9IE5VTEw7Cj4gICAKPiAgIAll
bmdpbmUtPmZsYWdzIHw9IEk5MTVfRU5HSU5FX1NVUFBPUlRTX1NUQVRTOwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwo+IGluZGV4IDRjODE0MzQ0ODA5Yy4u
ZWQ5NDAwMTAyOGYyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Y19zdWJtaXNzaW9uLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3Vi
bWlzc2lvbi5jCj4gQEAgLTEzNjMsNiArMTM2Myw3IEBAIHN0YXRpYyB2b2lkIGd1Y19pbnRlcnJ1
cHRzX3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgCj4gICBz
dGF0aWMgdm9pZCBndWNfc3VibWlzc2lvbl9wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKPiAgIHsKPiArCXRhc2tsZXRfa2lsbCgmZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7
Cj4gICAJaW50ZWxfZW5naW5lX3VucGluX2JyZWFkY3J1bWJzX2lycShlbmdpbmUpOwo+ICAgCWVu
Z2luZS0+ZmxhZ3MgJj0gfkk5MTVfRU5HSU5FX05FRURTX0JSRUFEQ1JVTUJfVEFTS0xFVDsKPiAg
IH0KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
