Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 715FD6B0AB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 22:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826976E145;
	Tue, 16 Jul 2019 20:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8C06E145
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 20:55:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 13:55:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,271,1559545200"; d="scan'208";a="251280592"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 16 Jul 2019 13:55:53 -0700
Date: Tue, 16 Jul 2019 13:57:32 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20190716205732.GF2632@intel.com>
References: <20190715234056.17112-1-anusha.srivatsa@intel.com>
 <20190716181511.GB2632@intel.com>
 <83F5C7385F545743AD4FB2A62F75B0734810252B@ORSMSX108.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83F5C7385F545743AD4FB2A62F75B0734810252B@ORSMSX108.amr.corp.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs
 supported by TGL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDE6MjY6MTlQTSAtMDcwMCwgU3JpdmF0c2EsIEFudXNo
YSB3cm90ZToKPiAKPiAKPiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+RnJvbTogTmF2
YXJlLCBNYW5hc2kgRAo+ID5TZW50OiBUdWVzZGF5LCBKdWx5IDE2LCAyMDE5IDExOjE1IEFNCj4g
PlRvOiBTcml2YXRzYSwgQW51c2hhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+ID5DYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+U3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2RwL2Rz
YzogQWRkIFN1cHBvcnQgZm9yIGFsbCBCUENzIHN1cHBvcnRlZCBieSBUR0wKPiA+Cj4gPk9uIE1v
biwgSnVsIDE1LCAyMDE5IGF0IDA0OjQwOjU2UE0gLTA3MDAsIEFudXNoYSBTcml2YXRzYSB3cm90
ZToKPiA+PiBEU0MgZW5naW5lIG9uIElDTCBzdXBwb3J0cyBvbmx5IDggYW5kIDEwIEJQQyBhcyB0
aGUgaW5wdXQgQlBDLiBCdXQgRFNDCj4gPj4gZW5naW5lIGluIFRHTCBzdXBwb3J0cyA4LCAxMCBh
bmQgMTIgQlBDLgo+ID4+IEFkZCAxMiBCUEMgc3VwcG9ydCBmb3IgRFNDIHdoaWxlIGNhbGN1bGF0
aW5nIGNvbXByZXNzaW9uCj4gPj4gY29uZmlndXJhdGlvbi4KPiA+Pgo+ID4+IHYyOiBSZW1vdmUg
dGhlIHNlcGFyYXRlIGRlZmluZSBUR0xfRFBfRFNDX01BWF9TVVBQT1JURURfQlBDIGFuZCB1c2UK
PiA+PiB0aGUgdmFsdWUgZGlyZWN0bHkuKE1vcmUgc3VjaCBkZWZpbmVzIGNhbiBiZSByZW1vdmVk
IGFzIHBhcnQgb2YgZnV0dXJlCj4gPj4gcGF0Y2hlcykuIChWaWxsZSkKPiA+Cj4gPklNTyB3aGF0
IFZpbGxlIGFza2VkIHRvIGRvIGluIGhpcyBjb21tZW50IHdhcyB0byByZW1vdmUgYWxsIHRoZSAj
ZGVmaW5lcyBmb3IgdGhlCj4gPm1heCBEU0MgQlBDIHNvIHJlbW92ZSB0aGUgb25lcyBmb3IgOCBh
bmQgMTAgYWxzbyB0byBtYWsgZWl0IG1vcmUgcmVhZGFibGUgYW5kCj4gPnRoYXQgdXNlciBkb2Vz
IG5vdCBoYXZlIHRvIGh1bnQgZm9yIHRoZSAjZGVmaW5lcyBmb3IgZWl0aGVyIG9mIHRoZXNlLgo+
IAo+IFllcyB0aG9zZSBjaGFuZ2VzIGNhbiBiZSBwYXJ0IG9mIGEgZm9sbG93aW5nIHBhdGNoLiBU
aGlzIGlzIFRHTCBzcGVjaWZpYy4KCklNTywgeW91IGNvdWxkIGp1c3QgbWFrZSB0aGVtIGluIHRo
ZSBzYW1lIHBhdGNoIHNpbmNlIHRoZXkgYXJlIG1pbm9yIGNoYW5nZXMKaGFwcGVuaW5nIGJlY2F1
c2Ugb2YgZGlmZXJlbnQgbWF4IGxpbWl0cyBmb3IgVEdMLCBzbyBqdXN0IHNheSBpbiB0aGUgY29t
bWl0IG1lc3NhZ2UKd2hpbGUgYXQgaXQgYWxzbyByZW1vdmUgdGhlICNkZWZpbmVzIGFuZCB1c2Ug
dGhlIHZhbHVlcyBkaXJlY3RseSBmb3IgSUNMIGxpbWl0cyBhcyB3ZWxsLgoKTWFuYXNpCgo+IAo+
IEFudXNoYSAKPiA+Pgo+ID4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgo+ID4+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50
ZWwuY29tPgo+ID4+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZh
dHNhQGludGVsLmNvbT4KPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIHwgOCArKysrKystLQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCj4gPj4gaW5kZXggMGViNWQ2NmY4N2E3Li5hYThiZmI3NTRmYzEg
MTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
Cj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPj4g
QEAgLTE5MTQsOCArMTkxNCwxMiBAQCBzdGF0aWMgaW50IGludGVsX2RwX2RzY19jb21wdXRlX2Nv
bmZpZyhzdHJ1Y3QKPiA+aW50ZWxfZHAgKmludGVsX2RwLAo+ID4+ICAJaWYgKCFpbnRlbF9kcF9z
dXBwb3J0c19kc2MoaW50ZWxfZHAsIHBpcGVfY29uZmlnKSkKPiA+PiAgCQlyZXR1cm4gLUVJTlZB
TDsKPiA+Pgo+ID4+IC0JZHNjX21heF9icGMgPSBtaW5fdCh1OCwgRFBfRFNDX01BWF9TVVBQT1JU
RURfQlBDLAo+ID4+IC0JCQkgICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9icGMpOwo+ID4+
ICsJLyogTWF4IERTQyBJbnB1dCBCUEMgZm9yIFRHTCsgaXMgMTIgKi8KPiA+PiArCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyKQo+ID4+ICsJCWRzY19tYXhfYnBjID0gbWluX3QodTgsIDEy
LCBjb25uX3N0YXRlLT5tYXhfcmVxdWVzdGVkX2JwYyk7Cj4gPj4gKwllbHNlCj4gPj4gKwkJZHNj
X21heF9icGMgPSBtaW5fdCh1OCwgRFBfRFNDX01BWF9TVVBQT1JURURfQlBDLAo+ID4+ICsJCQkJ
ICAgIGNvbm5fc3RhdGUtPm1heF9yZXF1ZXN0ZWRfYnBjKTsKPiA+Cj4gPlVzZSAxMCBoZXJlIGRp
cmVjdGx5Cj4gPgo+ID4+Cj4gPj4gIAlwaXBlX2JwcCA9IGludGVsX2RwX2RzY19jb21wdXRlX2Jw
cChpbnRlbF9kcCwgZHNjX21heF9icGMpOwo+ID4+ICAJaWYgKHBpcGVfYnBwIDwgRFBfRFNDX01J
Tl9TVVBQT1JURURfQlBDICogMykgewo+ID4KPiA+VXNlIDggaGVyZSBkaXJlY3RseQo+ID4KPiA+
TWFuYXNpCj4gPj4gLS0KPiA+PiAyLjIxLjAKPiA+PgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
