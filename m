Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAC59A1F2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 23:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8FF6EB11;
	Thu, 22 Aug 2019 21:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F77D6EB11
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 21:16:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 14:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,418,1559545200"; d="scan'208";a="203553207"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2019 14:16:12 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
 <op.z6tu8kdjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <30042968-5bf2-4106-ee29-9bf9dab29673@intel.com>
Message-ID: <9512dd31-71c1-5b74-c45b-ca69cfc844a7@intel.com>
Date: Thu, 22 Aug 2019 14:16:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <30042968-5bf2-4106-ee29-9bf9dab29673@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Introduce intel_reg_types.h
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzIwLzE5IDExOjAwIEFNLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+IAo+
IAo+IE9uIDgvMjAvMTkgODo0MiBBTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPj4gT24gVHVl
LCAyMCBBdWcgMjAxOSAwNDowMTo0NyArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAKPj4g
PGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+IHdyb3RlOgo+Pgo+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ190eXBlcy5oIAo+Pj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdfdHlwZXMuaAo+Pj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uODdiY2U4MGRkNWVkCj4+PiAtLS0gL2Rldi9udWxs
Cj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdfdHlwZXMuaAo+Pgo+Pgo+
Pj4gKwo+Pj4gK3R5cGVkZWYgc3RydWN0IHsKPj4+ICvCoMKgwqAgdTMyIHJlZzsKPj4+ICt9IGk5
MTVfcmVnX3Q7Cj4+PiArCj4+PiArI2RlZmluZSBfTU1JTyhyKSAoKGNvbnN0IGk5MTVfcmVnX3Qp
eyAucmVnID0gKHIpIH0pCj4+PiArCj4+PiArI2RlZmluZSBJTlZBTElEX01NSU9fUkVHIF9NTUlP
KDApCj4+PiArCj4+PiArc3RhdGljIGlubGluZSB1MzIgaTkxNV9tbWlvX3JlZ19vZmZzZXQoaTkx
NV9yZWdfdCByZWcpCj4+PiArewo+Pj4gK8KgwqDCoCByZXR1cm4gcmVnLnJlZzsKPj4+ICt9Cj4+
PiArCj4+PiArc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfZXF1YWwoaTkxNV9yZWdf
dCBhLCBpOTE1X3JlZ190IGIpCj4+PiArewo+Pj4gK8KgwqDCoCByZXR1cm4gaTkxNV9tbWlvX3Jl
Z19vZmZzZXQoYSkgPT0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoYik7Cj4+PiArfQo+Pj4gKwo+Pj4g
K3N0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVnKQo+
Pj4gK3sKPj4+ICvCoMKgwqAgcmV0dXJuICFpOTE1X21taW9fcmVnX2VxdWFsKHJlZywgSU5WQUxJ
RF9NTUlPX1JFRyk7Cj4+PiArfQo+Pj4gKwo+Pgo+PiBobW0sIHRoZXJlIGlzIG5vdyBkaXNjb25u
ZWN0aW9uIGJldHdlZW4gcHJlZml4ZXMgaW46Cj4+Cj4+IMKgwqDCoMKgwqAnaW50ZWwnX3JlZ190
eXBlcy5oCj4+IGFuZAo+PiDCoMKgwqDCoMKgJ2k5MTUnX3JlZ190Cj4+IMKgwqDCoMKgwqAnaTkx
NSdfbW1pb19yZWdfeHh4KCkKPj4KPj4gdGhhdCBpcyB3aHkgSSB3YXMgc3VnZ2VzdGluZyB0byBr
ZWVwOgo+Pgo+PiDCoMKgwqDCoMKgJ2k5MTUnX3JlZy5oIChvciBhdCB5b3VyIHByZWZlcmVuY2Ug
J2k5MTUnX3JlZ190eXBlcy5oKQo+PiB3aXRoCj4+IMKgwqDCoMKgwqAnaTkxNSdfcmVnX3QKPj4g
wqDCoMKgwqDCoCdpOTE1J19tbWlvX3JlZ194eHgoKQo+Pgo+PiBhbmQgdXNlIGludGVsX3JlZyog
ZmlsZXMgZm9yIGFjdHVhbCBodyBkZWZpbml0aW9ucy4KPj4KPj4gaWYgd2UgZG9uJ3QgcGxhbiB0
byByZW5hbWUgaTkxNV9yZWdfdCBpbnRvIGludGVsX21taW9fcmVnX3QKPj4gdGhlbiBtYXliZSBi
ZXR0ZXIgdG8gc3RheSB3aXRoIGk5MTVfcmVnX3R5cGVzLmggPwo+Pgo+IAo+IEknZCBwZXJzb25h
bGx5IHByZWZlciB0byBrZWVwIHRoZSBpbnRlbF8qIHByZWZpeCBhbmQgZmxpcCBpOTE1X3JlZ190
IHRvIAo+IGludGVsX3JlZ190IChhcyBhIHNlY29uZCBzdGVwIHRvIGtlZXAgdGhpbmdzIHNpbXBs
ZSkuIEJ1dCBnaXZlbiB0aGUgc2l6ZSAKPiBvZiB0aGUgY2hhbmdlIEknZCBwcmVmZXIgdG8gaGVh
ciBzb21lIG1vcmUgb3BpbmlvbnMgYmVmb3JlIGdvaW5nIHRocm91Z2ggCj4gd2l0aCBpdCwgc28g
SSdsbCB3YWl0IGEgYml0IGZvciBtb3JlIGNvbW1lbnRzLgo+IAo+IERhbmllbGUKPiAKCkNocmlz
LCBKYW5pLCBhcmUgeW91IG9rIGlmIEkgZ290IHdpdGggTWljaGFsJ3Mgc3VnZ2VzdGlvbiBmb3Ig
bm93LCBpLmUuIAppOTE1X3JlZ190eXBlcy5oIGFuZCBpbnRlbF9yZWcuaD8KCkRhbmllbGUKCj4+
IE1pY2hhbAo+Pgo+PiBwcy4gaTkxNS9pbnRlbCBwcmVmaXggcnVsZXMgYXJlIGtpbGxpbmcgbWUg
dG9vIDspCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
