Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756F58F6E9
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 00:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B0A6EA97;
	Thu, 15 Aug 2019 22:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21BD76EA97
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 22:19:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18156296-1500050 for multiple; Thu, 15 Aug 2019 23:19:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190815215859.10970-1-matthew.d.roper@intel.com>
In-Reply-To: <20190815215859.10970-1-matthew.d.roper@intel.com>
Message-ID: <156590757631.14277.4562730943843997465@skylake-alporthouse-com>
Date: Thu, 15 Aug 2019 23:19:36 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Add Wa_1604278689:icl,ehl
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

UXVvdGluZyBNYXR0IFJvcGVyICgyMDE5LTA4LTE1IDIyOjU4OjU5KQo+IEZyb20gdGhlIGJzcGVj
Ogo+IAo+ICAgICAgICAgIlNXIG11c3QgYWx3YXlzIHByb2dyYW0gdGhlIEZCQ19SVF9CQVNFX0FE
RFJfUkVHSVNURVJfKiByZWdpc3Rlcgo+ICAgICAgICAgaW4gUmVuZGVyIEVuZ2luZSB0byBhIHJl
c2VydmVkIHZhbHVlICgweEZGRkZfRkZGRikgc3VjaCB0aGF0IHRoZQo+ICAgICAgICAgcHJvZ3Jh
bW1lZCB2YWx1ZSBkb2VzbuKAmXQgbWF0Y2ggdGhlIHJlbmRlciB0YXJnZXQgc3VyZmFjZSBhZGRy
ZXNzCj4gICAgICAgICBwcm9ncmFtbWVkLiBUaGlzIHdvdWxkIGRpc2FibGUgcmVuZGVyIGVuZ2lu
ZSBmcm9tIGdlbmVyYXRpbmcKPiAgICAgICAgIG1vZGlmeSBtZXNzYWdlcyB0byBGQkMgdW5pdCBp
biBkaXNwbGF5LiIKPiAKPiBCc3BlYzogMTEzODgKPiBCc3BlYzogMzM0NTEKPiBDYzogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDYgKysrKysrCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAxICsKPiAgMiBmaWxlcyBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMKPiBpbmRleCA3MDRhY2UwMWU3ZjUuLjI5YjUwZTJjMDYyNyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC01Njcs
NiArNTY3LDEyIEBAIHN0YXRpYyB2b2lkIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAgICAgICAvKiBhbGxvdyBoZWFkZXJsZXNzIG1l
c3NhZ2VzIGZvciBwcmVlbXB0aWJsZSBHUEdQVSBjb250ZXh0ICovCj4gICAgICAgICBXQV9TRVRf
QklUX01BU0tFRChHRU4xMF9TQU1QTEVSX01PREUsCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICBHRU4xMV9TQU1QTEVSX0VOQUJMRV9IRUFETEVTU19NU0cpOwo+ICsKPiArICAgICAgIC8qIFdh
XzE2MDQyNzg2ODk6aWNsLGVobCAqLwo+ICsgICAgICAgd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwg
SVZCX0ZCQ19SVF9CQVNFX1VQUEVSLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIDAsIC8q
IHdyaXRlLW9ubHkgcmVnaXN0ZXI7IHNraXAgdmFsaWRhdGlvbiAqLwo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgIDB4RkZGRkZGRkYpOwo+ICsgICAgICAgd2Ffd3JpdGUod2FsLCBJVkJfRkJD
X1JUX0JBU0UsIDB4RkZGRkZGRkYpOwoKSXQncyBwYXJ0IG9mIHRoZSBjb250ZXh0PwotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
