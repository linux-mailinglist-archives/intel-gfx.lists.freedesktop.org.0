Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6430B35FA1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 16:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DD889C3B;
	Wed,  5 Jun 2019 14:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39FE789C3B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 14:51:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 07:51:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,550,1549958400"; d="scan'208";a="181963142"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2019 07:51:37 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x55Epa8Z026249; Wed, 5 Jun 2019 15:51:36 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190604231529.8332-1-daniele.ceraolospurio@intel.com>
Date: Wed, 05 Jun 2019 16:51:36 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z2w18ahdxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190604231529.8332-1-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/wopcm: update default size for
 gen11+
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwNSBKdW4gMjAxOSAwMToxNToyOSArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gVGhlIHNpemUg
aGFzIGJlZW4gaW5jcmVhc2VkIHRvIDJNQiBzdGFydGluZyBmcm9tIGdlbjExLiBHdUMgYW5kIEh1
QyBGV3MKCm5pdDogcy9nZW4xMS9HZW4xMQoKPiBmaXQgaW4gMU1CIHNvIHdlIHdlcmUgZmluZSBl
dmVuIHdpdGggdGhlIGxlZ2FjeSBkZWZpbmUsIGJ1dCBsZXQncyBzdGlsbAo+IG1vdmUgdG8gdGhl
IGNvcnJlY3Qgb25lIGJlZm9yZSB0aGUgYmxvYnMgZ3JvdyB0byBhdm9pZCBiZWluZyBjYXVnaHQg
b2ZmCj4gZ3VhcmQgaW4gdGhlIGZ1dHVyZS4KPgo+IEJzcGVjOiA0NDk4MgoKSSB0aGluayBmb3Ig
SUNMIHRoaXMgc2hvdWxkIGJlIDEyNjkwCgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBX
YWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jIHwgMTAgKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMgIAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfd29wY20uYwo+IGluZGV4IGY4MmE0MTVlYTJiYS4uNmNiOTkzZWVhMjA2IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF93b3BjbS5jCj4gQEAgLTQxLDggKzQxLDkgQEAKPiAgICogY29u
dGV4dCkuCj4gICAqLwo+IC0vKiBEZWZhdWx0IFdPUENNIHNpemUgMU1CLiAqLwo+IC0jZGVmaW5l
IEdFTjlfV09QQ01fU0laRQkJCSgxMDI0ICogMTAyNCkKPiArLyogRGVmYXVsdCBXT1BDTSBzaXpl
IGlzIDJNQiBmcm9tIGdlbjExLCAxTUIgb24gcHJldmlvdXMgcGxhdGZvcm1zICovCgpuaXQ6IHMv
Z2VuMTEvR2VuMTEKCj4gKyNkZWZpbmUgR0VOMTFfV09QQ01fU0laRQkJKFNaXzJNKQo+ICsjZGVm
aW5lIEdFTjlfV09QQ01fU0laRQkJCShTWl8xTSkKPiAgLyogMTZLQiBXT1BDTSAoUlNWRCBXT1BD
TSkgaXMgcmVzZXJ2ZWQgZnJvbSBIdUMgZmlybXdhcmUgdG9wLiAqLwo+ICAjZGVmaW5lIFdPUENN
X1JFU0VSVkVEX1NJWkUJCSgxNiAqIDEwMjQpCj4gQEAgLTcxLDcgKzcyLDEwIEBACj4gICAqLwo+
ICB2b2lkIGludGVsX3dvcGNtX2luaXRfZWFybHkoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkK
PiAgewo+IC0Jd29wY20tPnNpemUgPSBHRU45X1dPUENNX1NJWkU7Cj4gKwlpZiAoSU5URUxfR0VO
KHdvcGNtX3RvX2k5MTUod29wY20pKSA+PSAxMSkKPiArCQl3b3BjbS0+c2l6ZSA9IEdFTjExX1dP
UENNX1NJWkU7Cj4gKwllbHNlCj4gKwkJd29wY20tPnNpemUgPSBHRU45X1dPUENNX1NJWkU7CgpX
aGlsZSBoZXJlLCBtYXliZSB3ZSBzaG91bGQgbm90IHRyeSB0byBzZXR1cCBXT1BDTSBzaXplIG9u
IHByZS1HZW45CnBsYXRmb3JtcyA/IFRoZW4gd2UgY2FuIGRyb3AgYmVsb3cgbG9nIGlmIFdPUENN
IGlzIHplcm8vbm90IGF2YWlsYWJsZS4KCj4gCURSTV9ERUJVR19EUklWRVIoIldPUENNIHNpemU6
ICV1S2lCXG4iLCB3b3BjbS0+c2l6ZSAvIDEwMjQpOwo+ICB9CgpXaXRoIGFib3ZlLApSZXZpZXdl
ZC1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
