Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C3C716E7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 13:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129B46E19C;
	Tue, 23 Jul 2019 11:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17846E19C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 11:25:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 04:25:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,298,1559545200"; d="scan'208";a="180707271"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 23 Jul 2019 04:25:17 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jul 2019 04:25:17 -0700
Received: from hasmsx107.ger.corp.intel.com (10.184.198.27) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jul 2019 04:25:16 -0700
Received: from hasmsx108.ger.corp.intel.com ([169.254.9.15]) by
 hasmsx107.ger.corp.intel.com ([169.254.2.129]) with mapi id 14.03.0439.000;
 Tue, 23 Jul 2019 14:25:14 +0300
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] mei: Abort writes if incomplete after 1s
Thread-Index: AQHVQUh97s4wEpB2nUu0/eS1AyxTHqbYD5sg
Date: Tue, 23 Jul 2019 11:25:14 +0000
Message-ID: <5B8DA87D05A7694D9FA63FD143655C1B9DC7C082@hasmsx108.ger.corp.intel.com>
References: <20190723111913.20475-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190723111913.20475-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzUzMmRkZmItNmY4MC00YTY1LWI2ZmEtODI1NjhkNWQwNDRiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidDNIZE8wdmN2NHBlc2ZkTUtBbFFIQXZFUlphUkN5VWg4ME1MM2FVeFFsc1U5XC8yOUlNcEpmakxjRm9LXC9ZT1lmIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.184.70.11]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] mei: Abort writes if incomplete after 1s
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
Cc: "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAKPiBEdXJpbmcgaTkxNSB1bmxvYWQsIGl0IGFwcGVhcnMgdGhhdCBpdCBtYXkgZ2V0IHN0dWNr
IHdhaXRpbmcgb24gYSB3b3JrcXVldWUKPiBiZWluZyBob2dnZWQgYnkgbWVpOgoKVGhhbmtzIGZv
ciB0aGUgYnVnIHJlcG9ydCwgYnV0IHRoaXMgaXMgbm90IGEgcHJvcGVyIGZpeCwgd2Ugd2lsbCB0
cnkgdG8gd29yayBpdCBvdXQuClRoYW5rcwpUb21hcwoKPiAKPiA8Nz4gWzIxMi42NjY5MTJdIGk5
MTUgMDAwMDowMDowMi4wOiBbZHJtOmRybV9jbGllbnRfcmVsZWFzZV0gZHJtX2ZiX2hlbHBlcgo+
IDwzPiBbMzA4LjU0NDk0M10gSU5GTzogdGFzayBpOTE1X21vZHVsZV9sb2E6MjYxMiBibG9ja2Vk
IGZvciBtb3JlIHRoYW4gNjEKPiBzZWNvbmRzLgo+IDwzPiBbMzA4LjU0NTA0N10gICAgICAgVGFp
bnRlZDogRyAgICAgVSAgVyAgICAgICAgIDUuMy4wLXJjMS1DSS1DSV9EUk1fNjUzNysgIzEKPiA8
Mz4gWzMwOC41NDUwODVdICJlY2hvIDAgPiAvcHJvYy9zeXMva2VybmVsL2h1bmdfdGFza190aW1l
b3V0X3NlY3MiIGRpc2FibGVzCj4gdGhpcyBtZXNzYWdlLgo+IDw2PiBbMzA4LjU0NTEyOF0gaTkx
NV9tb2R1bGVfbG9hIEQxMzI1NiAgMjYxMiAgICA5NjAgMHgwMDAwNDAwNAo+IDw0PiBbMzA4LjU0
NTEzN10gQ2FsbCBUcmFjZToKPiA8ND4gWzMwOC41NDUxNTBdICA/IF9fc2NoZWR1bGUrMHgzMjYv
MHg4OTAgPDQ+IFszMDguNTQ1MTU5XSAgPwo+IHdhaXRfZm9yX2NvbW1vbisweDExNi8weDFmMCA8
ND4gWzMwOC41NDUxNjRdICBzY2hlZHVsZSsweDJiLzB4YjAgPDQ+Cj4gWzMwOC41NDUxNjldICBz
Y2hlZHVsZV90aW1lb3V0KzB4MjE5LzB4M2MwIDw0PiBbMzA4LjU0NTE3Nl0gID8KPiB3YWl0X2Zv
cl9jb21tb24rMHgxMzIvMHgxZjAgPDQ+IFszMDguNTQ1MTgzXSAgPwo+IF9yYXdfc3Bpbl91bmxv
Y2tfaXJxKzB4MjQvMHgzMCA8ND4gWzMwOC41NDUxODldICA/Cj4gd2FpdF9mb3JfY29tbW9uKzB4
MTE2LzB4MWYwIDw0PiBbMzA4LjU0NTE5M10KPiB3YWl0X2Zvcl9jb21tb24rMHgxM2EvMHgxZjAg
PDQ+IFszMDguNTQ1MjAwXSAgPyB3YWtlX3VwX3ErMHg4MC8weDgwCj4gPDQ+IFszMDguNTQ1MjA5
XSAgZmx1c2hfd29ya3F1ZXVlKzB4MTlkLzB4NTQwIDw0PiBbMzA4LjU0NTMzNF0gID8KPiBpbnRl
bF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUrMHhiMy8weDE0MCBbaTkxNV0gPDQ+IFszMDguNTQ1NDA3
XQo+IGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZSsweGIzLzB4MTQwIFtpOTE1XSA8ND4gWzMw
OC41NDU0NjRdCj4gaTkxNV9kcml2ZXJfcmVtb3ZlKzB4YWUvMHgxMTAgW2k5MTVdIDw0PiBbMzA4
LjU0NTUyMl0KPiBpOTE1X3BjaV9yZW1vdmUrMHgxOS8weDMwIFtpOTE1XSA8ND4gWzMwOC41NDU1
MjldCj4gcGNpX2RldmljZV9yZW1vdmUrMHgzNi8weGIwCj4gCj4gPDY+IFszMDguNTY1NDIyXSBT
aG93aW5nIGJ1c3kgd29ya3F1ZXVlcyBhbmQgd29ya2VyIHBvb2xzOgo+IDw2PiBbMzA4LjU2NTQy
NV0gd29ya3F1ZXVlIGV2ZW50czogZmxhZ3M9MHgwCj4gPDY+IFszMDguNTY1NTcyXSAgIHB3cSAy
OiBjcHVzPTEgbm9kZT0wIGZsYWdzPTB4MCBuaWNlPTAgYWN0aXZlPTIvMjU2Cj4gPDY+IFszMDgu
NTY1NjM1XSAgICAgaW4tZmxpZ2h0OiA0NDE6bWVpX2NsX2J1c19yZXNjYW5fd29yayBbbWVpXQo+
IDw2PiBbMzA4LjU2NTY0MV0gICAgIHBlbmRpbmc6IGRic193b3JrX2hhbmRsZXIKPiA8Nj4gWzMw
OC41NjU2ODZdIHBvb2wgMjogY3B1cz0xIG5vZGU9MCBmbGFncz0weDAgbmljZT0wIGh1bmc9MHMg
d29ya2Vycz01Cj4gaWRsZTogMjI0OCAyMSAxNyAxNjkKPiAKPiA8Nj4gWzMwOC41NTM3ODhdIFdv
cmtxdWV1ZTogZXZlbnRzIG1laV9jbF9idXNfcmVzY2FuX3dvcmsgW21laV0gPDQ+Cj4gWzMwOC41
NTM3OTJdIENhbGwgVHJhY2U6Cj4gPDQ+IFszMDguNTUzNzk5XSAgPyBfX3NjaGVkdWxlKzB4MzI2
LzB4ODkwIDw0PiBbMzA4LjU1MzgwOF0KPiBzY2hlZHVsZSsweDJiLzB4YjAgPDQ+IFszMDguNTUz
ODE1XSAgbWVpX2NsX3dyaXRlKzB4NDMwLzB4NWEwIFttZWldIDw0Pgo+IFszMDguNTUzODIwXSAg
PyBfX2ttYWxsb2MrMHgyYjYvMHgzMzAgPDQ+IFszMDguNTUzODI0XSAgPwo+IHdhaXRfd29rZW4r
MHhhMC8weGEwIDw0PiBbMzA4LjU1MzgzNV0gIF9fbWVpX2NsX3NlbmQrMHgxZjQvMHgyNDAgW21l
aV0KPiA8ND4gWzMwOC41NTM4NDhdICBtZWlfbWtoaV9maXgrMHg5MS8weDI4MCBbbWVpXSA8ND4g
WzMwOC41NTM4NTldCj4gbWVpX2NsX2J1c19kZXZfZml4dXArMHhiYS8weDEwMCBbbWVpXSA8ND4g
WzMwOC41NTM4NjhdICA/Cj4gZGV2aWNlX2FkZCsweDE1Ni8weDY3MCA8ND4gWzMwOC41NTM4ODld
ICA/Cj4gbWVpX2NsX2J1c19yZXNjYW5fd29yaysweDFiYy8weDM1MCBbbWVpXSA8ND4gWzMwOC41
NTM4OTZdCj4gbWVpX2NsX2J1c19yZXNjYW5fd29yaysweDFiYy8weDM1MCBbbWVpXSA8ND4gWzMw
OC41NTM5MDVdCj4gcHJvY2Vzc19vbmVfd29yaysweDI0NS8weDVmMCA8ND4gWzMwOC41NTM5MTVd
ICB3b3JrZXJfdGhyZWFkKzB4MzcvMHgzODAKPiA8ND4gWzMwOC41NTM5MjFdICA/IHByb2Nlc3Nf
b25lX3dvcmsrMHg1ZjAvMHg1ZjAgPDQ+IFszMDguNTUzOTI0XQo+IGt0aHJlYWQrMHgxMTkvMHgx
MzAgPDQ+IFszMDguNTUzOTI4XSAgPyBrdGhyZWFkX3BhcmsrMHhhMC8weGEwIDw0Pgo+IFszMDgu
NTUzOTM0XSAgcmV0X2Zyb21fZm9yaysweDNhLzB4NTAKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogQWxleGFuZGVyIFVzeXNr
aW4gPGFsZXhhbmRlci51c3lza2luQGludGVsLmNvbT4KPiBDYzogVG9tYXMgV2lua2xlciA8dG9t
YXMud2lua2xlckBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWlzYy9tZWkvYnVzLmMgICAg
fCAgOSArKysrKysrLS0KPiAgZHJpdmVycy9taXNjL21laS9jbGllbnQuYyB8ICA1ICsrKy0tCj4g
IGRyaXZlcnMvbWlzYy9tZWkvbWFpbi5jICAgfCAxOCArKysrKysrKysrKysrKy0tLS0KPiAgMyBm
aWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21pc2MvbWVpL2J1cy5jIGIvZHJpdmVycy9taXNjL21laS9idXMuYyBp
bmRleAo+IDk4NWJkNGZkMzMyOC4uNWIyZGI3N2Q0OGRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWlzYy9tZWkvYnVzLmMKPiArKysgYi9kcml2ZXJzL21pc2MvbWVpL2J1cy5jCj4gQEAgLTY2LDkg
KzY2LDEwIEBAIHNzaXplX3QgX19tZWlfY2xfc2VuZChzdHJ1Y3QgbWVpX2NsICpjbCwgdTggKmJ1
Ziwgc2l6ZV90Cj4gbGVuZ3RoLAo+IAo+ICAJd2hpbGUgKGNsLT50eF9jYl9xdWV1ZWQgPj0gYnVz
LT50eF9xdWV1ZV9saW1pdCkgewo+ICAJCW11dGV4X3VubG9jaygmYnVzLT5kZXZpY2VfbG9jayk7
Cj4gLQkJcmV0cyA9IHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZShjbC0+dHhfd2FpdCwKPiArCQly
ZXRzID0gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlX3RpbWVvdXQoY2wtPnR4X3dhaXQsCj4gIAkJ
CQljbC0+d3JpdGluZ19zdGF0ZSA9PSBNRUlfV1JJVEVfQ09NUExFVEUKPiB8fAo+IC0JCQkJKCFt
ZWlfY2xfaXNfY29ubmVjdGVkKGNsKSkpOwo+ICsJCQkJIW1laV9jbF9pc19jb25uZWN0ZWQoY2wp
LAo+ICsJCQkJSFopOwo+ICAJCW11dGV4X2xvY2soJmJ1cy0+ZGV2aWNlX2xvY2spOwo+ICAJCWlm
IChyZXRzKSB7Cj4gIAkJCWlmIChzaWduYWxfcGVuZGluZyhjdXJyZW50KSkKPiBAQCAtNzksNiAr
ODAsMTAgQEAgc3NpemVfdCBfX21laV9jbF9zZW5kKHN0cnVjdCBtZWlfY2wgKmNsLCB1OCAqYnVm
LCBzaXplX3QKPiBsZW5ndGgsCj4gIAkJCXJldHMgPSAtRU5PREVWOwo+ICAJCQlnb3RvIG91dDsK
PiAgCQl9Cj4gKwkJaWYgKGNsLT53cml0aW5nX3N0YXRlICE9IE1FSV9XUklURV9DT01QTEVURSkg
ewo+ICsJCQlyZXRzID0gLUVGQVVMVDsKPiArCQkJZ290byBvdXQ7Cj4gKwkJfQo+ICAJfQo+IAo+
ICAJY2IgPSBtZWlfY2xfYWxsb2NfY2IoY2wsIGxlbmd0aCwgTUVJX0ZPUF9XUklURSwgTlVMTCk7
IGRpZmYgLS1naXQKPiBhL2RyaXZlcnMvbWlzYy9tZWkvY2xpZW50LmMgYi9kcml2ZXJzL21pc2Mv
bWVpL2NsaWVudC5jIGluZGV4Cj4gMWUzZWRiYmFjYjFlLi5lN2FjYzhhYTliMTUgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9taXNjL21laS9jbGllbnQuYwo+ICsrKyBiL2RyaXZlcnMvbWlzYy9tZWkv
Y2xpZW50LmMKPiBAQCAtMTc2Nyw5ICsxNzY3LDEwIEBAIHNzaXplX3QgbWVpX2NsX3dyaXRlKHN0
cnVjdCBtZWlfY2wgKmNsLCBzdHJ1Y3QKPiBtZWlfY2xfY2IgKmNiKQo+ICAJaWYgKGJsb2NraW5n
ICYmIGNsLT53cml0aW5nX3N0YXRlICE9IE1FSV9XUklURV9DT01QTEVURSkgewo+IAo+ICAJCW11
dGV4X3VubG9jaygmZGV2LT5kZXZpY2VfbG9jayk7Cj4gLQkJcmV0cyA9IHdhaXRfZXZlbnRfaW50
ZXJydXB0aWJsZShjbC0+dHhfd2FpdCwKPiArCQlyZXRzID0gd2FpdF9ldmVudF9pbnRlcnJ1cHRp
YmxlX3RpbWVvdXQoY2wtPnR4X3dhaXQsCj4gIAkJCQljbC0+d3JpdGluZ19zdGF0ZSA9PSBNRUlf
V1JJVEVfQ09NUExFVEUKPiB8fAo+IC0JCQkJKCFtZWlfY2xfaXNfY29ubmVjdGVkKGNsKSkpOwo+
ICsJCQkJIW1laV9jbF9pc19jb25uZWN0ZWQoY2wpLAo+ICsJCQkJSFopOwo+ICAJCW11dGV4X2xv
Y2soJmRldi0+ZGV2aWNlX2xvY2spOwo+ICAJCS8qIHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZSBy
ZXR1cm5zIC1FUkVTVEFSVFNZUyAqLwo+ICAJCWlmIChyZXRzKSB7Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWlzYy9tZWkvbWFpbi5jIGIvZHJpdmVycy9taXNjL21laS9tYWluLmMgaW5kZXgKPiBm
ODk0ZDFmOGE1M2UuLjBlYjdiZmQ4OWE5MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21pc2MvbWVp
L21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbWlzYy9tZWkvbWFpbi5jCj4gQEAgLTI5NCw5ICsyOTQs
MTAgQEAgc3RhdGljIHNzaXplX3QgbWVpX3dyaXRlKHN0cnVjdCBmaWxlICpmaWxlLCBjb25zdCBj
aGFyCj4gX191c2VyICp1YnVmLAo+ICAJCQlnb3RvIG91dDsKPiAgCQl9Cj4gIAkJbXV0ZXhfdW5s
b2NrKCZkZXYtPmRldmljZV9sb2NrKTsKPiAtCQlyZXRzID0gd2FpdF9ldmVudF9pbnRlcnJ1cHRp
YmxlKGNsLT50eF93YWl0LAo+ICsJCXJldHMgPSB3YWl0X2V2ZW50X2ludGVycnVwdGlibGVfdGlt
ZW91dChjbC0+dHhfd2FpdCwKPiAgCQkJCWNsLT53cml0aW5nX3N0YXRlID09IE1FSV9XUklURV9D
T01QTEVURQo+IHx8Cj4gLQkJCQkoIW1laV9jbF9pc19jb25uZWN0ZWQoY2wpKSk7Cj4gKwkJCQkh
bWVpX2NsX2lzX2Nvbm5lY3RlZChjbCksCj4gKwkJCQlIWik7Cj4gIAkJbXV0ZXhfbG9jaygmZGV2
LT5kZXZpY2VfbG9jayk7Cj4gIAkJaWYgKHJldHMpIHsKPiAgCQkJaWYgKHNpZ25hbF9wZW5kaW5n
KGN1cnJlbnQpKQo+IEBAIC0zMDcsNiArMzA4LDEwIEBAIHN0YXRpYyBzc2l6ZV90IG1laV93cml0
ZShzdHJ1Y3QgZmlsZSAqZmlsZSwgY29uc3QgY2hhcgo+IF9fdXNlciAqdWJ1ZiwKPiAgCQkJcmV0
cyA9IC1FTk9ERVY7Cj4gIAkJCWdvdG8gb3V0Owo+ICAJCX0KPiArCQlpZiAoY2wtPndyaXRpbmdf
c3RhdGUgIT0gTUVJX1dSSVRFX0NPTVBMRVRFKSB7Cj4gKwkJCXJldHMgPSAtRUZBVUxUOwo+ICsJ
CQlnb3RvIG91dDsKPiArCQl9Cj4gIAl9Cj4gCj4gIAljYiA9IG1laV9jbF9hbGxvY19jYihjbCwg
bGVuZ3RoLCBNRUlfRk9QX1dSSVRFLCBmaWxlKTsgQEAgLTY1OCw5Cj4gKzY2MywxMCBAQCBzdGF0
aWMgaW50IG1laV9mc3luYyhzdHJ1Y3QgZmlsZSAqZnAsIGxvZmZfdCBzdGFydCwgbG9mZl90IGVu
ZCwgaW50Cj4gZGF0YXN5bmMpCj4gCj4gIAl3aGlsZSAobWVpX2NsX2lzX3dyaXRlX3F1ZXVlZChj
bCkpIHsKPiAgCQltdXRleF91bmxvY2soJmRldi0+ZGV2aWNlX2xvY2spOwo+IC0JCXJldHMgPSB3
YWl0X2V2ZW50X2ludGVycnVwdGlibGUoY2wtPnR4X3dhaXQsCj4gKwkJcmV0cyA9IHdhaXRfZXZl
bnRfaW50ZXJydXB0aWJsZV90aW1lb3V0KGNsLT50eF93YWl0LAo+ICAJCQkJY2wtPndyaXRpbmdf
c3RhdGUgPT0gTUVJX1dSSVRFX0NPTVBMRVRFCj4gfHwKPiAtCQkJCSFtZWlfY2xfaXNfY29ubmVj
dGVkKGNsKSk7Cj4gKwkJCQkhbWVpX2NsX2lzX2Nvbm5lY3RlZChjbCksCj4gKwkJCQlIWik7Cj4g
IAkJbXV0ZXhfbG9jaygmZGV2LT5kZXZpY2VfbG9jayk7Cj4gIAkJaWYgKHJldHMpIHsKPiAgCQkJ
aWYgKHNpZ25hbF9wZW5kaW5nKGN1cnJlbnQpKQo+IEBAIC02NzEsNiArNjc3LDEwIEBAIHN0YXRp
YyBpbnQgbWVpX2ZzeW5jKHN0cnVjdCBmaWxlICpmcCwgbG9mZl90IHN0YXJ0LCBsb2ZmX3QKPiBl
bmQsIGludCBkYXRhc3luYykKPiAgCQkJcmV0cyA9IC1FTk9ERVY7Cj4gIAkJCWdvdG8gb3V0Owo+
ICAJCX0KPiArCQlpZiAoY2wtPndyaXRpbmdfc3RhdGUgIT0gTUVJX1dSSVRFX0NPTVBMRVRFKSB7
Cj4gKwkJCXJldHMgPSAtRUZBVUxUOwo+ICsJCQlnb3RvIG91dDsKPiArCQl9Cj4gIAl9Cj4gIAly
ZXRzID0gMDsKPiAgb3V0Ogo+IC0tCj4gMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
