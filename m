Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108AF45D18
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 14:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 520B389893;
	Fri, 14 Jun 2019 12:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193D689893;
 Fri, 14 Jun 2019 12:43:08 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 05:43:07 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by orsmga006.jf.intel.com with ESMTP; 14 Jun 2019 05:43:06 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1hblXt-0003DF-4m; Fri, 14 Jun 2019 15:43:05 +0300
Date: Fri, 14 Jun 2019 15:43:05 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190614124305.GQ22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: "Ser, Simon" <simon.ser@intel.com>,
 "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <d23e7d953526d4f2e569d375523829f21091255d.1560433744.git.guillaume.tucker@collabora.com>
 <20190614100034.GN22949@platvala-desk.ger.corp.intel.com>
 <99d089607f34ec04bbb57eec314dba00cc213927.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99d089607f34ec04bbb57eec314dba00cc213927.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 2/4] gitlab-ci: add
 libatomic to docker images
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDI6MjQ6NTNQTSArMDMwMCwgU2VyLCBTaW1vbiB3cm90
ZToKPiBPbiBGcmksIDIwMTktMDYtMTQgYXQgMTM6MDAgKzAzMDAsIFBldHJpIExhdHZhbGEgd3Jv
dGU6Cj4gPiBPbiBUaHUsIEp1biAxMywgMjAxOSBhdCAwMjo1MzoyMFBNICswMTAwLCBHdWlsbGF1
bWUgVHVja2VyIHdyb3RlOgo+ID4gPiBBZGQgbGliYXRvbWljIHRvIHRoZSBGZWRvcmEgZG9ja2Vy
IGltYWdlIHNvIGl0IGNhbiBsaW5rIGJpbmFyaWVzIHRoYXQKPiA+ID4gdXNlIF9fYXRvbWljXyog
ZnVuY3Rpb25zLiAgQWxzbyBleHBsaWNpdGx5IGFkZCBsaWJhdG9taWMxIHRvIERlYmlhbgo+ID4g
PiBkb2NrZXIgaW1hZ2VzIGV2ZW4gdGhvdWdoIGl0J3MgYWxyZWFkeSBpbnN0YWxsZWQgYXMgYSBk
ZXBlbmRlbmN5Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFR1Y2tlciA8
Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJvcmEuY29tPgo+ID4gPiAtLS0KPiA+ID4gIERvY2tlcmZp
bGUuZGViaWFuICAgICAgIHwgMSArCj4gPiA+ICBEb2NrZXJmaWxlLmRlYmlhbi1hcm02NCB8IDEg
Kwo+ID4gPiAgRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYgfCAxICsKPiA+ID4gIERvY2tlcmZpbGUu
ZmVkb3JhICAgICAgIHwgMiArLQo+ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmRl
YmlhbiBiL0RvY2tlcmZpbGUuZGViaWFuCj4gPiA+IGluZGV4IGI5YzNiZTM5NDVlMC4uZDIzNTkx
ODUwYzRlIDEwMDY0NAo+ID4gPiAtLS0gYS9Eb2NrZXJmaWxlLmRlYmlhbgo+ID4gPiArKysgYi9E
b2NrZXJmaWxlLmRlYmlhbgo+ID4gPiBAQCAtNiw2ICs2LDcgQEAgUlVOIGFwdC1nZXQgaW5zdGFs
bCAteSBcCj4gPiA+ICAJCQlmbGV4IFwKPiA+ID4gIAkJCWJpc29uIFwKPiA+ID4gIAkJCXBrZy1j
b25maWcgXAo+ID4gPiArCQkJbGliYXRvbWljMSBcCj4gPiA+ICAJCQlsaWJwY2lhY2Nlc3MtZGV2
IFwKPiA+ID4gIAkJCWxpYmttb2QtZGV2IFwKPiA+ID4gIAkJCWxpYnByb2Nwcy1kZXYgXAo+ID4g
PiBkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQgYi9Eb2NrZXJmaWxlLmRlYmlh
bi1hcm02NAo+ID4gPiBpbmRleCA3YjNhM2M3Y2E4MDMuLjAwM2JiMjJiMzIxNSAxMDA2NDQKPiA+
ID4gLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQKPiA+ID4gKysrIGIvRG9ja2VyZmlsZS5k
ZWJpYW4tYXJtNjQKPiA+ID4gQEAgLTUsNiArNSw3IEBAIFJVTiBhcHQtZ2V0IGluc3RhbGwgLXkg
XAo+ID4gPiAgCQkJZmxleCBcCj4gPiA+ICAJCQliaXNvbiBcCj4gPiA+ICAJCQlwa2ctY29uZmln
IFwKPiA+ID4gKwkJCWxpYmF0b21pYzEgXAo+ID4gPiAgCQkJeDExcHJvdG8tZHJpMi1kZXYgXAo+
ID4gPiAgCQkJcHl0aG9uLWRvY3V0aWxzIFwKPiA+ID4gIAkJCXZhbGdyaW5kIFwKPiA+ID4gZGlm
ZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFuLWFybWhmIGIvRG9ja2VyZmlsZS5kZWJpYW4tYXJt
aGYKPiA+ID4gaW5kZXggYzY3YTFlMmFjZjZhLi4zMTM5OTI3YzE5M2EgMTAwNjQ0Cj4gPiA+IC0t
LSBhL0RvY2tlcmZpbGUuZGViaWFuLWFybWhmCj4gPiA+ICsrKyBiL0RvY2tlcmZpbGUuZGViaWFu
LWFybWhmCj4gPiA+IEBAIC01LDYgKzUsNyBAQCBSVU4gYXB0LWdldCBpbnN0YWxsIC15IFwKPiA+
ID4gIAkJCWZsZXggXAo+ID4gPiAgCQkJYmlzb24gXAo+ID4gPiAgCQkJcGtnLWNvbmZpZyBcCj4g
PiA+ICsJCQlsaWJhdG9taWMxIFwKPiA+IAo+ID4gbGliYXRvbWljMSBpcyB0aGUgcnVudGltZSBs
aWIsIGZvciBsaW5raW5nIHlvdSBuZWVkIHRoZSBwYWNrYWdlIHRoYXQKPiA+IGNvbnRhaW5zIGxp
YmF0b21pYy5zby4gVGhhdCBpcyAqcXVpY2sgc2VhcmNoKgo+ID4gbGliZ2NjLSR2ZXJzaW9uLWRl
di4gVGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGEgZ2VuZXJpYyBtZXRhcGFja2FnZQo+ID4gZm9y
ICJ0aGUgbGF0ZXN0IGxpYmdjYy1kZXYiLCBvdGhlciB0aGFuLi4uICdnY2MnLgo+ID4gCj4gPiBT
aW5jZSBEZWJpYW4gaXMgYWN0aW5nIGEgYml0IHNwZXNodWwgaGVyZSBJJ2QganVzdCBkcm9wIHRo
ZSBleHBsaWNpdAo+ID4gbGliYXRvbWljIGluc3RhbGxhdGlvbi4KPiAKPiBIbW0sIEkgc2VlIHRo
ZSAuc28gaW4gbGliYXRvbWljMeKApgo+IAo+IGh0dHBzOi8vcGFja2FnZXMuZGViaWFuLm9yZy9q
ZXNzaWUvYW1kNjQvbGliYXRvbWljMS9maWxlbGlzdAoKCldoZXJlPyBJIG9ubHkgc2VlIHRoZSAu
c28uMSBhbmQgLnNvLjEuMS4wCgoKLS0gClBldHJpIExhdHZhbGEKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
