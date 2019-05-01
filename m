Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6224910E9E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 23:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596848929D;
	Wed,  1 May 2019 21:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC938929D
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 21:38:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 14:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,419,1549958400"; d="scan'208";a="320649887"
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga005.jf.intel.com with ESMTP; 01 May 2019 14:38:49 -0700
To: Lucas De Marchi <lucas.de.marchi@gmail.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
References: <20190425192419.24931-1-ville.syrjala@linux.intel.com>
 <CAKi4VALmTWeix1yACFUEvGP78QOg5qqYEHzNw0m=2i3jZOeFjw@mail.gmail.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <04abae75-0db2-824f-1275-164cc1523a83@intel.com>
Date: Wed, 1 May 2019 13:39:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKi4VALmTWeix1yACFUEvGP78QOg5qqYEHzNw0m=2i3jZOeFjw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix ICL output CSC programming
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDQvMjYvMTkgMTI6MzEgQU0sIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBPbiBUaHUsIEFw
ciAyNSwgMjAxOSBhdCAxMjoyNCBQTSBWaWxsZSBTeXJqYWxhCj4gPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPiB3cm90ZToKPj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPj4KPj4gV2hlbiBJIHJlZmFjdG9yZWQgdGhlIGNvZGUgaW50
byBpdHMgb3duIGZ1bmN0aW9uIEkgYWNjaWRlbnRhbGx5Cj4+IG1pc3BsYWNlZCB0aGUgPDwxNiBz
aGlmdHMgZm9yIHNvbWUgb2YgdGhlIHJlZ2lzdGVycyBjYXVzaW5nIHVzCj4+IHRvIGxvc2UgdGhl
IGJsdWUgY2hhbm5lbCBlbnRpcmVseS4KPj4KPj4gV2Ugc2hvdWxkIHJlYWxseSBmaW5kIGEgd2F5
IHRvIHRlc3QgdGhpcy4uLgo+Pgo+PiBDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KPj4gRml4ZXM6IGQyYzE5YjA2ZDZlYSAoImRybS9pOTE1OiBDbGVhbiB1cCBpbGsvaWNs
IHBpcGUvb3V0cHV0IENTQyBwcm9ncmFtbWluZyIpCj4+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gK0NsaW50Cj4KPiBEb2Vz
IHRoaXMgZml4IHRoZSBwcm9ibGVtIHlvdSByZXBvcnRlZCBlYXJsaWVyIHRoaXMgd2Vlaz8KCgpZ
ZXMsIENvbG9ycyBub3cgYXBwZWFyIGNvcnJlY3RseSBpbiBtYW55IGZhaWxpbmcgbW9kZXMuCgpD
bGludAoKCj4KPiBMdWNhcyBEZSBNYXJjaGkKPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jb2xvci5jIHwgNiArKystLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9y
LmMKPj4gaW5kZXggY2EzNDFhOWU0N2U2Li45MDkzZGFhYmMyOTAgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY29sb3IuYwo+PiBAQCAtMTczLDEzICsxNzMsMTMgQEAgc3RhdGljIHZvaWQg
aWNsX3VwZGF0ZV9vdXRwdXRfY3NjKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+PiAgICAgICAg
ICBJOTE1X1dSSVRFKFBJUEVfQ1NDX09VVFBVVF9QUkVPRkZfTE8ocGlwZSksIHByZW9mZlsyXSk7
Cj4+Cj4+ICAgICAgICAgIEk5MTVfV1JJVEUoUElQRV9DU0NfT1VUUFVUX0NPRUZGX1JZX0dZKHBp
cGUpLCBjb2VmZlswXSA8PCAxNiB8IGNvZWZmWzFdKTsKPj4gLSAgICAgICBJOTE1X1dSSVRFKFBJ
UEVfQ1NDX09VVFBVVF9DT0VGRl9CWShwaXBlKSwgY29lZmZbMl0pOwo+PiArICAgICAgIEk5MTVf
V1JJVEUoUElQRV9DU0NfT1VUUFVUX0NPRUZGX0JZKHBpcGUpLCBjb2VmZlsyXSA8PCAxNik7Cj4+
Cj4+ICAgICAgICAgIEk5MTVfV1JJVEUoUElQRV9DU0NfT1VUUFVUX0NPRUZGX1JVX0dVKHBpcGUp
LCBjb2VmZlszXSA8PCAxNiB8IGNvZWZmWzRdKTsKPj4gLSAgICAgICBJOTE1X1dSSVRFKFBJUEVf
Q1NDX09VVFBVVF9DT0VGRl9CVShwaXBlKSwgY29lZmZbNV0pOwo+PiArICAgICAgIEk5MTVfV1JJ
VEUoUElQRV9DU0NfT1VUUFVUX0NPRUZGX0JVKHBpcGUpLCBjb2VmZls1XSA8PCAxNik7Cj4+Cj4+
ICAgICAgICAgIEk5MTVfV1JJVEUoUElQRV9DU0NfT1VUUFVUX0NPRUZGX1JWX0dWKHBpcGUpLCBj
b2VmZls2XSA8PCAxNiB8IGNvZWZmWzddKTsKPj4gLSAgICAgICBJOTE1X1dSSVRFKFBJUEVfQ1ND
X09VVFBVVF9DT0VGRl9CVihwaXBlKSwgY29lZmZbOF0pOwo+PiArICAgICAgIEk5MTVfV1JJVEUo
UElQRV9DU0NfT1VUUFVUX0NPRUZGX0JWKHBpcGUpLCBjb2VmZls4XSA8PCAxNik7Cj4+Cj4+ICAg
ICAgICAgIEk5MTVfV1JJVEUoUElQRV9DU0NfT1VUUFVUX1BPU1RPRkZfSEkocGlwZSksIHBvc3Rv
ZmZbMF0pOwo+PiAgICAgICAgICBJOTE1X1dSSVRFKFBJUEVfQ1NDX09VVFBVVF9QT1NUT0ZGX01F
KHBpcGUpLCBwb3N0b2ZmWzFdKTsKPj4gLS0KPj4gMi4yMS4wCj4+Cj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+Cj4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
