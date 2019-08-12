Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D478899D4
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 11:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 190056E478;
	Mon, 12 Aug 2019 09:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68F26E478
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:27:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 02:27:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="375170204"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 12 Aug 2019 02:27:56 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D02FE5C1E5F; Mon, 12 Aug 2019 12:27:16 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190812091045.29587-1-chris@chris-wilson.co.uk>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 12:27:16 +0300
Message-ID: <871rxq91jf.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/execlists: Avoid sync calls
 during park
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU2luY2Ug
d2UgYWxsb3cgb3Vyc2VsdmVzIHRvIHVzZSBub24tcHJvY2VzcyBjb250ZXh0IGR1cmluZyBwYXJr
aW5nLCB3ZQo+IGNhbm5vdCBhbGxvdyBvdXJzZWx2ZXMgdG8gc2xlZXAgYW5kIGluIHBhcnRpY3Vs
YXIgY2Fubm90IGNhbGwKPiBkZWxfdGltZXJfc3luYygpIC0tIGJ1dCB3ZSBjYW4gdXNlIGEgcGxh
aW4gZGVsX3RpbWVyKCkuCj4KPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzc1Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggYmI3
NDk1NDg4OWRkLi5iOTcwNDdkNThkM2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+IEBAIC0yNzI4LDcgKzI3MjgsNyBAQCBzdGF0aWMgdTMyICpnZW44X2VtaXRfZmluaV9i
cmVhZGNydW1iX3JjcyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LCB1MzIgKmNzKQo+ICAK
PiAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQo+ICB7Cj4gLQlkZWxfdGltZXJfc3luYygmZW5naW5lLT5leGVjbGlzdHMudGltZXIpOwo+
ICsJZGVsX3RpbWVyKCZlbmdpbmUtPmV4ZWNsaXN0cy50aW1lcik7CgpUaGVyZSB3aWxsIGJlIGFu
b3RoZXIgc3luYyBwb2ludCB0aGVuIHNvbWV3aGVyZSBlbHNlIG9yIG5vdCBuZWVkZWQ/CgpBbHNv
IGFyZSBpcnEgc2FmZSB0aW1lcnMgd2hlcmUgd2UgY291bGQgZG8gYSBzeW5jIGRlbGV0aW9uLiAK
ClNvIG15IHF1ZXN0aW9uIGlzIHdoeSB0aGUgbmVlZCBmb3IgYSBzeW5jIHBvaW50IGRpc2FwcGVh
cmVkPwoKLU1pa2EKPiAgfQo+ICAKPiAgdm9pZCBpbnRlbF9leGVjbGlzdHNfc2V0X2RlZmF1bHRf
c3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gLS0gCj4gMi4yMy4w
LnJjMQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
