Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E681410F1E7
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 22:09:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0461D6E101;
	Mon,  2 Dec 2019 21:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19E96E101
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 21:09:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 13:09:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,270,1571727600"; d="scan'208";a="208225787"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 02 Dec 2019 13:09:41 -0800
Date: Mon, 2 Dec 2019 13:09:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191202210941.GI3251369@mdroper-desk1.amr.corp.intel.com>
References: <20191202171608.3361125-1-matthew.d.roper@intel.com>
 <157531627059.1066.14554997551129728279@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157531627059.1066.14554997551129728279@emeril.freedesktop.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/irq=3A_Refactor_gen11_display_interrupt_handling?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBEZWMgMDIsIDIwMTkgYXQgMDc6NTE6MTBQTSArMDAwMCwgUGF0Y2h3b3JrIHdyb3Rl
Ogo+ID09IFNlcmllcyBEZXRhaWxzID09Cj4gCj4gU2VyaWVzOiBkcm0vaTkxNS9pcnE6IFJlZmFj
dG9yIGdlbjExIGRpc3BsYXkgaW50ZXJydXB0IGhhbmRsaW5nCj4gVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMzAzLwo+IFN0YXRlIDogZmFpbHVyZQo+
IAo+ID09IFN1bW1hcnkgPT0KPiAKPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV83
NDYzIC0+IFBhdGNod29ya18xNTU0MQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0KPiAKPiBTdW1tYXJ5Cj4gLS0tLS0tLQo+IAo+ICAgKipGQUlM
VVJFKioKPiAKPiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29y
a18xNTU0MSBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUKPiAgIHZlcmlmaWVkIG1hbnVhbGx5Lgo+ICAg
Cj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRv
IHdpdGggdGhlIGNoYW5nZXMKPiAgIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NTQxLCBwbGVh
c2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQo+ICAgdG8gZG9jdW1lbnQgdGhp
cyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4g
Q0kuCj4gCj4gICBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE1NTQxL2luZGV4Lmh0bWwKPiAKPiBQb3NzaWJsZSBuZXcgaXNz
dWVzCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQo+IAo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hh
bmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU1NDE6Cj4g
Cj4gIyMjIElHVCBjaGFuZ2VzICMjIwo+IAo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMj
Iwo+IAo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2JsdDoKPiAgICAgLSBmaS1oc3ctNDc3
MDogICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctRkFJTF1bMl0KPiAgICBbMV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzc0NjMvZmktaHN3LTQ3NzAv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAo+ICAgIFsyXTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1NDEvZmktaHN3LTQ3NzAvaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZV9ibHQuaHRtbAoKICAgICAgICA8Nj4gWzM0My42NDQxOTJdIGk5
MTUgMDAwMDowMDowMi4wOiBHUFUgSEFORzogZWNvZGUKICAgICAgICA3OjI6MHhjNWVmMGY3OCwg
aW4gaWd0L2JsdC03IFs0OTk3XSwgc3RvcHBlZCBoZWFydGJlYXQgb24gYmNzMCAKICAgICAgICAu
Li4KICAgICAgICA8Mz4gWzM0My43NDg3MDldIHZhZGRyWzBdPTNhMTBmMDhmLCBleHBlY3RlZD1l
NGJkNGUyMAogICAgICAgIC4uLgogICAgICAgIDwzPiBbMzQzLjg0MTYwMV0gaTkxNS9pOTE1X2dl
bV9vYmplY3RfYmx0X2xpdmVfc2VsZnRlc3RzOgogICAgICAgIGlndF9maWxsX2JsdCBmYWlsZWQg
d2l0aCBlcnJvciAtMjIKCkEgR1BVIGhhbmcgY291bGQgYmUgYSBzeW1wdG9tIGlmIEkgc2NyZXdl
ZCB1cCBpbnRlcnJ1cHRzLCBidXQgSFNXIGlzIHRoZQp3cm9uZyBwbGF0Zm9ybSBmb3IgbXkgc2Vy
aWVzIHRvIGNhdXNlIHByb2JsZW1zIG9uLCBzbyB0aGlzIGFwcGVhcnMKdW5yZWxhdGVkLiAgSGl0
dGluZyB0aGUgcmUtdGVzdCBidXR0b24uCgoKTWF0dAoKPiAKPiAgIAo+IEtub3duIGlzc3Vlcwo+
IC0tLS0tLS0tLS0tLQo+IAo+ICAgSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3
b3JrXzE1NTQxIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoKPiAKPiAjIyMgSUdUIGNoYW5n
ZXMgIyMjCj4gCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMKPiAKPiAgICogaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9ndHQ6Cj4gICAgIC0gZmktc2tsLTY2MDB1OiAgICAgICBbUEFTU11bM10gLT4gW1RJ
TUVPVVRdWzRdIChbZmRvIzExMTczMl0pCj4gICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDYzL2ZpLXNrbC02NjAwdS9pZ3RAaTkxNV9zZWxm
dGVzdEBsaXZlX2d0dC5odG1sCj4gICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNTU0MS9maS1za2wtNjYwMHUvaWd0QGk5MTVfc2VsZnRl
c3RAbGl2ZV9ndHQuaHRtbAo+IAo+ICAgKiBpZ3RAa21zX2NoYW1lbGl1bUBkcC1jcmMtZmFzdDoK
PiAgICAgLSBmaS1pY2wtdTI6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbRkFJTF1bNl0gKFtmZG8j
MTA5NjM1XSAvIFtpOTE1IzI2Ml0pCj4gICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDYzL2ZpLWljbC11Mi9pZ3RAa21zX2NoYW1lbGl1bUBk
cC1jcmMtZmFzdC5odG1sCj4gICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNTU0MS9maS1pY2wtdTIvaWd0QGttc19jaGFtZWxpdW1AZHAt
Y3JjLWZhc3QuaHRtbAo+IAo+ICAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2lj
Ogo+ICAgICAtIGZpLWljbC1ndWM6ICAgICAgICAgW1BBU1NdWzddIC0+IFtGQUlMXVs4XSAoW2k5
MTUjNDldKQo+ICAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fNzQ2My9maS1pY2wtZ3VjL2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFz
aWMuaHRtbAo+ICAgIFs4XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTU1NDEvZmktaWNsLWd1Yy9pZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGJhc2ljLmh0bWwKPiAKPiAgIAo+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIwo+IAo+ICAgKiBp
Z3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb246Cj4gICAgIC0g
e2ZpLWtibC03NTYwdX06ICAgICBbSU5DT01QTEVURV1bOV0gKFtpOTE1IzI0M10gLyBbaTkxNSM2
MDldKSAtPiBbUEFTU11bMTBdCj4gICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV83NDYzL2ZpLWtibC03NTYwdS9pZ3RAaTkxNV9tb2R1bGVfbG9h
ZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAo+ICAgIFsxMF06IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTQxL2ZpLWtibC03NTYw
dS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQtd2l0aC1mYXVsdC1pbmplY3Rpb24uaHRtbAo+
IAo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2xyYzoKPiAgICAgLSBmaS1id3ItMjE2
MDogICAgICAgIFtJTkNPTVBMRVRFXVsxMV0gKFtpOTE1IzY5NV0pIC0+IFtQQVNTXVsxMl0KPiAg
ICBbMTFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83
NDYzL2ZpLWJ3ci0yMTYwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVfZ3RfbHJjLmh0bWwKPiAgICBb
MTJdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
NTU0MS9maS1id3ItMjE2MC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlX2d0X2xyYy5odG1sCj4gCj4g
ICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6Cj4gICAgIC0gZmktaWNsLXUyOiAg
ICAgICAgICBbRkFJTF1bMTNdIChbaTkxNSMyMTddKSAtPiBbUEFTU11bMTRdCj4gICAgWzEzXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ2My9maS1p
Y2wtdTIvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sCj4gICAgWzE0XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1NDEvZmkt
aWNsLXUyL2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbAo+IAo+ICAgKiBpZ3RA
a21zX2Zyb250YnVmZmVyX3RyYWNraW5nQGJhc2ljOgo+ICAgICAtIGZpLWhzdy1wZXBweTogICAg
ICAgW0RNRVNHLVdBUk5dWzE1XSAoW2k5MTUjNDRdKSAtPiBbUEFTU11bMTZdCj4gICAgWzE1XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNzQ2My9maS1o
c3ctcGVwcHkvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sCj4gICAgWzE2
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1
NDEvZmktaHN3LXBlcHB5L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAo+
IAo+ICAgCj4gIyMjIyBXYXJuaW5ncyAjIyMjCj4gCj4gICAqIGlndEBrbXNfZm9yY2VfY29ubmVj
dG9yX2Jhc2ljQGZvcmNlLWVkaWQ6Cj4gICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBbRE1FU0ct
V0FSTl1bMTddIChbaTkxNSM2Ml0gLyBbaTkxNSM5Ml0gLyBbaTkxNSM5NV0pIC0+IFtETUVTRy1X
QVJOXVsxOF0gKFtpOTE1IzYyXSAvIFtpOTE1IzkyXSkgKzUgc2ltaWxhciBpc3N1ZXMKPiAgICBb
MTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDYz
L2ZpLWtibC14MTI3NS9pZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rvcl9iYXNpY0Bmb3JjZS1lZGlkLmh0
bWwKPiAgICBbMThdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNTU0MS9maS1rYmwteDEyNzUvaWd0QGttc19mb3JjZV9jb25uZWN0b3JfYmFzaWNA
Zm9yY2UtZWRpZC5odG1sCj4gCj4gICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAaGFuZy1yZWFk
LWNyYy1waXBlLWE6Cj4gICAgIC0gZmkta2JsLXgxMjc1OiAgICAgICBbRE1FU0ctV0FSTl1bMTld
IChbaTkxNSM2Ml0gLyBbaTkxNSM5Ml0pIC0+IFtETUVTRy1XQVJOXVsyMF0gKFtpOTE1IzYyXSAv
IFtpOTE1IzkyXSAvIFtpOTE1Izk1XSkgKzUgc2ltaWxhciBpc3N1ZXMKPiAgICBbMTldOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV83NDYzL2ZpLWtibC14
MTI3NS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGhhbmctcmVhZC1jcmMtcGlwZS1hLmh0bWwKPiAg
ICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNTU0MS9maS1rYmwteDEyNzUvaWd0QGttc19waXBlX2NyY19iYXNpY0BoYW5nLXJlYWQtY3Jj
LXBpcGUtYS5odG1sCj4gCj4gICAKPiAgIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNz
ZWQuIFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZwo+ICAgICAgICAgICB0
aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJF
KS4KPiAKPiAgIFtmZG8jMTA5NjM1XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9MTA5NjM1Cj4gICBbZmRvIzExMTczMl06IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTczMgo+ICAgW2k5MTUjMjE3XTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjE3Cj4gICBbaTkxNSMyNDNd
OiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8yNDMKPiAg
IFtpOTE1IzI2Ml06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNz
dWVzLzI2Mgo+ICAgW2k5MTUjNDRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2ludGVsL2lzc3Vlcy80NAo+ICAgW2k5MTUjNDldOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80OQo+ICAgW2k5MTUjNjA5XTogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNjA5Cj4gICBbaTkxNSM2Ml06IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzYyCj4gICBbaTkxNSM2
OTVdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy82OTUK
PiAgIFtpOTE1IzkyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9p
c3N1ZXMvOTIKPiAgIFtpOTE1Izk1XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvOTUKPiAKPiAKPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg1MiAtPiA0NCkK
PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAKPiAgIE1pc3NpbmcgICAgKDgpOiBm
aS1oc3ctNDc3MHIgZmktaWxrLW01NDAgZmktaHN3LTQyMDB1IGZpLWJzdy1jeWFuIGZpLWN0Zy1w
ODYwMCBmaS10Z2wteSBmaS1ieXQtY2xhcHBlciBmaS1iZHctc2FtdXMgCj4gCj4gCj4gQnVpbGQg
Y2hhbmdlcwo+IC0tLS0tLS0tLS0tLS0KPiAKPiAgICogQ0k6IENJLTIwMTkwNTI5IC0+IE5vbmUK
PiAgICogTGludXg6IENJX0RSTV83NDYzIC0+IFBhdGNod29ya18xNTU0MQo+IAo+ICAgQ0ktMjAx
OTA1Mjk6IDIwMTkwNTI5Cj4gICBDSV9EUk1fNzQ2MzogOWYyNjE1MzQ2ZGUzYTQwYmUzZmE2MmQw
OGYzMzMxNjMyYTdhZDI2NSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9s
aW51eAo+ICAgSUdUXzUzMjE6IDlkZjUwYWVmNDllMGRhNDQxMzYwOWQ5ODY2YjQxYjgyYjcyNWYy
YTAgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9v
bHMKPiAgIFBhdGNod29ya18xNTU0MTogM2ZhMTg2NGNkMWE3MzdjZDg2NWY0M2VhZDgyOGY3MWQz
ZTJhNGIyNSBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eAo+IAo+
IAo+ID09IExpbnV4IGNvbW1pdHMgPT0KPiAKPiAzZmExODY0Y2QxYTcgZHJtL2k5MTUvaXJxOiBS
ZWZhY3RvciBnZW4xMSBkaXNwbGF5IGludGVycnVwdCBoYW5kbGluZwo+IAo+ID09IExvZ3MgPT0K
PiAKPiBGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1NDEvaW5kZXguaHRtbAoKLS0gCk1hdHQgUm9wZXIKR3Jh
cGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudApJbnRl
bCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
