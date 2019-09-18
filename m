Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7439FB6583
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 16:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADA86F3A8;
	Wed, 18 Sep 2019 14:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525D86F3A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 14:09:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 07:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="270872355"
Received: from mmoller-mobl2.ger.corp.intel.com (HELO [10.249.39.68])
 ([10.249.39.68])
 by orsmga001.jf.intel.com with ESMTP; 18 Sep 2019 07:09:14 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190905135044.2001-1-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <7dcfebf5-2054-29c1-a474-c7d88d879537@linux.intel.com>
Date: Wed, 18 Sep 2019 16:09:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190905135044.2001-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Bump skl+ max plane width to
 5k for linear/x-tiled
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
Cc: Leho Kraav <leho@kraav.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDUtMDktMjAxOSBvbSAxNTo1MCBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFRoZSBvZmZp
Y2lhbGx5IHZhbGlkYXRlZCBwbGFuZSB3aWR0aCBsaW1pdCBpcyA0ayBvbiBza2wrLCBob3dldmVy
Cj4gd2UgYWxyZWFkeSBoYWQgcGVvcGxlIHVzaW5nIDVrIGRpc3BsYXlzIGJlZm9yZSB3ZSBzdGFy
dGVkIHRvIGVuZm9yY2UKPiB0aGUgbGltaXQuIEFsc28gaXQgc2VlbXMgV2luZG93cyBhbGxvd3Mg
NWsgcmVzb2x1dGlvbnMgYXMgd2VsbAo+ICh0aG91Z2ggbm90IHN1cmUgaWYgdGhleSBkbyBpdCB3
aXRoIG9uZSBwbGFuZSBvciB0d28pLgo+Cj4gQWNjb3JkaW5nIHRvIGh3IGZvbGtzIDVrIHNob3Vs
ZCB3b3JrIHdpdGggdGhlIHBvc3NpYmxlCj4gZXhjZXB0aW9uIG9mIHRoZSBmb2xsb3dpbmcgZmVh
dHVyZXM6Cj4gLSBZdGlsZSAoYWxyZWFkeSBsaW1pdGVkIHRvIDRrKQo+IC0gRlAxNiAoYWxyZWFk
eSBsaW1pdGVkIHRvIDRrKQo+IC0gcmVuZGVyIGNvbXByZXNzaW9uIChhbHJlYWR5IGxpbWl0ZWQg
dG8gNGspCj4gLSBLVk1SIHNwcml0ZSBhbmQgY3Vyc29yIChkb24ndCBjYXJlKQo+IC0gaG9yaXpv
bnRhbCBwYW5uaW5nIChuZWVkIHRvIHZlcmlmeSB0aGlzKQo+IC0gcGlwZSBhbmQgcGxhbmUgc2Nh
bGluZyAobmVlZCB0byB2ZXJpZnkgdGhpcykKPgo+IFNvIGFwYXJ0IGZyb20gbGFzdCB0d28gaXRl
bXMgb24gdGhhdCBsaXN0IHdlIGFyZSBhbHJlYWR5Cj4gZmluZS4gV2Ugc2hvdWxkIHJlYWxseSB2
ZXJpZnkgd2hhdCBoYXBwZW5zIHdpdGggdGhvc2UgbGFzdAo+IHR3byBpdGVtcyBidXQgSSBkb24n
dCBoYXZlIGEgNWsgZGlzcGxheSBvbiBoYW5kIGF0bSBzbyBpdCdsbAo+IGhhdmUgdG8gd2FpdC4K
Pgo+IEluIHRoZSBtZWFudGltZSBsZXQncyBqdXN0IGJ1bXAgdGhlIGxpbWl0IGJhY2sgdXAgdG8g
NWsgc2luY2UKPiBzZXZlcmFsIHVzZXJzIGhhdmUgYWxyZWFkeSBiZWVuIHVzaW5nIGl0IHdpdGhv
dXQgYXBwYXJlbnQgaXNzdWVzLgo+IEF0IGxlYXN0IHdlJ2xsIGJlIG5vIHdvcnNlIG9mZiB0aGFu
IHdlIHdlcmUgcHJpb3IgdG8gbG93ZXJpbmcKPiB0aGUgbGltaXRzLgo+Cj4gQ2M6IExlaG8gS3Jh
YXYgPGxlaG9Aa3JhYXYuY29tPgo+IENjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KPiBD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gRml4ZXM6
IDM3MmI5ZmZiNTc5OSAoImRybS9pOTE1OiBGaXggc2tsKyBtYXggcGxhbmUgd2lkdGgiKQo+IEJ1
Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1
MDEKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDE1ICsrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCAwNmNmMjE3MTQ3NGQuLjRlNjMzNDJlYTU5NyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAg
LTMyODIsNyArMzI4MiwyMCBAQCBzdGF0aWMgaW50IHNrbF9tYXhfcGxhbmVfd2lkdGgoY29uc3Qg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsCj4gIAlzd2l0Y2ggKGZiLT5tb2RpZmllcikgewo+
ICAJY2FzZSBEUk1fRk9STUFUX01PRF9MSU5FQVI6Cj4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9Y
X1RJTEVEOgo+IC0JCXJldHVybiA0MDk2Owo+ICsJCS8qCj4gKwkJICogVmFsaWRhdGVkIGxpbWl0
IGlzIDRrLCBidXQgaGFzIDVrIHNob3VsZAo+ICsJCSAqIHdvcmsgYXBhcnQgZnJvbSB0aGUgZm9s
bG93aW5nIGZlYXR1cmVzOgo+ICsJCSAqIC0gWXRpbGUgKGFscmVhZHkgbGltaXRlZCB0byA0aykK
PiArCQkgKiAtIEZQMTYgKGFscmVhZHkgbGltaXRlZCB0byA0aykKPiArCQkgKiAtIHJlbmRlciBj
b21wcmVzc2lvbiAoYWxyZWFkeSBsaW1pdGVkIHRvIDRrKQo+ICsJCSAqIC0gS1ZNUiBzcHJpdGUg
YW5kIGN1cnNvciAoZG9uJ3QgY2FyZSkKPiArCQkgKiAtIGhvcml6b250YWwgcGFubmluZyAoVE9E
TyB2ZXJpZnkgdGhpcykKPiArCQkgKiAtIHBpcGUgYW5kIHBsYW5lIHNjYWxpbmcgKFRPRE8gdmVy
aWZ5IHRoaXMpCj4gKwkJICovCj4gKwkJaWYgKGNwcCA9PSA4KQo+ICsJCQlyZXR1cm4gNDA5NjsK
PiArCQllbHNlCj4gKwkJCXJldHVybiA1MTIwOwo+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9U
SUxFRF9DQ1M6Cj4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M6Cj4gIAkJLyog
RklYTUUgQVVYIHBsYW5lPyAqLwoKQWxzbyByLWIsIGZvcmdvdCB0byBhZGQgaXQgaW4gcGF0Y2gg
Mi4gOikKClBhdGNoIDIgd2lsIG5lZWQgc29tZSB0d2Vha2luZyBmb3IgYmlnam9pbmVyLCBidXQg
c2hvdWxkIGJlIG9rIG90aGVyd2lzZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
