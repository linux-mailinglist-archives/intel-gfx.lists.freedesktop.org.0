Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3164A64F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086836E190;
	Tue, 18 Jun 2019 16:10:45 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 951016E190
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 16:10:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 09:10:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="357904788"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 09:10:42 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20190618010108.27499-1-John.C.Harrison@Intel.com>
 <20190618010108.27499-2-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d4bb81ca-e657-fc94-6263-2b791b9c9033@linux.intel.com>
Date: Tue, 18 Jun 2019 17:10:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618010108.27499-2-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Support flags in whitlist WAs
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE4LzA2LzIwMTkgMDI6MDEsIEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20gd3JvdGU6Cj4g
RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPiAKPiBOZXdl
ciBoYXJkd2FyZSBhZGRzIGZsYWdzIHRvIHRoZSB3aGl0ZWxpc3Qgd29yay1hcm91bmQgcmVnaXN0
ZXIuIFRoZXNlCj4gYWxsb3cgcGVyIGFjY2VzcyBkaXJlY3Rpb24gcHJpdmlsZWdlcyBhbmQgcmFu
Z2VzLgoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+CgpSZWdhcmRzLAoKVHZydGtvCgo+IFNpZ25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpv
aG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hh
IDxyb2JlcnQubS5mb3NoYUBpbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyB8IDkgKysrKysrKystCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgICAgIHwgNyArKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKPiBpbmRleCAxNjViMGE0NWUwMDkuLmFlODIzNDBmZmY0NSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xMDEyLDcg
KzEwMTIsNyBAQCBib29sIGludGVsX2d0X3ZlcmlmeV93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQKPiAtd2hpdGVsaXN0
X3JlZyhzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnKQo+ICt3aGl0ZWxp
c3RfcmVnX2V4dChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIg
ZmxhZ3MpCj4gICB7Cj4gICAJc3RydWN0IGk5MTVfd2Egd2EgPSB7Cj4gICAJCS5yZWcgPSByZWcK
PiBAQCAtMTAyMSw5ICsxMDIxLDE2IEBAIHdoaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2FfbGlz
dCAqd2FsLCBpOTE1X3JlZ190IHJlZykKPiAgIAlpZiAoR0VNX0RFQlVHX1dBUk5fT04od2FsLT5j
b3VudCA+PSBSSU5HX01BWF9OT05QUklWX1NMT1RTKSkKPiAgIAkJcmV0dXJuOwo+ICAgCj4gKwl3
YS5yZWcucmVnIHw9IGZsYWdzOwo+ICAgCV93YV9hZGQod2FsLCAmd2EpOwo+ICAgfQo+ICAgCj4g
K3N0YXRpYyB2b2lkCj4gK3doaXRlbGlzdF9yZWcoc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBp
OTE1X3JlZ190IHJlZykKPiArewo+ICsJd2hpdGVsaXN0X3JlZ19leHQod2FsLCByZWcsIFJJTkdf
Rk9SQ0VfVE9fTk9OUFJJVl9SVyk7Cj4gK30KPiArCj4gICBzdGF0aWMgdm9pZCBnZW45X3doaXRl
bGlzdF9idWlsZChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3KQo+ICAgewo+ICAgCS8qIFdhVkZFU3Rh
dGVBZnRlclBpcGVDb250cm9sd2l0aE1lZGlhU3RhdGVDbGVhcjpza2wsYnh0LGdsayxjZmwgKi8K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCA3YTI2NzY2YmE4NGQuLmNjMjk1YTRmNmU5
MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC0yNTEzLDYgKzI1MTMsMTMgQEAg
ZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgewo+ICAgI2RlZmluZSAgIFJJTkdfV0FJVF9TRU1BUEhP
UkUJKDEgPDwgMTApIC8qIGdlbjYrICovCj4gICAKPiAgICNkZWZpbmUgUklOR19GT1JDRV9UT19O
T05QUklWKGJhc2UsIGkpIF9NTUlPKCgoYmFzZSkgKyAweDREMCkgKyAoaSkgKiA0KQo+ICsjZGVm
aW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX1JXCQkoMCA8PCAyOCkgICAgLyogQ0ZMKyAmIEdl
bjExKyAqLwo+ICsjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX1JECQkoMSA8PCAyOCkK
PiArI2RlZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9XUgkJKDIgPDwgMjgpCj4gKyNkZWZp
bmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfMQkJKDAgPDwgMCkgICAgIC8qIENGTCsg
JiBHZW4xMSsgKi8KPiArI2RlZmluZSAgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SQU5HRV80CQko
MSA8PCAwKQo+ICsjZGVmaW5lICAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdFXzE2CSgyIDw8
IDApCj4gKyNkZWZpbmUgICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNjQJKDMgPDwgMCkK
PiAgICNkZWZpbmUgICBSSU5HX01BWF9OT05QUklWX1NMT1RTICAxMgo+ICAgCj4gICAjZGVmaW5l
IEdFTjdfVExCX1JEX0FERFIJX01NSU8oMHg0NzAwKQo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
