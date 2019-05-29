Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE01A2DF89
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 16:20:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F4E6E32C;
	Wed, 29 May 2019 14:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77EE36E32C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 14:20:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 07:20:35 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 07:20:34 -0700
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Summers, Stuart" <stuart.summers@intel.com>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
References: <20190524154022.13575-1-stuart.summers@intel.com>
 <20190528183234.GA10989@intel.com>
 <ef092fee011695c74d03e0ea42701f03e240c9a3.camel@intel.com>
 <43D4F724E12AB6478FC1572B3FBE89D076707E67@IRSMSX106.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f4363495-f489-58fc-72b0-dbc166a4b42c@intel.com>
Date: Wed, 29 May 2019 07:21:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <43D4F724E12AB6478FC1572B3FBE89D076707E67@IRSMSX106.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 0/5] Refactor to expand subslice mask
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA1LzI4LzE5IDExOjQ4IFBNLCBTYWFyaW5lbiwgSmFuaSB3cm90ZToKPiBIaSwKPiAKPj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogSW50ZWwtZ2Z4IFttYWlsdG86aW50
ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnXSBPbiBCZWhhbGYgT2YKPj4gU3Vt
bWVycywgU3R1YXJ0Cj4+IFNlbnQ6IHRpaXN0YWkgMjguIHRvdWtva3V1dGEgMjAxOSAyMS4zMwo+
PiBUbzogTmF2YXJlLCBNYW5hc2kgRCA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPj4gQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gU3ViamVjdDogUmU6IFtJbnRlbC1n
ZnhdIFtDSSAwLzVdIFJlZmFjdG9yIHRvIGV4cGFuZCBzdWJzbGljZSBtYXNrCj4+Cj4+IE9uIFR1
ZSwgMjAxOS0wNS0yOCBhdCAxMTozMiAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3cm90ZToKPj4+IFB1
c2hlZCB0byBkaW5xLCB0aGFua3MgZm9yIHRoZSBwYXRjaGVzIGFuZCB0aGUgcmV2aWV3cyEKPj4K
Pj4gVGhhbmtzIGZvciB0aGUgcHVzaCBNYW5hc2kgYW5kIHRoZSByZXZpZXdzIERhbmllbGUgYW5k
IG90aGVycyEKPiBUaGlzIGJyb2tlIGFsbCB0aGUgSUNMIHN5c3RlbXMgYmVjYXVzZSBDSSBkYXRh
IHdhcyBub3QgbG9va2VkIHRoYXQgdGhleSBkaWQgbm90IGFjdHVhbGx5IGV2ZW4gYm9vdCBhdCBh
bGwuCj4gQWxsIElDTCdzIGluIEJBVCBhbmQgd2hvbGUgSUNMIHNoYXJkcy4KPiAKCkNhbiB3ZSBj
aGFuZ2UgdGhlIENJIHJlcGx5IGZvciB0aGUgY2FzZSB3aGVyZSB0aGVyZSBhcmUgZXh0cmEgbWlz
c2luZyAKbWFjaGluZXMgY29tcGFyZWQgdG8gdGhlIHJlZmVyZW5jZSBydW4gZnJvbSBTVUNDRVNT
IHRvIFdBUk5JTkcgb3IgCnNvbWV0aGluZyBsaWtlIHRoYXQsIHNvIHBlb3BsZSBoYXZlIGEgY2xl
YXJlciBpbmRpY2F0aW9uIHRoYXQgc29tZXRoaW5nIAptaWdodCBoYXZlIGdvbmUgd3Jvbmc/CgpE
YW5pZWxlCgo+IAo+Pgo+PiAtU3R1YXJ0Cj4+Cj4+Pgo+Pj4gUmVnYXJkcwo+Pj4gTWFuYXNpCj4+
Pgo+Pj4gT24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgMDg6NDA6MTdBTSAtMDcwMCwgU3R1YXJ0IFN1
bW1lcnMgd3JvdGU6Cj4+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgY29udGFpbnMgYSBmZXcgY29kZSBj
bGVhbi11cCBwYXRjaGVzLCBmb2xsb3dlZCBieQo+Pj4+IGEgcGF0Y2ggd2hpY2ggY2hhbmdlcyB0
aGUgc3RvcmFnZSBvZiB0aGUgc3Vic2xpY2UgbWFzayB0byBiZXR0ZXIKPj4+PiBtYXRjaCB0aGUg
dXNlcnNwYWNlIGFjY2VzcyB0aHJvdWdoIHRoZSBJOTE1X1FVRVJZX1RPUE9MT0dZX0lORk8KPj4+
PiBpb2N0bC4gVGhlIGluZGV4IGludG8gdGhlIHN1YnNsaWNlX21hc2sgYXJyYXkgaXMgdGhlbiBj
YWxjdWxhdGVkOgo+Pj4+ICAgIHNsaWNlICogc3Vic2xpY2Ugc3RyaWRlICsgc3Vic2xpY2UgaW5k
ZXggLyA4Cj4+Pj4KPj4+PiB2MjogZml4IGk5MTVfcG1fc3NldSB0ZXN0IGZhaWx1cmUKPj4+PiB2
Mzogbm8gY2hhbmdlcyB0byBwYXRjaGVzIGluIHRoZSBzZXJpZXMsIGp1c3QgcmVzZW5kaW5nIHRv
IHBpY2sgdXAKPj4+PiAgICAgIGluIENJIGNvcnJlY3RseQo+Pj4+IHY0OiByZWJhc2UKPj4+PiB2
NTogZml4IGhlYWRlciB0ZXN0Cj4+Pj4gdjY6IGFkZHJlc3MgcmV2aWV3IGNvbW1lbnRzIGZyb20g
SmFyaQo+Pj4+ICAgICAgYWRkcmVzcyBtaW5vciBjaGVja3BhdGNoIHdhcm5pbmcgaW4gZXhpc3Rp
bmcgY29kZQo+Pj4+ICAgICAgdXNlIGV1X3N0cmlkZSBmb3IgRVUgZGl2LWJ5LTgKPj4+PiB2Nzog
YW5vdGhlciByZWJhc2UKPj4+PiB2ODogYWRkcmVzcyByZXZpZXcgY29tbWVudHMgZnJvbSBUdnJ0
a28gYW5kIERhbmllbGUKPj4+PiB2OTogYWRkcmVzcyByZXZpZXcgY29tbWVudHMgZnJvbSBEYW5p
ZWxlCj4+Pj4gdjEwOiBhZGQgcmV2aWV3ZWQtYnkgb24gbGFzdCBwYXRjaCB3aXRoIG1pbm9yIHN1
Z2dlc3RlZCBjaGFuZ2UsCj4+Pj4gICAgICAgcmViYXNlLCBhbmQgcmVwb3N0IGZvciBDSQo+Pj4+
Cj4+Pj4gU3R1YXJ0IFN1bW1lcnMgKDUpOgo+Pj4+ICAgIGRybS9pOTE1OiBVc2UgbG9jYWwgdmFy
aWFibGUgZm9yIFNTRVUgaW5mbyBpbiBHRVRQQVJBTSBpb2N0bAo+Pj4+ICAgIGRybS9pOTE1OiBB
ZGQgbWFjcm8gZm9yIFNTRVUgc3RyaWRlIGNhbGN1bGF0aW9uCj4+Pj4gICAgZHJtL2k5MTU6IE1v
dmUgY2FsY3VsYXRpb24gb2Ygc3Vic2xpY2VzIHBlciBzbGljZSB0byBuZXcgZnVuY3Rpb24KPj4+
PiAgICBkcm0vaTkxNTogUmVmYWN0b3Igc3NldSBoZWxwZXIgZnVuY3Rpb25zCj4+Pj4gICAgZHJt
L2k5MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrCj4+Pj4KPj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgIHwgIDI0ICsrLQo+Pj4+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggfCAgMzAgKystLQo+Pj4+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMgICAgfCAgIDMgKy0KPj4+PiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYyAgICAgICAgIHwgIDYyICsrKysrKysK
Pj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCAgICAgICAgIHwgIDM1
ICsrKy0KPj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
IHwgICAyICstCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAg
ICAgICB8ICA0NiArKy0tLQo+Pj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAg
ICAgICAgICAgICAgfCAgMTUgKy0KPj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1
X2Vycm9yLmMgICAgICAgIHwgICA1ICstCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3F1ZXJ5LmMgICAgICAgICAgICB8ICAxNSArLQo+Pj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYyAgICAgfCAxNzYgKysrKysrKysrKystLQo+Pj4+IC0tLS0tLQo+
Pj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgfCAgNDcg
LS0tLS0KPj4+PiAgIDEyIGZpbGVzIGNoYW5nZWQsIDI4MCBpbnNlcnRpb25zKCspLCAxODAgZGVs
ZXRpb25zKC0pCj4+Pj4KPj4+PiAtLQo+Pj4+IDIuMjEuMC41LmdhZWI1ODJhOTgzCj4+Pj4KPj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4+Pj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
