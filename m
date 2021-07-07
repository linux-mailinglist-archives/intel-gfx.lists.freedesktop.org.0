Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 621433BE057
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 02:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F876E7E2;
	Wed,  7 Jul 2021 00:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11C86E7DD;
 Wed,  7 Jul 2021 00:40:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209038526"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="209038526"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 17:40:15 -0700
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="427760290"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 17:40:11 -0700
Date: Wed, 7 Jul 2021 06:11:51 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210707004151.GC26377@intel.com>
References: <20210705135310.1502437-1-matthew.auld@intel.com>
 <20210705135310.1502437-4-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705135310.1502437-4-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915/uapi: convert
 drm_i915_gem_set_domain to kernel doc
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
Cc: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Kenneth Graunke <kenneth@whitecape.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMS0wNy0wNSBhdCAxNDo1MzowOSArMDEwMCwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IENv
bnZlcnQgYWxsIHRoZSBkcm1faTkxNV9nZW1fc2V0X2RvbWFpbiBiaXRzIHRvIHByb3BlciBrZXJu
ZWwgZG9jLgoKTEdUTS4KClJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0Bp
bnRlbC5jb20+Cj4gCj4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
Pgo+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5j
b20+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5j
b20+Cj4gQ2M6IEpvcmRhbiBKdXN0ZW4gPGpvcmRhbi5sLmp1c3RlbkBpbnRlbC5jb20+Cj4gQ2M6
IEtlbm5ldGggR3JhdW5rZSA8a2VubmV0aEB3aGl0ZWNhcGUub3JnPgo+IENjOiBKYXNvbiBFa3N0
cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+Cj4gQ2M6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNv
bT4KPiAtLS0KPiAgaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oIHwgMzQgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9pOTE1
X2RybS5oIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCj4gaW5kZXggYTRmYWNlZWI4YzMy
Li42Zjk0ZTVlNzU2OWEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5o
Cj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCj4gQEAgLTg4MCwxNCArODgwLDQy
IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fbW1hcF9vZmZzZXQgewo+ICAJX191NjQgZXh0ZW5zaW9u
czsKPiAgfTsKPiAgCj4gKwo+ICsvKioKPiArICogc3RydWN0IGRybV9pOTE1X2dlbV9zZXRfZG9t
YWluIC0gQWRqdXN0IHRoZSBvYmplY3RzIHdyaXRlIG9yIHJlYWQgZG9tYWluLCBpbgo+ICsgKiBw
cmVwYXJhdGlvbiBmb3IgYWNjZXNzaW5nIHRoZSBwYWdlcyB2aWEgc29tZSBDUFUgZG9tYWluLgo+
ICsgKgo+ICsgKiBTcGVjaWZ5aW5nIGEgbmV3IHdyaXRlIG9yIHJlYWQgZG9tYWluIHdpbGwgZmx1
c2ggdGhlIG9iamVjdCBvdXQgb2YgdGhlCj4gKyAqIHByZXZpb3VzIGRvbWFpbihpZiByZXF1aXJl
ZCksIGJlZm9yZSB0aGVuIHVwZGF0aW5nIHRoZSBvYmplY3RzIGRvbWFpbgo+ICsgKiB0cmFja2lu
ZyB3aXRoIHRoZSBuZXcgZG9tYWluLgo+ICsgKgo+ICsgKiBOb3RlIHRoaXMgbWlnaHQgaW52b2x2
ZSB3YWl0aW5nIGZvciB0aGUgb2JqZWN0IGZpcnN0IGlmIGl0IGlzIHN0aWxsIGFjdGl2ZSBvbgo+
ICsgKiB0aGUgR1BVLgo+ICsgKgo+ICsgKiBTdXBwb3J0ZWQgdmFsdWVzIGZvciBAcmVhZF9kb21h
aW5zIGFuZCBAd3JpdGVfZG9tYWluOgo+ICsgKgo+ICsgKgktIEk5MTVfR0VNX0RPTUFJTl9XQzog
VW5jYWNoZWQgd3JpdGUtY29tYmluZWQgZG9tYWluCj4gKyAqCS0gSTkxNV9HRU1fRE9NQUlOX0NQ
VTogQ1BVIGNhY2hlIGRvbWFpbgo+ICsgKgktIEk5MTVfR0VNX0RPTUFJTl9HVFQ6IE1hcHBhYmxl
IGFwZXJ0dXJlIGRvbWFpbgo+ICsgKgo+ICsgKiBBbGwgb3RoZXIgZG9tYWlucyBhcmUgcmVqZWN0
ZWQuCj4gKyAqCj4gKyAqLwo+ICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3NldF9kb21haW4gewo+IC0J
LyoqIEhhbmRsZSBmb3IgdGhlIG9iamVjdCAqLwo+ICsJLyoqIEBoYW5kbGU6IEhhbmRsZSBmb3Ig
dGhlIG9iamVjdC4gKi8KPiAgCV9fdTMyIGhhbmRsZTsKPiAgCj4gLQkvKiogTmV3IHJlYWQgZG9t
YWlucyAqLwo+ICsJLyoqCj4gKwkgKiBAcmVhZF9kb21haW5zOiBOZXcgcmVhZCBkb21haW5zLgo+
ICsJICovCj4gIAlfX3UzMiByZWFkX2RvbWFpbnM7Cj4gIAo+IC0JLyoqIE5ldyB3cml0ZSBkb21h
aW4gKi8KPiArCS8qKgo+ICsJICogQHdyaXRlX2RvbWFpbjogTmV3IHdyaXRlIGRvbWFpbi4KPiAr
CSAqCj4gKwkgKiBOb3RlIHRoYXQgaGF2aW5nIHNvbWV0aGluZyBpbiB0aGUgd3JpdGUgZG9tYWlu
IGltcGxpZXMgaXQncyBpbiB0aGUKPiArCSAqIHJlYWQgZG9tYWluLCBhbmQgb25seSB0aGF0IHJl
YWQgZG9tYWluLgo+ICsJICovCj4gIAlfX3UzMiB3cml0ZV9kb21haW47Cj4gIH07Cj4gIAo+IC0t
IAo+IDIuMjYuMwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
