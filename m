Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B792B4B9F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 17:48:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8445989E9E;
	Mon, 16 Nov 2020 16:48:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ADB889D5C;
 Mon, 16 Nov 2020 16:48:01 +0000 (UTC)
IronPort-SDR: RUfsQFDrd0NJpg2hgGPqgdi/47u6hBSd2x7RMN1wZ4kgY6X+1FX8ijuYEEfsNFrdJ4JFtyX//8
 Mx5RKHQ8Pxug==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="150045936"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="150045936"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 08:48:00 -0800
IronPort-SDR: /iOS8Q+O16SexhjFG9brjR5LH6Tbpe1F/j/75/ussjRhK6mX+g5Dzi6PGMHfMfWRda2PNoTFuW
 /c58AF8WCfaA==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="543669729"
Received: from plos-mobl1.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.1.122])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 08:47:58 -0800
Date: Mon, 16 Nov 2020 17:47:55 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20201116164755.GA2763@zkempczy-mobl2>
References: <20201113162736.2434791-1-tvrtko.ursulin@linux.intel.com>
 <20201113162736.2434791-4-tvrtko.ursulin@linux.intel.com>
 <20201116140359.GA39257@zkempczy-mobl2>
 <2674be7f-15f7-675e-9f25-019579a2a7f3@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2674be7f-15f7-675e-9f25-019579a2a7f3@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC i-g-t 3/5] lib/igt_device_scan: Remember PCI
 card index after scanning
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMDM6MDk6NDNQTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cgo8Y3V0PgogCj4gPiA+ICsKPiA+ID4gICAvKiBDb3JlIHNjYW5uaW5nIGZ1bmN0aW9u
Lgo+ID4gPiAgICAqCj4gPiA+ICAgICogQWxsIHNjYW5uZWQgZGV2aWNlcyBhcmUga2VwdCBpbnNp
ZGUgaWd0X2RldnMuYWxsIHBvaW50ZXIgYXJyYXkuCj4gPiA+IEBAIC02NTcsNiArNjg1LDcgQEAg
c3RhdGljIHZvaWQgc2Nhbl9kcm1fZGV2aWNlcyh2b2lkKQo+ID4gPiAgIAl1ZGV2X3VucmVmKHVk
ZXYpOwo+ID4gPiAgIAlzb3J0X2FsbF9kZXZpY2VzKCk7Cj4gPiA+ICsJaW5kZXhfcGNpX2Rldmlj
ZXMoKTsKPiA+ID4gICAJaWd0X2xpc3RfZm9yX2VhY2hfZW50cnkoZGV2LCAmaWd0X2RldnMuYWxs
LCBsaW5rKSB7Cj4gPiA+ICAgCQlzdHJ1Y3QgaWd0X2RldmljZSAqZGV2X2R1cCA9IGR1cGxpY2F0
ZV9kZXZpY2UoZGV2KTsKPiA+ID4gQEAgLTExMDUsMTMgKzExMzQsMTMgQEAgc3RhdGljIHN0cnVj
dCBpZ3RfbGlzdF9oZWFkICpmaWx0ZXJfcGNpKGNvbnN0IHN0cnVjdCBmaWx0ZXJfY2xhc3MgKmZj
bHMsCj4gPiA+ICAgCQlpZiAoZmlsdGVyLT5kYXRhLmRldmljZSAmJiBzdHJjYXNlY21wKGZpbHRl
ci0+ZGF0YS5kZXZpY2UsIGRldi0+ZGV2aWNlKSkKPiA+ID4gICAJCQljb250aW51ZTsKPiA+ID4g
LQkJLyogV2UgZ2V0IG4tdGggY2FyZCAqLwo+ID4gPiAtCQlpZiAoIWNhcmQpIHsKPiA+ID4gLQkJ
CXN0cnVjdCBpZ3RfZGV2aWNlICpkdXAgPSBkdXBsaWNhdGVfZGV2aWNlKGRldik7Cj4gPiA+IC0J
CQlpZ3RfbGlzdF9hZGRfdGFpbCgmZHVwLT5saW5rLCAmaWd0X2RldnMuZmlsdGVyZWQpOwo+ID4g
PiAtCQkJYnJlYWs7Cj4gPiA+IC0JCX0KPiA+ID4gLQkJY2FyZC0tOwo+ID4gPiArCQkvKiBTa2lw
IGlmICdjYXJkJyBkb2Vzbid0IG1hdGNoICovCj4gPiA+ICsJCWlmIChjYXJkICE9IGRldi0+cGNp
X2luZGV4KQo+ID4gPiArCQkJY29udGludWU7Cj4gPiA+ICsKPiA+ID4gKwkJZGV2ID0gZHVwbGlj
YXRlX2RldmljZShkZXYpOwo+ID4gPiArCQlpZ3RfbGlzdF9hZGRfdGFpbCgmZGV2LT5saW5rLCAm
aWd0X2RldnMuZmlsdGVyZWQpOwo+ID4gPiArCQlicmVhazsKPiA+IAo+ID4gSSBtYXkgd3Jvbmcg
KEkgZ290IG5vIHN1Y2ggdGVzdGluZyBlbnYpIGJ1dCBkZXZzX2NvbXBhcmUoKSBmdW5jdGlvbiBh
bG9uZyB3aXRoCj4gPiBpbmRleF9wY2lfZGV2aWNlcygpIGNhbiBsZWFkIHVzIHRvIHN1Y2ggKGV4
YW1wbGUpIHNpdHVhdGlvbjoKPiA+IAo+ID4gaWd0X2RldnMuYWxsIGNvbnRhaW5zIGRldmljZXMg
d2l0aCBzeXNwYXRocyBhbmQgc3Vic3lzdGVtIHBjaToKPiA+IC9zeXMvZGV2aWNlcy9wY2kwMDAw
OjAwLzAwMDA6MDA6MDQuMAktPiB2ZW5kb3IgODA4NiwgZGV2aWNlIDEyMzQJcGNpX2luZGV4ID09
IDAKPiA+IC9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDUuMAktPiB2ZW5kb3IgODA4
NiwgZGV2aWNlIDQzMjEJcGNpX2luZGV4ID09IDEKPiA+IC9zeXMvZGV2aWNlcy9wY2kwMDAwOjAw
LzAwMDA6MDA6MDYuMAktPiB2ZW5kb3IgODA4NiwgZGV2aWNlIDEyMzQJcGNpX2luZGV4ID09IDIK
PiA+IAo+ID4gSWYgd291bGQgdHJ5IGZpbHRlcjogcGNpPXZlbmRvcj04MDg2LGRldmljZT0xMjM0
LGNhcmQ9MSBJIHdvdWxkIGV4cGVjdAo+ID4gdG8gc2VsZWN0IChzZWNvbmQgY2FyZCBbaW5kZXgg
PT0gMV0pIGZyb20gZmlsdGVyZWQgZGV2aWNlcyB3aGljaCBtYXRjaAo+ID4gZGV2aWNlIDEyMzQu
Cj4gCj4gSXQgaXMgc3VwcG9zZWQgdG8gYmUgbGlrZSB5b3Ugc2F5LCBlYWNoIHBjaV9pbmRleCBi
ZWluZyBpbiB0aGUgbmFtZXNwYWNlIG9mCj4gZXF1YWwgdmVuZG9yICYgZGV2aWNlIG9ubHkuCj4g
Cj4gTGlrZSBmcm9tIGEgZHVhbCBHUFUgc3lzdGVtOgo+IAo+ICQgdG9vbHMvbHNncHUgLS1wY2kK
PiBjYXJkMSAgICAgICAgICAgICAgICAgICA4MDg2OjQ5MDUgICAgcGNpOnZlbmRvcj04MDg2LGRl
dmljZT00OTA1LGNhcmQ9MAo+IOKUlOKUgHJlbmRlckQxMjkKPiBjYXJkMCAgICAgICAgICAgICAg
ICAgICA4MDg2OjNFOTggICAgcGNpOnZlbmRvcj04MDg2LGRldmljZT0zRTk4LGNhcmQ9MAo+IOKU
lOKUgHJlbmRlckQxMjgKPiAKPiBPciB0d28gaWRlbnRpY2FsIEdQVXMgKG1vY2tlZCBieSBtYW51
YWwgYWRkaXRpb24gb2YgYW4gYWxtb3N0IGR1cGxpY2F0ZQo+IGVudHJ5IHRvIGxpc3Qgb2Ygc2Nh
bm5lZCBkZXZpY2VzOgo+IAo+ICQgdG9vbHMvbHNncHUgLS1wY2kKPiBjYXJkMCAgICAgICAgICAg
ICAgICAgICA4MDg2OjE5M0IgICAgcGNpOnZlbmRvcj04MDg2LGRldmljZT0xOTNCLGNhcmQ9MAo+
IOKUnOKUgHJlbmRlckQxMjgKPiDilJTilIByZW5kZXJEMTI4Cj4gY2FyZDB4ICAgICAgICAgICAg
ICAgICAgODA4NjoxOTNCICAgIHBjaTp2ZW5kb3I9ODA4NixkZXZpY2U9MTkzQixjYXJkPTEKPiDi
lJzilIByZW5kZXJEMTI4Cj4g4pSU4pSAcmVuZGVyRDEyOAo+IAo+IFJlZ2FyZHMsCj4gCj4gVHZy
dGtvCgpJIG1hZGUgYSBtaXN0YWtlIGluIGFib3ZlIGxpc3RpbmcsIGl0IHNob3VsZCBiZToKL3N5
cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDowNC4wCS0+IHZlbmRvciA4MDg2LCBkZXZpY2Ug
MTIzNAlwY2lfaW5kZXggPT0gMAovc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjA1LjAJ
LT4gdmVuZG9yIDgwODYsIGRldmljZSA0MzIxCXBjaV9pbmRleCA9PSAwCi9zeXMvZGV2aWNlcy9w
Y2kwMDAwOjAwLzAwMDA6MDA6MDYuMAktPiB2ZW5kb3IgODA4NiwgZGV2aWNlIDEyMzQJcGNpX2lu
ZGV4ID09IDEKCldoYXQgaWYgSSB3b3VsZCBnbyBvdmVyIGFsbCBJbnRlbCBjYXJkcyB1c2luZyBw
Y2kgZmlsdGVyOgoKcGNpOnZlbmRvcj04MDg2LGNhcmQ9TiAgIHdoZXJlIG4gaXMgMC4uLiB1bnRp
bCB0aGVyZSdzIG5vIEludGVsIHBjaSBkZXZpY2UuCgpUaGlzIHdheSB3ZSBsb29zZSBwb3NzaWJp
bGl0eSB0byBpdGVyYXRlIG92ZXIgYWxsIHBjaSBkZXZpY2VzIGltby4KCi0tClpiaWduaWV3Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
