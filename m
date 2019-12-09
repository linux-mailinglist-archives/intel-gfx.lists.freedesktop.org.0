Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2081170D0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 16:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132A36E4B6;
	Mon,  9 Dec 2019 15:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F436E4B6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 15:46:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 07:46:10 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="206932178"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 07:46:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <57510F3E2013164E925CD03ED7512A3B809DA25C@BGSMSX108.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1574775655.git.jani.nikula@intel.com>
 <0013df8e5c8e8443bd790bbc9e10ad5a05d8a2fd.1574775655.git.jani.nikula@intel.com>
 <57510F3E2013164E925CD03ED7512A3B809DA25C@BGSMSX108.gar.corp.intel.com>
Date: Mon, 09 Dec 2019 17:46:06 +0200
Message-ID: <87k1754i4h.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 07/13] drm/i915/dsi: set pipe_bpp on ICL
 configure config
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNSBEZWMgMjAxOSwgIkt1bGthcm5pLCBWYW5kaXRhIiA8dmFuZGl0YS5rdWxrYXJu
aUBpbnRlbC5jb20+IHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9t
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiBTZW50OiBUdWVzZGF5LCBO
b3ZlbWJlciAyNiwgMjAxOSA3OjEzIFBNCj4+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEt1bGth
cm5pLCBWYW5kaXRhCj4+IDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT47IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IFN1YmplY3Q6IFtQQVRDSCB2
MyAwNy8xM10gZHJtL2k5MTUvZHNpOiBzZXQgcGlwZV9icHAgb24gSUNMIGNvbmZpZ3VyZSBjb25m
aWcKPj4gCj4+IFRoZSBJQ0wgRFNJIHBpcGVfYnBwIGN1cnJlbnRseSBjb21lcyBmcm9tIGNvbXB1
dGVfYmFzZWxpbmVfcGlwZV9icHAoKS4KPj4gRml4IGl0Lgo+PiAKPj4gQ2M6IFZhbmRpdGEgS3Vs
a2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+PiBDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDUgKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKykKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ljbF9kc2kuYwo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5j
Cj4+IGluZGV4IGY2ODgyMDc5MzJlMC4uZWY1M2VkNmQzZWNmIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+PiBAQCAtMTI4Niw2ICsxMjg2LDExIEBAIHN0YXRp
YyBpbnQgZ2VuMTFfZHNpX2NvbXB1dGVfY29uZmlnKHN0cnVjdAo+PiBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAo+PiAgCWVsc2UKPj4gIAkJcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyID0gVFJB
TlNDT0RFUl9EU0lfMDsKPj4gCj4KPiBDYW4gd2UgdXNlIG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90
b19icHA/CgpObywgdGhpcyBpcyBmb3IgdGhlIHBpcGUgd2hpY2ggaXMgZGlmZmVyZW50IGZyb20g
d2hhdCBnb2VzIG9uIHRoZSBEU0kuCgpCUiwKSmFuaS4KCj4KPj4gKwlpZiAoaW50ZWxfZHNpLT5w
aXhlbF9mb3JtYXQgPT0gTUlQSV9EU0lfRk1UX1JHQjg4OCkKPj4gKwkJcGlwZV9jb25maWctPnBp
cGVfYnBwID0gMjQ7Cj4+ICsJZWxzZQo+PiArCQlwaXBlX2NvbmZpZy0+cGlwZV9icHAgPSAxODsK
Pj4gKwo+IE90aGVyd2lzZSBMR1RNLgo+IFJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2
YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPgo+IFRoYW5rcywKPiBWYW5kaXRhCj4+ICAJcGlw
ZV9jb25maWctPmNsb2NrX3NldCA9IHRydWU7Cj4+ICAJcGlwZV9jb25maWctPnBvcnRfY2xvY2sg
PSBpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9kc2kpIC8gNTsKPj4gCj4+IC0tCj4+IDIuMjAuMQo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cgot
LSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
