Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3578D2401D5
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 08:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A7089FA5;
	Mon, 10 Aug 2020 05:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C14189FA5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 05:59:59 +0000 (UTC)
IronPort-SDR: zeZ4MBkR0CeERLW6puvDJSk7b+tPpPebS19vnpVO0OV4s44NqqUb158I5E44HPhRYcjqh/NV69
 /wFG4q4WcAtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="141345226"
X-IronPort-AV: E=Sophos;i="5.75,456,1589266800"; d="scan'208";a="141345226"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2020 22:59:58 -0700
IronPort-SDR: KvZWPluXrULldk7XnvpElLJrig6rU+JJ/Lsp+tUu+BepuxrQB0PpUX6m/PHhd6lqWcEG77Oggn
 Lpy22Kn3lx0g==
X-IronPort-AV: E=Sophos;i="5.75,456,1589266800"; d="scan'208";a="494204561"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2020 22:59:55 -0700
Date: Mon, 10 Aug 2020 11:18:11 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200810054811.GE30770@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-23-lucas.demarchi@intel.com>
 <b74c416a220331321552464c33bb06080dd99baa.camel@intel.com>
 <20200807131424.GD30770@intel.com>
 <63bc6529b69d6c632f9bbd750db7296cab03abf0.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63bc6529b69d6c632f9bbd750db7296cab03abf0.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v5 22/22] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wOC0wNyBhdCAyMjo1Njo1NCArMDUzMCwgU291emEsIEpvc2Ugd3JvdGU6Cj4gT24g
