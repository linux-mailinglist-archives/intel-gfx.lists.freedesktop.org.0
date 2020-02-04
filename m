Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 081EA152273
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 23:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD886E91F;
	Tue,  4 Feb 2020 22:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569D76E91F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 22:48:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 14:48:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="219906777"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga007.jf.intel.com with ESMTP; 04 Feb 2020 14:48:19 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 14:48:19 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.139) by
 ORSMSX157.amr.corp.intel.com (10.22.240.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 14:48:18 -0800
Date: Tue, 4 Feb 2020 14:44:04 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200204144404.75f5f332@vkasired-desk2.fm.intel.com>
In-Reply-To: <87blqe39u6.fsf@intel.com>
References: <20200204000242.30542-1-vivek.kasireddy@intel.com>
 <87blqe39u6.fsf@intel.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [10.22.254.139]
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Check VBT before updating the
 transcoder for pipe
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gVHVlLCA0IEZlYiAyMDIwIDEyOjUwOjI1ICswMjAwCkphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgpIaSBKYW5pLAoKPiBPbiBNb24sIDAzIEZlYiAyMDIw
LCBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+Cj4gd3JvdGU6Cj4g
PiBTaW5jZSB0aGUgcGlwZS0+dHJhbnNjb2RlciBtYXBwaW5nIGlzIG5vdCBleHBlY3RlZCB0byBj
aGFuZ2UgdW5sZXNzCj4gPiB0aGVyZSBpcyBlaXRoZXIgZURQIG9yIERTSSBjb25uZWN0b3JzIHBy
ZXNlbnQsIGNoZWNrIHRoZSBWQlQgdG8KPiA+IGNvbmZpcm0gdGhlaXIgcHJlc2VuY2UgaW4gYWRk
aXRpb24gdG8gY2hlY2tpbmcKPiA+IFRSQU5TX0RESV9GVU5DX0NUTCh0cmFuc2NvZGVyKS4gVGhp
cyBhZGRpdGlvbmFsIGNoZWNrIGlzIG5lZWRlZCBvbgo+ID4gcGxhdGZvcm1zIGxpa2UgRWxraGFy
dCBMYWtlIGJlY2F1c2Ugd2UgY2Fubm90IGp1c3QgcmVseSBvbgo+ID4gR09QL0Zpcm13YXJlIHBy
b2dyYW1tZWQgdmFsdWVzIGluIFRSQU5TX0RESV9GVU5DX0NUTCh0cmFuc2NvZGVyKQo+ID4gYmVm
b3JlIHVwZGF0aW5nIHRoZSB0cmFuc2NvZGVyIG1hcHBpbmcuCj4gPgo+ID4gVGhpcyBwYXRjaCBp
cyBvbmx5IHJlbGV2YW50IHRvIEVITCAtLSBhbmQgYSBuby1vcCBvbiBvdGhlcnMgLS0KPiA+IGJl
Y2F1c2Ugc29tZSBvZiB0aGUgUEhZcyBhcmUgc2hhcmVkIGJldHdlZW4gdGhlIGRpZmZlcmVudCBE
RElzIGFuZAo+ID4gd2UgcmVseSBvbiB0aGUgVkJUIHRvIHByZXNlbnQgdGhlIG1vc3QgYWNjdXJh
dGUgaW5mb3JtYXRpb24gdG8gdGhlCj4gPiBkcml2ZXIuCj4gPgo+ID4gQ2M6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVk
ZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE1ICsrKysrKysrKysrKysrLQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGluZGV4
Cj4gPiBjMGU1MDAyY2U2NGMuLjRiMzhmMjkzYmQ4OCAxMDA2NDQgLS0tCj4gPiBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICsrKwo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBAQCAtMTA4MDUsNgo+ID4gKzEwODA1
LDE4IEBAIHN0YXRpYyB2b2lkIGhzd19nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQo+ID4gKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCwgcGlwZV9jb25maWctPnNoYXJlZF9kcGxs
ID0KPiA+IGludGVsX2dldF9zaGFyZWRfZHBsbF9ieV9pZChkZXZfcHJpdiwgaWQpOyB9IAo+ID4g
K3N0YXRpYyBib29sIGVobF92YnRfZWRwX2RzaV9wcmVzZW50KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlCj4gPiAqZGV2X3ByaXYsCj4gPiArCQkJCSAgICBlbnVtIHRyYW5zY29kZXIgdHJhbnNjb2Rl
cikKPiA+ICt7Cj4gPiArCWJvb2wgZWRwX3ByZXNlbnQgPSBpbnRlbF9iaW9zX2lzX3BvcnRfcHJl
c2VudChkZXZfcHJpdiwKPiA+IFBPUlRfQSk7Cj4gPiArCWJvb2wgZHNpX3ByZXNlbnQgPSBpbnRl
bF9iaW9zX2lzX2RzaV9wcmVzZW50KGRldl9wcml2LAo+ID4gTlVMTCk7ICsKPiA+ICsJaWYgKElT
X0VMS0hBUlRMQUtFKGRldl9wcml2KSkKPiA+ICsJCXJldHVybiB0cmFuc2NvZGVyID09IFRSQU5T
Q09ERVJfRURQID8gZWRwX3ByZXNlbnQKPiA+IDogZHNpX3ByZXNlbnQ7ICsKPiA+ICsJcmV0dXJu
IHRydWU7Cj4gPiArfSAgCj4gCj4gT25lIG9mIHRob3NlIHRoaW5ncy4uLiB0aGlzIGp1bXBzIG91
dCBhbmQgaW1tZWRpYXRlbHkgZmVlbHMgYWxsIHdyb25nLAo+IGp1c3QgbGlrZSBlaGxfdmJ0X2Rk
aV9kX3ByZXNlbnQoKSBmZWVscyBhbGwgd3JvbmcgaW4KPiBpbnRlbF9jb21ib19waHkuYy4gQnV0
IEkgZG9uJ3Qga25vdyB3aGF0IHdvdWxkIGJlIHRoZSByaWdodCB0aGluZyB0bwo+IGRvIHdpdGhv
dXQgc3BlbmRpbmcgdGltZSB0aGF0IEkgZG9uJ3QgaGF2ZSBvbiB0aGlzLgoKSXMgdGhlcmUgYSBw
YXJ0aWN1bGFyIGFwcHJvYWNoIHlvdSB3YW50IG1lIHRvIHRha2UgdG8gYWRkcmVzcyB0aGlzCmlz
c3VlPyBBbGwgSSBhbSB0cnlpbmcgdG8gZG8gaXMgYWRkcmVzcyB0aGUgcGxhdXNpYmxlIHNjZW5h
cmlvKHMpIHdoZXJlCnRoZSBHT1AvZmlybXdhcmUgbWF5IHByb2dyYW0gdGhlIGhhcmR3YXJlIGlu
IGEgY2VydGFpbiB3YXkgdGhhdCBzZWVtcwppbmNvcnJlY3QgZnJvbSB3aGF0IGk5MTUgZG9lcyBi
YXNlZCBvbiB0aGUgaW5mbyBpbiB0aGUgVkJULiBJIG5vdGljZWQgCnRoaXMgaXNzdWUgb24gdGhl
IEVITCBib2FyZCBJIGFtIHdvcmtpbmcgb247IHRoZXJlZm9yZSwgSSBsaW1pdGVkIHRoZQpmaXgg
dG8gRUhMIG9ubHkuCgpUaGFua3MsClZpdmVrIAoKPiAKPiBCUiwKPiBKYW5pLgo+IAo+IAo+IAo+
ID4gKwo+ID4gIHN0YXRpYyBib29sIGhzd19nZXRfdHJhbnNjb2Rlcl9zdGF0ZShzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywKPiA+ICAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ID4g
KnBpcGVfY29uZmlnLCB1NjQgKnBvd2VyX2RvbWFpbl9tYXNrLAo+ID4gQEAgLTEwODQ0LDcgKzEw
ODU2LDggQEAgc3RhdGljIGJvb2wgaHN3X2dldF90cmFuc2NvZGVyX3N0YXRlKHN0cnVjdAo+ID4g
aW50ZWxfY3J0YyAqY3J0YywgCj4gPiAgCQl0bXAgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAo+
ID4gIAkJCQkgICAgVFJBTlNfRERJX0ZVTkNfQ1RMKHBhbmVsX3RyYW5zY29kZXIpKTsKPiA+IC0J
CWlmICghKHRtcCAmIFRSQU5TX0RESV9GVU5DX0VOQUJMRSkpCj4gPiArCQlpZiAoISh0bXAgJiBU
UkFOU19ERElfRlVOQ19FTkFCTEUpIHx8Cj4gPiArCQkgICAgIWVobF92YnRfZWRwX2RzaV9wcmVz
ZW50KGRldl9wcml2LAo+ID4gcGFuZWxfdHJhbnNjb2RlcikpIGNvbnRpbnVlOwo+ID4gIAo+ID4g
IAkJLyogIAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
