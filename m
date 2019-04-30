Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF67F926
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 14:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C1589121;
	Tue, 30 Apr 2019 12:45:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE5D89121
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 12:45:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 05:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="169281757"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2019 05:45:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190430121836.6990-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190430121836.6990-1-stanislav.lisovskiy@intel.com>
Date: Tue, 30 Apr 2019 15:47:18 +0300
Message-ID: <87sgtzpsmh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Corrupt DSI picture fix for
 GeminiLake
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
Cc: martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAzMCBBcHIgMjAxOSwgU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292
c2tpeUBpbnRlbC5jb20+IHdyb3RlOgo+IEN1cnJlbnRseSBkdWUgdG8gcmVncmVzc2lvbiBDSSBt
YWNoaW5lCj4gZGlzcGxheXMgc2hvdyBjb3JydXB0IHBpY3R1cmUuCj4gUHJvYmxlbSBpcyB3aGVu
IENEQ0xLIGlzIGFzIGxvdyBhcyA3OTIwMCwgcGljdHVyZSBnZXRzCj4gdW5zdGFibGUsIHdoaWxl
IERTSSBhbmQgREUgcGxsIHZhbHVlcyB3ZXJlCj4gY29uZmlybWVkIHRvIGJlIGNvcnJlY3QuCj4g
TGltaXRpbmcgdG8gMTU4NDAwIGFzIGFncmVlZCB3aXRoIFZpbGxlLgo+Cj4gV2UgY291bGQgbm90
IGNvbWUgdXAgd2l0aCBhbnkgYmV0dGVyIHNvbHV0aW9uCj4geWV0LCBhcyBQTEwgZGl2aWRlciB2
YWx1ZXMgYm90aCBmb3IgTUlQSShEU0kgUExMKSBhbmQKPiBDRENMSyhERSBQTEwpIGFyZSBjb3Jy
ZWN0LCBob3dldmVyIHNlZW1zIHRoYXQgZHVlIHRvIHNvbWUKPiBib3VuZGFyeSBjb25kaXRpb25z
LCB3aGVuIGNsb2NraW5nIGlzIHRvbyBsb3cgd2UgZ2V0Cj4gd3JvbmcgdGltaW5ncyBmb3IgRFNJ
IGRpc3BsYXkuCj4gU2ltaWxhciB3b3JrYXJvdW5kIGV4aXN0cyBmb3IgVkxWIHRob3VnaCwgc28g
anVzdAo+IHRvb2sgc2ltaWxhciBjb25kaXRpb24gaW50byB1c2UuIEF0IGxlYXN0IHRoYXQgd2F5
Cj4gR0xLIHBsYXRmb3JtIHdpbGwgc3RhcnQgdG8gYmUgdXNhYmxlIGFnYWluLCB3aXRoCj4gY3Vy
cmVudCBkcm0tdGlwLgo+Cj4gdjI6IEZpeGVkIGNvbW1pdCBzdWJqZWN0IGFzIHN1Z2dlc3RlZC4K
Pgo+IHYzOiBBZGRlZCBnZW5lcmljIGJ1Z3MoY3JjIGZhaWx1cmVzLCBzY3JlZW4gbm90IGluaXQK
PiBmb3IgR0xLIERTSSB3aGljaCBtaWdodCBiZSBhZmZlY3RlZCkuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiBB
Y2tlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiBHZW5lcmljIGJ1Z3MgYWZmZWN0ZWQ6Cj4gaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTA5MjY3Cj4gaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTAzMTg0CgpJZiB0aGlzIGZpeGVzIHRoZW0sIAoKQnVnemlsbGE6IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI2NwpCdWd6aWxsYTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTg0CgpJZiB0
aGlzIGlzIHJlbGF0ZWQgdG8gdGhlbSwKClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI2NwpSZWZlcmVuY2VzOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxODQKCkJSLApKYW5pLgoKCj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMgfCA5ICsrKysrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nk
Y2xrLmMKPiBpbmRleCBhZTQwYTg2NzkzMTQuLjJiMjNmODUwMDM2MiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY2RjbGsuYwo+IEBAIC0yMjc3LDYgKzIyNzcsMTUgQEAgaW50IGludGVsX2Ny
dGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCj4gIAkgICAgSVNfVkFMTEVZVklFVyhkZXZfcHJpdikpCj4gIAkJbWluX2NkY2xrID0g
bWF4KDMyMDAwMCwgbWluX2NkY2xrKTsKPiAgCj4gKwkvKgo+ICsJICogT24gR2VtaW5pbGFrZSBv
bmNlIHRoZSBDRENMSyBnZXRzIGFzIGxvdyBhcyA3OTIwMAo+ICsJICogcGljdHVyZSBnZXRzIHVu
c3RhYmxlLCBkZXNwaXRlIHRoYXQgdmFsdWVzIGFyZQo+ICsJICogY29ycmVjdCBmb3IgRFNJIFBM
TCBhbmQgREUgUExMLgo+ICsJICovCj4gKwlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0
YXRlLCBJTlRFTF9PVVRQVVRfRFNJKSAmJgo+ICsJICAgIElTX0dFTUlOSUxBS0UoZGV2X3ByaXYp
KQo+ICsJCW1pbl9jZGNsayA9IG1heCgxNTg0MDAsIG1pbl9jZGNsayk7Cj4gKwo+ICAJaWYgKG1p
bl9jZGNsayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkgewo+ICAJCURSTV9ERUJVR19LTVMo
InJlcXVpcmVkIGNkY2xrICglZCBrSHopIGV4Y2VlZHMgbWF4ICglZCBrSHopXG4iLAo+ICAJCQkg
ICAgICBtaW5fY2RjbGssIGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSk7CgotLSAKSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
