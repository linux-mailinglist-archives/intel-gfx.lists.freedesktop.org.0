Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B63108E74
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 14:07:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C458E897C8;
	Mon, 25 Nov 2019 13:07:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC64B897C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 13:07:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 05:07:35 -0800
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="202346203"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Nov 2019 05:07:34 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191125112520.1760492-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9b9d0b30-16e6-ad91-74de-023d445e3c42@linux.intel.com>
Date: Mon, 25 Nov 2019 13:07:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125112520.1760492-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Fixup
 cancel_port_requests()
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

Ck9uIDI1LzExLzIwMTkgMTE6MjUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJIHJ1c2hlZCBhIGxh
c3QgbWludXRlIGNvcnJlY3Rpb24gdG8gY2FuY2VsX3BvcnRfcmVxdWVzdHMoKSB0byBwcmV2ZW50
Cj4gdGhlIHNub29waW5nIG9mICpleGVjbGlzdHMtPmFjdGl2ZSBhcyB0aGUgaW5mbGlnaHQgYXJy
YXkgd2FzIGJlaW5nCj4gdXBkYXRlZCwgd2l0aG91dCBub3RpY2luZyB3ZSBpdGVyYXRlZCB0aGUg
aW5mbGlnaHQgYXJyYXkgc3RhcnRpbmcgZnJvbQo+IGFjdGl2ZSEgT29wcy4KPiAKPiBGaXhlczog
MzMxYmY5MDU5MTU3ICgiZHJtL2k5MTUvZ3Q6IE1hcmsgdGhlIGV4ZWNsaXN0cy0+YWN0aXZlIGFz
IHRoZSBwcmltYXJ5IHZvbGF0aWxlIGFjY2VzcyIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eu
a3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMgfCAxNiArKysrKysrLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4gaW5kZXggZTUzM2ZmN2JhMzM0Li42MDkwMzU3YTAwZmEgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0yMDA3LDE5ICsyMDA3LDE3IEBAIHN0YXRp
YyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
PiAgIHN0YXRpYyB2b2lkCj4gICBjYW5jZWxfcG9ydF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2V4ZWNsaXN0cyAqIGNvbnN0IGV4ZWNsaXN0cykKPiAgIHsKPiAtCXN0cnVjdCBpOTE1X3Jl
cXVlc3QgKiBjb25zdCAqcG9ydCwgKnJxOwo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqIGNvbnN0
ICpwb3J0Owo+ICAgCj4gLQlmb3IgKHBvcnQgPSBleGVjbGlzdHMtPnBlbmRpbmc7IChycSA9ICpw
b3J0KTsgcG9ydCsrKQo+IC0JCWV4ZWNsaXN0c19zY2hlZHVsZV9vdXQocnEpOwo+ICsJZm9yIChw
b3J0ID0gZXhlY2xpc3RzLT5wZW5kaW5nOyAqcG9ydDsgcG9ydCsrKQo+ICsJCWV4ZWNsaXN0c19z
Y2hlZHVsZV9vdXQoKnBvcnQpOwo+ICAgCW1lbXNldChleGVjbGlzdHMtPnBlbmRpbmcsIDAsIHNp
emVvZihleGVjbGlzdHMtPnBlbmRpbmcpKTsKPiAgIAo+ICAgCS8qIE1hcmsgdGhlIGVuZCBvZiBh
Y3RpdmUgYmVmb3JlIHdlIG92ZXJ3cml0ZSAqYWN0aXZlICovCj4gLQlXUklURV9PTkNFKGV4ZWNs
aXN0cy0+YWN0aXZlLCBleGVjbGlzdHMtPnBlbmRpbmcpOwo+IC0KPiAtCWZvciAocG9ydCA9IGV4
ZWNsaXN0cy0+YWN0aXZlOyAocnEgPSAqcG9ydCk7IHBvcnQrKykKPiAtCQlleGVjbGlzdHNfc2No
ZWR1bGVfb3V0KHJxKTsKPiAtCWV4ZWNsaXN0cy0+YWN0aXZlID0KPiAtCQltZW1zZXQoZXhlY2xp
c3RzLT5pbmZsaWdodCwgMCwgc2l6ZW9mKGV4ZWNsaXN0cy0+aW5mbGlnaHQpKTsKPiArCWZvciAo
cG9ydCA9IHhjaGcoJmV4ZWNsaXN0cy0+YWN0aXZlLCBleGVjbGlzdHMtPnBlbmRpbmcpOyAqcG9y
dDsgcG9ydCsrKQo+ICsJCWV4ZWNsaXN0c19zY2hlZHVsZV9vdXQoKnBvcnQpOwo+ICsJV1JJVEVf
T05DRShleGVjbGlzdHMtPmFjdGl2ZSwKPiArCQkgICBtZW1zZXQoZXhlY2xpc3RzLT5pbmZsaWdo
dCwgMCwgc2l6ZW9mKGV4ZWNsaXN0cy0+aW5mbGlnaHQpKSk7Cj4gICB9Cj4gICAKPiAgIHN0YXRp
YyBpbmxpbmUgdm9pZAo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
