Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9351485C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 12:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8565F89864;
	Mon,  6 May 2019 10:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDD3A89864
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 10:32:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 03:32:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,437,1549958400"; d="scan'208";a="140444695"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.81])
 ([10.66.116.81])
 by orsmga008.jf.intel.com with ESMTP; 06 May 2019 03:32:06 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190430152108.31814-1-shashank.sharma@intel.com>
 <20190430152108.31814-3-shashank.sharma@intel.com>
 <20190503150532.GQ24299@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <982fa686-7b4f-4dd0-5b90-40e153c63753@intel.com>
Date: Mon, 6 May 2019 16:02:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503150532.GQ24299@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/icl: Add register
 definitions for Multi Segmented gamma
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMy8yMDE5IDg6MzUgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBUdWUsIEFw
ciAzMCwgMjAxOSBhdCAwODo1MTowNlBNICswNTMwLCBTaGFzaGFuayBTaGFybWEgd3JvdGU6Cj4+
IEZyb206IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4+Cj4+IEFkZCBtYWNy
b3MgdG8gZGVmaW5lIG11bHRpIHNlZ21lbnRlZCBnYW1tYSByZWdpc3RlcnMKPj4KPj4gVjI6IEFk
ZHJlc3NlZCBWaWxsZSdzIGNvbW1lbnRzOgo+PiAgICAgIAlBZGQgZ2VuLWxhYmxlIGJlZm9yZSBi
aXQgZGVmaW5pdGlvbgo+PiAgICAgIEFkZHJlc3NlZCBKYW5pJ3MgY29tbWVudAo+PiAJLSBVc2Ug
UkVHX0dFTk1BU0soKSBhbmQgUkVHX0JJVCgpCj4+Cj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGxpbnV4LmludGVsLmNvbT4KPj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8
c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCB8IDE5ICsrKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdl
ZCwgMTkgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gaW5kZXgg
NmYwYTA4NjZjODAyLi43ZDEwYjhkMDBkNjQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAo+PiBAQCAtNzE5OCw3ICs3MTk4LDEwIEBAIGVudW0gewo+PiAgICNkZWZpbmUgIEdBTU1BX01P
REVfTU9ERV84QklUCSgwIDw8IDApCj4+ICAgI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEwQklU
CSgxIDw8IDApCj4+ICAgI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEyQklUCSgyIDw8IDApCj4+
ICsvKiBpdmItYmR3ICovCj4+ICAgI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFX1NQTElUCSgzIDw8
IDApCj4+ICsvKiBpY2wgKyAqLwo+PiArI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01V
TFRJX1NFR01FTlRFRAkoMyA8PCAwKQo+IEkgd291bGQgcHV0IHRoZSBjb21tZW50cyBhdCB0aGUg
ZW5kIG9mIHRoZSBsaW5lCj4gI2RlZmluZSAuLi4gLyogaXZiLWJkdyAqLwo+Cj4+ICAgCj4+ICAg
LyogRE1DL0NTUiAqLwo+PiAgICNkZWZpbmUgQ1NSX1BST0dSQU0oaSkJCV9NTUlPKDB4ODAwMDAg
KyAoaSkgKiA0KQo+PiBAQCAtMTAxNDUsNiArMTAxNDgsMjIgQEAgZW51bSBza2xfcG93ZXJfZ2F0
ZSB7Cj4+ICAgI2RlZmluZSBQUkVfQ1NDX0dBTUNfSU5ERVgocGlwZSkJX01NSU9fUElQRShwaXBl
LCBfUFJFX0NTQ19HQU1DX0lOREVYX0EsIF9QUkVfQ1NDX0dBTUNfSU5ERVhfQikKPj4gICAjZGVm
aW5lIFBSRV9DU0NfR0FNQ19EQVRBKHBpcGUpCQlfTU1JT19QSVBFKHBpcGUsIF9QUkVfQ1NDX0dB
TUNfREFUQV9BLCBfUFJFX0NTQ19HQU1DX0RBVEFfQikKPj4gICAKPj4gKy8qIEFkZCByZWdpc3Rl
cnMgZm9yIEdlbjExIE11bHRpIFNlZ21lbnRlZCBHYW1tYSBNb2RlICovCj4gV2VpcmQgY29tbWVu
dC4gJ3MvQWRkIHJlZ2lzdGVycyBmb3IgLy8nIG1pZ2h0IG1ha2UgaXQgc29tZXdoYXQgdXNlZnVs
Lgo+IEFuZCBubyBwb2ludCBpbiBjYXBpdGFsaXppbmcgZXZlcnkgd29yZC4gVGhpcyBpc24ndCBh
IG1vdmllIHRpdGxlL2V0Yy4KPgo+IFdpdGggdGhvc2Ugc29ydGVkIHRoaXMgaXMKPiBSZXZpZXdl
ZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
YW5rcyBmb3IgdGhlIHJldmlldywgd2lsbCBkbyB0aGUgY2hhbmdlcyBhcyBzdWdnZXN0ZWQuCgot
IFNoYXNoYW5rCgo+PiArI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0EJMHg0QTQw
OAo+PiArI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0IJMHg0QUMwOAo+PiArI2Rl
ZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHTUVOVF9BVVRPX0lOQ1JFTUVOVAkJUkVHX0JJVCgxNSkK
Pj4gKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR01FTlRfSU5ERVhfVkFMVUVfTUFTSwlSRUdf
R0VOTUFTSyg0LCAwKQo+PiArCj4+ICsjZGVmaW5lIF9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9B
CTB4NEE0MEMKPj4gKyNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0IJMHg0QUMwQwo+
PiArCj4+ICsjZGVmaW5lIFBSRUNfUEFMX01VTFRJX1NFR19JTkRFWChwaXBlKQlfTU1JT19QSVBF
KHBpcGUsIFwKPj4gKwkJCQkJX1BBTF9QUkVDX01VTFRJX1NFR19JTkRFWF9BLCBcCj4+ICsJCQkJ
CV9QQUxfUFJFQ19NVUxUSV9TRUdfSU5ERVhfQikKPj4gKyNkZWZpbmUgUFJFQ19QQUxfTVVMVElf
U0VHX0RBVEEocGlwZSkJX01NSU9fUElQRShwaXBlLCBcCj4+ICsJCQkJCV9QQUxfUFJFQ19NVUxU
SV9TRUdfREFUQV9BLCBcCj4+ICsJCQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9CKQo+PiAr
Cj4+ICAgLyogcGlwZSBDU0MgJiBkZWdhbW1hL2dhbW1hIExVVHMgb24gQ0hWICovCj4+ICAgI2Rl
ZmluZSBfQ0dNX1BJUEVfQV9DU0NfQ09FRkYwMQkoVkxWX0RJU1BMQVlfQkFTRSArIDB4Njc5MDAp
Cj4+ICAgI2RlZmluZSBfQ0dNX1BJUEVfQV9DU0NfQ09FRkYyMwkoVkxWX0RJU1BMQVlfQkFTRSAr
IDB4Njc5MDQpCj4+IC0tIAo+PiAyLjE3LjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
