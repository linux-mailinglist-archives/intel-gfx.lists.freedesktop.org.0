Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C27110D92B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 18:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428146E944;
	Fri, 29 Nov 2019 17:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19DB46E940
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 17:52:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 09:52:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,258,1571727600"; d="scan'208";a="292703120"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga001.jf.intel.com with ESMTP; 29 Nov 2019 09:52:54 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 Nov 2019 09:52:53 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 09:52:53 -0800
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 29 Nov 2019 09:52:53 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.80]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.49]) with mapi id 14.03.0439.000;
 Fri, 29 Nov 2019 23:22:51 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Use the correct PCH transcoder for LPT/WPT
 in intel_sanitize_frame_start_delay()
Thread-Index: AQHVphkP+9VddmHbfU2HnMBfHLktbKeiB3iQgAADVND//8TTAIAAntTg
Date: Fri, 29 Nov 2019 17:52:51 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82301272@BGSMSX104.gar.corp.intel.com>
References: <20191128182358.14477-1-ville.syrjala@linux.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8230105D@BGSMSX104.gar.corp.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82301087@BGSMSX104.gar.corp.intel.com>
 <20191129135050.GD1208@intel.com>
In-Reply-To: <20191129135050.GD1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzNiM2EzMTAtN2Q0ZC00YjM0LWFhNmMtMjIwNmU3MTZlOTMxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYkl5OWM5NXhQTFwvTHlWTElqYTByVVlXaWUyYzc4ZElaUHM1a1l1NCtOc0gyM2F3S2t4WDNDOFBRYUJYdk0wNncifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use the correct PCH transcoder
 for LPT/WPT in intel_sanitize_frame_start_delay()
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj5TZW50OiBGcmlkYXksIE5vdmVtYmVyIDI5LCAy
MDE5IDc6MjEgUE0KPlRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPkNj
OiAnaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZycgPGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc+Cj5TdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNTogVXNlIHRoZSBjb3Jy
ZWN0IFBDSCB0cmFuc2NvZGVyIGZvciBMUFQvV1BUIGluCj5pbnRlbF9zYW5pdGl6ZV9mcmFtZV9z
dGFydF9kZWxheSgpCj4KPk9uIEZyaSwgTm92IDI5LCAyMDE5IGF0IDExOjU2OjQyQU0gKzAwMDAs
IFNoYW5rYXIsIFVtYSB3cm90ZToKPj4KPj4KPj4gPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
Cj4+ID5Gcm9tOiBTaGFua2FyLCBVbWEKPj4gPlNlbnQ6IEZyaWRheSwgTm92ZW1iZXIgMjksIDIw
MTkgNToxOCBQTQo+PiA+VG86IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPjsKPj4gPmludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gPlN1YmplY3Q6
IFJFOiBbUEFUQ0hdIGRybS9pOTE1OiBVc2UgdGhlIGNvcnJlY3QgUENIIHRyYW5zY29kZXIgZm9y
Cj4+ID5MUFQvV1BUIGluCj4+ID5pbnRlbF9zYW5pdGl6ZV9mcmFtZV9zdGFydF9kZWxheSgpCj4+
ID4KPj4gPgo+PiA+Cj4+ID4+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gPj5Gcm9tOiBW
aWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPj5TZW50OiBU
aHVyc2RheSwgTm92ZW1iZXIgMjgsIDIwMTkgMTE6NTQgUE0KPj4gPj5UbzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+PiA+PkNjOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4KPj4gPj5TdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1OiBVc2UgdGhlIGNvcnJlY3Qg
UENIIHRyYW5zY29kZXIgZm9yCj4+ID4+TFBUL1dQVCBpbgo+PiA+PmludGVsX3Nhbml0aXplX2Zy
YW1lX3N0YXJ0X2RlbGF5KCkKPj4gPj4KPj4gPj5Gcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiA+Pgo+PiA+PkxQVC9XUFQgb25seSBoYXZlIFBD
SCB0cmFuc2NvZGVyIEEuIE1ha2Ugc3VyZSB3ZSBwb2tlIGF0IGl0cyBjaGlja2VuCj4+ID4+cmVn
aXN0ZXIgaW5zdGVhZCBvZiBzb21lIG5vbi1leGlzdGVudCByZWdpc3RlciB3aGVuIEZESSBpcyBi
ZWluZwo+PiA+PmRyaXZlbiBieSBwaXBlIEIgb3IKPj4gPkMuCj4+ID4KPj4gPkNoYW5nZSBsb29r
cyBnb29kIHRvIG1lLgo+PiA+UmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+Cj4+ID4KPj4gPj5DYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4KPj4gPj5TaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgo+PiA+Pi0tLQo+PiA+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDMgKystCj4+ID4+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPj4gPj4KPj4gPj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gPj5iL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+ID4+aW5kZXggNTNkYzMxMGE1ZjZkLi5mOTlk
YmMzZDk2OTYgMTAwNjQ0Cj4+ID4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPj4gPj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwo+PiA+PkBAIC0xNzI3Miw3ICsxNzI3Miw4IEBAIHN0YXRpYyB2b2lkCj4+
ID4+aW50ZWxfc2FuaXRpemVfZnJhbWVfc3RhcnRfZGVsYXkoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGMKPj4gPj4gCQl2YWwgfD0gVFJBTlNfRlJBTUVfU1RBUlRfREVMQVkoMCk7
Cj4+ID4+IAkJSTkxNV9XUklURShyZWcsIHZhbCk7Cj4+ID4+IAl9IGVsc2Ugewo+PiA+Pi0JCWk5
MTVfcmVnX3QgcmVnID0gVFJBTlNfQ0hJQ0tFTjIoY3J0Yy0+cGlwZSk7Cj4+ID4+KwkJZW51bSBw
aXBlIHBjaF90cmFuc2NvZGVyID0gaW50ZWxfY3J0Y19wY2hfdHJhbnNjb2RlcihjcnRjKTsKPj4K
Pj4gSnVzdCBhbiBhZnRlcnRob3VnaHQsIG5vdCBzdXJlIGlmIHRoaXMgaG9sZCBnZW5lcmljYWxs
eSBmb3IgYWxsIHBpcGVzCj4+IG9yIGlzIGl0IHByb2dyYW1tYWJsZSBvbmx5IGZvciBQSVBFX0Eu
IE1ha2luZyBpdCBlbmFibGVkIG9uIFBJUEVfQQo+PiB3aGVuIGFjdHVhbGx5IHBpcGUgQiBvciBD
IGlzIHVzZWQsIGlzIGl0IHRoZSByaWdodCB0aGluZy4gU2hvdWxkIHdlIGRpc2NhcmQKPnByb2dy
YW1taW5nIHRoaXMgZm9yIFBJUEUgQiBhbmQgQyBhbHRvZ2V0aGVyLgo+Cj5UaGlzIGlzIGFib3V0
IFBDSCB0cmFuc2NvZGVyIEEgaW5zdGVhZCBvZiBwaXBlIEEgZGVzcGl0ZSB1cyB1c2luZyBlbnVt
IHBpcGUgaGVyZS4gV2UKPmp1c3QgaGFwcGVuIHRvIHVzZSBlbnVtIHBpcGUgZm9yIFBDSCB0cmFu
c2NvZGVycyBzaW5jZSBpdCB3YXMgZWFzaWVyIHRoYW4gYWRkaW5nIGEKPm5ldyBlbnVtIGZvciBp
dC4KPgo+U28gaXQncyBwZXJmZWN0bHkgbGVnYWwgdG8gaGF2ZSBhbnkgb2YgdGhlc2UgY29uZmln
dXJhdGlvbnMgb24gSFNXL0JEVzoKPnBpcGUgQSAtPiBDUFUgdHJhbnNjb2RlciBBIC0+IERESSBF
IC0+IEZESSAtPiBQQ0ggdHJhbnNjb2RlciBBIC0+IENSVCBwaXBlIEIgLT4gQ1BVCj50cmFuc2Nv
ZGVyIEIgLT4gRERJIEUgLT4gRkRJIC0+IFBDSCB0cmFuc2NvZGVyIEEgLT4gQ1JUIHBpcGUgQyAt
PiBDUFUgdHJhbnNjb2RlciBDIC0+Cj5EREkgRSAtPiBGREkgLT4gUENIIHRyYW5zY29kZXIgQSAt
PiBDUlQKPgo+U28gd2Ugd2FudCB0byBkbyB0aGlzIGZvciBhbnkgcGlwZSB3aGVuIGhhc19wY2hf
ZW5jb2RlciBpbmRpY2F0ZXMgdGhhdCB0aGUgZGF0YSBpcwo+Z29pbmcgb3ZlciBGREkgdG8gdGhl
IFBDSC4KClllYWggSSB3YXMgdGhpbmtpbmcgb24gc2FtZSBsaW5lIHRoYXQgUElQRV9BIGlzIGp1
c3QgYSBtZWFucyB0byBnZXQgUENIIFRSQU5TQ09ERVIgcmF0aGVyCnRoYW4gaGF2aW5nIGFueSBz
aWduaWZpY2FuY2Ugd2l0aCBwaXBlIGhlcmUuIFRoYW5rcyBmb3IgY2xhcnlpbmcgdGhpcyBWaWxs
ZS4gCgpUaGlzIHBhdGNoIGlzIGdvb2QgZnJvbSBteSBwZXJzcGVjdGl2ZS4KClJlZ2FyZHMsClVt
YSBTaGFua2FyCgo+Pgo+PiA+PisJCWk5MTVfcmVnX3QgcmVnID0gVFJBTlNfQ0hJQ0tFTjIocGNo
X3RyYW5zY29kZXIpOwo+PiA+PiAJCXUzMiB2YWw7Cj4+ID4+Cj4+ID4+IAkJdmFsID0gSTkxNV9S
RUFEKHJlZyk7Cj4+ID4+LS0KPj4gPj4yLjIzLjAKPj4KPgo+LS0KPlZpbGxlIFN5cmrDpGzDpAo+
SW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
