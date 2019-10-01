Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCBFC2ECB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 10:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB426E56A;
	Tue,  1 Oct 2019 08:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1346E56A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 08:24:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 01:23:56 -0700
X-IronPort-AV: E=Sophos;i="5.64,570,1559545200"; d="scan'208";a="181619525"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 01:23:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Tue, 01 Oct 2019 10:23:50 +0200
Message-ID: <1757934.CzFbpJMoMc@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20190927160335.10622-1-chris@chris-wilson.co.uk>
References: <20190927160335.10622-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Only unwedge if we can reset
 first
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBGcmlkYXksIFNlcHRlbWJlciAyNywgMjAxOSA2OjAzOjM1IFBNIENFU1Qg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+IFVud2VkZ2luZyB0aGUgR1BVIHJlcXVpcmVzIGEgc3VjY2Vz
c2Z1bCBHUFUgcmVzZXQgYmVmb3JlIHdlIHJlc3RvcmUgdGhlCj4gZGVmYXVsdCBzdWJtaXNzaW9u
LCBvciBlbHNlIHdlIG1heSBzZWUgcmVzaWR1YWwgY29udGV4dCBzd2l0Y2ggZXZlbnRzCj4gdGhh
dCB3ZSB3ZXJlIG5vdCBleHBlY3RpbmcuCj4gCj4gdjI6IFB1bGwgaW4gdGhlIHNwZWNpYWwtY2Fz
ZSByZXNldF9jbG9iYmVyc19kaXNwbGF5LCBhbmQgZXhwbGFpbiB3aHkgaXQKPiBzaG91bGQgYmUg
c2FmZSBpbiB0aGUgY29udGV4dCBvZiB1bndlZGdpbmcuCj4gCj4gdjM6IEp1c3QgZm9yZ2V0IGFs
bCBhYm91dCByZXNldHMgYmVmb3JlIHVud2VkZ2luZyBpZiBpdCB3aWxsIGNsb2JiZXIgdGhlCj4g
ZGlzcGxheTsgcmlzayBpdCBhbGwuCgpBRkFJQ1UsIHRoZSByaXNrIHdlIHRha2UgaXMsIHdoZW4g
cnVubmluZyBvbiBoYXJkd2FyZSB3aXRoIHN1cHBvcnQgZm9yIApleGVjbGlzdHMsIGlmIHJlc2V0
IGNsb2JiZXJzIHRoZSBkaXNwbGF5IHdlIG5ldmVyIHVud2VkZ2UsIGV2ZW4gaWYgbWF5YmUgd2Ug
CmNvdWxkLiAgT24gdGhlIG90aGVyIGhhbmQsIHdoZW4gcnVubmluZyBvbiBoYXJkd2FyZSB3aGlj
aCBkb2Vzbid0IHN1cHBvcnQgCmV4ZWNsaXN0cywgd2Ugb3B0aW1pc3RpY2FsbHkgdW53ZWRnZSB1
bmxlc3Mgd2UgY2FuIHRyeSB0aGUgcmVzZXQgYW5kIGl0IGZhaWxzLgoKQXNzdW1pbmcgdGhlIGlz
c3VlIHdlIGFyZSB0cnlpbmcgdG8gZml4IGhlcmUgaXMgc3BlY2lmaWMgdG8gZXhlY2xpc3RzIG1v
ZGUsIAp0aGF0IHNlZW1zIHRvIGJlIGEgc2FmZSBjaG9pY2UuCgpUaGFua3MsCkphbnVzegoKPiBS
ZXBvcnRlZC1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXgu
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0Bs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8g
PGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ICN2MQo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIHwgOCArKysrKysrLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS8K
Z3QvaW50ZWxfcmVzZXQuYwo+IGluZGV4IGQwODIyNmY1YmVhNS4uMTE3ODFhNjI2Zjc1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4gQEAgLTgwNyw2ICs4MDcsNyBA
QCBzdGF0aWMgYm9vbCBfX2ludGVsX2d0X3Vuc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQo+ICAJc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJmd0LT50aW1lbGlu
ZXM7Cj4gIAlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsOwo+ICAJdW5zaWduZWQgbG9uZyBmbGFn
czsKPiArCWJvb2wgb2s7Cj4gIAo+ICAJaWYgKCF0ZXN0X2JpdChJOTE1X1dFREdFRCwgJmd0LT5y
ZXNldC5mbGFncykpCj4gIAkJcmV0dXJuIHRydWU7Cj4gQEAgLTg1Myw3ICs4NTQsMTIgQEAgc3Rh
dGljIGJvb2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0IAoqZ3QpCj4g
IAl9Cj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ0aW1lbGluZXMtPmxvY2ssIGZsYWdzKTsK
PiAgCj4gLQlpbnRlbF9ndF9zYW5pdGl6ZShndCwgZmFsc2UpOwo+ICsJLyogV2UgbXVzdCByZXNl
dCBwZW5kaW5nIEdQVSBldmVudHMgYmVmb3JlIHJlc3RvcmluZyBvdXIgc3VibWlzc2lvbiAKKi8K
PiArCW9rID0gIUhBU19FWEVDTElTVFMoZ3QtPmk5MTUpOwo+ICsJaWYgKCFJTlRFTF9JTkZPKGd0
LT5pOTE1KS0+Z3B1X3Jlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkpCj4gKwkJb2sgPSBfX2ludGVsX2d0
X3Jlc2V0KGd0LCBBTExfRU5HSU5FUykgPT0gMDsKPiArCWlmICghb2spCj4gKwkJcmV0dXJuIGZh
bHNlOwo+ICAKPiAgCS8qCj4gIAkgKiBVbmRvIG5vcF9zdWJtaXRfcmVxdWVzdC4gV2UgcHJldmVu
dCBhbGwgbmV3IGk5MTUgcmVxdWVzdHMgZnJvbQo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
