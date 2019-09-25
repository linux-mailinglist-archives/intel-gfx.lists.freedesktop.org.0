Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB55BE10C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 17:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3654C6E049;
	Wed, 25 Sep 2019 15:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C276E049
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 15:17:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 08:17:45 -0700
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179842992"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Sep 2019 08:17:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-13-chris@chris-wilson.co.uk>
 <c034c53b-9cb6-0e4b-16c2-4f8239fd3f82@linux.intel.com>
 <156941023434.4979.9785714133344007307@skylake-alporthouse-com>
 <156941064846.4979.4962798584225051716@skylake-alporthouse-com>
 <156941098070.4979.2383476741571584068@skylake-alporthouse-com>
 <156941118978.4979.7148400316604797442@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e725eb3c-0cff-2b17-2e6b-63b5e7542e5b@linux.intel.com>
Date: Wed, 25 Sep 2019 16:17:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156941118978.4979.7148400316604797442@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 12/27] drm/i915: Move request runtime
 management onto gt
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

Ck9uIDI1LzA5LzIwMTkgMTI6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wOS0yNSAxMjoyOTo0MCkKPj4gUXVvdGluZyBDaHJpcyBXaWxzb24gKDIw
MTktMDktMjUgMTI6MjQ6MDgpCj4+PiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0wOS0yNSAx
MjoxNzoxNCkKPj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA5LTI1IDExOjU3OjUz
KQo+Pj4+Pgo+Pj4+PiBJIGFtIHN0aWxsIHNsaWdodGx5IHVuZWFzeSBhYm91dCBoYXZpbmcgcmVx
dWVzdHMsIHdoaWNoIEkgc2VlIGFzIGEgR0VNCj4+Pj4+IGNvbmNlcHQsIGJlIHJldGlyZWQgZnJv
bSBHVCwgYnV0IG9rYXksIGl0J3Mgbm90IHRoZSBtb3N0IGltcG9ydGFudCBpc3N1ZQo+Pj4+PiBh
dCB0aGUgbW9tZW50Lgo+Pj4+Cj4+Pj4gcmVxdWVzdHMgYXJlIG5vdCBhIEdFTSBjb25jZXB0LCB0
aGV5IGJlbG9uZyBpbiBzY2hlZC8gOikKPj4+Cj4+PiBPdmVyYWxsIHRob3VnaCwgdGhlIGNvbXBh
cnRtZW50YWxpc2F0aW9uIGlzIGludGVsX2d0IGJhc2VkLiBPdXIKPj4+IHRpbWVsaW5lcyBhbmQg
dGhlaXIgcG93ZXJtYW5hZ2VtZW50IGlzIGFzc29jaWF0ZWQgd2l0aCB0aGUgZ3QsIHNvIHRoYXQn
cwo+Pj4gd2hlcmUgaXQgZmVlbHMgbmVjZXNzYXJ5IHRvIHByb3ZpZGUgdGhlIGJhY2tncm91bmQg
Y2xlYW51cC4gSWYgd2UgZHJvcAo+Pj4gdGhlIHRpbWVsaW5lLT5ndCwgdGhlbiBJIHRoaW5rIGl0
J3MgdGltZSBmb3IgYSBuZXcgaG9tZT8KPj4KPj4gQWN0dWFsbHkgd291bGQgYSBzaW1wbGUgcy8v
aW50ZWxfZ3RfcmV0aXJlX3RpbWVsaW5lcygpLyBtYWtlIGl0IG1vcmUKPj4gcGFsYXRhYmxlPwo+
IAo+IE9yIGV2ZW4ganVzdCBpbnRlbF9ndF9yZXRpcmUoKQoKVGhpcyBiaXQgaXMgZmluZSBhcyBp
dCBpcy4gQXMgd2UgaGF2ZSBib3RoIHBvaW50ZWQgb3V0IHRoZXJlIGlzIG5hdHVyYWwgCmFuZCB1
bmF2b2lkYWJsZSBpbnRlcnR3aW5pbmcgYmV0d2VlbiBHRU0gYW5kIEdUIGFuZCB0aGF0J3MgY29t
cGxldGVseSAKbmF0dXJhbC4gQXMgbG9uZyBhcyB3ZSBoYXZlIGNsZWFyIEFQSXMgYmV0d2VlbiB0
aGUgdHdvIChzbyB0aG9zZSBoZWxwZXJzIApJIHdhcyBzdWdnZXN0aW5nKSBJIGFtIGhhcHB5LgoK
UmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
