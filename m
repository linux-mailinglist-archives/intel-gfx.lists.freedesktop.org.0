Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C251B787
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 15:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CF989D58;
	Mon, 13 May 2019 13:56:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13BA889D58
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2019 13:56:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:56:27 -0700
X-ExtLoop1: 1
Received: from kkocagoe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.129])
 by fmsmga001.fm.intel.com with ESMTP; 13 May 2019 06:56:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190510140255.25215-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190510140255.25215-1-imre.deak@intel.com>
Date: Mon, 13 May 2019 16:56:25 +0300
Message-ID: <87a7fq8nli.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: More workaround for port F
 detection due to broken VBTs
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

T24gRnJpLCAxMCBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90
ZToKPiBBZGQgYW5vdGhlciBJQ0wtWSBQQ0lJRCB0aGF0IHByb3ZlZCB0byBoYXZlIG9ubHkgNSBw
b3J0cyB0byB0aGUKPiBjb3JyZXNwb25kaW5nIFBDSUlEIGxpc3QuCj4KPiBNZWFud2hpbGUgSSdt
IHRyeWluZyB0byBnZXQgYSBjb21wbGV0ZSBsaXN0IG9mIGFsbCBQQ0lJRHMgd2l0aCBsZXNzIHRo
YW4KPiA2IHBvcnRzIGFuZC9vciBnZXQgYSBWQlQgZml4IHRvIG1hcmsgdGhlc2UgcG9ydHMgbm9u
LWV4aXN0YW50LCBidXQgdW50aWwKPiB0aGVuIHRoZSBvbmx5IHdheSBpcyB0byBnbyBvbmUtYnkt
b25lLgo+Cj4gVGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIGVycm9yIG9uIG1hY2hpbmVzIHdpdGgg
bGVzcyB0aGFuIDYgcG9ydDoKPgo+IAlbZHJtOmludGVsX3Bvd2VyX3dlbGxfZW5hYmxlIFtpOTE1
XV0gZW5hYmxpbmcgQVVYIEYKPiAJLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0t
Cj4gCVdBUk5fT04oaW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsIHJl
Z3MtPmRyaXZlciwgKDB4MSA8PCAoKHB3X2lkeCkgKiAyKSksICgweDEgPDwgKChwd19pZHgpICog
MikpLCAxKSkKPgo+IChJbnRlcm5hbCByZWZlcmVuY2U6IEJTcGVjL0luZGV4LzIwNTg0L0lzc3Vl
cywgSFNELzEzMDYwODQxMTYpCj4KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4KPiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMDg5MTUKCldlJ3ZlIHVzZWQgQnVnemlsbGE6IGZvciBidWdzIHRoYXQgdGhlIHBh
dGNoIGF0IGhhbmQgZml4ZXMsIGFuZApSZWZlcmVuY2VzOiBmb3Igb3RoZXIgcmVsYXRlZCBsaW5r
cyBhbmQgc3R1ZmYuIFNlZW1zIGxpa2UgdGhlIHBhdGNoCmFjdHVhbGx5IGZpeGVkIHRoZSBidWcu
CgpCUiwKSmFuaS4KCgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4KPiAtLS0KPiAgaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDQgKystLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5o
Cj4gaW5kZXggNjQ3N2RhMjJhZjI4Li42ZDYwZWE2OGMxNzEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVk
ZS9kcm0vaTkxNV9wY2lpZHMuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKPiBA
QCAtNTU5LDcgKzU1OSw2IEBACj4gICNkZWZpbmUgSU5URUxfSUNMX1BPUlRfRl9JRFMoaW5mbykg
XAo+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTAsIGluZm8pLCBcCj4gIAlJTlRFTF9WR0FfREVW
SUNFKDB4OEE1QywgaW5mbyksIFwKPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTVELCBpbmZvKSwg
XAo+ICAJSU5URUxfVkdBX0RFVklDRSgweDhBNTksIGluZm8pLAlcCj4gIAlJTlRFTF9WR0FfREVW
SUNFKDB4OEE1OCwgaW5mbyksCVwKPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUyLCBpbmZvKSwg
XAo+IEBAIC01NzMsNyArNTcyLDggQEAKPiAgCj4gICNkZWZpbmUgSU5URUxfSUNMXzExX0lEUyhp
bmZvKSBcCj4gIAlJTlRFTF9JQ0xfUE9SVF9GX0lEUyhpbmZvKSwgXAo+IC0JSU5URUxfVkdBX0RF
VklDRSgweDhBNTEsIGluZm8pCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MSwgaW5mbyksIFwK
PiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTVELCBpbmZvKQo+ICAKPiAgLyogRUhMICovCj4gICNk
ZWZpbmUgSU5URUxfRUhMX0lEUyhpbmZvKSBcCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4g
U291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
