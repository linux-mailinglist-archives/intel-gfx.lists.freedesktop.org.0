Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB12518F95
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 19:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4FA89E2A;
	Thu,  9 May 2019 17:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B5489D84
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 17:49:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 10:49:13 -0700
X-ExtLoop1: 1
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 09 May 2019 10:49:12 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 9 May 2019 10:49:12 -0700
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx122.amr.corp.intel.com (10.18.125.37) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 9 May 2019 10:49:11 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.147]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.183]) with mapi id 14.03.0415.000;
 Thu, 9 May 2019 23:19:08 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [v3] drm/i915/icl: Handle YCbCr to RGB conversion
 for BT2020 case
Thread-Index: AQHVBoBnWR/wpuS45kiShuCVmbjEl6ZioCkAgABwl5A=
Date: Thu, 9 May 2019 17:49:08 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FF21F3@BGSMSX104.gar.corp.intel.com>
References: <1557419239-15289-1-git-send-email-uma.shankar@intel.com>
 <20190509163142.GJ24299@intel.com>
In-Reply-To: <20190509163142.GJ24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDI2MWU0YjQtNzUyNS00ZGMzLTk5ZWQtZmE0YmQwNTU0ZjA3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMWZyUjJKb2ZiMWJWeWtWeE9MNVFSWXE3OE5XdHJtb1RqaXFhTmY1b2NWVUxiSkFsNmF1V3hFYnNFVWhScnRVbyJ9
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3] drm/i915/icl: Handle YCbCr to RGB conversion
 for BT2020 case
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>, "Lankhorst,
 Maarten" <maarten.lankhorst@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCBbbWFp
bHRvOnZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tXQo+U2VudDogVGh1cnNkYXksIE1heSA5
LCAyMDE5IDEwOjAyIFBNCj5UbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+
Cj5DYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU3lyamFsYSwgVmlsbGUgPHZp
bGxlLnN5cmphbGFAaW50ZWwuY29tPjsgTGFua2hvcnN0LAo+TWFhcnRlbiA8bWFhcnRlbi5sYW5r
aG9yc3RAaW50ZWwuY29tPgo+U3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFt2M10gZHJtL2k5MTUv
aWNsOiBIYW5kbGUgWUNiQ3IgdG8gUkdCIGNvbnZlcnNpb24gZm9yIEJUMjAyMAo+Y2FzZQo+Cj5P
biBUaHUsIE1heSAwOSwgMjAxOSBhdCAwOTo1NzoxOVBNICswNTMwLCBVbWEgU2hhbmthciB3cm90
ZToKPj4gQ3VycmVudGx5IGlucHV0IGNzYyBmb3IgWUNiQ1IgdG8gUkdCIGNvbnZlcnNpb24gaGFu
ZGxlcyBvbmx5Cj4+IEJUNjAxIGFuZCBCdDcwOS4gRXh0ZW5kaW5nIGl0IHRvIHN1cHBvcnQgQlQy
MDIwIGFzIHdlbGwuCj4+Cj4+IHYyOiBGaXhlZCB0aGUgY28tZWZmaWNpZW50cyBmb3IgTFIgdG8g
RlIgY29udmVyc2lvbiwgYXMgc3VnZ2VzdGVkIGJ5Cj4+IFZpbGxlLgo+Pgo+PiB2MzogRml4ZWQg
WSBQcmUtb2Zmc2V0IGluIGNhc2Ugb2YgRnVsbCBSYW5nZSBZQ2JDciBhcyBzdWdnZXN0ZWQgYnkK
Pj4gVmlsbGUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hh
cm1hQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJp
dGUuYyB8IDMxCj4+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPj4gIDEgZmlsZSBj
aGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKPj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zcHJpdGUuYwo+PiBpbmRleCAyOTEzZTg5Li5jOWM5NzBmIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYwo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYwo+PiBAQCAtNDMzLDYgKzQzMywxOCBAQCBp
bnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3JkaW5hdGVzKHN0cnVjdAo+aW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlKQo+PiAgCQkJMHg5RUY4LCAweDc4MDAsIDB4QUJGOCwKPj4gIAkJ
CTB4MCwgMHg3ODAwLCAgMHg3RUQ4LAo+PiAgCQl9LAo+PiArCQkvKgo+PiArCQkgKiBCVC4yMDIw
IGZ1bGwgcmFuZ2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKPj4gKwkJICogVGhlIG1hdHJpeCBy
ZXF1aXJlZCBpcyA6Cj4+ICsJCSAqIFsxLjAwMCwgMC4wMDAsIDEuNDc0LAo+PiArCQkgKiAgMS4w
MDAsIC0wLjE2NDUsIC0wLjU3MTMsCj4+ICsJCSAqICAxLjAwMCwgMS44ODE0LCAwLjAwMDBdCj4+
ICsJCSAqLwo+PiArCQlbRFJNX0NPTE9SX1lDQkNSX0JUMjAyMF0gPSB7Cj4+ICsJCQkweDdCQzgs
IDB4NzgwMCwgMHgwLAo+PiArCQkJMHg4OTI4LCAweDc4MDAsIDB4QUE4OCwKPj4gKwkJCTB4MCwg
MHg3ODAwLCAweDdGMTAsCj4+ICsJCX0sCj4+ICAJfTsKPj4KPj4gIAkvKiBNYXRyaXggZm9yIExp
bWl0ZWQgUmFuZ2UgdG8gRnVsbCBSYW5nZSBDb252ZXJzaW9uICovIEBAIC00NjEsNgo+PiArNDcz
LDE4IEBAIGludCBpbnRlbF9wbGFuZV9jaGVja19zcmNfY29vcmRpbmF0ZXMoc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlCj4qcGxhbmVfc3RhdGUpCj4+ICAJCQkweDg4ODgsIDB4NzkxOCwgMHhBREE4
LAo+PiAgCQkJMHgwLCAweDc5MTgsICAweDY4NzAsCj4+ICAJCX0sCj4+ICsJCS8qCj4+ICsJCSAq
IEJULjIwMjAgTGltaXRlZCByYW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgo+PiArCQkgKiBU
aGUgbWF0cml4IHJlcXVpcmVkIGlzIDoKPj4gKwkJICogWzEuMTY0LCAwLjAwMCwgMS42NzgsCj4+
ICsJCSAqICAxLjE2NCwgLTAuMTg3MywgLTAuNjUwNCwKPj4gKwkJICogIDEuMTY0LCAyLjE0MTcs
IDAuMDAwMF0KPj4gKwkJICovCj4+ICsJCVtEUk1fQ09MT1JfWUNCQ1JfQlQyMDIwXSA9IHsKPj4g
KwkJCTB4N0Q3MCwgMHg3OTUwLCAweDAsCj4+ICsJCQkweDhBNjgsIDB4Nzk1MCwgMHhBQzAwLAo+
PiArCQkJMHgwLCAweDc5NTAsIDB4Njg5MCwKPj4gKwkJfSwKPj4gIAl9Owo+PiAgCWNvbnN0IHUx
NiAqY3NjOwo+Pgo+PiBAQCAtNDgxLDggKzUwNSwxMSBAQCBpbnQgaW50ZWxfcGxhbmVfY2hlY2tf
c3JjX2Nvb3JkaW5hdGVzKHN0cnVjdAo+PiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
Cj4+Cj4+ICAJSTkxNV9XUklURV9GVyhQTEFORV9JTlBVVF9DU0NfUFJFT0ZGKHBpcGUsIHBsYW5l
X2lkLCAwKSwKPj4gIAkJICAgICAgUFJFT0ZGX1lVVl9UT19SR0JfSEkpOwo+PiAtCUk5MTVfV1JJ
VEVfRlcoUExBTkVfSU5QVVRfQ1NDX1BSRU9GRihwaXBlLCBwbGFuZV9pZCwgMSksCj4+IC0JCSAg
ICAgIFBSRU9GRl9ZVVZfVE9fUkdCX01FKTsKPj4gKwlpZiAocGxhbmVfc3RhdGUtPmJhc2UuY29s
b3JfcmFuZ2UgPT0gRFJNX0NPTE9SX1lDQkNSX0ZVTExfUkFOR0UpCj4+ICsJCUk5MTVfV1JJVEVf
RlcoUExBTkVfSU5QVVRfQ1NDX1BSRU9GRihwaXBlLCBwbGFuZV9pZCwgMSksIDApOwo+PiArCWVs
c2UKPj4gKwkJSTkxNV9XUklURV9GVyhQTEFORV9JTlBVVF9DU0NfUFJFT0ZGKHBpcGUsIHBsYW5l
X2lkLCAxKSwKPj4gKwkJCSAgICAgIFBSRU9GRl9ZVVZfVE9fUkdCX01FKTsKPgo+SSB0aGluayB0
aGlzIGNvdWxkIHByb2JhYmx5IGJlIGEgc2VwYXJhdGUgcGF0Y2ggc2luY2UgaXQgYWZmZWN0cwo+
QlQuNjAxL0JULjcwOSBhcyB3ZWxsLiBPaCwgYW5kIHRoZSBtYXRyaXggY29lZmZpY2llbnRzIGZv
ciA2MDEvNzA5IHNlZW0gc2ltaWxhcmx5IG9mZgo+YXMgd2hhdCB5b3UgaGFkIGluIHRoaXMgcGF0
Y2ggb3JpZ2luYWxseS4gU28gSSB0aGluayB3ZSB3YW50IHlldCBhbm90aGVyIHBhdGNoIHRvIGZp
eAo+dGhvc2UgdXAuIEp1c3QgYSBiaXQgc3VycHJpc2VkIHRoYXQgZXZlbiB0aGUgY3VycmVudCBp
Z3RzIHBhc3Mgd2l0aCB0aG9zZSBjb2VmZmljaWVudHMuCgpTdXJlLCB3aWxsIHNwbGl0IHRoZSBz
YW1lIGFuZCByZXNlbmQuIEkgYWdyZWUgQlQ2MDEvNzA5IGhhcyBzaW1pbGFyIGlzc3VlIGFuZCB3
YXMgcGxhbm5pbmcgdG8Kc2VuZCBhIGZpeHVwIHBhdGNoIGZvciB0aGUgc2FtZS4gSSB3aWxsIGlu
dmVzdGlnYXRlIHdoYXQgaXMgZ29pbmcgb24gd2l0aCBJR1QgYW5kIGhvdyBpdHMKd29ya2luZyBm
aW5lLgoKPkFueXdheXMsCj5SZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gKHlvdSBjYW4ga2VlcCB0aGlzIG9uIGJvdGgKPnBhdGNoIGlm
IHlvdSBzcGxpdCkuCgpUaGFua3MgVmlsbGUuCgo+UFMuIHBscy4gY2MgbWUgQGxpbnV4LmludGVs
LmNvbSByYXRoZXIgdGhhbiBAaW50ZWwuY29tLiBJIGdlbmVyYWxseSBpZ25vcmUgcGF0Y2hlcwo+
Z29pbmcgdG8gdGhlIEBpbnRlbC5jb20gYWRkcmVzcy4gTm90IHRoYXQgSSByZWFsbHkgY2FyZSBv
bmUgd2F5IG9yIHRoZSBvdGhlciB3aGV0aGVyCj5hIHBhdGNoIHdhcyBjYzpkIHRvIG1lIGFueXdh
eS4KClN1cmUsIHdpbGwgYWRkIHlvdXIgbGludXguaW50ZWwuY29tIHdoaWxlIGNjJ2luZyB5b3Ug
OikKClJlZ2FyZHMsClVtYSBTaGFua2FyCgo+Cj4+ICAJSTkxNV9XUklURV9GVyhQTEFORV9JTlBV
VF9DU0NfUFJFT0ZGKHBpcGUsIHBsYW5lX2lkLCAyKSwKPj4gIAkJICAgICAgUFJFT0ZGX1lVVl9U
T19SR0JfTE8pOwo+PiAgCUk5MTVfV1JJVEVfRlcoUExBTkVfSU5QVVRfQ1NDX1BPU1RPRkYocGlw
ZSwgcGxhbmVfaWQsIDApLCAweDApOwo+PiAtLQo+PiAxLjkuMQo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBs
aXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPgo+LS0KPlZpbGxlIFN5
cmrDpGzDpAo+SW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
