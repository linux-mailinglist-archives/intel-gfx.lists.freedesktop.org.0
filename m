Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4304627D15
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 14:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CCBC89E33;
	Thu, 23 May 2019 12:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E3689E33
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 12:46:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 05:46:03 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 23 May 2019 05:46:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
In-Reply-To: <20190522195714.GA94676@archlinux-epyc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190522103505.2082-1-jani.nikula@intel.com>
 <20190522195714.GA94676@archlinux-epyc>
Date: Thu, 23 May 2019 15:49:19 +0300
Message-ID: <874l5l72uo.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove duplicate typedef for
 intel_wakeref_t
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

T24gV2VkLCAyMiBNYXkgMjAxOSwgTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMDE6MzU6MDVQTSArMDMw
MCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IEZpeCB0aGUgZHVwbGljYXRlIHR5cGVkZWYgZm9yIGlu
dGVsX3dha2VyZWZfdCBsZWFkaW5nIHRvIENsYW5nIGJ1aWxkCj4+IGlzc3Vlcy4gV2hpbGUgYXQg
aXQsIGFjdHVhbGx5IG1ha2UgdGhlIGludGVsX3J1bnRpbWVfcG0uaCBoZWFkZXIKPj4gc2VsZi1j
b250YWluZWQsIHdoaWNoIHdhcyBjbGFpbWVkIGluIHRoZSBjb21taXQgYmVpbmcgZml4ZWQuCj4+
IAo+PiBSZXBvcnRlZC1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWls
LmNvbT4KPj4gQ2M6IE5hdGhhbiBDaGFuY2VsbG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+
Cj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gUmVmZXJl
bmNlczogaHR0cDovL21pZC5tYWlsLWFyY2hpdmUuY29tLzIwMTkwNTIxMTgzODUwLkdBOTE1N0Bh
cmNobGludXgtZXB5Ywo+PiBSZWZlcmVuY2VzOiBodHRwczovL3RyYXZpcy1jaS5jb20vQ2xhbmdC
dWlsdExpbnV4L2NvbnRpbnVvdXMtaW50ZWdyYXRpb24vam9icy8yMDE3NTQ0MjAjTDI0MzUKPj4g
Rml4ZXM6IDBkNWFkYzVmMmYwMSAoImRybS9pOTE1OiBleHRyYWN0IGludGVsX3J1bnRpbWVfcG0u
aCBmcm9tIGludGVsX2Rydi5oIikKPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPgo+IFJldmlld2VkLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0
ZWNoYW5jZWxsb3JAZ21haWwuY29tPgo+IFRlc3RlZC1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5h
dGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KClB1c2hlZCB0byBkaW5xLCB0aGFua3MgZm9yIHRoZSBy
ZXZpZXdzIGFuZCB0ZXN0aW5nLgoKQlIsCkphbmkuCgo+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAxICsKPj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3J1bnRpbWVfcG0uaCAgIHwgOCArKysrKy0tLQo+PiAgMiBmaWxlcyBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAo+PiBpbmRleCAyY2E0YTVmLi4zYTk2NjMgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0Cj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0Cj4+IEBAIC01NSw2
ICs1NSw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKPj4gIAlpbnRlbF9wbS5oIFwKPj4gIAlpbnRlbF9w
c3IuaCBcCj4+ICAJaW50ZWxfcXVpcmtzLmggXAo+PiArCWludGVsX3J1bnRpbWVfcG0uaCBcCj4+
ICAJaW50ZWxfc2R2by5oIFwKPj4gIAlpbnRlbF9zaWRlYmFuZC5oIFwKPj4gIAlpbnRlbF9zcHJp
dGUuaCBcCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1l
X3BtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgKPj4gaW5kZXgg
Yjk2NGNhLi4wYTRjNGIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3J1bnRpbWVfcG0uaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1l
X3BtLmgKPj4gQEAgLTYsMTIgKzYsMTQgQEAKPj4gICNpZm5kZWYgX19JTlRFTF9SVU5USU1FX1BN
X0hfXwo+PiAgI2RlZmluZSBfX0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4+ICAKPj4gLSNpbmNsdWRl
IDxsaW51eC9zdGFja2RlcG90Lmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPj4gIAo+
PiAtc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Cj4+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheS5o
Igo+PiArI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIKPj4gIAo+PiAtdHlwZWRlZiBkZXBvdF9z
dGFja19oYW5kbGVfdCBpbnRlbF93YWtlcmVmX3Q7Cj4+ICtzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZTsKPj4gK3N0cnVjdCBkcm1fcHJpbnRlcjsKPj4gK3N0cnVjdCBpbnRlbF9lbmNvZGVyOwo+PiAg
Cj4+ICBlbnVtIGk5MTVfZHJtX3N1c3BlbmRfbW9kZSB7Cj4+ICAJSTkxNV9EUk1fU1VTUEVORF9J
RExFLAo+PiAtLSAKPj4gMi4yMC4xCj4+IAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
