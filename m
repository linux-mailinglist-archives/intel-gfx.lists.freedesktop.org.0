Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 891BE5812C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 13:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF1ED89C5E;
	Thu, 27 Jun 2019 11:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7E5689C5E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 11:11:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 04:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="189024064"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 04:10:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-7-lionel.g.landwerlin@intel.com>
 <156162694988.20851.13994445934808199507@skylake-alporthouse-com>
 <16ebcbdf-4358-62ca-9aad-a6d5dfe573e0@intel.com>
 <156163314737.8887.3106268670592572638@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b7edb48f-d3b0-f686-7cd0-a15eee8ca358@intel.com>
Date: Thu, 27 Jun 2019 14:10:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156163314737.8887.3106268670592572638@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915: add syncobj timeline
 support
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

T24gMjcvMDYvMjAxOSAxMzo1OSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMjcgMTE6NDk6NTYpCj4+IFRoYW5rcyBhIGxvdCBmb3IgeW91
ciBjb21tZW50cy4KPj4KPj4gT24gMjcvMDYvMjAxOSAxMjoxNSwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+Pj4+ICsgICAgICAgICAgICAgICBzeW5jb2JqID0gZHJtX3N5bmNvYmpfZmluZChlYi0+Zmls
ZSwgdXNlcl9mZW5jZS5oYW5kbGUpOwo+Pj4+ICsgICAgICAgICAgICAgICBpZiAoIXN5bmNvYmop
IHsKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICBEUk1fREVCVUcoIkludmFsaWQgc3luY29i
aiBoYW5kbGUgcHJvdmlkZWRcbiIpOwo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9
IC1FSU5WQUw7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+Pj4gKyAg
ICAgICAgICAgICAgIH0KPj4+PiArCj4+Pj4gKyAgICAgICAgICAgICAgIGlmICh1c2VyX2ZlbmNl
LmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1dBSVQpIHsKPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICBmZW5jZSA9IGRybV9zeW5jb2JqX2ZlbmNlX2dldChzeW5jb2JqKTsKPj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICBpZiAoIWZlbmNlKSB7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBEUk1fREVCVUcoIlN5bmNvYmogaGFuZGxlIGhhcyBubyBmZW5jZVxuIik7Cj4+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkcm1fc3luY29ial9wdXQoc3luY29i
aik7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRUlOVkFMOwo+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnI7Cj4+Pj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgfQo+Pj4+ICsKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICBl
cnIgPSBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubygmZmVuY2UsIHBvaW50KTsKPj4+IElzIGFu
IGltcG9ydGVkIHN5bmNvYmogYWx3YXlzIGEgZmVuY2UtY2hhaW4/Cj4+Pgo+Pj4gZHJtX3N5bmNv
YmpfaW1wb3J0X3N5bmNfZmlsZV9mZW5jZSgpIHNheXMgbm8uCj4+Cj4+IGRybV9zeW5jb2JqX2lt
cG9ydF9zeW5jX2ZpbGVfZmVuY2UoKSB3b3VsZCB0dXJuIGEgdGltZWxpbmUgc2VtYXBob3JlCj4+
IGludG8gYSBiaW5hcnkgc2VtYXBob3JlIGJ5IGJyZWFraW5nIHRoZSBjaGFpbi4KPj4KPj4gZHJt
X3N5bmNvYmpfdHJhbnNmZXJfdG9fdGltZWxpbmUoKSBpcyB3aGF0IHlvdSBzaG91bGQgdXNlIGlm
IHlvdSB3aXNoIHRvCj4+IGltcG9ydCBhIGZlbmNlIGludG8gdGhlIHRpbWVsaW5lLgo+IFdoYXQg
SSBhbSB3b3JyeWluZyBhYm91dCBpcyB0aGUgbGVnYWxpdHkgb2YgdGhlIHVzZXIgcGFzc2luZyBp
biBhCj4gbm9uLXRpbWVsaW5lIGZlbmNlIGhlcmUuIEl0IGxvb2tzIGxpa2UgdGhlIGludGVyZmFj
ZSB3aWxsIGl0c2VsZgo+IGdlbmVyYXRlIG5vbi10aW1lbGluZSBmZW5jZXMuLi4gT2gsIGlnbm9y
ZSBtZSwgSSBvdmVybG9va2VkIHRoZSBlYXJseQo+IHJldHVybiBmb3IgIXNlcW5vLgoKCkkgd3Jv
dGUgdGhhdCBkb3duIGluIG15IHJlcGx5IHRoZW4gZGVsZXRlZCBpdCA7KQoKCj4KPiBTbyB0aW1l
bGluZXMgYXJlIG5vdCBhbGxvd2VkIHRvIHVzZSAwLiBFdmVyLiBUaGF0J3MgYSBiaXQgbW9yZSBv
ZiBhIGhhcmQKPiBydWxlIHRoYW4gaW1wbGllZCBieSB0aGUgdWFwaS5oIDopCgoKQW52IHR1cm5z
IGFueSBzaWduYWwvd2FpdCBvbiAwIGludG8gTk9PUCwgdGhvc2UgbmV2ZXIgcmVhY2ggaTkxNS4K
ClRoZSBzcGVjIGlzIHByZXR0eSBjbGVhciB0aGF0IHBvaW50IDAgaXMgYWx3YXlzIHNpZ25hbGVk
LgoKCkknbGwgYWRkIGEgc3RhdGVtZW50IHdpdGggcmVnYXJkIHRvIHRpbWVsaW5lIHNlbWFwaG9y
ZXMuCgoKVGhhbmtzIQoKCi1MaW9uZWwKCgo+Cj4+Pj4gQEAgLTEwMTQsOSArMTAyMCw0MCBAQCBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfZmVuY2Ugewo+Pj4+ICAgIH07Cj4+Pj4gICAgCj4+Pj4g
ICAgZW51bSBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcl9leHQgewo+Pj4+ICsgICAgICAgLyoqCj4+
Pj4gKyAgICAgICAgKiBUaGlzIGlkZW50aWZpZXIgaXMgYXNzb2NpYXRlZCB3aXRoCj4+Pj4gKyAg
ICAgICAgKiBkcm1faTkxNV9nZW1fZXhlY2J1Zl9leHRfdGltZWxpbmVfZmVuY2VzLgo+Pj4gT3Ig
anVzdCAiU2VlIGRybV9pOTE1X2dlbV9leGVjYnVmX2V4dF90aW1lbGluZV9mZW5jZXMKPj4+PiAr
ICAgICAgICAqLwo+Pj4+ICsgICAgICAgRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVJfRVhUX1RJTUVM
SU5FX0ZFTkNFUywKPj4+ICAgID0gMAo+Pj4gZG9uJ3QgbGVhdmUgaXQgdXAgdG8gdGhlIGNvbXBp
bGVyLgo+Pgo+PiBTaG91bGQgd2Ugc2V0IGV2ZXJ5IHNpbmdsZSBpdGVtIGluIHRoZSBlbnVtIG9y
IGp1c3QgdGhlIGZpcnN0IG9uZT8KPiBXZSd2ZSBiZWVuIHNldHRpbmcgdGhlIGZpcnN0IG9uZSB0
byBiZSBleHBsaWNpdCAoZG91Ymx5IHVzZWZ1bCB3aGVuIHdlCj4gd2FudCBhIGNlcnRhaW4gdmFs
dWUgdG8gYmUgZG9jdW1lbnRlZCB0byBiZSAwKSwgYW5kIHRoZW4gZ2Fwcy4gVGhlIHNwZWMKPiBz
YXlzIHRoYXQgZWFjaCBpZCBpcyBpbmNyZW1lbnRlZCBieSBvbmUgZnJvbSB0aGUgcHJldmlvdXMs
IGl0J3MganVzdCB0aGUKPiBmaXJzdCB2YWx1ZSBhbmQgbmF0dXJhbCB0eXBlIG9mIHRoZSBlbnVt
IGlzIHVwIHRvIHRoZSBjb21waWxlci4KPiAtQ2hyaXMKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
