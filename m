Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A84EFDA59E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 08:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969BE8986D;
	Thu, 17 Oct 2019 06:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428558986D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 06:30:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 23:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="208574126"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.5.213])
 by fmsmga001.fm.intel.com with ESMTP; 16 Oct 2019 23:30:20 -0700
MIME-Version: 1.0
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris.p.wilson@intel.com>
In-Reply-To: <20191017061106.22640-3-umesh.nerlige.ramappa@intel.com>
References: <20191017061106.22640-1-umesh.nerlige.ramappa@intel.com>
 <20191017061106.22640-3-umesh.nerlige.ramappa@intel.com>
Message-ID: <157129381882.4427.3317408143085236930@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 17 Oct 2019 07:30:18 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/perf: enable OAR context
 save/restore of performance counters
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgKDIwMTktMTAtMTcgMDc6MTE6MDYpCj4gK3N0
YXRpYyBpbnQgZ2VuMTJfZW1pdF9vYXJfY29uZmlnKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwg
Ym9vbCBlbmFibGUpCj4gK3sKPiArICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ICsg
ICAgICAgdTMyICpjczsKPiArICAgICAgIGludCBlcnIgPSAwOwo+ICsKPiArICAgICAgIHJxID0g
aTkxNV9yZXF1ZXN0X2NyZWF0ZShjZSk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKHJxKSkKPiArICAg
ICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocnEpOwo+ICsKPiArICAgICAgIGNzID0gaW50ZWxf
cmluZ19iZWdpbihycSwgNCk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGNzKSkgewo+ICsgICAgICAg
ICAgICAgICBlcnIgPSBQVFJfRVJSKGNzKTsKPiArICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4g
KyAgICAgICB9Cj4gKwo+ICsgICAgICAgKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsK
PiArICAgICAgICpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19DT05URVhUX0NPTlRS
T0woY2UtPmVuZ2luZS0+bW1pb19iYXNlKSk7Cj4gKyAgICAgICAqY3MrKyA9IGludGVsX2xyY19t
YWtlX2N0eF9jb250cm9sKGNlLT5lbmdpbmUpIHwKCkl0J3MgYSBtYXNrZWQgdXBkYXRlLiBJdCBv
bmx5IGNoYW5nZXMgdGhlIGJpdCBpbiB0aGUgcmVnaXN0ZXIgaWRlbnRpZmllZApieSB0aGUgbWFz
ay4KCipjcysrID0gX01BU0tFRF9GSUVMRChHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFC
TEUsCgkJICAgICAgZW5hYmxlID8gR0VOMTJfQ1RYX0NUUkxfT0FSX0NPTlRFWFRfRU5BQkxFIDog
MCk7CgoKPiArICAgICAgICAgICAgICAgKGVuYWJsZSA/Cj4gKyAgICAgICAgICAgICAgICBfTUFT
S0VEX0JJVF9FTkFCTEUoR0VOMTJfQ1RYX0NUUkxfT0FSX0NPTlRFWFRfRU5BQkxFKSA6Cj4gKyAg
ICAgICAgICAgICAgICBfTUFTS0VEX0JJVF9ESVNBQkxFKEdFTjEyX0NUWF9DVFJMX09BUl9DT05U
RVhUX0VOQUJMRSkpOwo+ICsgICAgICAgKmNzKysgPSBNSV9OT09QOwo+ICsKPiArICAgICAgIGlu
dGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOwo+ICsKPiArb3V0Ogo+ICsgICAgICAgaTkxNV9yZXF1
ZXN0X2FkZChycSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIGVycjsKPiArfQoKPiAgLyoKPiAgICog
TWFuYWdlcyB1cGRhdGluZyB0aGUgcGVyLWNvbnRleHQgYXNwZWN0cyBvZiB0aGUgT0Egc3RyZWFt
Cj4gICAqIGNvbmZpZ3VyYXRpb24gYWNyb3NzIGFsbCBjb250ZXh0cy4KPiBAQCAtMjMxNiw2ICsy
Mzc1LDE3IEBAIHN0YXRpYyBpbnQgbHJjX2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoc3RydWN0IGk5
MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4g
ZXJyOwo+ICAgICAgICAgICAgICAgICB9Cj4gIAo+ICsgICAgICAgICAgICAgICAvKgo+ICsgICAg
ICAgICAgICAgICAgKiBGb3IgR2VuMTIsIHBlcmZvcm1hbmNlIGNvdW50ZXJzIGFyZSBjb250ZXh0
Cj4gKyAgICAgICAgICAgICAgICAqIHNhdmVkL3Jlc3RvcmVkLiBPbmx5IGVuYWJsZSBpdCBmb3Ig
dGhlIGNvbnRleHQgdGhhdAo+ICsgICAgICAgICAgICAgICAgKiByZXF1ZXN0ZWQgdGhpcy4KPiAr
ICAgICAgICAgICAgICAgICovCj4gKyAgICAgICAgICAgICAgIGlmIChjdHggPT0gc3RyZWFtLT5j
dHggJiYgSVNfR0VOKGk5MTUsIDEyKSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9
IGdlbjEyX2NvbmZpZ3VyZV9jb250ZXh0X29hcihjdHgsIG9hX2NvbmZpZyAhPSBOVUxMKTsKCllv
dSBoYXZlIHRoZSBpbnRlbF9jb250ZXh0IHBpbm5lZCBhbHJlYWR5IGFzIHN0cmVhbS0+cGlubmVk
X2N0eC4KLUNocmlzCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBDb3Jwb3JhdGlvbiAoVUspIExpbWl0ZWQK
UmVnaXN0ZXJlZCBOby4gMTEzNDk0NSAoRW5nbGFuZCkKUmVnaXN0ZXJlZCBPZmZpY2U6IFBpcGVy
cyBXYXksIFN3aW5kb24gU04zIDFSSgpWQVQgTm86IDg2MCAyMTczIDQ3CgpUaGlzIGUtbWFpbCBh
bmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IK
dGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3Ig
ZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJl
IG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFu
ZCBkZWxldGUgYWxsIGNvcGllcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
