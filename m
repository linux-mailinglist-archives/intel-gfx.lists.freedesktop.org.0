Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 609DD18ADE3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 09:03:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91A056E0FB;
	Thu, 19 Mar 2020 08:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 580466E0FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 08:03:23 +0000 (UTC)
IronPort-SDR: /VCeyMqI/dENXAo40ab43avJpPWSD+a2RrbNH2GEaY0LVmeckjGXO5zGOCOJBLFccl/omvoXy6
 6VSwi9VER1Tw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 01:03:19 -0700
IronPort-SDR: eIXN6aQYTNDRTXVkNcMuV3QavtN5+ZnaiaoD0vkI/cpeA5wwkPwCRAvyRauKc/0Yv+c6o9kt2+
 hiHBK7ToLkTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,570,1574150400"; d="scan'208";a="236875418"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga007.fm.intel.com with ESMTP; 19 Mar 2020 01:03:18 -0700
Date: Thu, 19 Mar 2020 13:23:18 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20200319075317.GB11440@intel.com>
References: <20200311083632.3249-1-anshuman.gupta@intel.com>
 <20200313073917.aeki7lm6zupx7y26@ldmartin-desk1>
 <20200318164827.GC13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318164827.GC13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable non-contiguous pipe fusing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wMy0xOCBhdCAxODo0ODoyNyArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
