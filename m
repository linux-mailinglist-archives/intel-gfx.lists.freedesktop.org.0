Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22527D14B8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 18:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB116EA1D;
	Wed,  9 Oct 2019 16:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91EE6EA1D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 16:59:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 09:59:12 -0700
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="196973307"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 09 Oct 2019 09:59:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009100955.21477-2-chris@chris-wilson.co.uk>
 <20191009160906.16195-1-chris@chris-wilson.co.uk>
 <157063875263.18808.2380891000356981190@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7ddf979f-f331-608b-992f-1e2c6e74f30c@linux.intel.com>
Date: Wed, 9 Oct 2019 17:59:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157063875263.18808.2380891000356981190@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: execlists->active is
 serialised by the tasklet
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

Ck9uIDA5LzEwLzIwMTkgMTc6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0xMC0wOSAxNzowOTowNikKPj4gVGhlIGFjdGl2ZS9wZW5kaW5nIGV4ZWNs
aXN0cyBpcyBubyBsb25nZXIgcHJvdGVjdGVkIGJ5IHRoZQo+PiBlbmdpbmUtPmFjdGl2ZS5sb2Nr
LCBidXQgaXMgc2VyaWFsaXNlZCBieSB0aGUgdGFza2xldCBpbnN0ZWFkLiBVcGRhdGUKPj4gdGhl
IGxvY2tpbmcgYXJvdW5kIHRoZSBkZWJ1ZyBhbmQgc3RhdHMgdG8gZm9sbG93IHN1aXQuCj4+Cj4+
IHYyOiBsb2NhbF9iaF9kaXNhYmxlKCkgdG8gcHJldmVudCByZWN1cnNpbmcgaW50byB0aGUgdGFz
a2xldCBpbiBjYXNlIHdlCj4+IHRyaWdnZXIgYSBzb2Z0aXJxIChUdnJ0a28pCj4+Cj4+IEZpeGVz
OiBkZjQwMzA2OTAyOWQgKCJkcm0vaTkxNS9leGVjbGlzdHM6IExpZnQgcHJvY2Vzc19jc2IoKSBv
dXQgb2YgdGhlIGlycS1vZmYgc3BpbmxvY2siKQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lLmggICAgfCAxNCArKysrKysrKysrKysrKwo+PiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgMTYgKysrKysrKy0tLS0tLS0tLQo+PiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggICAgICAgICAgIHwgIDYgKysrKysrCj4+ICAgMyBm
aWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAo+PiBpbmRleCBkNjI0NzUyZjJhOTIuLmZh
NzcwZDNjYTIwOCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgK
Pj4gQEAgLTEzNiw2ICsxMzYsMjAgQEAgZXhlY2xpc3RzX2FjdGl2ZShjb25zdCBzdHJ1Y3QgaW50
ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzKQo+PiAgICAgICAgICByZXR1cm4gUkVBRF9P
TkNFKCpleGVjbGlzdHMtPmFjdGl2ZSk7Cj4+ICAgfQo+PiAgIAo+PiArc3RhdGljIGlubGluZSB2
b2lkCj4+ICtleGVjbGlzdHNfYWN0aXZlX2xvY2soc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlz
dHMgKmV4ZWNsaXN0cykKPiAKPiBleGVjbGlzdHNfYWN0aXZlX2JoX2xvY2soKSB0byBpbmNsdWRl
IHRoZSBjbHVlIGFib3V0IGJoX2Rpc2FibGU/CgpNYWtlcyBzZW5zZS4gT3IgZXhlY2xpc3RzX2Fj
dGl2ZV9sb2NrX2JoIHRvIG1hdGNoIHRoZSBzcGluX2xvY2tfYmguCgpSZXZpZXdlZC1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28K
Cj4+ICt7Cj4+ICsgICAgICAgbG9jYWxfYmhfZGlzYWJsZSgpOyAvKiBwcmV2ZW50IGxvY2FsIHNv
ZnRpcnEgYW5kIGxvY2sgcmVjdXJzaW9uICovCj4+ICsgICAgICAgdGFza2xldF9sb2NrKCZleGVj
bGlzdHMtPnRhc2tsZXQpOwo+PiArfQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
