Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 757B76306E
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 08:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A5589D44;
	Tue,  9 Jul 2019 06:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D74789D44
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 06:30:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 23:30:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,469,1557212400"; d="scan'208";a="170504398"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by orsmga006.jf.intel.com with ESMTP; 08 Jul 2019 23:30:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190708113038.19251-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e5bf4e4f-f6aa-80b3-c212-34bb5b0b2d8c@linux.intel.com>
Date: Tue, 9 Jul 2019 07:30:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190708113038.19251-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fill in a little more
 of the dummy fence
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

Ck9uIDA4LzA3LzIwMTkgMTI6MzAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbml0aWFsaXNlIHRo
ZSBkbWFfZmVuY2UgaW5uYXJkcyBpbiBwcmVwYXJhdGlvbiBmb3IgbWFraW5nCj4gZG1hX2ZlbmNl
X3NpZ25hbCgpIGFsd2F5cyBjaGVjayB0aGUgY2FsbGJhY2sgbGlzdC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgNCArKysrCj4gICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMK
PiBpbmRleCAxMWY0OTA1MDJjYTYuLjY3MmJkYWE2NjU0MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCj4gQEAgLTg1OSw2ICs4NTksMTAgQEAgc3RhdGljIHN0cnVj
dCBpOTE1X3JlcXVlc3QgKmR1bW15X3JlcXVlc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQo+ICAgCWk5MTVfc3dfZmVuY2VfaW5pdCgmcnEtPnN1Ym1pdCwgZHVtbXlfbm90aWZ5KTsK
PiAgIAlzZXRfYml0KEk5MTVfRkVOQ0VfRkxBR19BQ1RJVkUsICZycS0+ZmVuY2UuZmxhZ3MpOwo+
ICAgCj4gKwlzcGluX2xvY2tfaW5pdCgmcnEtPmxvY2spOwo+ICsJcnEtPmZlbmNlLmxvY2sgPSAm
cnEtPmxvY2s7Cj4gKwlJTklUX0xJU1RfSEVBRCgmcnEtPmZlbmNlLmNiX2xpc3QpOwo+ICsKPiAg
IAlyZXR1cm4gcnE7Cj4gICB9Cj4gICAKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
