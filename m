Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C928E9ED9
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 16:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0026EA6D;
	Wed, 30 Oct 2019 15:26:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936EC6EA6D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 15:26:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 08:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; d="scan'208";a="283585105"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga001.jf.intel.com with ESMTP; 30 Oct 2019 08:26:52 -0700
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 30 Oct 2019 08:26:51 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.14]) with mapi id 14.03.0439.000;
 Wed, 30 Oct 2019 20:56:48 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 7/9] drm/i915: Reject ckey+fp16 on skl+
Thread-Index: AQHVffOPo21IWPsFUE6LoQJk1FSoHadxtnAAgAAH3YD//8L9AIAB7k0A
Date: Wed, 30 Oct 2019 15:26:48 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227E9F6@BGSMSX104.gar.corp.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-7-ville.syrjala@linux.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DCFC@BGSMSX104.gar.corp.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DD9F@BGSMSX104.gar.corp.intel.com>
 <20191029152238.GZ1208@intel.com>
In-Reply-To: <20191029152238.GZ1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWRiYzJlNGUtOGYyZS00ZDlkLWI0YTAtYmU0NWE2NjY5NDZmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoianNPTnZQZVFBR1l3SHo0M2JLc2YzaDhHNXEyRHEwK2xja2lvREhCT2hQOFIyRFdZMFl5ODdYYmRpSTNZOElpaiJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Reject ckey+fp16 on skl+
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
Cc: "'intel-gfx@lists.freedesktop.org'" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cj4+ID4+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gPj5Gcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmCj4+ID4+T2Yg
VmlsbGUgU3lyamFsYQo+PiA+PlNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgOCwgMjAxOSA5OjQ1IFBN
Cj4+ID4+VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gPj5TdWJqZWN0OiBb
SW50ZWwtZ2Z4XSBbUEFUQ0ggNy85XSBkcm0vaTkxNTogUmVqZWN0IGNrZXkrZnAxNiBvbiBza2wr
Cj4+ID4+Cj4+ID4+RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPj4gPj4KPj4gPj5BY2NvcmRpbmcgdG8gdGhlIHNwZWMgY29sb3Iga2V5aW5nIGlz
IG5vdCBzdXBwb3J0ZWQgd2l0aAo+PiA+PmZwMTYgcGl4ZWwgZm9ybWF0cyBvbiBza2wrLiBSZWpl
Y3QgdGhhdCBjb21iby4KPj4gPj4KPj4gPj5TaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiA+Pi0tLQo+PiA+PiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIHwgMTggKysrKysrKysrKysrKysrKysr
Cj4+ID4+IDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4+ID4+Cj4+ID4+ZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPj4gPj5i
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPj4gPj5pbmRleCBj
YzllNWM5NjY4YjEuLmQ2Y2Q0NmUzZjczOCAxMDA2NDQKPj4gPj4tLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4+ID4+KysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+PiA+PkBAIC0xNjg5LDYgKzE2ODksMTkgQEAg
dmx2X3Nwcml0ZV9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPj4g
Pj4gCXJldHVybiAwOwo+PiA+PiB9Cj4+ID4+Cj4+ID4+K3N0YXRpYyBib29sIGZvcm1hdF9pc19m
cDE2KHUzMiBmb3JtYXQpIHsKPj4gPj4rCXN3aXRjaCAoZm9ybWF0KSB7Cj4+ID4+KwljYXNlIERS
TV9GT1JNQVRfWFJHQjE2MTYxNjE2RjoKPj4gPj4rCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMTYxNjE2
MTZGOgo+PiA+PisJY2FzZSBEUk1fRk9STUFUX0FSR0IxNjE2MTYxNkY6Cj4+ID4+KwljYXNlIERS
TV9GT1JNQVRfQUJHUjE2MTYxNjE2RjoKPj4gPj4rCQlyZXR1cm4gdHJ1ZTsKPj4gPj4rCWRlZmF1
bHQ6Cj4+ID4+KwkJcmV0dXJuIGZhbHNlOwo+PiA+PisJfQo+PiA+Pit9Cj4+ID4+Kwo+PiA+PiBz
dGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwKPj4gPj4gCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkgIHsgQEAgLQo+PiA+PjE3NjAsNiArMTc3MywxMSBAQCBzdGF0aWMg
aW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QKPj4gPj5pbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAo+PiA+PiAJCXJldHVybiAtRUlOVkFMOwo+PiA+PiAJfQo+PiA+Pgo+PiA+
PisJaWYgKHBsYW5lX3N0YXRlLT5ja2V5LmZsYWdzICYmIGZvcm1hdF9pc19mcDE2KGZiLT5mb3Jt
YXQtPmZvcm1hdCkpIHsKPj4gPj4rCQlEUk1fREVCVUdfS01TKCJDb2xvciBrZXlpbmcgbm90IHN1
cHBvcnRlZCB3aXRoIGZwMTYKPj4gPj5mb3JtYXRzXG4iKTsKPj4gPgo+PiA+SXQgc2VlbXMgZXZl
biAiSW5kZXhlZCA4IGJpdCBmb3JtYXRzIiBhbHNvIGRvbid0IHN1cHBvcnQgQ29sb3IKPj4gPktl
eWluZy4gTWF5IGJlIHlvdSBjYW4gZXh0ZW5kIGl0IHRvIGV2ZW4gQzguCj4+Cj4+IHdydCBDOCwg
YXQgdGhlIGJpdCBkZWZpbml0aW9uIG9mIGNvbG9yIGtleWluZyBvbiBQTEFORV9DVEwgdGhlCj4+
IGRlc2NyaXB0aW9uIHNheXMgIlBsYW5lIGNvbG9yIGtleWluZyBpcyBub3QgY29tcGF0aWJsZSB3
aXRoIHRoZQo+PiBJbmRleGVkIDgtYml0IHBpeGVsIGZvcm1hdC4iLCBidXQgb24gY2FwYWJpbGl0
eSBpdCBkbyBsaXN0IEM4LiBTbyBub3Qgc3VyZSB3aGF0IGlzCj5jb3JyZWN0Lgo+Cj5JdCB3b3Jr
cyBqdXN0IGZpbmUsIG9yIGF0IGxlYXN0IGl0IGRpZCBvbiBvbGRlciBwbGF0Zm9ybXMuCj5TbyB1
bmxlc3MgdGhleSBicm9rZSBpdCByZWNlbnRseSB3ZSBzaG91bGQgYmUgZ29vZC4KCk9rLCB5ZWFo
IHRoYXQgZGVzY3JpcHRpb24gd2FzIG1pc2xlYWRpbmcuIFdpbGwgdHJ5IHRvIGdldCBzb21lIGNs
YXJpZmljYXRpb24gZnJvbQpoYXJkd2FyZSBmb2xrcyBhcyB3ZWxsLgoKPlJlZ2FyZGluZyBmcDE2
IHZzLiBjb2xvcmtleSwgbm90IHN1cmUgd2hhdCB0aGUgZGVhbCByZWFsbHkgaXMuCj5JIHNob3Vs
ZCBwcm9iYWJseSB0ZXN0IGl0IGFjcm9zcyB0aGUgYm9hcmQgbm93IHRoYXQgd2UgaGF2ZQo+ZnAx
NiBmb3IgYWxsIGdlbjQrLgoKVGhhdCB3b3VsZCBiZSBncmVhdCBhbmQgd2lsbCBjb25maXJtIHRo
ZSBiZWhhdmlvdXIuCgpSZWdhcmRzLApVbWEgU2hhbmthcgoKPi0tCj5WaWxsZSBTeXJqw6Rsw6QK
PkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
