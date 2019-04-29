Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7782AE1B4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 13:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAC0E8907C;
	Mon, 29 Apr 2019 11:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F0D8907C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 11:58:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 04:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="138384059"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 29 Apr 2019 04:58:04 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 29 Apr 2019 04:58:04 -0700
Received: from bgsmsx155.gar.corp.intel.com (10.224.48.102) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Mon, 29 Apr 2019 04:58:04 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.147]) by
 BGSMSX155.gar.corp.intel.com ([169.254.12.162]) with mapi id 14.03.0415.000;
 Mon, 29 Apr 2019 17:28:01 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix ICL output CSC programming
Thread-Index: AQHU+5yF8VdzH22K2USyc8Ku8wK78KZTDFdQ
Date: Mon, 29 Apr 2019 11:58:00 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FE855C@BGSMSX104.gar.corp.intel.com>
References: <20190425192419.24931-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190425192419.24931-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWNmZGQ3ZGItNTk4OS00ZmZmLThkZmItYzM5NjY2MzE2OThiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRFliMW1kenpiRWJYNU43XC8xMHFtU2VFenlMM0hGd0lsVzNEdHZNYWdnSTFWYTlTbllJNUdVNUR3azZCZ1drXC9TIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix ICL output CSC programming
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFZpbGxlIFN5cmphbGEgW21h
aWx0bzp2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbV0NCj5TZW50OiBGcmlkYXksIEFwcmls
IDI2LCAyMDE5IDEyOjU0IEFNDQo+VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj5DYzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+U3ViamVjdDogW1BB
VENIXSBkcm0vaTkxNTogRml4IElDTCBvdXRwdXQgQ1NDIHByb2dyYW1taW5nDQo+DQo+RnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4NCj5XaGVu
IEkgcmVmYWN0b3JlZCB0aGUgY29kZSBpbnRvIGl0cyBvd24gZnVuY3Rpb24gSSBhY2NpZGVudGFs
bHkgbWlzcGxhY2VkIHRoZSA8PDE2DQo+c2hpZnRzIGZvciBzb21lIG9mIHRoZSByZWdpc3RlcnMg
Y2F1c2luZyB1cyB0byBsb3NlIHRoZSBibHVlIGNoYW5uZWwgZW50aXJlbHkuDQoNClRoaXMgbG9v
a3MgR29vZC4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KDQo+V2Ugc2hvdWxkIHJlYWxseSBmaW5kIGEgd2F5IHRvIHRlc3QgdGhpcy4uLg0KSSBndWVz
cyB3ZSBuZWVkIHRvIGltcGxlbWVudCB0aGUgcGlwZSB3cml0ZWJhY2sgYW5kIGR1bXAgdGhlIGNv
bnZlcnRlZA0Kb3V0cHV0IGFuZCBkbyBhIGJpdCBjb21wYXJlIHdpdGggIHJlZmVyZW5jZSBidWZm
ZXIuIE5vdCBzdXJlIGlmIHdlIGhhdmUgYW55DQpvdGhlciB3YXlzIG9mIHRlc3RpbmcgaXQgYWNj
dXJhdGVseS4NCg0KPkNjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPkZp
eGVzOiBkMmMxOWIwNmQ2ZWEgKCJkcm0vaTkxNTogQ2xlYW4gdXAgaWxrL2ljbCBwaXBlL291dHB1
dCBDU0MgcHJvZ3JhbW1pbmciKQ0KPlNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+LS0tDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NvbG9yLmMgfCA2ICsrKy0tLQ0KPiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPg0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYw0KPmlu
ZGV4IGNhMzQxYTllNDdlNi4uOTA5M2RhYWJjMjkwIDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2NvbG9yLmMNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jb2xvci5jDQo+QEAgLTE3MywxMyArMTczLDEzIEBAIHN0YXRpYyB2b2lkIGljbF91cGRhdGVf
b3V0cHV0X2NzYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gCUk5MTVfV1JJVEUoUElQRV9D
U0NfT1VUUFVUX1BSRU9GRl9MTyhwaXBlKSwgcHJlb2ZmWzJdKTsNCj4NCj4gCUk5MTVfV1JJVEUo
UElQRV9DU0NfT1VUUFVUX0NPRUZGX1JZX0dZKHBpcGUpLCBjb2VmZlswXSA8PCAxNiB8DQo+Y29l
ZmZbMV0pOw0KPi0JSTkxNV9XUklURShQSVBFX0NTQ19PVVRQVVRfQ09FRkZfQlkocGlwZSksIGNv
ZWZmWzJdKTsNCj4rCUk5MTVfV1JJVEUoUElQRV9DU0NfT1VUUFVUX0NPRUZGX0JZKHBpcGUpLCBj
b2VmZlsyXSA8PCAxNik7DQo+DQo+IAlJOTE1X1dSSVRFKFBJUEVfQ1NDX09VVFBVVF9DT0VGRl9S
VV9HVShwaXBlKSwgY29lZmZbM10gPDwgMTYgfA0KPmNvZWZmWzRdKTsNCj4tCUk5MTVfV1JJVEUo
UElQRV9DU0NfT1VUUFVUX0NPRUZGX0JVKHBpcGUpLCBjb2VmZls1XSk7DQo+KwlJOTE1X1dSSVRF
KFBJUEVfQ1NDX09VVFBVVF9DT0VGRl9CVShwaXBlKSwgY29lZmZbNV0gPDwgMTYpOw0KPg0KPiAJ
STkxNV9XUklURShQSVBFX0NTQ19PVVRQVVRfQ09FRkZfUlZfR1YocGlwZSksIGNvZWZmWzZdIDw8
IDE2IHwNCj5jb2VmZls3XSk7DQo+LQlJOTE1X1dSSVRFKFBJUEVfQ1NDX09VVFBVVF9DT0VGRl9C
VihwaXBlKSwgY29lZmZbOF0pOw0KPisJSTkxNV9XUklURShQSVBFX0NTQ19PVVRQVVRfQ09FRkZf
QlYocGlwZSksIGNvZWZmWzhdIDw8IDE2KTsNCj4NCj4gCUk5MTVfV1JJVEUoUElQRV9DU0NfT1VU
UFVUX1BPU1RPRkZfSEkocGlwZSksIHBvc3RvZmZbMF0pOw0KPiAJSTkxNV9XUklURShQSVBFX0NT
Q19PVVRQVVRfUE9TVE9GRl9NRShwaXBlKSwgcG9zdG9mZlsxXSk7DQo+LS0NCj4yLjIxLjANCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
