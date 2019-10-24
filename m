Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A7EE2A78
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 08:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A40EE6E0DC;
	Thu, 24 Oct 2019 06:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BB16E0DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 06:37:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 23:37:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,223,1569308400"; d="scan'208";a="192088983"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 23 Oct 2019 23:37:09 -0700
Date: Thu, 24 Oct 2019 12:07:20 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191024063720.GA24164@intel.com>
References: <20191023133108.21401-1-chris@chris-wilson.co.uk>
 <20191024013201.GA23391@intel.com>
 <157189769673.18724.14469138471695392502@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157189769673.18724.14469138471695392502@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [CI 1/5] drm/i915/gt: Try to more gracefully
 quiesce the system before resets
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

T24gMjAxOS0xMC0yNCBhdCAwNzoxNDo1NiArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1
b3RpbmcgUmFtYWxpbmdhbSBDICgyMDE5LTEwLTI0IDAyOjMyOjAxKQo+ID4gT24gMjAxOS0xMC0y
MyBhdCAxNDozMTowNCArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBJZiB3ZSBhcmUg
ZG9pbmcgYSBub3JtYWwgR1BVIHJlc2V0IHRyaWdnZXJlZCBhZnRlciBkZXRlY3RpbmcgYSBsb25n
Cj4gPiA+IHBlcmlvZCBvZiBzdGFsbGVkIHdvcmssIHdlIGNhbiB0YWtlIG91ciB0aW1lIGFuZCBh
bGxvdyB0aGUgZW5naW5lcyB0bwo+ID4gPiBxdWllc2NlLiBTaW5jZSB3ZSd2ZSBzdG9wcGVkIHN1
Ym1pc3Npb24gdG8gdGhlIGVuZ2luZSwgYW5kIGlmIHdlIHdhaXQKPiA+ID4gbG9uZyBlbm91Z2gg
YW4gaW5ub2NlbnQgY29udGV4dCBzaG91bGQgY29tcGxldGUsIGxlYXZpbmcgdGhlIGVuZ2luZSBp
ZGxlLgo+ID4gPiBTbyBieSB3YWl0aW5nIGEgc2hvcnQgYW1vdW50IG9mIHRpbWUsIHdlIHNob3Vs
ZCBwcmV2ZW50IGNsb2JiZXJpbmcgb3RoZXIKPiA+ID4gdXNlcnMgd2hlbiByZXNldHRpbmcgYSBz
dHVjayBjb250ZXh0Lgo+ID4gPiAKPiA+ID4gU3VnZ2VzdGVkLWJ5OiBKb29uYXMgTGFodGluZW4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IFN1Z2dlc3RlZC1ieTogSm9u
IEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KPiA+ID4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+IENjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gUmV2aWV3
ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4g
PiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmlsZSAgICAgICAg
IHwgMTEgKysrKysrKysrKysKPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9jcy5jICAgIHwgMjAgKysrKysrKysrKysrKysrKysrKy0KPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgIDQgKysrKwo+ID4gPiAgMyBmaWxl
cyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+IAo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCj4gPiA+IGluZGV4IDQ4ZGY4ODg5YTg4YS4u
M2EzODgxZDVlNDRiIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29u
ZmlnLnByb2ZpbGUKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9m
aWxlCj4gPiA+IEBAIC0yNSwzICsyNSwxNCBAQCBjb25maWcgRFJNX0k5MTVfU1BJTl9SRVFVRVNU
Cj4gPiA+ICAgICAgICAgTWF5IGJlIDAgdG8gZGlzYWJsZSB0aGUgaW5pdGlhbCBzcGluLiBJbiBw
cmFjdGljZSwgd2UgZXN0aW1hdGUKPiA+ID4gICAgICAgICB0aGUgY29zdCBvZiBlbmFibGluZyB0
aGUgaW50ZXJydXB0IChpZiBjdXJyZW50bHkgZGlzYWJsZWQpIHRvIGJlCj4gPiA+ICAgICAgICAg
YSBmZXcgbWljcm9zZWNvbmRzLgo+ID4gPiArCj4gPiA+ICtjb25maWcgRFJNX0k5MTVfU1RPUF9U
SU1FT1VUCj4gPiA+ICsgICAgIGludCAiSG93IGxvbmcgdG8gd2FpdCBmb3IgYW4gZW5naW5lIHRv
IHF1aWVzY2UgZ3JhY2VmdWxseSBiZWZvcmUgcmVzZXQgKG1zKSIKPiA+ID4gKyAgICAgZGVmYXVs
dCAxMDAgIyBtaWxsaXNlY29uZHMKPiA+ID4gKyAgICAgaGVscAo+ID4gPiArICAgICAgIEJ5IHN0
b3BwaW5nIHN1Ym1pc3Npb24gYW5kIHNsZWVwaW5nIGZvciBhIHNob3J0IHRpbWUgYmVmb3JlIHJl
c2V0dGluZwo+ID4gPiArICAgICAgIHRoZSBHUFUsIHdlIGFsbG93IHRoZSBpbm5vY2VudCBjb250
ZXh0cyBhbHNvIG9uIHRoZSBzeXN0ZW0gdG8gcXVpZXNjZS4KPiA+ID4gKyAgICAgICBJdCBpcyB0
aGVuIGxlc3MgbGlrZWx5IGZvciBhIGhhbmdpbmcgY29udGV4dCB0byBjYXVzZSBjb2xsYXRlcmFs
Cj4gPiA+ICsgICAgICAgZGFtYWdlIGFzIHRoZSBzeXN0ZW0gaXMgcmVzZXQgaW4gb3JkZXIgdG8g
cmVjb3Zlci4gVGhlIGNvcm9sbGFyeSBpcwo+ID4gPiArICAgICAgIHRoYXQgdGhlIHJlc2V0IGl0
c2VsZiBtYXkgdGFrZSBsb25nZXIgYW5kIHNvIGJlIG1vcmUgZGlzcnVwdGl2ZSB0bwo+ID4gPiAr
ICAgICAgIGludGVyYWN0aXZlIG9yIGxvdyBsYXRlbmN5IHdvcmtsb2Fkcy4KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiA+ID4gaW5kZXggMGUyMDcxMzYw
M2VjLi5lNDIwM2ViNDQxMzkgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9jcy5jCj4gPiA+IEBAIC0zMDgsNiArMzA4LDkgQEAgc3RhdGljIGludCBp
bnRlbF9lbmdpbmVfc2V0dXAoc3RydWN0IGludGVsX2d0ICpndCwgZW51bSBpbnRlbF9lbmdpbmVf
aWQgaWQpCj4gPiA+ICAgICAgIGVuZ2luZS0+aW5zdGFuY2UgPSBpbmZvLT5pbnN0YW5jZTsKPiA+
ID4gICAgICAgX19zcHJpbnRfZW5naW5lX25hbWUoZW5naW5lKTsKPiA+ID4gIAo+ID4gPiArICAg
ICBlbmdpbmUtPnByb3BzLnN0b3BfdGltZW91dF9tcyA9Cj4gPiA+ICsgICAgICAgICAgICAgQ09O
RklHX0RSTV9JOTE1X1NUT1BfVElNRU9VVDsKPiA+IENvbXBhcmUgdG8gcHJldmlvdXMgdmVyc2lv
biB3aGVyZSB5b3UgdXNlZCB0aGUgQ09ORklHIHZhcmlhYmxlIGRpcmVjdGx5LAo+ID4gd2hhdCBp
cyB0aGUgYmVuZWZpdCBvZiB1c2luZyBpdCB0aHJvdWdoIGEgdmFyaWFibGU/IFNvIHRoYXQgd2Ug
Y291bGQKPiA+IGFsdGVyIGl0IGluIHJ1bnRpbWU/Cj4gCj4gVGhhdCBpcyB3aGF0IHRoZSBuZXh0
IHNlcmllcyBwcm9wb3Nlcy4gQWxzbyBpdCB0dXJucyBvdXQgdG8gYmUgbW9yZQo+IGVhc2lseSB0
ZXN0YWJsZSBpZiBvbmUgaXMgYWJsZSB0byBhbHRlciB0aGUgdGltZW91dHMgZm9yIHRlc3Rpbmcu
ClRoYW5rcyBmb3IgZXhwbGFpbmluZyBDaHJpcyEKCi1SYW0uCj4gLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
