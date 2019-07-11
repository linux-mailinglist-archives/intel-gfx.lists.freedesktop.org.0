Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5891B654DF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 13:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B53F6E17B;
	Thu, 11 Jul 2019 11:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D1A96E17B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 11:01:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 04:01:25 -0700
X-IronPort-AV: E=Sophos;i="5.63,478,1557212400"; d="scan'208";a="168599446"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Jul 2019 04:01:25 -0700
Date: Thu, 11 Jul 2019 04:02:01 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190711110201.GD9599@intel.com>
References: <20190711092254.1719-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711092254.1719-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revert "drm/i915: Enable PSR2 by
 default"
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMTA6MjI6NTRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IE11bHRpcGxlIHVzZXJzIGFyZSByZXBvcnRpbmcgYmxhY2sgc2NyZWVucyB1cG9uIGJv
b3QsIGFmdGVyIHJlc3VtZSwgb3IKPiBmcm96ZW4gYWZ0ZXIgYSBzaG9ydCBwZXJpb2Qgb2YgaWRs
ZW5lc3MuIEEgYmxhY2sgc2NyZWVuIG9uIGJvb3QgaXMgYQo+IGNyaXRpY2FsIGlzc3VlIHNvIGRp
c2FibGUgcHNyMiBhZ2FpbiB1bnRpbCByZXNvbHZlZC4KPiAKPiBUaGlzIHJldmVydHMgY29tbWl0
IDhmNmU4N2Q2ZDU2MWYxMGNmYTQ4YTY4NzM0NTUxMjQxOTgzOWI2ZDguCj4gCj4gQnVnemlsbGE6
IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA4OAoKSSBh
Z3JlZSBpdCBpcyBjcml0aWNhbCwgYnV0IHVuZm9ydHVuYXRlbHkgdGhpcyByZXZlcnQgd29uJ3Qg
c29sdmUgdGhlIGlzc3VlLgoKWyAgICAxLjk1NDg4Nl0gW2RybTppbnRlbF9wc3JfaW5pdF9kcGNk
IFtpOTE1XV0gZURQIHBhbmVsIHN1cHBvcnRzIFBTUiB2ZXJzaW9uIDEKWyAgICAyLjAwMzY4Nl0g
W2RybTppbnRlbF9wc3JfZW5hYmxlX2xvY2tlZCBbaTkxNV1dIEVuYWJsaW5nIFBTUjEKClVzZXJz
IGFyZSBjbGFpbWluZyB0aGUgcmVncmVzc2lvbiBpcyBvbmx5IG9uIDUuMiB3aXRoIDUuMSB3b3Jr
aW5nIHdlbGwKYW5kIFBTUjEgaXMgZW5hYmxlZCBieSBkZWZhdWx0IHNpbmNlIDUuMC4KCkEgYmlz
ZWN0IHdvdWxkIGJlIGdvb2QsIGJ1dCBpdCBzZWVtcyBhIGhhcmQgaXNzdWUgdG8gcmVwcm9kdWNl
IGFzIHdlbGwKd2hhdCBtYWtlcyB0aGluZ3MgbW9yZSBkaWZmaWN1bHQuCgo+IEZpeGVzOiA4ZjZl
ODdkNmQ1NjEgKCJkcm0vaTkxNTogRW5hYmxlIFBTUjIgYnkgZGVmYXVsdCIpCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBDYzogRGhpbmFrYXJhbiBQYW5kaXlh
biA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5l
bkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgI3Y1LjIKPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMgKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCA2OWQ5MDhlNmEwNTAuLmRkZGU0ZGEyZGUzMyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IEBAIC04Myw2
ICs4Myw5IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAljYXNlIEk5MTVfUFNSX0RFQlVHX0RJU0FCTEU6Cj4gIAlj
YXNlIEk5MTVfUFNSX0RFQlVHX0ZPUkNFX1BTUjE6Cj4gIAkJcmV0dXJuIGZhbHNlOwo+ICsJY2Fz
ZSBJOTE1X1BTUl9ERUJVR19ERUZBVUxUOgo+ICsJCWlmIChpOTE1X21vZHBhcmFtcy5lbmFibGVf
cHNyIDw9IDApCj4gKwkJCXJldHVybiBmYWxzZTsKPiAgCWRlZmF1bHQ6Cj4gIAkJcmV0dXJuIGNy
dGNfc3RhdGUtPmhhc19wc3IyOwo+ICAJfQo+IC0tIAo+IDIuMjIuMAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
