Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B25459C5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 12:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A2F890DA;
	Fri, 14 Jun 2019 10:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F2C890DA;
 Fri, 14 Jun 2019 10:00:37 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 03:00:36 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.38])
 by orsmga008.jf.intel.com with ESMTP; 14 Jun 2019 03:00:35 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1hbj0c-0001u7-8g; Fri, 14 Jun 2019 13:00:34 +0300
Date: Fri, 14 Jun 2019 13:00:34 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <20190614100034.GN22949@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Guillaume Tucker <guillaume.tucker@collabora.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <d23e7d953526d4f2e569d375523829f21091255d.1560433744.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d23e7d953526d4f2e569d375523829f21091255d.1560433744.git.guillaume.tucker@collabora.com>
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDI6NTM6MjBQTSArMDEwMCwgR3VpbGxhdW1lIFR1Y2tl
ciB3cm90ZToKPiBBZGQgbGliYXRvbWljIHRvIHRoZSBGZWRvcmEgZG9ja2VyIGltYWdlIHNvIGl0
IGNhbiBsaW5rIGJpbmFyaWVzIHRoYXQKPiB1c2UgX19hdG9taWNfKiBmdW5jdGlvbnMuICBBbHNv
IGV4cGxpY2l0bHkgYWRkIGxpYmF0b21pYzEgdG8gRGViaWFuCj4gZG9ja2VyIGltYWdlcyBldmVu
IHRob3VnaCBpdCdzIGFscmVhZHkgaW5zdGFsbGVkIGFzIGEgZGVwZW5kZW5jeS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxndWlsbGF1bWUudHVja2VyQGNvbGxhYm9yYS5j
b20+Cj4gLS0tCj4gIERvY2tlcmZpbGUuZGViaWFuICAgICAgIHwgMSArCj4gIERvY2tlcmZpbGUu
ZGViaWFuLWFybTY0IHwgMSArCj4gIERvY2tlcmZpbGUuZGViaWFuLWFybWhmIHwgMSArCj4gIERv
Y2tlcmZpbGUuZmVkb3JhICAgICAgIHwgMiArLQo+ICA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmRlYmlh
biBiL0RvY2tlcmZpbGUuZGViaWFuCj4gaW5kZXggYjljM2JlMzk0NWUwLi5kMjM1OTE4NTBjNGUg
MTAwNjQ0Cj4gLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4KPiArKysgYi9Eb2NrZXJmaWxlLmRlYmlh
bgo+IEBAIC02LDYgKzYsNyBAQCBSVU4gYXB0LWdldCBpbnN0YWxsIC15IFwKPiAgCQkJZmxleCBc
Cj4gIAkJCWJpc29uIFwKPiAgCQkJcGtnLWNvbmZpZyBcCj4gKwkJCWxpYmF0b21pYzEgXAo+ICAJ
CQlsaWJwY2lhY2Nlc3MtZGV2IFwKPiAgCQkJbGlia21vZC1kZXYgXAo+ICAJCQlsaWJwcm9jcHMt
ZGV2IFwKPiBkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQgYi9Eb2NrZXJmaWxl
LmRlYmlhbi1hcm02NAo+IGluZGV4IDdiM2EzYzdjYTgwMy4uMDAzYmIyMmIzMjE1IDEwMDY0NAo+
IC0tLSBhL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0Cj4gKysrIGIvRG9ja2VyZmlsZS5kZWJpYW4t
YXJtNjQKPiBAQCAtNSw2ICs1LDcgQEAgUlVOIGFwdC1nZXQgaW5zdGFsbCAteSBcCj4gIAkJCWZs
ZXggXAo+ICAJCQliaXNvbiBcCj4gIAkJCXBrZy1jb25maWcgXAo+ICsJCQlsaWJhdG9taWMxIFwK
PiAgCQkJeDExcHJvdG8tZHJpMi1kZXYgXAo+ICAJCQlweXRob24tZG9jdXRpbHMgXAo+ICAJCQl2
YWxncmluZCBcCj4gZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFuLWFybWhmIGIvRG9ja2Vy
ZmlsZS5kZWJpYW4tYXJtaGYKPiBpbmRleCBjNjdhMWUyYWNmNmEuLjMxMzk5MjdjMTkzYSAxMDA2
NDQKPiAtLS0gYS9Eb2NrZXJmaWxlLmRlYmlhbi1hcm1oZgo+ICsrKyBiL0RvY2tlcmZpbGUuZGVi
aWFuLWFybWhmCj4gQEAgLTUsNiArNSw3IEBAIFJVTiBhcHQtZ2V0IGluc3RhbGwgLXkgXAo+ICAJ
CQlmbGV4IFwKPiAgCQkJYmlzb24gXAo+ICAJCQlwa2ctY29uZmlnIFwKPiArCQkJbGliYXRvbWlj
MSBcCgoKbGliYXRvbWljMSBpcyB0aGUgcnVudGltZSBsaWIsIGZvciBsaW5raW5nIHlvdSBuZWVk
IHRoZSBwYWNrYWdlIHRoYXQKY29udGFpbnMgbGliYXRvbWljLnNvLiBUaGF0IGlzICpxdWljayBz
ZWFyY2gqCmxpYmdjYy0kdmVyc2lvbi1kZXYuIFRoZXJlIGRvZXNuJ3Qgc2VlbSB0byBiZSBhIGdl
bmVyaWMgbWV0YXBhY2thZ2UKZm9yICJ0aGUgbGF0ZXN0IGxpYmdjYy1kZXYiLCBvdGhlciB0aGFu
Li4uICdnY2MnLgoKU2luY2UgRGViaWFuIGlzIGFjdGluZyBhIGJpdCBzcGVzaHVsIGhlcmUgSSdk
IGp1c3QgZHJvcCB0aGUgZXhwbGljaXQKbGliYXRvbWljIGluc3RhbGxhdGlvbi4KCgoKPiAgCQkJ
eDExcHJvdG8tZHJpMi1kZXYgXAo+ICAJCQlweXRob24tZG9jdXRpbHMgXAo+ICAJCQl2YWxncmlu
ZCBcCj4gZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZmVkb3JhIGIvRG9ja2VyZmlsZS5mZWRvcmEK
PiBpbmRleCA2Njg2ZTU4NzYxM2QuLmM4NGI0MTJiMDcyMyAxMDA2NDQKPiAtLS0gYS9Eb2NrZXJm
aWxlLmZlZG9yYQo+ICsrKyBiL0RvY2tlcmZpbGUuZmVkb3JhCj4gQEAgLTEsNyArMSw3IEBACj4g
IEZST00gZmVkb3JhOjMwCj4gIAo+ICBSVU4gZG5mIGluc3RhbGwgLXkgXAo+IC0JZ2NjIGZsZXgg
Ymlzb24gbWVzb24gbmluamEtYnVpbGQgeGRvdG9vbCBcCj4gKwlnY2MgZmxleCBiaXNvbiBsaWJh
dG9taWMgbWVzb24gbmluamEtYnVpbGQgeGRvdG9vbCBcCgoKUG9zc2libHkgdGhlIHNhbWUgY29t
bWVudCBvbiBmZWRvcmEgYnV0IEknbSBub3QgYXdhcmUgb2YgaG93IHRoZXkKc3BsaXQgdGhlaXIg
Z2NjIHBhY2thZ2UuIEFueXdheSwgdGhlIGZpbGUgdG8gY2hlY2sgZm9yIGlzCidsaWJhdG9taWMu
c28nLgoKCi0tIApQZXRyaSBMYXR2YWxhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
