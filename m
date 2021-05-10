Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73744377F41
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E197D6E0A5;
	Mon, 10 May 2021 09:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DF16E0A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 09:21:03 +0000 (UTC)
IronPort-SDR: C7jWyUiKmyMAR+bUy+tsVbmCDQtFgIJHL6vEhLmUYFuUrNux9raG6+p3/sNJHzN5bmcEiLsdBE
 0rtzE+R3yprQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9979"; a="199222220"
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="199222220"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:21:02 -0700
IronPort-SDR: AjtKKWvgGRFaNaf6WKMYMa6OWI/dn7j/oTcS3BXthHP8LNsUj/ufI8xQvX1wnmb12F/5pRWVYp
 ZDBlfFDC9/pQ==
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="536314848"
Received: from agriffin-mobl1.ger.corp.intel.com (HELO [10.213.193.195])
 ([10.213.193.195])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:21:01 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210507144251.376538-1-janusz.krzysztofik@linux.intel.com>
 <2abba1b7-ac7b-a983-39af-87b1b86b765a@linux.intel.com>
 <23575374.kmuVQn2iE0@jkrzyszt-mobl1.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1641c53a-099d-5b93-e610-2771a005a525@linux.intel.com>
Date: Mon, 10 May 2021 10:20:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <23575374.kmuVQn2iE0@jkrzyszt-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do release kernel context if
 breadcrumb measure fails
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzA1LzIwMjEgMTA6MTUsIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90ZToKPiBIaSBUdnJ0
a28sCj4gCj4gT24gcG9uaWVkemlhxYJlaywgMTAgbWFqYSAyMDIxIDExOjE0OjQ2IENFU1QgVHZy
dGtvIFVyc3VsaW4gd3JvdGU6Cj4+Cj4+IE9uIDA3LzA1LzIwMjEgMTU6NDIsIEphbnVzeiBLcnp5
c3p0b2ZpayB3cm90ZToKPj4+IENvbW1pdCBmYjU5NzBkYTFiNDIgKCJkcm0vaTkxNS9ndDogVXNl
IHRoZSBrZXJuZWxfY29udGV4dCB0byBtZWFzdXJlIHRoZQo+Pj4gYnJlYWRjcnVtYiBzaXplIikg
cmVvcmRlcmVkIHNvbWUgb3BlcmF0aW9ucyBpbnNpZGUgZW5naW5lX2luaXRfY29tbW9uKCkKPj4+
IGFuZCBhZGRlZCBhbiBlcnJvciB1bndpbmQgcGF0aCB0byB0aGF0IGZ1bmN0aW9uLiAgSW4gdGhh
dCBwYXRoLCBhCj4+PiByZWZlcmVuY2UgdG8gYSBrZXJuZWwgY29udGV4dCBjYW5kaWRhdGUgc3Vw
cG9zZWQgdG8gYmUgcmVsZWFzZWQgb24gZXJyb3IKPj4+IHdhcyBwdXQsIGJ1dCB0aGUgY29udGV4
dCwgcGlubmVkIHdoZW4gY3JlYXRlZCwgd2FzIG5vdCB1bnBpbm5lZCBmaXJzdC4KPj4+IEZpeCBp
dCBieSByZXBsYWNpbmcgaW50ZWxfY29udGV4dF9wdXQoKSB3aXRoIGRlc3Ryb3lfcGlubmVkX2Nv
bnRleHQoKQo+Pj4gaW50cm9kdWNlZCBsYXRlciBieSBjb21taXQgYjQzNmE1ZjhiNmM4ICgiZHJt
L2k5MTUvZ3Q6IFRyYWNrIGFsbCB0aW1lbGluZXMKPj4+IGNyZWF0ZWQgdXNpbmcgdGhlIEhXU1Ai
KS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5
c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jIHwgMiArLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMKPj4+IGluZGV4IDZkYmRiZGUwMGYxNC4uZWJhMmRhOTY3OWE1IDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4+PiBAQCAtODk4
LDcgKzg5OCw3IEBAIHN0YXRpYyBpbnQgZW5naW5lX2luaXRfY29tbW9uKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKPj4+ICAgIAlyZXR1cm4gMDsKPj4+ICAgIAo+Pj4gICAgZXJyX2Nv
bnRleHQ6Cj4+PiAtCWludGVsX2NvbnRleHRfcHV0KGNlKTsKPj4+ICsJZGVzdHJveV9waW5uZWRf
Y29udGV4dChjZSk7Cj4+PiAgICAJcmV0dXJuIHJldDsKPj4+ICAgIH0KPj4+ICAgIAo+Pj4KPj4K
Pj4gUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Cj4+Cj4+IEZvdW5kIGJ5IHNvbWUgdGVzdCBvciBjb2RlIGluc3BlY3Rpb24/Cj4gCj4gQ29kZSBp
bnNwZWN0aW9uLgoKQ29vbC4gSXQgd2FzIGFsbCBncmVlbiBvbiB0aGUgQ0kgZnJvbnQgc28gSSBh
bSBwdXNoaW5nIGl0IGFzIHdlIHNwZWFrLiAKVGhhbmtzIQoKUmVnYXJkcywKClR2cnRrbwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