RnJpLCAyMDIwLTA4LTA3IGF0IDE4OjQ0ICswNTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToKPiA+
IE9uIDIwMjAtMDgtMDQgYXQgMDU6MDE6MzcgKzA1MzAsIFNvdXphLCBKb3NlIHdyb3RlOgo+ID4g
PiBPbiBGcmksIDIwMjAtMDctMjQgYXQgMTQ6MzkgLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90
ZToKPiA+ID4gPiBGcm9tOiBBbnNodW1hbiBHdXB0YSA8Cj4gPiA+ID4gYW5zaHVtYW4uZ3VwdGFA
aW50ZWwuY29tCj4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4gREdGWCBkZXZpY2VzIGhhdmUgZGlm
ZmVyZW50IERNQ19ERUJVRyogY291bnRlciBNTUlPIGFkZHJlc3MKPiA+ID4gPiBvZmZzZXQuIElu
Y29ycG9yYXRlIHRoZXNlIGNoYW5nZXMgaW4gaTkxNV9yZWcuaCBmb3IgREcxIERDNS9EQzYKPiA+
ID4gPiBjb3VudGVyIGFuZCBoYW5kbGUgaTkxNV9kbWNfaW5mbyBhY2NvcmRpbmdseS4KPiA+ID4g
PiAKPiA+ID4gPiBDYzogVW1hIFNoYW5rYXIgPAo+ID4gPiA+IHVtYS5zaGFua2FyQGludGVsLmNv
bQo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRh
IDwKPiA+ID4gPiBhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20KPiA+ID4gPiAKPiA+ID4gPiAKPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPAo+ID4gPiA+IGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbQo+ID4gPiA+IAo+ID4gPiA+IAo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIHwgOSArKysr
KysrLS0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAg
ICAgICAgICAgICB8IDIgKysKPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4gPiA+ID4gaW5kZXgg
MzY0NDc1MmNjNWVjLi5lMzUzNmVkY2IzOTQgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwo+ID4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPiA+
ID4gPiBAQCAtNTE1LDggKzUxNSwxMyBAQCBzdGF0aWMgaW50IGk5MTVfZG1jX2luZm8oc3RydWN0
IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCj4gPiA+ID4gIAkJICAgQ1NSX1ZFUlNJT05fTUlO
T1IoY3NyLT52ZXJzaW9uKSk7Cj4gPiA+ID4gIAo+ID4gPiA+ICAJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTIpIHsKPiA+ID4gPiAtCQlkYzVfcmVnID0gVEdMX0RNQ19ERUJVR19EQzVfQ09V
TlQ7Cj4gPiA+ID4gLQkJZGM2X3JlZyA9IFRHTF9ETUNfREVCVUdfREM2X0NPVU5UOwo+ID4gPiA+
ICsJCWlmIChJU19ERzEoZGV2X3ByaXYpKSB7Cj4gPiA+ID4gKwkJCWRjNV9yZWcgPSBERzFfRE1D
X0RFQlVHX0RDNV9DT1VOVDsKPiA+ID4gPiArCQl9IGVsc2Ugewo+ID4gPiA+ICsJCQlkYzVfcmVn
ID0gVEdMX0RNQ19ERUJVR19EQzVfQ09VTlQ7Cj4gPiA+ID4gKwkJCWRjNl9yZWcgPSBUR0xfRE1D
X0RFQlVHX0RDNl9DT1VOVDsKPiA+ID4gPiArCQl9Cj4gPiA+ID4gKwo+ID4gPiA+ICAJCS8qCj4g
PiA+ID4gIAkJICogTk9URTogRE1DX0RFQlVHMyBpcyBhIGdlbmVyYWwgcHVycG9zZSByZWcuCj4g
PiA+ID4gIAkJICogQWNjb3JkaW5nIHRvIEIuU3BlY3M6NDkxOTYgRE1DIGYvdyByZXVzZXMgREM1
LzYgY291bnRlcgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gPiA+IGluZGV4IDRl
OTUzMTJlYmEyNC4uNzhiZGNlNjdkYTA4IDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCj4gPiA+ID4gQEAgLTc1NDksNiArNzU0OSw4IEBAIGVudW0gewo+ID4gPiA+ICAj
ZGVmaW5lIEJYVF9DU1JfREMzX0RDNV9DT1VOVAlfTU1JTygweDgwMDM4KQo+ID4gPiA+ICAjZGVm
aW5lIFRHTF9ETUNfREVCVUdfREM1X0NPVU5UCV9NTUlPKDB4MTAxMDg0KQo+ID4gPiA+ICAjZGVm
aW5lIFRHTF9ETUNfREVCVUdfREM2X0NPVU5UCV9NTUlPKDB4MTAxMDg4KQo+ID4gPiA+ICsjZGVm
aW5lIERHMV9ETUNfREVCVUdfREM1X0NPVU5UCV9NTUlPKDB4MTM0MTU0KQo+ID4gPiA+ICsjZGVm
aW5lIERHMV9ETUNfREVCVUdfREM2X0NPVU5UCV9NTUlPKDB4MTM0MTU4KQo+ID4gPiAKPiA+ID4g
REcxX0RNQ19ERUJVR19EQzZfQ09VTlQgaXMgbm90IHVzZWQgYXMgREcxIGRvIG5vdCBzdXBwb3J0
IERDNi4KPiA+ID4gUmVtb3ZpbmcgaXQ6Cj4gPiAKPiA+IERHMV9ETUNfREVCVUdfREM2X0NPVU5U
IGlzIHN0aWxsIHZhbGlkIERNQ19ERUJVRyBjb3VudGVyIGZvciBmdXR1cmUKPiA+IGlnZnggcGxh
dGZvcm1zLCBjb25zaWRlcmluZyBuYW1lIGNvbnNpc3RlbmN5IGl0IGhhcyBiZWVuIGtlcHQgd2l0
aCBuYW1lIERHMV8qCj4gPiBpbmxpbmUgdG8gQi5TcGVjIEluZGV4OjQ5Nzg3Lgo+IAo+IEEgZGlz
Y3JldGUgZ3JhcGhpY3MgY2FyZCB3aWxsIG5ldmVyIGJlIGFibGUgdG8gcmVhY2ggREM2IGFzIGl0
IGlzIGEgU09DIHBvd2VyIHNhdmluZyBmZWF0dXJlLgpJcyBpdCBkb2N1bWVudGVkIHNvbWUgd2hl
cmUsIEFGQUlLIERDNiBpcyBzdGlsbCBkaXBsYXkgQyBzdGF0ZSB3aGVyZSBpdCBwb3dlciBvZmYg
aXRzIGlubmVybW9zdCBwb3dlciB3ZWxsLAp3aXRoIGludm9sdm1lbnQgb2Ygc29tZSBub24gZGlz
cGxheSB0aGlyZCBwYXJ0eSBmL3cuCklNSE8gaWYgYW55IGRpc2NyZXRlLWdmeCB3b3VsZCBzdXBw
b3J0IERDNiwgaXQgd291bGQgYmUgdXNlZnVsIGluIHRoZSB1c2UgY2FzZXMgd2hlcmUgZHJpdmVy
IGlzIHlldCB0byByZXF1ZXN0IHJ1bnRpbWUgc3VzcGVuZCAoREM5KQpidXQgZGlzcGxheSBpcyBh
bHJlYWR5IGJlaW5nIHBvd2VyZWQgb2ZmLgpUaGFua3MsCkFuc2h1bWFuIEd1cHRhLgo+IAo+ID4g
Cj4gPiBUaGFua3MsCj4gPiBBbnNodW1hbiBHdXB0YS4KPiA+ID4gUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPAo+ID4gPiBqb3NlLnNvdXphQGludGVsLmNvbQo+ID4gPiA+Cj4g
PiA+IAo+ID4gPiAKPiA+ID4gPiAgCj4gPiA+ID4gICNkZWZpbmUgRE1DX0RFQlVHMwkJX01NSU8o
MHgxMDEwOTApCj4gPiA+ID4gIAo+ID4gPiA+IAo+ID4gPiAKPiA+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdAo+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+IAo+ID4gPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+
ID4gPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
