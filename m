Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C79DDDDD6A
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Oct 2019 11:00:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD640892C2;
	Sun, 20 Oct 2019 09:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91146892C2
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Oct 2019 09:00:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18900244-1500050 for multiple; Sun, 20 Oct 2019 10:00:28 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191019214647.27866-1-lionel.g.landwerlin@intel.com>
References: <20191019214647.27866-1-lionel.g.landwerlin@intel.com>
Message-ID: <157156202456.18397.5159529305540542273@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 20 Oct 2019 10:00:24 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: fix oa config reconfiguration
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0xOSAyMjo0Njo0NykKPiBUaGUgY3Vy
cmVudCBsb2dpYyBqdXN0IHJlYXBwbGllcyB0aGUgc2FtZSBjb25maWd1cmF0aW9uIGFscmVhZHkg
c3RvcmVkCj4gaW50byBzdHJlYW0tPm9hX2NvbmZpZyBpbnN0ZWFkIG9mIHRoZSBuZXdseSBzZWxl
Y3RlZCBvbmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5n
LmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IEZpeGVzOiA3ODMxZTlhOTY1ZWEgKCJkcm0vaTkxNS9w
ZXJmOiBBbGxvdyBkeW5hbWljIHJlY29uZmlndXJhdGlvbiBvZiB0aGUgT0Egc3RyZWFtIikKPiBD
YzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gQEAgLTI4
OTUsNyArMjg5Niw3IEBAIHN0YXRpYyBsb25nIGk5MTVfcGVyZl9jb25maWdfbG9ja2VkKHN0cnVj
dCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4gICAgICAgICAgICAgICAgICAqIFdoZW4gc2V0
IGdsb2JhbGx5LCB3ZSB1c2UgYSBsb3cgcHJpb3JpdHkga2VybmVsIGNvbnRleHQsCj4gICAgICAg
ICAgICAgICAgICAqIHNvIGl0IHdpbGwgZWZmZWN0aXZlbHkgdGFrZSBlZmZlY3Qgd2hlbiBpZGxl
Lgo+ICAgICAgICAgICAgICAgICAgKi8KPiAtICAgICAgICAgICAgICAgZXJyID0gZW1pdF9vYV9j
b25maWcoc3RyZWFtLCBvYV9jb250ZXh0KHN0cmVhbSkpOwo+ICsgICAgICAgICAgICAgICBlcnIg
PSBlbWl0X29hX2NvbmZpZyhzdHJlYW0sIGNvbmZpZywgb2FfY29udGV4dChzdHJlYW0pKTsKPiAg
ICAgICAgICAgICAgICAgaWYgKGVyciA9PSAwKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNv
bmZpZyA9IHhjaGcoJnN0cmVhbS0+b2FfY29uZmlnLCBjb25maWcpOwoKT2ggY3Jpa2V5LgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
