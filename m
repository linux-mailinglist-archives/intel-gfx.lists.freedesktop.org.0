Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F957D7AE0
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B70D6E062;
	Tue, 15 Oct 2019 16:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB076E062
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:10:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846645-1500050 for multiple; Tue, 15 Oct 2019 17:10:52 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-11-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-11-mika.kuoppala@linux.intel.com>
Message-ID: <157115585038.22469.10404689538862261113@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 17:10:50 +0100
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915/tgl: Wa_1607138340
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQ5KQo+IEF2b2lkIHBvc3Np
YmxlIGNzIGhhbmcgd2l0aCBzZW1hcGhvcmVzIGJ5IGRpc2FibGluZwo+IGxpdGUgcmVzdG9yZS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA0
ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggMWVmMjM3MzVjMWY2Li41ODBkOTlkMThlNzEgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0xMDQ4LDYgKzEwNDgsMTAg
QEAgc3RhdGljIHU2NCBleGVjbGlzdHNfdXBkYXRlX2NvbnRleHQoY29uc3Qgc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEpCj4gICAgICAgICBkZXNjID0gY2UtPmxyY19kZXNjOwo+ICAgICAgICAgY2Ut
PmxyY19kZXNjICY9IH5DVFhfREVTQ19GT1JDRV9SRVNUT1JFOwo+ICAKPiArICAgICAgIC8qIFdh
XzE2MDcxMzgzNDA6dGdsICovCj4gKyAgICAgICBpZiAoSVNfVEdMX1JFVklEKHJxLT5pOTE1LCBU
R0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkpCj4gKyAgICAgICAgICAgICAgIGRlc2MgfD0gQ1RY
X0RFU0NfRk9SQ0VfUkVTVE9SRTsKClRoaXMgbG9va3MgbXVjaCBtb3JlIGhlYXZ5IGhhbmRlZCB0
aGFuIHN1Z2dlc3RlZCwgYnV0IGZvciBhMCwgSSdtIG5vdApmdXNlZC4KUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
