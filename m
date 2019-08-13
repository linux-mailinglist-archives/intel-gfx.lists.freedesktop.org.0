Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E6E8BC06
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 16:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254986E167;
	Tue, 13 Aug 2019 14:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 213496E167
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 14:50:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 07:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; d="scan'208";a="176221972"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 13 Aug 2019 07:50:43 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1885F5C1FC3; Tue, 13 Aug 2019 17:50:03 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190813132916.20382-2-chris@chris-wilson.co.uk>
References: <20190813132916.20382-1-chris@chris-wilson.co.uk>
 <20190813132916.20382-2-chris@chris-wilson.co.uk>
Date: Tue, 13 Aug 2019 17:50:03 +0300
Message-ID: <87a7cd6rxg.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Save/restore interrupts
 around breadcrumb disable
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU3RvcCBh
c3N1bWluZyB3ZSBvbmx5IGdldCBjYWxsZWQgd2l0aCBpcnFzLW9uIGZvciBkaXNhcm1pbmcgdGhl
Cj4gYnJlYWRjcnVtYnMsIGFuZCBkbyBhIGZ1bGwgc2F2ZS9yZXN0b3JlIHNwaW5fbG9ja19pcnEu
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgpw
ZXJmIHRpbWVyLCBkcm9wIHJlZiwgZW5naW5lX3VucGFyaywgZGlzYWJsZV9icmVhZGNydW1icwp3
aXRoIGlycXMgb2ZmLgoKV2VsbCwgdGhlIHRyYWNlIG9uIHByZXZpb3VzIHBhdGNoIG1ha2VzIGl0
IGNsZWFyLApmb3IgdGhvc2Ugd2hvIGtub3cgdGhlIGNvZGUuLi5JIGhhZCB0byByZWFkLgoKUmV2
aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoK
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyB8IDUg
KysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1i
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwo+IGluZGV4
IDE1YmJkZDhjNzU1Mi4uMmJjOWM0NjBlNzhkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9icmVhZGNydW1icy5jCj4gQEAgLTY3LDE0ICs2NywxNSBAQCBzdGF0aWMgdm9p
ZCBfX2ludGVsX2JyZWFkY3J1bWJzX2Rpc2FybV9pcnEoc3RydWN0IGludGVsX2JyZWFkY3J1bWJz
ICpiKQo+ICB2b2lkIGludGVsX2VuZ2luZV9kaXNhcm1fYnJlYWRjcnVtYnMoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQo+ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVtYnMgKmIg
PSAmZW5naW5lLT5icmVhZGNydW1iczsKPiArCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gIAo+ICAJ
aWYgKCFiLT5pcnFfYXJtZWQpCj4gIAkJcmV0dXJuOwo+ICAKPiAtCXNwaW5fbG9ja19pcnEoJmIt
PmlycV9sb2NrKTsKPiArCXNwaW5fbG9ja19pcnFzYXZlKCZiLT5pcnFfbG9jaywgZmxhZ3MpOwo+
ICAJaWYgKGItPmlycV9hcm1lZCkKPiAgCQlfX2ludGVsX2JyZWFkY3J1bWJzX2Rpc2FybV9pcnEo
Yik7Cj4gLQlzcGluX3VubG9ja19pcnEoJmItPmlycV9sb2NrKTsKPiArCXNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJmItPmlycV9sb2NrLCBmbGFncyk7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbmxpbmUg
Ym9vbCBfX3JlcXVlc3RfY29tcGxldGVkKGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+
IC0tIAo+IDIuMjMuMC5yYzEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
