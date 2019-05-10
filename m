Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8539B198C8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 09:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13E889728;
	Fri, 10 May 2019 07:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6743389728
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 07:08:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16511304-1500050 for multiple; Fri, 10 May 2019 08:08:24 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190509205154.6299-1-chris@chris-wilson.co.uk>
References: <20190509205154.6299-1-chris@chris-wilson.co.uk>
Message-ID: <155747210251.28545.2124381173431974159@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 May 2019 08:08:22 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Truly bump ready tasks ahead of
 busywaits
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
Cc: Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMDkgMjE6NTE6NTQpCj4gSW4gY29tbWl0IGI3
NDA0YzdlY2IzOCAoImRybS9pOTE1OiBCdW1wIHJlYWR5IHRhc2tzIGFoZWFkIG9mCj4gYnVzeXdh
aXRzIiksIEkgdHJpZWQgY3V0dGluZyBhIGNvcm5lciBpbiBvcmRlciB0byBub3QgaW5zdGFsbCBh
IHNpZ25hbAo+IGZvciBlYWNoIG9mIG91ciBkZXBlbmRlbmNpZXMsIGFuZCBvbmx5IGxpc3RlbmVk
IHRvIHJlcXVlc3RzIG9uIHdoaWNoIHdlCj4gd2VyZSBpbnRlbmRpbmcgdG8gYnVzeXdhaXQuIFRo
ZSBjb21wcm9taXNlIHRoYXQgd2FzIG1hZGUgd2FzIHRoYXQKPiBpbnN0ZWFkIG9mIHRoZW4gYmVp
bmcgYWJsZSB0byBwcm9taXRlIHRoZSByZXF1ZXN0IHdpdGggYSBmdWxsCj4gTk9TRU1BUEhPUkUg
bGlrZSBpdHMgbm9uLWJ1c3l3YWl0aW5nIGJyZXRocmVuLCBhcyB3ZSBoYWQgbm90IGVuc3VyZWQg
d2UKPiBoYWQgY2xlYXJlZCB0aGUgc2VtYXBob3JlIGNoYWluLCB3ZSBzZXR0bGVkIGZvciBvbmx5
IHVzaW5nIHRoZSBORVdDTElFTlQKPiBib29zdC4gV2l0aCBhbiBvdmVyIHNhdHVyYXRlZCBzeXN0
ZW0gd2l0aCBtdWx0aXBsZSBORVdDTElFTlRTIGluIGZsaWdodAo+IGF0IGFueSB0aW1lLCB0aGlz
IHdhcyBmb3VuZCB0byBiZSBhbiBpbmFkZXF1YXRlIHByb21vdGlvbiBhbmQgbGVmdCB1cwo+IHdp
dGggYSBtdWNoIHBvb3JlciBzY2hlZHVsaW5nIG9yZGVyIHRoYW4gcHJpb3IgdG8gdXNpbmcgc2Vt
YXBob3Jlcy4KPiAKPiBUaGUgb3V0Y29tZSBvZiB0aGlzIHBhdGNoLCBpcyB0aGF0IGFsbCByZXF1
ZXN0cyBoYXZlIE5PU0VNQVBIT1JFCj4gcHJpb3JpdHkgd2hlbiB0aGV5IGhhdmUgbm8gZGVwZW5k
ZW5jaWVzIGFuZCBhcmUgcmVhZHkgdG8gcnVuIGFuZCBub3QKPiBidXN5d2FpdCwgcmVzdG9yaW5n
IHRoZSBwcmUtc2VtYXBob3JlIG9yZGVyaW5nIG9uIHNhdHVyYXRlZCBzeXN0ZW1zLgo+IAo+IEZp
eGVzOiBiNzQwNGM3ZWNiMzggKCJkcm0vaTkxNTogQnVtcCByZWFkeSB0YXNrcyBhaGVhZCBvZiBi
dXN5d2FpdHMiKQoKRml4ZXM6IGY5ZTllOWRlNThjNyAoImRybS9pOTE1OiBQcmlvcml0aXNlIG5v
bi1idXN5d2FpdCBzZW1hcGhvcmUgd29ya2xvYWRzIikKCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IERtaXRyeSBSb2dvemhraW4gPGRtaXRyeS52
LnJvZ296aGtpbkBpbnRlbC5jb20+Cj4gQ2M6IERtaXRyeSBFcm1pbG92IDxkbWl0cnkuZXJtaWxv
dkBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