IE9uIEZyaSwgTWFyIDEzLCAyMDIwIGF0IDEyOjM5OjE3QU0gLTA3MDAsIEx1Y2FzIERlIE1hcmNo
aSB3cm90ZToKPiA+IE9uIFdlZCwgTWFyIDExLCAyMDIwIGF0IDAyOjA2OjMyUE0gKzA1MzAsIEFu
c2h1bWFuIEd1cHRhIHdyb3RlOgo+ID4gPkFsbG93IDMtZGlzcGxheSBwaXBlcyBTS1Ugc3lzdGVt
IHdpdGggYW55IGNvbWJpbmF0aW9uCj4gPiA+aW4gSU5URUxfSU5GTyBwaXBlIG1hc2suCj4gPiA+
Qi5TcGVjOjUwMDc1Cj4gPiA+Cj4gPiA+Y2hhbmdlcyBzaW5jZSBSRkM6Cj4gPiA+LSB1c2luZyBp
bnRlbF9waXBlX21hc2tfaXNfdmFsaWQoKSBmdW5jdGlvbiB0byBjaGVjayBpbnRlZ3JpdHkgb2YK
PiA+ID4gIHBpcGVfbWFzay4gW1ZpbGxlXQo+ID4gPnYyOgo+ID4gPi0gc2ltcGxpZnkgY29uZGl0
aW9uIGluIGludGVsX3BpcGVfbWFza19pc192YWxpZCgpLiBbVmlsbGVdCj4gPiA+djM6Cj4gPiA+
LSByZW1vdmVkIG5vbi1jb250aWd1b3VzIHBpcGUgZnVzaW5nIGNoZWNrLiBbTHVjYXNdCj4gPiAK
PiA+IEknZCBhbHNvIHNheSBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgdGhhdCB0aGUgc3VwcG9ydCBm
b3Igbm9uLWNvbnRpZ3VvdXMKPiA+IHBpcGUgZnVzaW5nIGlzICphbHJlYWR5KiBzdXBwb3J0ZWQg
aW4gdGhlIGRyaXZlci4gU28gdGhpcyBjaGVjayBoZXJlCj4gPiBkb2Vzbid0IG1ha2Ugc2Vuc2Ug
YW55bW9yZSBhbmQgc2luY2UgaXQncyBhbiB1bmxpa2UgY29uZGl0aW9uIHdlCj4gPiBjYW4ganVz
dCBzdG9wIGNoZWNraW5nLgo+IAo+IEJUVyBJIHRoaW5rIHdlIHN0aWxsIGhhdmUgdGhvc2UgY3J0
YyBpbmRleD09cGlwZSBhc3NlcnRzIGluIHRoZSBjb2RlCj4gc29tZXdoZXJlLiBOb3cgdGhhdCBh
bGwgdGhlIChrbm93bikgYXNzdW1wdGlvbnMgaGF2ZSBiZWVuIGZpeGVkIHdlIGNhbgo+IHJlbW92
ZSB0aGUgV0FSTnMuCnllcyB3ZSBzdGlsbCBoYXZlIGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJt
LCBkcm1fY3J0Y19pbmRleCgmY3J0Yy0+YmFzZSkgIT0gY3J0Yy0+cGlwZSkKaW4gaW50ZWxfY3J0
Y19pbml0LgpBRkFJVSB0aGUgaWRlYSB3YXMgdG8gaGF2ZSB0aGUgV0FSTl9PTiB0byBrbm93IHRo
YXQgd2UgYXJlIHJ1bm5pbmcgYSBicm9rZW4gZHJpdmVyCihpZiB0aGVyZSBhbnkgdW5rbm93biBh
c3N1bXB0aW9uIGlzIHN0aWxsIGxlZnQgb3V0KS4KUGxlYXNlIGNvcnJlY3QgbWUgaWYgaSBhbSB3
cm9uZyBoZXJlLCBpZiBpdCBpcyByZXF1aXJlZCB0byByZW1vdmUgdGhlIGFib3ZlIFdBUk5fT04s
IGkgd2lsbCBzZW5kCmEgcGF0Y2ggZm9yIGl0LiAKVGhhbmtzLApBbnNodW1hbiBHdXB0YS4KPiAK
PiA+IAo+ID4gQXNpZGUgZnJvbSBjb21taXQgbWVzc2FnZSB1cGRhdGUsCj4gPiAKPiA+IFJldmll
d2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiA+IAo+
ID4gTHVjYXMgRGUgTWFyY2hpCj4gPiAKPiA+ID4KPiA+ID5DYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID5DYzogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gPiA+U2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3Vw
dGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiA+ID4tLS0KPiA+ID4gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDEyICstLS0tLS0tLS0tLQo+ID4gPiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDExIGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+ID4gPmluZGV4IGQ3ZmUxMjcz
NGRiOC4uOWZmODllMTQyZmYxIDEwMDY0NAo+ID4gPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMKPiA+ID4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5jCj4gPiA+QEAgLTk5OCwxNyArOTk4LDcgQEAgdm9pZCBpbnRlbF9kZXZp
Y2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+
ID4gPiAJCSAgICAoZGZzbSAmIFRHTF9ERlNNX1BJUEVfRF9ESVNBQkxFKSkKPiA+ID4gCQkJZW5h
YmxlZF9tYXNrICY9IH5CSVQoUElQRV9EKTsKPiA+ID4KPiA+ID4tCQkvKgo+ID4gPi0JCSAqIEF0
IGxlYXN0IG9uZSBwaXBlIHNob3VsZCBiZSBlbmFibGVkIGFuZCBpZiB0aGVyZSBhcmUKPiA+ID4t
CQkgKiBkaXNhYmxlZCBwaXBlcywgdGhleSBzaG91bGQgYmUgdGhlIGxhc3Qgb25lcywgd2l0aCBu
byBob2xlcwo+ID4gPi0JCSAqIGluIHRoZSBtYXNrLgo+ID4gPi0JCSAqLwo+ID4gPi0JCWlmIChl
bmFibGVkX21hc2sgPT0gMCB8fCAhaXNfcG93ZXJfb2ZfMihlbmFibGVkX21hc2sgKyAxKSkKPiA+
ID4tCQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwKPiA+ID4tCQkJCSJpbnZhbGlkIHBpcGUgZnVz
ZSBjb25maWd1cmF0aW9uOiBlbmFibGVkX21hc2s9MHgleFxuIiwKPiA+ID4tCQkJCWVuYWJsZWRf
bWFzayk7Cj4gPiA+LQkJZWxzZQo+ID4gPi0JCQlpbmZvLT5waXBlX21hc2sgPSBlbmFibGVkX21h
c2s7Cj4gPiA+KwkJaW5mby0+cGlwZV9tYXNrID0gZW5hYmxlZF9tYXNrOwo+ID4gPgo+ID4gPiAJ
CWlmIChkZnNtICYgU0tMX0RGU01fRElTUExBWV9IRENQX0RJU0FCTEUpCj4gPiA+IAkJCWluZm8t
PmRpc3BsYXkuaGFzX2hkY3AgPSAwOwo+ID4gPi0tIAo+ID4gPjIuMjUuMQo+ID4gPgo+IAo+IC0t
IAo+IFZpbGxlIFN5cmrDpGzDpAo+IEludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
