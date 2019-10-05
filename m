Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 668EDCC6D2
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Oct 2019 02:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E88D6EC3C;
	Sat,  5 Oct 2019 00:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE006EC3C
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Oct 2019 00:07:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 17:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,258,1566889200"; d="scan'208";a="344133788"
Received: from dk-thinkpad-x260.jf.intel.com ([10.165.21.139])
 by orsmga004.jf.intel.com with ESMTP; 04 Oct 2019 17:07:52 -0700
Message-ID: <bfbedcb02668ba8c2bfaaf0c2f10ccb79311b4db.camel@intel.com>
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Fri, 04 Oct 2019 17:07:44 -0700
In-Reply-To: <20190924000328.29571-11-radhakrishna.sripada@intel.com>
References: <20190924000328.29571-1-radhakrishna.sripada@intel.com>
 <20190924000328.29571-11-radhakrishna.sripada@intel.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 10/11] drm/framebuffer/tgl: Format
 modifier for Intel Gen 12 render compression with Clear Color
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
Reply-To: dhinakaran.pandiyan@intel.com
Cc: nanley.g.chery@intel.com, Kalyan Kondapally <kalyan.kondapally@intel.com>,
 ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA5LTIzIGF0IDE3OjAzIC0wNzAwLCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3
cm90ZToKPiBHZW4xMiBkaXNwbGF5IGNhbiBkZWNvbXByZXNzIHN1cmZhY2VzIGNvbXByZXNzZWQg
YnkgcmVuZGVyIGVuZ2luZSB3aXRoIENsZWFyIENvbG9yLCBhZGQKPiBhIG5ldyBtb2RpZmllciBh
cyB0aGUgZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIHN1cmZhY2Ugd2FzIGNvbXByZXNzZWQgYnkg
cmVuZGVyIGVuZ2luZS4KPiAKPiBWMjogRGVzY3JpcHRpb24gY2hhbmdlcyBhcyBzdWdnZXN0ZWQg
YnkgUmFmYWVsLgo+IAo+IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiBDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBp
bnRlbC5jb20+Cj4gQ2M6IEthbHlhbiBLb25kYXBhbGx5IDxrYWx5YW4ua29uZGFwYWxseUBpbnRl
bC5jb20+Cj4gQ2M6IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZhZWwuYW50b2dub2xsaUBpbnRlbC5j
b20+Cj4gQ2M6IE5hbmxleSBDaGVyeSA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRl
bC5jb20+Cj4gLS0tCj4gIGluY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oIHwgMTEgKysrKysr
KysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9m
b3VyY2MuaAo+IGluZGV4IGM0YTRlMGZkYmVlNS4uOTljNjFlZTliNjFmIDEwMDY0NAo+IC0tLSBh
L2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9k
cm1fZm91cmNjLmgKPiBAQCAtNDM0LDYgKzQzNCwxNyBAQCBleHRlcm4gIkMiIHsKPiAgICovCj4g
ICNkZWZpbmUgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIGZvdXJjY19tb2Rf
Y29kZShJTlRFTCwgNykKPiAgCj4gKy8qCj4gKyAqIEludGVsIGNvbG9yIGNvbnRyb2wgc3VyZmFj
ZXMgQ2xlYXIgQ29sb3IoQ0NTX0NDKSBmb3IgR2VuLTEyIHJlbmRlciBjb21wcmVzc2lvbi4KPiAr
ICoKPiArICogVGhlIG1haW4gc3VyZmFjZSBpcyBZLXRpbGVkIGFuZCBpcyBhdCBwbGFuZSBpbmRl
eCAwIHdoZXJlYXMgQ0NTX0NDIGlzIGxpbmVhcgo+ICsgKiBhbmQgYXQgaW5kZXggMS4gCgpDbGVh
ciBjb2xvciBkYXRhIGlzIGZpeGVkIHNpemUgLSA2NGIsIHRoYXQgc2hvdWxkIGJlIGluIHRoZSBk
b2N1bWVudGF0aW9uIGhlcmUuCgoKPiBUaGUgY2xlYXIgY29sb3IgaXMgc3RvcmVkIGF0IGluZGV4
IDIsIGFuZCB0aGUgcGl0Y2ggc2hvdWxkCj4gKyAqIGJlIGlnbm9yZWQuIEEgQ0NTX0NDIGNhY2hl
IGxpbmUgY29ycmVzcG9uZHMgdG8gYW4gYXJlYSBvZiA0eDEgdGlsZXMgaW4gdGhlClRoYXQncyBh
IENDUyBjYWNoZSBsaW5lLCBub3QgYSBDQ1NfQ0MgY2FjaGUgbGluZSwgcmlnaHQ/Cgo+ICsgKiBt
YWluIHN1cmZhY2UuIFRoZSBtYWluIHN1cmZhY2UgcGl0Y2ggaXMgcmVxdWlyZWQgdG8gYmUgYSBt
dWx0aXBsZSBvZiA0IHRpbGUKPiArICogd2lkdGhzLgo+ICsgKi8KPiArI2RlZmluZSBJOTE1X0ZP
Uk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MgZm91cmNjX21vZF9jb2RlKElOVEVMLCA4
KQo+ICsKPiAgLyoKPiAgICogVGlsZWQsIE5WMTJNVCwgZ3JvdXBlZCBpbiA2NCAocGl4ZWxzKSB4
IDMyIChsaW5lcykgLXNpemVkIG1hY3JvYmxvY2tzCj4gICAqCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
