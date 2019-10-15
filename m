Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15516D7ACC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3858984C;
	Tue, 15 Oct 2019 16:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467578982E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:05:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846557-1500050 for multiple; Tue, 15 Oct 2019 17:05:32 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-8-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-8-mika.kuoppala@linux.intel.com>
Message-ID: <157115553039.22469.3784028529469964359@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 17:05:30 +0100
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915/tgl: Wa_1409600907
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQ2KQo+IFRvIGF2b2lkIHBv
c3NpYmxlIGhhbmcsIHdlIG5lZWQgdG8gYWRkIGRlcHRoIHN0YWxsIGlmIHdlIGZsdXNoIHRoZQo+
IGRlcHRoIGNhY2hlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyB8IDQgKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCA1ZTk4MTE0YTA3YTEuLjFl
ZjIzNzM1YzFmNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTMy
MDQsNiArMzIwNCw4IEBAIHN0YXRpYyBpbnQgZ2VuMTJfZW1pdF9mbHVzaF9yZW5kZXIoc3RydWN0
IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKPiAgICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9D
T05UUk9MX1RJTEVfQ0FDSEVfRkxVU0g7Cj4gICAgICAgICAgICAgICAgIGZsYWdzIHw9IFBJUEVf
Q09OVFJPTF9SRU5ERVJfVEFSR0VUX0NBQ0hFX0ZMVVNIOwo+ICAgICAgICAgICAgICAgICBmbGFn
cyB8PSBQSVBFX0NPTlRST0xfREVQVEhfQ0FDSEVfRkxVU0g7Cj4gKyAgICAgICAgICAgICAgIC8q
IFdhXzE0MDk2MDA5MDc6dGdsICovCj4gKyAgICAgICAgICAgICAgIGZsYWdzIHw9IFBJUEVfQ09O
VFJPTF9ERVBUSF9TVEFMTDsKPiAgICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9M
X0RDX0ZMVVNIX0VOQUJMRTsKPiAgICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9M
X0ZMVVNIX0VOQUJMRTsKPiAgICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9MX0hE
Q19QSVBFTElORV9GTFVTSDsKPiBAQCAtMzQzNiw2ICszNDM4LDggQEAgZ2VuMTJfZW1pdF9maW5p
X2JyZWFkY3J1bWJfcmNzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfVElMRV9D
QUNIRV9GTFVTSCB8Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBF
X0NPTlRST0xfUkVOREVSX1RBUkdFVF9DQUNIRV9GTFVTSCB8Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfREVQVEhfQ0FDSEVfRkxVU0ggfAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogV2FfMTQwOTYwMDkwNzp0Z2wg
Ki8KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9E
RVBUSF9TVEFMTCB8CgpUaGUgYWR2aWNlIGlzIGluZGVlZCB0byBpZ25vcmUgYnNwZWMgYW5kIGp1
c3Qgc2V0IHRoZSBiaXQgcmVnYXJkbGVzcyBvZgp0aGUgcHJvZ3JhbW1pbmcgbm90ZXMuCgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
