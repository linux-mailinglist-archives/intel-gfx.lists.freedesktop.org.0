Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB904C36B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 00:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C4666E47D;
	Wed, 19 Jun 2019 22:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCE36E47D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 22:06:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 15:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="162164893"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jun 2019 15:06:08 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190617180935.505-1-daniele.ceraolospurio@intel.com>
 <20190617180935.505-5-daniele.ceraolospurio@intel.com>
 <3bf6ae46-ac6d-b5f5-7e2e-888819bdbc6b@linux.intel.com>
 <dc4f1357-baa0-4e1e-9b3b-adcf6dacc279@intel.com>
Message-ID: <aadf2e45-fae4-ebe9-9b08-19a1a4b06312@intel.com>
Date: Wed, 19 Jun 2019 15:05:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <dc4f1357-baa0-4e1e-9b3b-adcf6dacc279@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: skip forcewake actions on
 forcewake-less uncore
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

PHNuaXA+Cgo+Pj4gwqAgfQo+Pj4gwqAgdm9pZCBpbnRlbF91bmNvcmVfZmluaV9tbWlvKHN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSkKPj4+IMKgIHsKPj4+IC3CoMKgwqAgaW9zZl9tYmlfcHVu
aXRfYWNxdWlyZSgpOwo+Pj4gLcKgwqDCoCBpb3NmX21iaV91bnJlZ2lzdGVyX3BtaWNfYnVzX2Fj
Y2Vzc19ub3RpZmllcl91bmxvY2tlZCgKPj4+IC3CoMKgwqDCoMKgwqDCoCAmdW5jb3JlLT5wbWlj
X2J1c19hY2Nlc3NfbmIpOwo+Pj4gLcKgwqDCoCBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3Jlc2V0
KHVuY29yZSk7Cj4+PiAtwqDCoMKgIGlvc2ZfbWJpX3B1bml0X3JlbGVhc2UoKTsKPj4+ICvCoMKg
wqAgaWYgKGludGVsX3VuY29yZV9oYXNfZm9yY2V3YWtlKHVuY29yZSkpIHsKPj4KPj4gVG8gYXZv
aWQgaHlwaG90ZXRpY2FsIG9ibm94aW91cyBkaWZmcyBpbiB0aGUgZnV0dXJlLCBsaWtlIHRoZSBv
bmUgZm9yIAo+PiBpbnRlbF91bmNvcmVfcHJ1bmVfbW1pb19kb21haW5zIGFib3ZlIGluIHRoaXMg
cGF0Y2gsIG1heWJlIGludmVydCB0aGlzIAo+PiB0byBlYXJseSByZXR1cm4gc3RyYWlnaHQgYXdh
eS4KPiAKCkp1c3QgcmVhbGl6ZWQgdGhhdCBJIGhhZG4ndCBkb25lIHRoYXQgaW4gdGhlIGZpcnN0
IHBsYWNlIGJlY2F1c2UgdGhlcmUgCmlzIGEgY2FsbCB0byB1bmNvcmVfbW1pb19jbGVhbnVwKCkg
YmVsb3cgdGhhdCB3ZSBuZWVkIHRvIGFsd2F5cyBwZXJmb3JtIAphbmQgb24gcGxhdGZvcm1zIHdp
dGggZm9yY2V3YWtlIGl0IGhhcyB0byBiZSBkb25lIGFmdGVyIGNsZWFyaW5nIHRoYXQsIApzbyBj
YW4ndCByZXR1cm4gZWFybHkuCgpEYW5pZWxlCgo+IHdpbGwgZG8uCj4gCj4gRGFuaWVsZQo+IAo+
Pgo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlvc2ZfbWJpX3B1bml0X2FjcXVpcmUoKTsKPj4+ICvCoMKg
wqDCoMKgwqDCoCBpb3NmX21iaV91bnJlZ2lzdGVyX3BtaWNfYnVzX2FjY2Vzc19ub3RpZmllcl91
bmxvY2tlZCgKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZ1bmNvcmUtPnBtaWNfYnVzX2Fj
Y2Vzc19uYik7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9yZXNl
dCh1bmNvcmUpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlvc2ZfbWJpX3B1bml0X3JlbGVhc2UoKTsK
Pj4+ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gwqDCoMKgwqDCoCB1bmNvcmVfbW1pb19jbGVhbnVwKHVu
Y29yZSk7Cj4+PiDCoCB9Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
