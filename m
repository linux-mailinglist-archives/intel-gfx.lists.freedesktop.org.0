Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D1BADD3C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 18:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E020C89D7F;
	Mon,  9 Sep 2019 16:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC81E89D7F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 16:28:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 09:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="183868250"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 09 Sep 2019 09:28:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20190905090949.30424-1-janusz.krzysztofik@linux.intel.com>
 <b9c6a7df-9137-6be0-bc40-209f5c2cb17e@intel.com>
 <156784559237.2967.11063669231433263842@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f027e02f-6d71-8df6-6ff9-00f57fac19ba@intel.com>
Date: Mon, 9 Sep 2019 09:27:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156784559237.2967.11063669231433263842@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't unwedge if reset is disabled
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzcvMTkgMTozOSBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wOS0wNiAyMzoyODowNSkKPj4KPj4KPj4gT24gOS81LzE5
IDI6MDkgQU0sIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToKPj4+IFdoZW4gdHJ5aW5nIHRvIHJl
c2V0IGEgZGV2aWNlIHdpdGggcmVzZXQgY2FwYWJpbGl0eSBkaXNhYmxlZCBvciBub3QKPj4+IHN1
cHBvcnRlZCB3aGlsZSByaW5ncyBhcmUgZnVsbCBvZiByZXF1ZXN0cywgaXQgaGFzIGJlZW4gb2Jz
ZXJ2ZWQgd2hlbgo+Pj4gcnVubmluZyBpbiBleGVjbGlzdHMgc3VibWlzc2lvbiBtb2RlIHRoYXQg
Y29tbWFuZCBzdHJlYW0gYnVmZmVyIHRhaWwKPj4+IHRlbmRzIHRvIGJlIGluY3JlbWVudGVkIGJ5
IGFwcGFyZW50bHkgc3RpbGwgcnVubmluZyBHUFUgcmVnYXJkbGVzcyBvZgo+Pj4gYWxsIHJlcXVl
c3RzIGJlaW5nIGFscmVhZHkgY2FuY2VsbGVkIGFuZCBjb21tYW5kIHN0cmVhbSBidWZmZXIgcG9p
bnRlcnMKPj4+IHJlc2V0LiAgQXMgYSByZXN1bHQsIGtlcm5lbCBwYW5pYyBvbiBOVUxMIHBvaW50
ZXIgZGVyZWZlcmVuY2Ugb2NjdXJzCj4+PiB3aGVuIGEgdHJhY2VfcG9ydHMoKSBoZWxwZXIgaXMg
Y2FsbGVkIHdpdGggY29tbWFuZCBzdHJlYW0gYnVmZmVyIHRhaWwKPj4+IGluY3JlbWVudGVkIGJ1
dCByZXF1ZXN0IHBvaW50ZXJzIGJlaW5nIE5VTEwgZHVyaW5nIGZpbmFsCj4+PiBfX2ludGVsX2d0
X3NldF93ZWRnZWQoKSBvcGVyYXRpb24gY2FsbGVkIGZyb20gaW50ZWxfZ3RfcmVzZXQoKS4KPj4+
Cj4+PiBTa2lwIGFjdHVhbCByZXNldCBwcm9jZWR1cmUgaWYgcmVzZXQgaXMgZGlzYWJsZWQgb3Ig
bm90IHN1cHBvcnRlZC4KPj4KPj4gVGhpcyBsYXN0IHNlbnRlbmNlIGlzIGEgYml0IGNvbmZ1c2lu
Zy4gWW91J3JlIG5vdCBza2lwcGluZyB0aGUgcmVzZXQKPj4gcHJvY2VkdXJlLCB5b3UncmUgc2tp
cHBpbmcgdGhlIGF0dGVtcHQgb2YgdW53ZWRnaW5nIGFuZCByZXNldHRpbmcgYWdhaW4KPj4gYWZ0
ZXIgYSByZXNldCAmIHdlZGdlIGFscmVhZHkgaGFwcGVuZWQuCj4gCj4gTG9zcyBvZiBlbWFpbCBv
dmVyIHRoZSBsYXN0IHdlZWssIHNvIGp1bXBpbmcgaW4gYXQgdGhlIGVuZC4gTXkgZ3V0Cj4gcmVz
cG9uc2UgaXMgdGhhdCB0aGlzIGlzIHN0aWxsIGp1c3QgcGFwZXJpbmcgb3ZlciB0aGUgYnVnLCBh
cyB3aGF0IHlvdQo+IHNheSBhYm92ZSBtYWtlcyBubyBzZW5zZS4KPiAtQ2hyaXMKPiAKClRoZSBp
c3N1ZSBoZXJlIGlzIHRoYXQgaWYgd2UgZG9uJ3QgcmVzZXQgdGhlIEhXIHdoZW4gd2Ugd2VkZ2Us
IHdoYXRldmVyIAp3YXMgcnVubmluZyBvbiB0aGUgZW5naW5lcyBtaWdodCBjb21wbGV0ZSBhdCBh
bnkgcG9pbnQgYWZ0ZXIgdGhhdCwgd2hpY2ggCmdlbmVyYXRlcyBhbiB1bmV4cGVjdGVkIHBvc3Qt
d2VkZ2UgQ1NCIGV2ZW50IHRoYXQgd2UgZG9uJ3QgaGFuZGxlIApncmFjZWZ1bGx5IHdoZW4gd2Ug
dW53ZWRnZS4gVGhlIENTQiBldmVudCBtaWdodCBhcnJpdmUgYXQgYW55IHRpbWUgKGV2ZW4gCmFm
dGVyIHRoZSB1bndlZGdlKSBvciBjYXVzZSB3ZWlyZCBiZWhhdmlvciBvbiB0aGUgZmlyc3QgcmUt
c3VibWlzc2lvbiwgCnNvIHRyeWluZyB0byBoYW5kbGUgaXQgaXMgbm90IHdvcnRoIHRoZSBlZmZv
cnQgSU1PIHNpbmNlIGhhdmluZyByZXNldCAKZGlzYWJsZWQgaXMgYSBkZWJ1Zy1vbmx5IHVzZS1j
YXNlLgoKRGFuaWVsZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
