Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4706BC31AC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 12:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5896E5F3;
	Tue,  1 Oct 2019 10:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0116E5F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 10:42:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 03:42:52 -0700
X-IronPort-AV: E=Sophos;i="5.64,570,1559545200"; d="scan'208";a="190553768"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 01 Oct 2019 03:42:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190929083338.24816-1-chris@chris-wilson.co.uk>
 <20191001103518.9113-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3f7d0486-25f7-75a3-3aee-0cd80e8759b6@linux.intel.com>
Date: Tue, 1 Oct 2019 11:42:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191001103518.9113-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Initialise breadcrumb lists on
 the virtual engine
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAxLzEwLzIwMTkgMTE6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaXRoIGRlZmVycmlu
ZyB0aGUgYnJlYWRjcnVtYiBzaWduYWxsaW5nIHRvIHRoZSB2aXJ0dWFsIGVuZ2luZSAodGhhbmtz
Cj4gcHJlZW1wdC10by1idXN5KSB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSB0aGUgbGlzdHMgYW5kIGly
cS13b3JrZXIgYXJlIHJlYWR5Cj4gdG8gc2VuZCBhIHNpZ25hbC4KPiAKPiBbNDE5NTguNzEwNTQ0
XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAw
MDAwMDAwMDAKPiBbNDE5NTguNzEwNTUzXSAjUEY6IHN1cGVydmlzb3Igd3JpdGUgYWNjZXNzIGlu
IGtlcm5lbCBtb2RlCj4gWzQxOTU4LjcxMDU1Nl0gI1BGOiBlcnJvcl9jb2RlKDB4MDAwMikgLSBu
b3QtcHJlc2VudCBwYWdlCj4gWzQxOTU4LjcxMDU1OF0gUEdEIDAgUDREIDAKPiBbNDE5NTguNzEw
NTYyXSBPb3BzOiAwMDAyIFsjMV0gU01QCj4gWzQxOTU4LjcxMDU2NV0gQ1BVOiAwIFBJRDogMCBD
b21tOiBzd2FwcGVyLzAgVGFpbnRlZDogRyAgICAgVSAgICAgICAgICAgIDUuMy4wKyAjMjA3Cj4g
WzQxOTU4LjcxMDU2OF0gSGFyZHdhcmUgbmFtZTogSW50ZWwgQ29ycG9yYXRpb24gTlVDN2k1Qk5L
L05VQzdpNUJOQiwgQklPUyBCTktCTDM1Ny44NkEuMDA1Mi4yMDE3LjA5MTguMTM0NiAwOS8xOC8y
MDE3Cj4gWzQxOTU4LjcxMDYwMl0gUklQOiAwMDEwOmk5MTVfcmVxdWVzdF9lbmFibGVfYnJlYWRj
cnVtYisweGUxLzB4MTMwIFtpOTE1XQo+IFs0MTk1OC43MTA2MDVdIENvZGU6IDhiIDQ0IDI0IDMw
IDQ4IDg5IDQxIDA4IDQ4IDg5IDA4IDQ4IDhiIDg1IDk4IDAxIDAwIDAwIDQ4IDhkIDhkIDkwIDAx
IDAwIDAwIDQ4IDg5IDk1IDk4IDAxIDAwIDAwIDQ5IDg5IDRjIDI0IDI4IDQ5IDg5IDQ0IDI0IDMw
IDw0OD4gODkgMTAgZjAgODAgNGIgMzAgMTAgYzYgODUgODggMDEgMDAgMDAgMDAgZTkgMWEgZmYg
ZmYgZmYgNDggODMKPiBbNDE5NTguNzEwNjA5XSBSU1A6IDAwMTg6ZmZmZmM5MDAwMDAwM2RlMCBF
RkxBR1M6IDAwMDEwMDQ2Cj4gWzQxOTU4LjcxMDYxMl0gUkFYOiAwMDAwMDAwMDAwMDAwMDAwIFJC
WDogZmZmZjg4ODczNTQyNDQ4MCBSQ1g6IGZmZmY4ODg3Y2RkYjIxOTAKPiBbNDE5NTguNzEwNjE0
XSBSRFg6IGZmZmY4ODg3Y2RkYjM1NzAgUlNJOiBmZmZmODg4ODUwMzYyMTkwIFJESTogZmZmZjg4
ODdjZGRiMjE4OAo+IFs0MTk1OC43MTA2MTddIFJCUDogZmZmZjg4ODdjZGRiMjAwMCBSMDg6IGZm
ZmY4ODg4NTAzNjI0YTggUjA5OiAwMDAwMDAwMDAwMDAwMTAwCj4gWzQxOTU4LjcxMDYxOV0gUjEw
OiAwMDAwMDAwMDAwMDAwMDAxIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IGZmZmY4ODg3Y2Rk
YjM1NDgKPiBbNDE5NTguNzEwNjIyXSBSMTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiAwMDAwMDAw
MDAwMDAwMDQ2IFIxNTogZmZmZjg4ODg1MDM2MjA3MAo+IFs0MTk1OC43MTA2MjVdIEZTOiAgMDAw
MDAwMDAwMDAwMDAwMCgwMDAwKSBHUzpmZmZmODg4ODVlYTAwMDAwKDAwMDApIGtubEdTOjAwMDAw
MDAwMDAwMDAwMDAKPiBbNDE5NTguNzEwNjI4XSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAg
Q1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4gWzQxOTU4LjcxMDYzMF0gQ1IyOiAwMDAwMDAwMDAwMDAw
MDAwIENSMzogMDAwMDAwMDAwMmMwOTAwMiBDUjQ6IDAwMDAwMDAwMDAxNjA2ZjAKPiBbNDE5NTgu
NzEwNjMzXSBDYWxsIFRyYWNlOgo+IFs0MTk1OC43MTA2MzZdICA8SVJRPgo+IFs0MTk1OC43MTA2
NjhdICBfX2k5MTVfcmVxdWVzdF9zdWJtaXQrMHgxMmIvMHgxNjAgW2k5MTVdCj4gWzQxOTU4Ljcx
MDY5M10gIHZpcnR1YWxfc3VibWl0X3JlcXVlc3QrMHg2Ny8weDEyMCBbaTkxNV0KPiBbNDE5NTgu
NzEwNzIwXSAgX191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cysweDEzMS8weDE3MCBbaTkxNV0K
PiBbNDE5NTguNzEwNzQ0XSAgZXhlY2xpc3RzX2RlcXVldWUrMHhiNDAvMHhlMDAgW2k5MTVdCj4g
WzQxOTU4LjcxMDc3MV0gIGV4ZWNsaXN0c19zdWJtaXNzaW9uX3Rhc2tsZXQrMHgxMGYvMHgxNTAg
W2k5MTVdCj4gWzQxOTU4LjcxMDc3Nl0gIHRhc2tsZXRfYWN0aW9uX2NvbW1vbi5pc3JhLjE3KzB4
NDEvMHhhMAo+IFs0MTk1OC43MTA3ODFdICBfX2RvX3NvZnRpcnErMHhjOC8weDIyMQo+IFs0MTk1
OC43MTA3ODVdICBpcnFfZXhpdCsweGE2LzB4YjAKPiBbNDE5NTguNzEwNzg4XSAgc21wX2FwaWNf
dGltZXJfaW50ZXJydXB0KzB4NGQvMHg4MAo+IFs0MTk1OC43MTA3OTFdICBhcGljX3RpbWVyX2lu
dGVycnVwdCsweGYvMHgyMAo+IFs0MTk1OC43MTA3OTRdICA8L0lSUT4KPiAKPiBGaXhlczogY2Iy
Mzc3YTkxOWJiICgiZHJtL2k5MTU6IEZpeHVwIHByZWVtcHQtdG8tYnVzeSB2cyByZXNldCBvZiBh
IHZpcnR1YWwgcmVxdWVzdCIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgo+IC0tLQo+IEluY2x1ZGUgdGhlIEdQRiB0cmFjZSBmcm9tIHVzaW5nIHRoZSBOVUxMIGxp
c3RzCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDEgKwo+
ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKPiBpbmRleCAzNTY2ZWM4YWQzM2EuLjQ4YTFlZjRjMzU3MiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTQxOTUsNiArNDE5NSw3IEBAIGludGVs
X2V4ZWNsaXN0c19jcmVhdGVfdmlydHVhbChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+
ICAgCXNucHJpbnRmKHZlLT5iYXNlLm5hbWUsIHNpemVvZih2ZS0+YmFzZS5uYW1lKSwgInZpcnR1
YWwiKTsKPiAgIAo+ICAgCWludGVsX2VuZ2luZV9pbml0X2FjdGl2ZSgmdmUtPmJhc2UsIEVOR0lO
RV9WSVJUVUFMKTsKPiArCWludGVsX2VuZ2luZV9pbml0X2JyZWFkY3J1bWJzKCZ2ZS0+YmFzZSk7
Cj4gICAKPiAgIAlpbnRlbF9lbmdpbmVfaW5pdF9leGVjbGlzdHMoJnZlLT5iYXNlKTsKPiAgIAo+
IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
