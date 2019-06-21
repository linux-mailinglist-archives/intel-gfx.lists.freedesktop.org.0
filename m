Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8344E4E19A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 10:07:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA4A6E817;
	Fri, 21 Jun 2019 08:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 808356E817
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 08:07:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 01:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,399,1557212400"; d="scan'208";a="165587356"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga006.jf.intel.com with ESMTP; 21 Jun 2019 01:07:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190621073329.1695-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e7796ebd-71c7-c5fa-c9e0-358127ee78d8@linux.intel.com>
Date: Fri, 21 Jun 2019 09:07:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621073329.1695-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Keep context alive
 until after we kick
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

Ck9uIDIxLzA2LzIwMTkgMDg6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgY2FsbCB0byBr
aWNrX3NpYmxpbmdzKCkgZGVyZWZlcmVuY2VzIHRoZSBycS0+Y29udGV4dCwgc28gd2Ugc2hvdWxk
Cj4gbm90IGRyb3Agb3VyIGxvY2FsIHJlZmVyZW5jZSB1bnRpbCBhZnRlcndhcmRzIQo+IAo+IEZp
eGVzOiAyMmI3YTQyNmJiZTEgKCJkcm0vaTkxNS9leGVjbGlzdHM6IFByZWVtcHQtdG8tYnVzeSIp
Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IENj
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA2ICsrKy0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IDY1MjI4MDFhZjJkNi4uYTk0OTNmMmNiMzhmIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtNTQ0LDkgKzU0NCw2IEBAIGV4
ZWNsaXN0c19zY2hlZHVsZV9vdXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gICAJCWludGVs
X2VuZ2luZV9jb250ZXh0X291dChjZS0+aW5mbGlnaHQpOwo+ICAgCQlleGVjbGlzdHNfY29udGV4
dF9zdGF0dXNfY2hhbmdlKHJxLCBJTlRFTF9DT05URVhUX1NDSEVEVUxFX09VVCk7Cj4gICAKPiAt
CQljZS0+aW5mbGlnaHQgPSBOVUxMOwo+IC0JCWludGVsX2NvbnRleHRfcHV0KGNlKTsKPiAtCj4g
ICAJCS8qCj4gICAJCSAqIElmIHRoaXMgaXMgcGFydCBvZiBhIHZpcnR1YWwgZW5naW5lLCBpdHMg
bmV4dCByZXF1ZXN0IG1heQo+ICAgCQkgKiBoYXZlIGJlZW4gYmxvY2tlZCB3YWl0aW5nIGZvciBh
Y2Nlc3MgdG8gdGhlIGFjdGl2ZSBjb250ZXh0Lgo+IEBAIC01NTgsNiArNTU1LDkgQEAgZXhlY2xp
c3RzX3NjaGVkdWxlX291dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAgIAkJICovCj4gICAJ
CWlmIChycS0+ZW5naW5lICE9IGNlLT5lbmdpbmUpCj4gICAJCQlraWNrX3NpYmxpbmdzKHJxLCBj
ZSk7Cj4gKwo+ICsJCWNlLT5pbmZsaWdodCA9IE5VTEw7Cj4gKwkJaW50ZWxfY29udGV4dF9wdXQo
Y2UpOwo+ICAgCX0KPiAgIAo+ICAgCWk5MTVfcmVxdWVzdF9wdXQocnEpOwo+IAoKUmV2aWV3ZWQt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
