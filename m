Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0745629254
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:04:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB7746E09C;
	Fri, 24 May 2019 08:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6509B6E09C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:03:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 01:03:55 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga006.jf.intel.com with ESMTP; 24 May 2019 01:03:54 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1744B5C131C; Fri, 24 May 2019 11:03:00 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190425055005.21790-1-chris@chris-wilson.co.uk>
References: <20190424210239.31902-1-dongwon.kim@intel.com>
 <20190425055005.21790-1-chris@chris-wilson.co.uk>
Date: Fri, 24 May 2019 11:03:00 +0300
Message-ID: <87r28o2saz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: enable support for
 headerless msgs
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gRnJvbTog
RG9uZ3dvbiBLaW0gPGRvbmd3b24ua2ltQGludGVsLmNvbT4KPgo+IFNldHRpbmcgYml0NSAoaGVh
ZGVybGVzcyBtc2cgZm9yIHByZWVtcHRhYmxlIEdQR1BVIGNvbnRleHQpIG9mIFNBTVBMRVJfTU9E
RQo+IHJlZ2lzdGVyIHRvIGVuYWJsZSBzdXBwb3J0IGZvciB0aGUgaGVhZGxlc3MgbXNncyBvbiBn
ZW4xMS4gTm9uZSBvZiBleGlzdGluZwo+IHVzZSBjYXNlcyB3aWxsIGJlIGFmZmVjdGVkIGJ5IHRo
aXMgYXMgdGhpcyBjaGFuZ2UgbWFrZXMgYm90aCB0eXBlcyBvZiBtZXNzYWdlCj4gLSBoZWFkZXJs
ZXNzIGFuZCB3LyBoZWFkZXIgc3VwcG9ydGVkIGF0IHRoZSBzYW1lIHRpbWUuIEl0IGFsc28gY29t
cGxpZXMgd2l0aAo+IHRoZSBuZXcgcmVjb21tZW5kYXRpb24gZm9yIHRoZSBkZWZhdWx0IGJpdCB2
YWx1ZSBmb3IgdGhlIG5leHQgZ2VuLgo+Cj4gdjI6IHJld3JvdGUgY29tbWl0IG1lc3NhZ2UgdG8g
aW5jbHVkZSBtb3JlIGluZm9ybWF0aW9uCj4gdjM6IHNldHRpbmcgdGhlIGJpdCBpbiBpY2xfY3R4
X3dvcmthcm91bmRzX2luaXQoKQo+Cj4gU2lnbmVkLW9mZi1ieTogRG9uZ3dvbiBLaW0gPGRvbmd3
b24ua2ltQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gTWVyZWx5IGtpY2tpbmcgQ0kuCj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA0ICsrKysKPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDEgKwo+ICAyIGZp
bGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggMzY0Njk2MjIxZmQ3Li5lMDMxODFhZWI0NTEg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBA
QCAtNTc1LDYgKzU3NSwxMCBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJV0FfU0VUX0ZJRUxEX01BU0tFRChH
RU44X0NTX0NISUNLRU4xLAo+ICAJCQkgICAgR0VOOV9QUkVFTVBUX0dQR1BVX0xFVkVMX01BU0ss
Cj4gIAkJCSAgICBHRU45X1BSRUVNUFRfR1BHUFVfVEhSRUFEX0dST1VQX0xFVkVMKTsKPiArCj4g
KwkvKiBhbGxvdyBoZWFkZXJsZXNzIG1lc3NhZ2VzIGZvciBwcmVlbXB0YWJsZSBHUEdQVSBjb250
ZXh0ICovCj4gKwlXQV9TRVRfQklUX01BU0tFRChHRU4xMF9TQU1QTEVSX01PREUsCj4gKwkJCSAg
R0VOMTFfU0FNUExFUl9FTkFCTEVfSEVBRExFU1NfTVNHKTsKPiAgfQo+ICAKPiAgdm9pZCBpbnRl
bF9lbmdpbmVfaW5pdF9jdHhfd2Eoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGI3NDgyNGYwYjViMS4uYjQ1MDQyZjcxYzBhIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTg4NjIsNiArODg2Miw3IEBAIGVudW0g
ewo+ICAjZGVmaW5lICAgR0VOMTFfTFNOX1VOU0xDVkNfR0FGU19IQUxGX1NGX01BWEFMTE9DCSgx
IDw8IDcpCj4gIAo+ICAjZGVmaW5lIEdFTjEwX1NBTVBMRVJfTU9ERQkJX01NSU8oMHhFMThDKQo+
ICsjZGVmaW5lICAgR0VOMTFfU0FNUExFUl9FTkFCTEVfSEVBRExFU1NfTVNHCSgxIDw8IDUpCj4g
IAo+ICAvKiBJVllCUklER0UgRFBGICovCj4gICNkZWZpbmUgR0VON19MM0NERVJSU1QxKHNsaWNl
KQkJX01NSU8oMHhCMDA4ICsgKHNsaWNlKSAqIDB4MjAwKSAvKiBMM0NEIEVycm9yIFN0YXR1cyAx
ICovCj4gLS0gCj4gMi4yMC4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
