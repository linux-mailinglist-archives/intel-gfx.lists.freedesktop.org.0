Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56144C374A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB246E7E5;
	Tue,  1 Oct 2019 14:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75536E7E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:28:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:28:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="216084733"
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.66.99.86])
 ([10.66.99.86])
 by fmsmga004.fm.intel.com with ESMTP; 01 Oct 2019 07:28:41 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
References: <20191001063128.10566-1-swati2.sharma@intel.com>
 <87pnjgdhab.fsf@intel.com> <20191001142125.GL1208@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <8e3828f0-22b7-54e5-66ed-640384d38ac4@intel.com>
Date: Tue, 1 Oct 2019 19:58:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191001142125.GL1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/color: fix broken display in icl+
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
Cc: intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDEtT2N0LTE5IDc6NTEgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBUdWUsIE9j
dCAwMSwgMjAxOSBhdCAxMTowMzowOEFNICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gT24g
VHVlLCAwMSBPY3QgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4g
d3JvdGU6Cj4+PiBQcmVtYXR1cmUgZ2FtbWEgbHV0IHByZXByYXRpb24gYW5kIGxvYWRpbmcgd2hp
Y2ggd2FzIGdldHRpbmcKPj4+IHJlZmxlY3RlZCBpbiBmaXJzdCBtb2Rlc2V0IGNhdXNpbmcgZGlm
ZmVyZW50IGNvbG9ycyBvbgo+Pj4gc2NyZWVuIGR1cmluZyBib290Lgo+Pj4KPj4+IElzc3VlOiBJ
biBCSU9TLCBnYW1tYSBpcyBkaXNhYmxlZCBieSBkZWZhdWx0LiBIb3dldmVyLAo+Pj4gbGVnYWN5
X3JlYWRfbHV0cygpIHdhcyBnZXR0aW5nIGNhbGxlZCBldmVuIGJlZm9yZSB0aGUgbGVnYWN5X2xv
YWRfbHV0cygpCj4+PiB3aGljaCB3YXMgc2V0dGluZyBjcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1
dCBhbmQgZ2FtbWFfbHV0IHdhcwo+Pj4gcHJvZ3JhbW1lZCB3aXRoIGp1bmsgdmFsdWVzIHdoaWNo
IGxlZCB0byB2aXN1YWwgYXJ0aWZhY3RzIChkaWZmZXJlbnQKPj4+IGNvbG9yZWQgc2NyZWVucyBp
bnN0ZWFkIG9mIHVzdWFsIGJsYWNrIGR1cmluZyBib290KS4KPj4+Cj4+PiBGaXg6IENhbGxpbmcg
cmVhZF9sdXRzKCkgb25seSB3aGVuIGdhbW1hIGlzIGVuYWJsZWQgd2hpY2ggd2lsbCBoYXBwZW4K
Pj4+IGFmdGVyIGZpcnN0IG1vZGVzZXQuCj4+Pgo+Pj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgwOQo+Pgo+PiBJJ20gY29uZnVzZWQu
IElzIHRoZXJlIGEgY3VycmVudCBwcm9ibGVtIHVwc3RyZWFtIGFmdGVyIHRoZSByZXZlcnQKPj4g
MWI4NTg4NzQxZmRjICgiUmV2ZXJ0ICJkcm0vaTkxNS9jb2xvcjogRXh0cmFjdCBpY2xfcmVhZF9s
dXRzKCkiIik/Cj4+Cj4+IE9yIGRvZXMgdGhpcyBmaXggYSBwcm9ibGVtIHRoYXQgb25seSBvY2N1
cnMgaW4gY29uanVuY3Rpb24gd2l0aCB0aGUKPj4gcmV2ZXJ0ZWQgY29tbWl0PyBUaGVuIHNheSBz
by4KPj4KPj4gTm90ZSBpbmxpbmUuCj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEg
PHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKystCj4+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+Pj4gaW5kZXggZjEzMjhjMDhmNGFkLi5m
ODlhYTRiYjlmNDIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPj4+IEBAIC0xMDUyOCw3ICsxMDUyOCw5IEBAIHN0YXRpYyBib29sIGhh
c3dlbGxfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+Pj4gICAJCWk5
eHhfZ2V0X3BpcGVfY29sb3JfY29uZmlnKHBpcGVfY29uZmlnKTsKPj4+ICAgCX0KPj4+ICAgCj4+
PiAtCWludGVsX2NvbG9yX2dldF9jb25maWcocGlwZV9jb25maWcpOwo+Pj4gKwlpZiAoKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTEgJiYgKHBpcGVfY29uZmlnLT5nYW1tYV9tb2RlICYgUE9TVF9D
U0NfR0FNTUFfRU5BQkxFKSkgfHwKPj4+ICsJICAgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSAm
JiAocGlwZV9jb25maWctPmdhbW1hX2VuYWJsZSkpKQo+Pj4gKwkJCWludGVsX2NvbG9yX2dldF9j
b25maWcocGlwZV9jb25maWcpOwo+Pgo+PiBQdXQgYWxsIG9mIHRoZSBjb25kaXRpb25zIGluc2lk
ZSBpbnRlbF9jb2xvcl9nZXRfY29uZmlnKCkuCj4gCj4gSW4gZmFjdCBpbnNpZGUgdGhlIC5yZWFk
X2x1dHMoKSBzaW5jZSB0aGVzZSBjaGVja3MgYXJlIHBsYXRmb3JtCj4gc3BlY2lmaWMuCj4gCj4g
QWxzbyB0aGlzIGNoZWNrIGlzIHdyb25nIGZvciBDSFYgc2luY2UgaXQgaGFzIGEgc2VwYXJhdGUK
PiBlbmFibGUga25vYiBmb3IgdGhlIENHTSBMVVQgKGdhbW1hX2VuYWJsZSBvbmx5IGRlYWxzIHdp
dGggdGhlCj4gbGVnYWN5IExVVCkgPgpJbnNpZGUgcmVhZF9sdXRzKCkgSSBhbHJlYWR5IGhhdmUu
IEJ1dCB0aGUgaXNzdWUgaXMgZmlyc3QgcmVhZF9sdXQoKSAKd2lsbCBoYXBwZW4gYmVmb3JlIGxv
YWRfbHV0KCkgYW5kIGl0IHdpbGwgcmVwbGFjZSAKY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQg
YW5kIGdhbW1hX2x1dCB3aWxsIGJlIHByb2dyYW1tZWQgd2l0aCBqdW5rIAp2YWx1ZXMgd2hpY2gg
bGVkIHRvIG11bHRpcGxlIGNvbG9yZWQgc2NyZWVucy4gU28gd2UgbmVlZCBhIGNoZWNrIHRvIGNh
bGwKaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpIGl0c2VsZi4KCi0tIAp+U3dhdGkgU2hhcm1hCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
