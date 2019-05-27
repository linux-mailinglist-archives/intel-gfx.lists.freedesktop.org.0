Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B250D2B1D9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 12:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B128893D0;
	Mon, 27 May 2019 10:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC482893D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 10:10:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 03:10:02 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 May 2019 03:10:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <155872702294.6190.16866375205996135181@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190524185253.1088-1-jani.nikula@intel.com>
 <155872702294.6190.16866375205996135181@skylake-alporthouse-com>
Date: Mon, 27 May 2019 13:13:15 +0300
Message-ID: <87y32s5hok.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: make REG_BIT() and REG_GENMASK()
 work with variables
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

T24gRnJpLCAyNCBNYXkgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDUtMjQgMTk6NTI6NTMpCj4+
IFJFR19CSVQoKSBhbmQgUkVHX0dFTk1BU0soKSB3ZXJlIGludGVuZGVkIHRvIHdvcmsgd2l0aCBi
b3RoIGNvbnN0YW50Cj4+IGV4cHJlc3Npb25zIGFuZCBvdGhlcndpc2UsIHdpdGggdGhlIGZvcm1l
ciBoYXZpbmcgZXh0cmEgY29tcGlsZSB0aW1lCj4+IGNoZWNrcyBmb3IgdGhlIGJpdCByYW5nZXMu
IEluY3JlZGlibHksIHRoZSByZXN1bHQgb2YKPj4gX19idWlsdGluX2NvbnN0YW50X3AoKSBpcyBu
b3QgYW4gaW50ZWdlciBjb25zdGFudCBleHByZXNzaW9uIHdoZW4gZ2l2ZW4KPj4gYSBub24tY29u
c3RhbnQgZXhwcmVzc2lvbiwgbGVhZGluZyB0byBlcnJvcnMgaW4gQlVJTERfQlVHX09OX1pFUk8o
KS4KPj4gCj4+IFJlcGxhY2UgX19idWlsdGluX2NvbnN0YW50X3AoKSB3aXRoIHRoZSBfX2lzX2Nv
bnN0ZXhwcigpIG1hZ2ljIHNwZWxsLgo+PiAKPj4gUmVwb3J0ZWQtYnk6IFZpbGxlIFN5cmphbGEg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggfCA2ICsrKy0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiBpbmRl
eCA0OWRjZTA0ZGQ2ODguLjAxOWM0ODc0OGRjOSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCj4+IEBAIC0xMjYsNyArMTI2LDcgQEAKPj4gICAqLwo+PiAgI2RlZmluZSBSRUdfQklUKF9f
bikgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4+
ICAgICAgICAgKCh1MzIpKEJJVChfX24pICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFwKPj4gLSAgICAgICAgICAgICAgQlVJTERfQlVHX09OX1pFUk8oX19i
dWlsdGluX2NvbnN0YW50X3AoX19uKSAmJiAgICAgICAgICAgXAo+PiArICAgICAgICAgICAgICBC
VUlMRF9CVUdfT05fWkVSTyhfX2lzX2NvbnN0ZXhwcihfX24pICYmICAgICAgICAgXAo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoKF9fbikgPCAwIHx8IChfX24pID4gMzEpKSkp
Cj4+ICAKPj4gIC8qKgo+PiBAQCAtMTQwLDggKzE0MCw4IEBACj4+ICAgKi8KPj4gICNkZWZpbmUg
UkVHX0dFTk1BU0soX19oaWdoLCBfX2xvdykgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXAo+PiAgICAgICAgICgodTMyKShHRU5NQVNLKF9faGlnaCwgX19sb3cpICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4+IC0gICAgICAgICAgICAgIEJVSUxEX0JVR19P
Tl9aRVJPKF9fYnVpbHRpbl9jb25zdGFudF9wKF9faGlnaCkgJiYgICAgICAgIFwKPj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgX19idWlsdGluX2NvbnN0YW50X3AoX19sb3cpICYm
ICAgICAgICAgXAo+PiArICAgICAgICAgICAgICBCVUlMRF9CVUdfT05fWkVSTyhfX2lzX2NvbnN0
ZXhwcihfX2hpZ2gpICYmICAgICAgXAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBfX2lzX2NvbnN0ZXhwcihfX2xvdykgJiYgICAgICAgICAgICAgICBcCj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICgoX19sb3cpIDwgMCB8fCAoX19oaWdoKSA+IDMxIHx8IChf
X2xvdykgPiAoX19oaWdoKSkpKSkKPgo+IE9rLCBvbmUgb2xkIG9uZSByZW1haW5pbmcgaW4gX01B
U0tFRF9GSUVMRCgpLgo+Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgoKVGhhbmtzLCBwdXNoZWQgdG8gZGlucS4KCkJSLApKYW5pLgoKCj4gLUNo
cmlzCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
