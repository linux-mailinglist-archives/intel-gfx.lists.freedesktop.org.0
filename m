Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAA61794FB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 17:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 943BC6E086;
	Wed,  4 Mar 2020 16:24:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C12836E086
 for <Intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 16:24:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 08:24:18 -0800
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="234083982"
Received: from srware-mobl.ger.corp.intel.com (HELO [10.252.25.112])
 ([10.252.25.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 04 Mar 2020 08:24:15 -0800
To: Rafael Antognolli <rafael.antognolli@intel.com>
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
 <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bcb82998-13c1-d047-4d37-0d89c306beca@linux.intel.com>
Date: Wed, 4 Mar 2020 16:24:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaDisableGPGPUMidThreadPreemption
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
Cc: piotr.zdunowski@intel.com, Intel-gfx@lists.freedesktop.org,
 Jason Ekstrand <jason.ekstrand@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA0LzAzLzIwMjAgMTY6MDIsIFJhZmFlbCBBbnRvZ25vbGxpIHdyb3RlOgo+IE9uIFdlZCwg
TWFyIDA0LCAyMDIwIGF0IDAzOjMxOjQ0UE0gKzAwMDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+
PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBF
bmFibGUgRnRyUGVyQ3R4dFByZWVtcHRpb25HcmFudWxhcml0eUNvbnRyb2wgYml0IGFuZCBzZWxl
Y3QgdGhyZWFkLQo+PiBncm91cCBhcyB0aGUgZGVmYXVsdCBwcmVlbXB0aW9uIGxldmVsLgo+Pgo+
PiB2MjoKPj4gICAqIFJlbW92ZSByZWdpc3RlciB3aGl0ZWxpc3RpbmcgKFJhZmFlbCwgVG9ueSku
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Cj4+IENjOiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5j
b20+Cj4+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5j
b20+Cj4+IENjOiBwaW90ci56ZHVub3dza2lAaW50ZWwuY29tCj4+IENjOiBtaWNoYWwubXJvemVr
QGludGVsLmNvbQo+PiBDYzogVG9ueSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+Cj4+IENjOiBSYWZh
ZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwuY29tPgo+IAo+IFRoYW5rcyBm
b3IgQ0MnaW5nIG1lLiBJIGFsc28gc2F3IGEgcmVwbHkgZnJvbSBKYXNvbiB5ZXN0ZXJkYXksIGJ1
dCBJCj4gZG9uJ3Qgc2VlIGl0IGluIHRoZSBsaXN0IG5vdyAodGhvdWdoIG15IG1haWwgY2xpZW50
IGEgbWVzcyBsYXRlbHkpLgoKSSBzYXcgbm90aGluZyBmcm9tIEphc29uLCBidXQgdGhlcmUgd2Fz
IGFuIGVtYWlsIGZyb20geW91IGFza2luZyBhYm91dCAKaW50ZXJmYWNlIGRlc2NyaXB0b3JzIGFu
ZCB3aGl0ZWxpc3Rpbmcgd2hpY2ggaXMgd2h5IEkgY29waWVkIHlvdS4KCj4gQnV0IGhlIGFza2Vk
IHdoZXRoZXIgaXQncyBwb3NzaWJsZSBmb3IgTWVkaWEgYW5kIE9wZW5DTCBkcml2ZXJzIHRvCj4g
YWxzbyBkaXNhYmxlIG1pZC10aHJlYWQgcHJlZW1wdGlvbiB0aHJvdWdoIHRoZQo+IElOVEVSRkFD
RV9ERVNDUklQVE9SX0RBVEEsIGluc3RlYWQgb2YgZnJvbSB0aGUga2VybmVsIHNpZGUsIHNvIHdl
IGNvdWxkCj4gdHJ5IHRvIGV4cGVyaW1lbnQgd2l0aCBpdCBpbiB0aGUgZnV0dXJlLgo+IAo+IEFs
c28sIGRvIHlvdSBoYXZlIGFuIGlkZWEgb2YgaG93IGJyb2tlbiBpdCBpcz8gT3IgaXMgaXQganVz
dCBub3QgdGVzdGVkCj4gYmVjYXVzZSBubyBkcml2ZXIgaXMgY3VycmVudGx5IGltcGxlbWVudGlu
ZyBpdD8gQW5kIGRvIHlvdSBrbm93IGlmIHRoZQo+IHdpbmRvd3MgM0QgZHJpdmVycyBpbXBsZW1l
bnQgaXQgYXQgYWxsPyBJIHNlZSBjb2RlIGluIHRoZSBkcml2ZXIgdGhhdAo+IHNlZW1zIHRvIG1l
IHRoYXQgaXQncyBvbmx5IGRpc2FibGVkIGluIGNlcnRhaW4gY2FzZXMuLi4KPiAKPiBUbyBzdW1t
YXJpemUsIEkgdGhpbmsgd2Ugc2hvdWxkIGVpdGhlcjoKPiAgICAgMSkgRGlzYWJsZSBtaWQtdGhy
ZWFkIHByZWVtcHRpb24gZnJvbSB0aGUga2VybmVsIGFuZCBub3Qgd2hpdGVsaXN0Cj4gICAgIHRo
ZSByZWdpc3RlciAoanVzdCBsaWtlIHlvdSBkbyBpbiB0aGlzIHBhdGNoKTsgb3IKPiAgICAgMikg
Tm90IGRvIGFueXRoaW5nIGF0IGFsbCBmcm9tIHRoZSBrZXJuZWwsIGFuZCBsZXQgdXNlcnNwYWNl
IGRpc2FibGUKPiAgICAgaXQgaWYgbmVlZGVkLgo+IAo+IEkgdGhpbmsgMikgaXMgYmV0dGVyLCBp
ZiBpdCdzIG5vdCBhbiBpc3N1ZSB0byB0aGUgb3RoZXIgdXNlcnNwYWNlCj4gZHJpdmVycyAoT3Bl
bkNMIGFuZCBNZWRpYSkuCgpJIGtub3cgaXQgaXMgc29tZXdoYXQgYnJva2VuIGxpa2UgaW4gCmh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEyOTMuCgpBbmQg
SSBrbm93IE9wZW5DTCBhbmQgTWVkaWEgd291bGQgcHJlZmVyIGk5MTUgdG8gaGFuZGxlIGl0LCBi
dXQgdGhhdCdzIAphbHdheXMgdGhlIGNhc2UuIDopIE9wZW5DTCBhbmQgTWVkaWEgZm9sa3MgYXJl
IG9uIHRoZSB0aHJlYWQgc28gY2FuIApjb21tZW50IGlmIHRoZXkgYXJlIG9rYXkgd2l0aCBoYW5k
bGluZyB0aGlzIHRoZW1zZWx2ZXMuCgpJbmRlZWQgYSBibGFua2V0IGJhbiBpbiBpOTE1IG1lYW5z
IG5vIG9uZSBjYW4gdHJ5IGl0IG91dCBsYXRlciB3aXRob3V0IApmdXJ0aGVyIGtlcm5lbCBjaGFu
Z2VzLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
