Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 566C6F52B8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 18:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E6DA6E030;
	Fri,  8 Nov 2019 17:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D284A6E030
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 17:41:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 09:41:27 -0800
X-IronPort-AV: E=Sophos;i="5.68,282,1569308400"; d="scan'208";a="196967147"
Received: from unknown (HELO ldmartin-desk1) ([10.24.10.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 09:41:27 -0800
Date: Fri, 8 Nov 2019 09:41:22 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191108174122.2m5kxpraqltngv2v@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
 <20191108003602.33526-3-lucas.demarchi@intel.com>
 <87h83e65or.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h83e65or.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/bios: make sure to check vbt
 size
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMTI6MDg6NTJQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj5PbiBUaHUsIDA3IE5vdiAyMDE5LCBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4gd3JvdGU6Cj4+IFdoZW4gd2UgY2FsbCBpbnRlbF9iaW9zX2lzX3ZhbGlkX3Zi
dCgpLCBzaXplIG1heSBub3QgYWN0dWFsbHkgYmUgdGhlCj4+IHNpemUgb2YgdGhlIFZCVCwgYnV0
IHJhdGhlciB0aGUgc2l6ZSBvZiB0aGUgYmxvYiB0aGUgVkJUIGlzIGNvbnRhaW5lZAo+PiBpbi4g
Rm9yIGV4YW1wbGUsIHdoZW4gbWFwcGluZyB0aGUgUENJIG9wcm9tLCBzaXplIHdpbGwgYmUgdGhl
IGVudGlyZQo+PiBvcHJvbSBzaXplLiBXZSBkb24ndCB3YW50IHRvIHJlYWQgYmV5b25kIHdoYXQg
aXMgcmVwb3J0ZWQgdG8gYmUgdGhlCj4+IFZCVC4gU28gbWFrZSBzdXJlIHdlIHZidC0+dmJ0X3Np
emUgbWFrZXMgc2Vuc2UgYW5kIHVzZSB0aGF0IGZvcgo+PiB0aGUgbGF0dGVyIGNoZWNrcy4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMg
fCA0ICsrKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPj4gaW5k
ZXggMWY4MzYxNmNmYzMyLi42NzFiYmNlNmJhNWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4+IEBAIC0xNzc3LDExICsxNzc3LDEzIEBAIGJvb2wg
aW50ZWxfYmlvc19pc192YWxpZF92YnQoY29uc3Qgdm9pZCAqYnVmLCBzaXplX3Qgc2l6ZSkKPj4g
IAlpZiAoIXZidCkKPj4gIAkJcmV0dXJuIGZhbHNlOwo+Pgo+PiAtCWlmIChzaXplb2Yoc3RydWN0
IHZidF9oZWFkZXIpID4gc2l6ZSkgewo+PiArCWlmIChzaXplb2Yoc3RydWN0IHZidF9oZWFkZXIp
ID4gc2l6ZSB8fCB2YnQtPnZidF9zaXplID4gc2l6ZSkgewo+PiAgCQlEUk1fREVCVUdfRFJJVkVS
KCJWQlQgaGVhZGVyIGluY29tcGxldGVcbiIpOwo+Cj5OaXRwaWNrICMxLCBzZW1hbnRpY2FsbHkg
eW91IHNob3VsZCBjaGVjayB0aGUgVkJUIHNpZ25hdHVyZSBiZWZvcmUgeW91Cj5rbm93IC0+dmJ0
X3NpemUgbWlnaHQgbWFrZSBzZW5zZS4KPgo+Tml0cGljayAjMiwgdGhlIGRlYnVnIG1lc3NhZ2Ug
YmVjb21lcyBpbmNyZWFzaW5nbHkgbm9uLWluZm9ybWF0aXZlLiBCdXQKPmJhc2ljYWxseSBtb3N0
IG1lc3NhZ2VzIGluIHRoaXMgZnVuY3Rpb24gYXJlIGxlc3MgdGhhbiBzdGVsbGFyLgoKSSBjYW4g
bW92ZSB0aGlzIGFkZGl0aW9uYWwgY2hlY2sgYWZ0ZXIgdGhlIHNpZ25hdHVyZSBjaGVjayBhbmQg
dGhlbiBnaXZlCml0IGEgYmV0dGVyIGVycm9yIG1lc3NhZ2UuIFRoaXMgaXMgd2hhdCBJIGRpZCBp
biBjb3B5X3ZidCgpIGFueXdheSBpbgp0aGUgbmV4dCBwYXRjaCAoYnV0IGp1c3QgZm9yIHRoZSBw
Y2kgcm9tKS4KCnRoYW5rcwpMdWNhcyBEZSBNYXJjaGkKCj4KPkluIGFueSBjYXNlLCB0aGUgZ29h
bCBpcyBzYW5lLAo+Cj5SZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KPgo+PiAgCQlyZXR1cm4gZmFsc2U7Cj4+ICAJfQo+Pgo+PiArCXNpemUgPSB2YnQtPnZi
dF9zaXplOwo+PiArCj4+ICAJaWYgKG1lbWNtcCh2YnQtPnNpZ25hdHVyZSwgIiRWQlQiLCA0KSkg
ewo+PiAgCQlEUk1fREVCVUdfRFJJVkVSKCJWQlQgaW52YWxpZCBzaWduYXR1cmVcbiIpOwo+PiAg
CQlyZXR1cm4gZmFsc2U7Cj4KPi0tIAo+SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
