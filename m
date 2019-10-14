Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C35D5EC2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D086E1A7;
	Mon, 14 Oct 2019 09:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AAB66E1A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:25:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 02:25:08 -0700
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185440312"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 02:25:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191013193115.16844-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <15bcf769-999a-20bc-6884-af74c731b6b7@linux.intel.com>
Date: Mon, 14 Oct 2019 10:25:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191013193115.16844-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Assert tasklet is
 locked for process_csb()
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

Ck9uIDEzLzEwLzIwMTkgMjA6MzEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSByZWx5IG9uIG9u
bHkgdGhlIHRhc2tsZXQgYmVpbmcgYWxsb3dlZCB0byBjYWxsIGludG8gcHJvY2Vzc19jc2IoKSwg
c28KPiBhc3NlcnQgdGhhdCBpcyBsb2NrZWQgd2hlbiB3ZSBkby4gQXMgdGhlIHRhc2tsZXQgdXNl
cyBhIHNpbXBsZSBiaXRsb2NrLAo+IHRoZXJlIGlzIG5vIHN0cm9uZyBsb2NrZGVwIGNoZWNraW5n
IHNvIHdlIG11c3QgbWFrZSBkbyB3aXRoIGEgcGxhaW4KPiBhc3NlcnRpb24gdGhhdCB0aGUgdGFz
a2xldCBpcyBydW5uaW5nIGFuZCBhc3N1bWUgdGhhdCB3ZSBhcmUgdGhlCj4gdGFza2xldCEKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMSArCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5oICAgICB8IDUgKysrKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRl
eCA4YmU5ZTY5ZDU3MTguLmFiMjA0MzMxODJkMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4gQEAgLTE5ODQsNiArMTk4NCw3IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3Ni
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgIAl1OCBoZWFkLCB0YWlsOwo+ICAg
Cj4gICAJR0VNX0JVR19PTihVU0VTX0dVQ19TVUJNSVNTSU9OKGVuZ2luZS0+aTkxNSkpOwo+ICsJ
R0VNX0JVR19PTighdGFza2xldF9pc19sb2NrZWQoJmV4ZWNsaXN0cy0+dGFza2xldCkpOwoKSSBz
ZWUgc29tZSByZXNldCBwYXRocyBjYWxsaW5nIHByb2Nlc3NfY3NiIHdoaWNoIGxvb2tzIGxpa2Ug
YSBwcm9ibGVtIApmb3IgdGhpcyBhc3NlcnQuCgpSZWdhcmRzLAoKVHZydGtvCgo+ICAgCj4gICAJ
LyoKPiAgIAkgKiBOb3RlIHRoYXQgY3NiX3dyaXRlLCBjc2Jfc3RhdHVzIG1heSBiZSBlaXRoZXIg
aW4gSFdTUCBvciBtbWlvLgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaAo+IGluZGV4IGRiMjBkMmIw
ODQyYi4uZjZmOTY3NTg0OGI4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCj4gQEAgLTg2
LDYgKzg2LDExIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCB0YXNrbGV0X2xvY2soc3RydWN0IHRhc2ts
ZXRfc3RydWN0ICp0KQo+ICAgCQljcHVfcmVsYXgoKTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW5s
aW5lIGJvb2wgdGFza2xldF9pc19sb2NrZWQoY29uc3Qgc3RydWN0IHRhc2tsZXRfc3RydWN0ICp0
KQo+ICt7Cj4gKwlyZXR1cm4gdGVzdF9iaXQoVEFTS0xFVF9TVEFURV9SVU4sICZ0LT5zdGF0ZSk7
Cj4gK30KPiArCj4gICBzdGF0aWMgaW5saW5lIHZvaWQgX190YXNrbGV0X2Rpc2FibGVfc3luY19v
bmNlKHN0cnVjdCB0YXNrbGV0X3N0cnVjdCAqdCkKPiAgIHsKPiAgIAlpZiAoIWF0b21pY19mZXRj
aF9pbmMoJnQtPmNvdW50KSkKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
