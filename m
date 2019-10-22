Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAE5E03B5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 14:18:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61156E614;
	Tue, 22 Oct 2019 12:18:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CAD6E614
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 12:18:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 05:18:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="191443133"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.77])
 by orsmga008.jf.intel.com with ESMTP; 22 Oct 2019 05:18:05 -0700
MIME-Version: 1.0
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris.p.wilson@intel.com>
In-Reply-To: <20191021225249.33269-2-umesh.nerlige.ramappa@intel.com>
References: <20191021225249.33269-1-umesh.nerlige.ramappa@intel.com>
 <20191021225249.33269-2-umesh.nerlige.ramappa@intel.com>
Message-ID: <157174668389.8049.8504384111026932738@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 22 Oct 2019 13:18:03 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Add perf support on TGL
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgKDIwMTktMTAtMjEgMjM6NTI6NDkpCj4gRnJv
bTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IAo+
IFRoZSBkZXNpZ24gb2YgdGhlIE9BIHVuaXQgaGFzIGJlZW4gc3BsaXQgaW50byBzZXZlcmFsIHVu
aXRzLiBXZSBub3cKPiBoYXZlIGEgZ2xvYmFsIHVuaXQgKE9BRykgYW5kIGEgcmVuZGVyIHNwZWNp
ZmljIHVuaXQgKE9BUikuIFRoaXMgbGVhZHMKPiB0byBzb21lIGNoYW5nZXMgb24gaG93IHdlIHBy
b2dyYW0gdGhpbmdzLiBTb21lIGRldGFpbHMgOgo+IAo+IE9BUjoKPiAgIC0gaGFzIGl0cyBvd24g
c2V0IG9mIGNvdW50ZXIgcmVnaXN0ZXJzLCB0aGV5IGFyZSBwZXItY29udGV4dAo+ICAgICBzYXZl
ZC9yZXN0b3JlZAo+ICAgLSBjb3VudGVycyBhcmUgbm90IHdyaXR0ZW4gdG8gdGhlIGNpcmN1bGFy
IE9BIGJ1ZmZlcgo+ICAgLSBhIHNuYXBzaG90IG9mIHRoZSBjb3VudGVycyBjYW4gYmUgYWNxdWly
ZWQgd2l0aAo+ICAgICBNSV9SRUNPUkRfUEVSRl9DT1VOVCwgb3IgYSBzaW5nbGUgY291bnRlciBj
YW4gYmUgcmVhZCB3aXRoCj4gICAgIE1JX1NUT1JFX1JFR0lTVEVSX01FTS4KPiAKPiBPQUc6Cj4g
ICAtIGhhcyBnbG9iYWwgY291bnRlcnMgdGhhdCBpbmNyZW1lbnQgYWNyb3NzIGNvbnRleHQgc3dp
dGNoZXMKPiAgIC0gY291bnRlcnMgYXJlIHdyaXR0ZW4gaW50byB0aGUgY2lyY3VsYXIgT0EgYnVm
ZmVyIChpZiByZXF1ZXN0ZWQpCj4gCj4gdjI6IEZpeCBjaGVja3BhdGNoIHdhcm5pbmdzIG9uIGNv
ZGUgc3R5bGUgKEx1Y2FzKQo+IHYzOiAoVW1lc2gpCj4gICAtIFVwZGF0ZSByZWdpc3RlciBmcm9t
IHdoaWNoIHRhaWwsIHN0YXR1cyBhbmQgaGVhZCBhcmUgcmVhZAo+ICAgLSBVcGRhdGUgbG9naWMg
dG8gc2FtcGxlIGNvbnRleHQgcmVwb3J0cwo+ICAgLSBVcGRhdGUgd2hpdGVsaXN0IG11eCBhbmQg
YiBjb3VudGVyIHJlZ3MKPiB2NDogRml4IGEgYnVnIHdoZW4gdXBkYXRpbmcgY29udGV4dCBpbWFn
ZSBmb3IgbmV3IGNvbnRleHRzIChVbWVzaCkKPiB2NTogU3F1YXNoIHBhdGNoIGVuYWJsaW5nIHNh
dmUvcmVzdG9yZSBvZiBjb3VudGVycyBpbnRvIGNvbnRleHQgaW1hZ2UKPiAKPiAgICAgV2Ugd2Fu
dCB0aGlzIHNvIHdlIGNhbiBwcmVlbXB0IHBlcmZvcm1hbmNlIHF1ZXJpZXMgYW5kIGtlZXAgdGhl
Cj4gICAgIHN5c3RlbSByZXNwb25zaXZlIGV2ZW4gd2hlbiBsb25nIHJ1bm5pbmcgcXVlcmllcyBh
cmUgb25nb2luZy4gV2UKPiAgICAgYXZvaWQgZG9pbmcgaXQgZm9yIGFsbCBjb250ZXh0cy4KPiAK
PiAgICAgLSB1c2UgTFJJIHRvIG1vZGlmeSBjb250ZXh0IGNvbnRyb2wgKENocmlzKQo+ICAgICAt
IHVzZSBNQVNLRURfRklFTEQgdG8gcHJvZ3JhbSBqdXN0IHRoZSBtYXNrZWQgYml0cyAoQ2hyaXMp
Cj4gICAgIC0gZGlzYWJsZSBzYXZlL3Jlc3RvcmUgb2YgY291bnRlcnMgb24gY2xlYW51cCAoQ2hy
aXMpCj4gCj4gQlNwZWM6IDI4NzI3LCAzMDAyMQo+IAo+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBM
YW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+Cj4gLS0tCj4gQEAgLTI5Miw3ICsyOTMsOCBAQCBzdGF0aWMgdTMyIGk5MTVfcGVyZl9zdHJl
YW1fcGFyYW5vaWQgPSB0cnVlOwo+ICAjZGVmaW5lIElOVkFMSURfQ1RYX0lEIDB4ZmZmZmZmZmYK
PiAgCj4gIC8qIE9uIEdlbjgrIGF1dG9tYXRpY2FsbHkgdHJpZ2dlcmVkIE9BIHJlcG9ydHMgaW5j
bHVkZSBhICdyZWFzb24nIGZpZWxkLi4uICovCj4gLSNkZWZpbmUgT0FSRVBPUlRfUkVBU09OX01B
U0sgICAgICAgICAgIDB4M2YKPiArI2RlZmluZSBPQVJFUE9SVF9SRUFTT05fTUFTSyAgICAgICAg
ICAgKElTX0dFTihzdHJlYW0tPnBlcmYtPmk5MTUsIDEyKSA/IFwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgMHg3ZiA6IDB4M2YpCgpSZXNpc3QgdGVtcHRhdGlvbnMg
dG8gZG8gaW1wbGljaXQgcGFyYW1ldGVycy4KCkkgY2FuJ3QgZ3VhcmFudGVlIHRoYXQgYWxsIHRo
ZSByZWdpc3RlcnMgYXJlIGNvcnJlY3QsIGJ1dCB0aGUgcmVxdWVzdAplbWlzc2lvbiBldGMgZm9y
IGNvbmZpZyBzZXR1cCBzZWVtcyBmaW5lLgoKQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXMu
cC53aWxzb25AaW50ZWwuY29tPgotQ2hyaXMKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIENvcnBvcmF0aW9u
IChVSykgTGltaXRlZApSZWdpc3RlcmVkIE5vLiAxMTM0OTQ1IChFbmdsYW5kKQpSZWdpc3RlcmVk
IE9mZmljZTogUGlwZXJzIFdheSwgU3dpbmRvbiBTTjMgMVJKClZBVCBObzogODYwIDIxNzMgNDcK
ClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFs
IG1hdGVyaWFsIGZvcgp0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4g
QW55IHJldmlldyBvciBkaXN0cmlidXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0
ZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250YWN0
IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzLgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
