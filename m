Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 509342849D4
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760A96E44F;
	Tue,  6 Oct 2020 09:59:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30FC56E44F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:58:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22635088-1500050 for multiple; Tue, 06 Oct 2020 10:58:56 +0100
MIME-Version: 1.0
In-Reply-To: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 06 Oct 2020 10:58:54 +0100
Message-ID: <160197833491.2919.9291370303149424758@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: Shut down displays
 gracefully on reboot
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTEwLTAxIDE2OjE2OjM1KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSW1wbGVtZW50
IHRoZSBwY2kgLnNodXRkb3duKCkgaG9vayBpbiBvcmRlciB0byBxdWllc2NlIHRoZQo+IGhhcmR3
YXJlIHByaW9yIHRvIHJlYm9vdC4gVGhlIG1haW4gcHVycG9zZSBoZXJlIGlzIHRvIHR1cm4KPiBh
bGwgZGlzcGxheXMgb2ZmLiBTb21lIGRpc3BsYXlzL290aGVyIGRyaXZlcnMgdGVuZCB0byBnZXQK
PiBjb25mdXNlZCBpZiB0aGUgc3RhdGUgYWZ0ZXIgcmVib290IGlzbid0IGV4YWN0bHkgYXMgdGhl
eQo+IGV4cGVjdGVkLgo+IAo+IE9uZSBzcGVjaWZpYyBleGFtcGxlIHdhcyB0aGUgRGVsbCBVUDI0
MTRRIGluIE1TVCBtb2RlLgo+IEl0IHdvdWxkIHJlcXVpcmUgbWUgdG8gcHVsbCB0aGUgcG93ZXIg
Y29yZCBhZnRlciBhIHJlYm9vdAo+IG9yIGVsc2UgaXQgd291bGQganVzdCBub3QgY29tZSBiYWNr
IHRvIGxpZmUuIFNhZGx5IEkgZG9uJ3QKPiBoYXZlIHRoYXQgYXQgaGFuZCBhbnltb3JlIHNvIG5v
dCBzdXJlIGlmIGl0J3Mgc3RpbGwKPiBtaXNiZWhhdmluZyB3aXRob3V0IHRoZSBncmFjZWZ1bCBz
aHV0ZG93biwgb3IgaWYgd2UKPiBtYW5hZ2VkIHRvIGZpeCBzb21ldGhpbmcgZWxzZSBzaW5jZSBJ
IGxhc3QgdGVzdGVkIGl0Lgo+IAo+IEZvciBnb29kIG1lYXN1cmUgd2UgZG8gYSBnZW0gc3VzcGVu
ZCBhcyB3ZWxsLCBzbyB0aGF0Cj4gd2UgbWF0Y2ggdGhlIHN1c3BlbmQgZmxvdyBtb3JlIGNsb3Nl
bHkuIEFsc28gc3RvcHBpbmcKPiBhbGwgRE1BIGFuZCB3aGF0bm90IGlzIHByb2JhYmx5IGEgZ29v
ZCBpZGVhIGZvciBrZXhlYy4KPiBJIHdvdWxkIGV4cGVjdCB0aGF0IHNvbWUga2luZCBvZiBHVCBy
ZXNldCBoYXBwZW5zIG9uCj4gbm9ybWFsIHJlYm9vdCBzbyBwcm9iYWJseSBub3QgdG90YWxseSBu
ZWNlc3NhcnkgdGhlcmUuCgpOb3RlIHRoYXQgd2Ugc2hvdWxkIGRvIGEgcmVzZXQganVzdCBpbiBj
YXNlIGtleGVjIFt3aGF0ZXZlciBjb21lcyBuZXh0XQpmYWlscyBvciBmb3JnZXRzLCBkZXBlbmRp
bmcgb24geW91ciBsZXZlbCBvZiBwYXJhbm9pYS4gU28gZGV2aWNlIHNodXRkb3duCmlzIGNhbGxl
ZCBmcm9tIHRoZSByZWJvb3QvaGFsdCBwYXRod2F5cywgYnlwYXNzaW5nIHRoZSB1c3VhbCBzdXNw
ZW5kL3JlbW92ZS4KCj4gdjI6IFVzZSB0aGUgcGNpIC5zaHV0ZG93bigpIGhvb2sgaW5zdGVhZCBv
ZiBhIHJlYm9vdCBub3RpZmllciAoTHVrYXMpCj4gICAgIERvIHRoZSBnZW0gc3VzcGVuZCBmb3Ig
a2V4ZWMgKENocmlzKQoKV2UgY291bGQgZG8gd2l0aCBhIGxpdHRsZSBiaXQgbW9yZSBmb3JjZSB0
aGFuIGk5MTVfZ2VtX3N1c3BlbmQsIGJ1dCBiYWJ5CnN0ZXBzLiBJIHdhcyB0cnlpbmcgdG8gdGhp
bmsgaG93IHdlIGNvdWxkIHNxdWVlemUgYSBrZXhlYyB0ZXN0IGludG8gQ0kuCkkgZG9uJ3Qga25v
dyBrZXhlYyB3ZWxsIGVub3VnaCB0byBkZXZpc2UgYSByb2J1c3QgaWd0LgoKUmV2aWV3ZWQtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
