Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F41CDB93C4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 17:12:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489976FD30;
	Fri, 20 Sep 2019 15:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BBF36FD30
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 15:12:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 08:12:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="199758971"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 20 Sep 2019 08:12:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190920083624.4601-1-chris@chris-wilson.co.uk>
 <156899145257.10086.14761802446237119901@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <baf00b47-396b-fa55-8965-ef02ad5900ff@linux.intel.com>
Date: Fri, 20 Sep 2019 16:12:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156899145257.10086.14761802446237119901@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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

Ck9uIDIwLzA5LzIwMTkgMTU6NTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wOS0yMCAwOTozNjoyNCkKPj4gRm9yY2UgYm9uZGVkIHJlcXVlc3RzIHRv
IHJ1biBvbiBkaXN0aW5jdCBlbmdpbmVzIHNvIHRoYXQgdGhleSBjYW5ub3QgYmUKPj4gc2h1ZmZs
ZWQgb250byB0aGUgc2FtZSBlbmdpbmUgd2hlcmUgdGltZXNsaWNpbmcgd2lsbCByZXZlcnNlIHRo
ZSBvcmRlci4KPj4gQSBib25kZWQgcmVxdWVzdCB3aWxsIG9mdGVuIHdhaXQgb24gYSBzZW1hcGhv
cmUgc2lnbmFsZWQgYnkgaXRzIG1hc3RlciwKPj4gY3JlYXRpbmcgYW4gaW1wbGljaXQgZGVwZW5k
ZW5jeSAtLSBpZiB3ZSBpZ25vcmUgdGhhdCBpbXBsaWNpdCBkZXBlbmRlbmN5Cj4+IGFuZCBhbGxv
dyB0aGUgYm9uZGVkIHJlcXVlc3QgdG8gcnVuIG9uIHRoZSBzYW1lIGVuZ2luZSBhbmQgYmVmb3Jl
IGl0cwo+PiBtYXN0ZXIsIHdlIHdpbGwgY2F1c2UgYSBHUFUgaGFuZy4KPiAKPiBUaGlua2luZyBt
b3JlLCBpdCBzaG91bGQgbm90IGRpcmVjdGx5IGNhdXNlIGEgR1BVIGhhbmcsIGFzIHRoZSBzdHVj
ayByZXF1ZXN0Cj4gc2hvdWxkIGJlIHRpbWVzbGljZWQgYXdheSwgYW5kIGVhY2ggcHJlZW1wdGlv
biBzaG91bGQgYmUgZW5vdWdoIHRvIGtlZXAKPiBoYW5nY2hlY2sgYXQgYmF5ICh0aG91Z2ggd2Ug
aGF2ZSBldmlkZW5jZSBpdCBtYXkgbm90KS4gU28gYXQgYmVzdCBpdCBydW5zCj4gYXQgaGFsZi1z
cGVlZCwgYXQgd29yc3QgYSB0aGlyZCAoaWYgbXkgbW9kZWwgaXMgY29ycmVjdCkuCgpCdXQgSSB0
aGluayBpdCBpcyBzdGlsbCBjb3JyZWN0IHRvIGRvIHNpbmNlIHdlIGRvbid0IGhhdmUgdGhlIGNv
dXBsaW5nIAppbmZvcm1hdGlvbiBvbiByZS1zdWJtaXQuIEhtLi4gYnV0IGRvbid0IHdlIG5lZWQg
dG8gcHJldmVudCBzbGF2ZSBmcm9tIApjaGFuZ2luZyBlbmdpbmVzIGFzIHdlbGw/CgpSZWdhcmRz
LAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
