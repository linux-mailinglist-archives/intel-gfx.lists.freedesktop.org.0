Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BE6D92D4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E1C6E402;
	Wed, 16 Oct 2019 13:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0861B6E402
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:46:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 06:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="397169724"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga006.fm.intel.com with ESMTP; 16 Oct 2019 06:46:25 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 06:46:25 -0700
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 fmsmsx123.amr.corp.intel.com (10.18.125.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 06:46:25 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.95]) with mapi id 14.03.0439.000;
 Wed, 16 Oct 2019 19:16:24 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v1 6/6] drm/i915/display: Reduce blanking to support
 4k60@10bpp for LSPCON
Thread-Index: AQHVhAkFQykNvI3FvkeCPJwO+NxZu6dc4sMAgABe7RA=
Date: Wed, 16 Oct 2019 13:46:24 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F822744FC@BGSMSX104.gar.corp.intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
 <20191016103249.32121-7-uma.shankar@intel.com>
 <20191016131336.GM1208@intel.com>
In-Reply-To: <20191016131336.GM1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzI4M2FhNmUtOTVlYi00YWZjLTgwYWItOWVjODRjZjU0ODRjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiemJcL0w3d0xhY0VpOEM4QVFSRmZ1VzlSck1pcHluaUtZcVFsdThCckxKb293VTBZN0w4cHR0eGdSWjdYMVZOQW0ifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v1 6/6] drm/i915/display: Reduce blanking to
 support 4k60@10bpp for LSPCON
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj5TZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMTYs
IDIwMTkgNjo0NCBQTQo+VG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+
Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE11biwgR3dhbi1neWVvbmcgPGd3
YW4tCj5neWVvbmcubXVuQGludGVsLmNvbT47IFNoYXJtYSwgU2hhc2hhbmsgPHNoYXNoYW5rLnNo
YXJtYUBpbnRlbC5jb20+Cj5TdWJqZWN0OiBSZTogW3YxIDYvNl0gZHJtL2k5MTUvZGlzcGxheTog
UmVkdWNlIGJsYW5raW5nIHRvIHN1cHBvcnQgNGs2MEAxMGJwcCBmb3IKPkxTUENPTgo+Cj5PbiBX
ZWQsIE9jdCAxNiwgMjAxOSBhdCAwNDowMjo0OVBNICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToK
Pj4gQmxhbmtpbmcgbmVlZHMgdG8gYmUgcmVkdWNlZCB0byBpbmNvcnBvcmF0ZSBEUCBhbmQgSERN
SSB0aW1pbmcvbGluawo+PiBiYW5kd2lkdGggbGltaXRhdGlvbnMgZm9yIENFQSBtb2RlcyAoNGtA
NjAgYXQgMTAgYnBwKS4gRFAgY2FuIGRyaXZlCj4+IDE3LjI4R2JzIHdoaWxlIDRrIG1vZGVzIChW
SUM5NyBldGMpIGF0IDEwIGJwcCByZXF1aXJlZCAxNy44IEdicHMuCj4+IFRoaXMgd2lsbCBjYXVz
ZSBtb2RlIHRvIGJsYW5rIG91dC4gUmVkdWNlZCBIdG90YWwgYnkgc2hvcnRlbmluZyB0aGUKPj4g
YmFjayBwb3JjaCBhbmQgZnJvbnQgcG9yY2ggd2l0aGluIHBlcm1pc3NpYmxlIGxpbWl0cy4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPj4g
LS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNyArKysr
KysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBpbmRleCBkOTI3Nzdi
ZDNiZWQuLmExMmI2OTE2MDIzZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+PiBAQCAtNTk3LDggKzU5NywxMCBAQCBpbnRlbF9kcF9tb2RlX3ZhbGlkKHN0
cnVjdCBkcm1fY29ubmVjdG9yCj4+ICpjb25uZWN0b3IsICB7Cj4+ICAJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9IGludGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7Cj4+ICAJc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0KPj4gdG9faW50ZWxfY29ubmVjdG9yKGNv
bm5lY3Rvcik7Cj4+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIgPQo+PiAr
aW50ZWxfYXR0YWNoZWRfZW5jb2Rlcihjb25uZWN0b3IpOwo+PiAgCXN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlICpmaXhlZF9tb2RlID0gaW50ZWxfY29ubmVjdG9yLQo+PnBhbmVsLmZpeGVkX21vZGU7
Cj4+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0
b3ItPmRldik7Cj4+ICsJc3RydWN0IGludGVsX2xzcGNvbiAqbHNwY29uID0KPj4gK2VuY190b19p
bnRlbF9sc3Bjb24oJmludGVsX2VuY29kZXItPmJhc2UpOwo+PiAgCWludCB0YXJnZXRfY2xvY2sg
PSBtb2RlLT5jbG9jazsKPj4gIAlpbnQgbWF4X3JhdGUsIG1vZGVfcmF0ZSwgbWF4X2xhbmVzLCBt
YXhfbGlua19jbG9jazsKPj4gIAlpbnQgbWF4X2RvdGNsazsKPj4gQEAgLTYyMCw2ICs2MjIsMjEg
QEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+
PiAgCQl0YXJnZXRfY2xvY2sgPSBmaXhlZF9tb2RlLT5jbG9jazsKPj4gIAl9Cj4+Cj4+ICsJLyoK
Pj4gKwkgKiBSZWR1Y2luZyBCbGFua2luZyB0byBpbmNvcnBvcmF0ZSBEUCBhbmQgSERNSSB0aW1p
bmcvbGluayBiYW5kd2lkdGgKPj4gKwkgKiBsaW1pdGF0aW9ucyBmb3IgQ0VBIG1vZGVzICg0a0A2
MCBhdCAxMCBicHApLiBEUCBjYW4gZHJpdmUgMTcuMjhHYnMKPj4gKwkgKiB3aGlsZSA0ayBtb2Rl
cyAoVklDOTcgZXRjKSBhdCAxMCBicHAgcmVxdWlyZWQgMTcuOCBHYnBzLiBUaGlzIHdpbGwKPj4g
KwkgKiBjYXVzZSBtb2RlIHRvIGJsYW5rIG91dC4gUmVkdWNlZCBIdG90YWwgYnkgc2hvcnRlbmlu
ZyB0aGUgYmFjayBwb3JjaAo+PiArCSAqIGFuZCBmcm9udCBwb3JjaCB3aXRoaW4gcGVybWlzc2li
bGUgbGltaXRzLgo+PiArCSAqLwo+PiArCWlmIChsc3Bjb24tPmFjdGl2ZSAmJiBsc3Bjb24tPmhk
cl9zdXBwb3J0ZWQgJiYKPj4gKwkgICAgbW9kZS0+Y2xvY2sgPiA1NzAwMDApIHsKPj4gKwkJbW9k
ZS0+Y2xvY2sgPSA1NzAwMDA7Cj4+ICsJCW1vZGUtPmh0b3RhbCAtPSAxODA7Cj4+ICsJCW1vZGUt
PmhzeW5jX3N0YXJ0IC09IDcyOwo+PiArCQltb2RlLT5oc3luY19lbmQgLT0gNzI7Cj4+ICsJfQo+
Cj5JIGRvbid0IHRoaW5rIHdlIHdhbnQgdGhlc2Uga2luZCBvZiBoYWNrcy4gRWl0aGVyIHRoZSBt
b2RlIHdvcmtzIG9yIGl0IGRvZXNuJ3QuCgpIaSBWaWxsZSwKWWVhaCB0aGlzIGlzIG5vdCBpZGVh
bC4gQnV0IGluIG9yZGVyIHRvIGVuYWJsZSBIRFIgd2hpY2ggaXMgbW9zdGx5IDEwYml0IGNvbnRl
bnQgb24gTHNwY29uIGJhc2VkCkdlbjkgZGV2aWNlcyB0aGVyZSBhcmUgbGltaXRhdGlvbnMgb24g
YmFuZHdpZHRoIHNpZGUgb24gRFAuIFNvIHdpdGggdGhhdCBsaW1pdCwgd2UgY2Fubm90IGRyaXZl
CjEwYml0IGNvbnRlbnQgYXQgNGtANjAuIEJ1dCBwcmFjdGljYWxseSB3ZSBjYW4gZ2V0IHRoaXMg
d29ya2luZyBhbmQgYWJsZSB0byBkcml2ZSB0aGUgc2luayB3aXRob3V0CmFueSByZWFsIGlzc3Vl
cyB3aXRoIGFib3ZlIHRpbWluZyBhZGp1c3RtZW50cy4gVGhpcyBnZXRzIGVuYWJsZWQgaWYgZmly
bXdhcmUgYWR2ZXJ0aXNlIEhEUiBjYXBhYmlsaXRpZXMsCiBzbyBpbiBjYXNlIGEgdmVuZG9yIGRv
ZXNuJ3Qgd2FudCB0aGlzLCBpdCBjYW4gYmUgZGlzYWJsZWQgaW4gdGhlIExTUENPTiBmaXJtd2Fy
ZS4KCkkgdGVzdGVkIG9uIEhETUkgYW5hbHl6ZXIgYW5kIG11bHRpcGxlIHNpbmtzIGFuZCBhbHNv
IGRhdGEgZnJvbSBvdGhlciBPUyB0ZWFtcyBzdWdnZXN0IHRoYXQgdGhpcwpjb25maWd1cmF0aW9u
IHdvcmtzIGFuZCBpcyBlbmFibGVkIGluIHNvbWUgb2YgdGhlIHByb2R1Y3RzIGFzIHdlbGwuCgpE
ZWZpbml0ZWx5IG5vdCBpZGVhbCwgYnV0IGF0IGxlYXN0IHdlIGdldCBIRFIgd29ya2luZyBvbiBH
ZW45IGRldmljZXMgd2l0aCB0aGlzLCB3aXRoIGFuIG9wdGlvbgpvZiBkaXNhYmxpbmcgaWYgbm90
IHJlcXVpcmVkLiBUaGlzIGNhbiBiZSBtb3JlIG9mIHF1aXJrIGtpbmQgb2YgdGhpbmcuCgpXaGF0
IGRvIHlvdSBzdWdnZXN0LgoKUmVnYXJkcywKVW1hIFNoYW5rYXIKCj4+ICsKPj4gIAltYXhfbGlu
a19jbG9jayA9IGludGVsX2RwX21heF9saW5rX3JhdGUoaW50ZWxfZHApOwo+PiAgCW1heF9sYW5l
cyA9IGludGVsX2RwX21heF9sYW5lX2NvdW50KGludGVsX2RwKTsKPj4KPj4gLS0KPj4gMi4yMi4w
Cj4KPi0tCj5WaWxsZSBTeXJqw6Rsw6QKPkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
