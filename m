Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8427B95F
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 07:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98DA8892F2;
	Wed, 31 Jul 2019 05:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBCD9892F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 05:59:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 22:59:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,328,1559545200"; d="scan'208";a="183561591"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO [10.251.95.57])
 ([10.251.95.57])
 by orsmga002.jf.intel.com with ESMTP; 30 Jul 2019 22:59:44 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190731004902.34672-1-daniele.ceraolospurio@intel.com>
 <20190731004902.34672-5-daniele.ceraolospurio@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bc420e6a-f716-36b9-c57a-f575b08bd4f5@linux.intel.com>
Date: Wed, 31 Jul 2019 06:59:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731004902.34672-5-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/tgl: Report valid VDBoxes with
 SFC capability
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDMxLzA3LzIwMTkgMDE6NDksIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gRnJv
bTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPiAKPiBJbiBHZW4x
MSwgb25seSBldmVuIG51bWJlcmVkICJsb2dpY2FsIiBWREJveGVzIGFyZSBob29rZWQgdXAgdG8g
YSBTRkMKPiAoU2NhbGVyICYgRm9ybWF0IENvbnZlcnRlcikgdW5pdC4gVGhpcyBpcyBub3QgdGhl
IGNhc2UgaW4gVGlnZXJsYWtlLAo+IHdoZXJlIGVhY2ggVkRCb3ggY2FuIGFjY2VzcyBhIFNGQy4K
PiAKPiBXZSB3aWxsIHVzZSB0aGlzIGluZm9ybWF0aW9uIHRvIGRlY2lkZSB3aGVuIHRoZSBTRkMg
dW5pdHMgbmVlZCB0byBiZSByZXNldAo+IGFuZCBhbHNvIHBhc3MgaXQgdG8gdGhlIEd1Qy4KPiAK
PiBCc3BlYzogNDgwNzcKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRo
aWVycnlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8g
PGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IENjOiBWaW5heSBCZWxnYXVta2FyIDx2aW5heS5i
ZWxnYXVta2FyQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgfCAzICsrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uYwo+IGluZGV4IGY5OWM5ZmQ0OTdiMi4uMmEzOWI1MmMzNTgyIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gQEAgLTEwMjIsOCArMTAyMiw5IEBAIHZv
aWQgaW50ZWxfZGV2aWNlX2luZm9faW5pdF9tbWlvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKPiAgIAkJLyoKPiAgIAkJICogSW4gR2VuMTEsIG9ubHkgZXZlbiBudW1iZXJlZCBs
b2dpY2FsIFZEQk9YZXMgYXJlCj4gICAJCSAqIGhvb2tlZCB1cCB0byBhbiBTRkMgKFNjYWxlciAm
IEZvcm1hdCBDb252ZXJ0ZXIpIHVuaXQuCj4gKwkJICogSW4gVEdMIGVhY2ggVkRCT1ggaGFzIGFj
Y2VzcyB0byBhbiBTRkMuCj4gICAJCSAqLwo+IC0JCWlmIChsb2dpY2FsX3ZkYm94KysgJSAyID09
IDApCj4gKwkJaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikgfHwgbG9naWNhbF92ZGJveCsrICUg
MiA9PSAwKQo+ICAgCQkJUlVOVElNRV9JTkZPKGRldl9wcml2KS0+dmRib3hfc2ZjX2FjY2VzcyB8
PSBCSVQoaSk7Cj4gICAJfQo+ICAgCURSTV9ERUJVR19EUklWRVIoInZkYm94IGVuYWJsZTogJTA0
eCwgaW5zdGFuY2VzOiAlMDRseFxuIiwKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKT25seSB1bmNlcnRhaW50eSBpcyBpZiB3ZSB3YW50
IHRvIGNvZGUgdGhlIGNvbmRpdGlvbiBhcyBJY2VsYWtlIApleGNlcHRpb24gaW5zdGVhZCBmb3Ig
bW9yZSBmdXR1cmUgcHJvb2ZpbmcuIExpa2UgaWYgIiFJU19JQ0VMQUtFIHx8IiAKaW5zdGVhZCBv
ZiAiSVNfVElHRVJMQUtFIHx8Ij8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
