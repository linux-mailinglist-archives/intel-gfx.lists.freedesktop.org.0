Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 990BB6A609
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 11:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898046E0F4;
	Tue, 16 Jul 2019 09:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A06006E0F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 09:58:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 02:58:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,497,1557212400"; d="scan'208";a="161377618"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga008.jf.intel.com with ESMTP; 16 Jul 2019 02:58:34 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 02:58:34 -0700
Received: from bgsmsx110.gar.corp.intel.com (10.223.4.212) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 02:58:34 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.156]) by
 BGSMSX110.gar.corp.intel.com ([169.254.11.126]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 15:28:31 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/4] drm/i915/tgl/dsi: Program TRANS_VBLANK register
Thread-Index: AQHVMJDVwPdh1KFTRUSGmYAuTuYDBqbNGATw
Date: Tue, 16 Jul 2019 09:58:31 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8212EC57@BGSMSX104.gar.corp.intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
 <20190702041850.4293-2-vandita.kulkarni@intel.com>
In-Reply-To: <20190702041850.4293-2-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWQxYzk1NWYtOGMxZi00YmZlLTljYmYtMDA3YzliMWE0NDNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTDVzUVBWOHNxUE5FdlYyN2dGOFF0cFNOQlEzS3A1aDJCN01qY1wvUjlZUDFcL21ESzFDK1ltVFFXK3lnM1REa25JIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/tgl/dsi: Program TRANS_VBLANK
 register
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IEt1bGthcm5pLCBWYW5kaXRhCj5T
ZW50OiBUdWVzZGF5LCBKdWx5IDIsIDIwMTkgOTo0OSBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgTmlrdWxh
LCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBTaGFua2FyLCBVbWEKPjx1bWEuc2hhbmth
ckBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5j
b20+Cj5TdWJqZWN0OiBbUEFUQ0ggMS80XSBkcm0vaTkxNS90Z2wvZHNpOiBQcm9ncmFtIFRSQU5T
X1ZCTEFOSyByZWdpc3Rlcgo+Cj5Qcm9ncmFtIHZibGFuayByZWdpc3RlciBmb3IgbWlwaSBkc2kg
aW4gdmlkZW8gbW9kZSBvbiBUR0wuCj4KPlNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2Fybmkg
PHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMgfCA5ICsrKysrKysrKwo+IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2Vy
dGlvbnMoKykKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNs
X2RzaS5jCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj5pbmRleCBi
ODY3M2RlYmY5MzIuLjU1NmViYTI2MzZmZSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ljbF9kc2kuYwo+QEAgLTg2Niw2ICs4NjYsMTUgQEAgZ2VuMTFfZHNpX3NldF90cmFuc2NvZGVy
X3RpbWluZ3Moc3RydWN0IGludGVsX2VuY29kZXIKPiplbmNvZGVyLAo+IAkJZHNpX3RyYW5zID0g
ZHNpX3BvcnRfdG9fdHJhbnNjb2Rlcihwb3J0KTsKPiAJCUk5MTVfV1JJVEUoVlNZTkNTSElGVChk
c2lfdHJhbnMpLCB2c3luY19zaGlmdCk7Cj4gCX0KPisKPisJLyogcHJvZ3JhbSBUUkFOU19WQkxB
TksgcmVnaXN0ZXIsIHNob3VsZCBiZSBzYW1lIGFzIHZ0b3RhbCBwcm9nYW1tZWQgKi8KClR5cG8g
aGVyZSBpbiBwcm9ncmFtbWVkLgoKPisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsK
PisJCWZvcl9lYWNoX2RzaV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsKPisJCQlkc2lf
dHJhbnMgPSBkc2lfcG9ydF90b190cmFuc2NvZGVyKHBvcnQpOwo+KwkJCUk5MTVfV1JJVEUoVkJM
QU5LKGRzaV90cmFucyksCj4rCQkJCSAgICh2YWN0aXZlIC0gMSkgfCAoKHZ0b3RhbCAtIDEpIDw8
IDE2KSk7CgpXZSBjYW4gcHV0IHRoaXMgbGluZSBhbG9uZyB3aXRoIFZUT1RBTCBhbmQgZ2V0IHJp
ZCBvZiB0aGlzIGV4dHJhIGZvciBsb29wLgoKPisJCX0KPisJfQo+IH0KPgo+IHN0YXRpYyB2b2lk
IGdlbjExX2RzaV9lbmFibGVfdHJhbnNjb2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
cikKPi0tCj4yLjIxLjAuNS5nYWViNTgyYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
