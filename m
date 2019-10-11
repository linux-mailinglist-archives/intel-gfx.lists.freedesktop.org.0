Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BA5D4762
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D666E42A;
	Fri, 11 Oct 2019 18:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C4E6E42A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 18:19:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18808278-1500050 for multiple; Fri, 11 Oct 2019 19:19:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
 <20191011133911.18621-3-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191011133911.18621-3-mika.kuoppala@linux.intel.com>
Message-ID: <157081796735.31572.10411111144948857040@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 19:19:27 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: Add extra hdc flush
 workaround
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTExIDE0OjM5OjExKQo+IEluIG9yZGVyIHRv
IGVuc3VyZSBjb25zdGFudCBjYWNoZXMgYXJlIGludmFsaWRhdGVkCj4gcHJvcGVybHkgd2l0aCBh
MCwgd2UgbmVlZCBleHRyYSBoZGMgZmx1c2ggYWZ0ZXIgaW52YWxpZGF0aW9uLgo+IAo+IFJlZmVy
ZW5jZXM6IEhTREVTIzE2MDQ1NDQ4ODkKPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgfCAxOCArKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDE4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
IGluZGV4IDk2N2U1YjJlNWU4MC4uOGRiODY3NzJkOGQ0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKPiBAQCAtMzIzNiw2ICszMjM2LDI0IEBAIHN0YXRpYyBpbnQgZ2VuMTJf
ZW1pdF9mbHVzaF9yZW5kZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKPiAgCj4gICAg
ICAgICAgICAgICAgICpjcysrID0gcHJlcGFyc2VyX2Rpc2FibGUoZmFsc2UpOwo+ICAgICAgICAg
ICAgICAgICBpbnRlbF9yaW5nX2FkdmFuY2UocmVxdWVzdCwgY3MpOwo+ICsKPiArICAgICAgICAg
ICAgICAgLyoKPiArICAgICAgICAgICAgICAgICogV29ya2Fyb3VuZCBjb25zdGFudCBjYWNoZSBp
bnZhbGlkYXRpb24gaXNzdWUKPiArICAgICAgICAgICAgICAgICogZm9yIHRnbDphMCwgIzE2MDQ1
NDQ4ODkKCkRvIHdlIGhhdmUgSVNfVEdMX1JFVklEKCkgeWV0PyBUaGV5IHNob3VsZCBhY3QgYXMg
YSByZW1pbmRlciB0byByZW1vdmUKdGhlbSBsYXRlci4KCj4gKyAgICAgICAgICAgICAgICAqLwo+
ICsgICAgICAgICAgICAgICBmbGFncyA9IDA7Cj4gKyAgICAgICAgICAgICAgIGZsYWdzIHw9IFBJ
UEVfQ09OVFJPTF9DU19TVEFMTDsKPiArICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05U
Uk9MX0hEQ19QSVBFTElORV9GTFVTSDsKPiArCj4gKyAgICAgICAgICAgICAgIGZsYWdzIHw9IFBJ
UEVfQ09OVFJPTF9TVE9SRV9EQVRBX0lOREVYOwo+ICsgICAgICAgICAgICAgICBmbGFncyB8PSBQ
SVBFX0NPTlRST0xfUVdfV1JJVEU7CgpBY2tlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
