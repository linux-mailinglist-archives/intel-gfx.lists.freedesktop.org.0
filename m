Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4487D4743
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6886EC7D;
	Fri, 11 Oct 2019 18:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 712DB6EC79
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 18:15:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18808240-1500050 for multiple; Fri, 11 Oct 2019 19:15:08 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
References: <20191011133911.18621-1-mika.kuoppala@linux.intel.com>
Message-ID: <157081770612.31572.13614435343028390743@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 11 Oct 2019 19:15:06 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Include ro parts of l3 to
 invalidate
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTExIDE0OjM5OjA5KQo+IEFpbSBmb3IgY29t
cGxldGVuZXNzIGFuZCBpbnZhbGlkYXRlIGFsc28gdGhlIHJvIHBhcnRzCj4gaW4gbDMgY2FjaGUu
IFRoaXMgbWlnaHQgYWxsb3cgdG8gZ2V0IHJpZCBvZiB0aGUgcHJlcGFyc2VyCj4gZGlzYWJsZS9l
bmFibGUgd29ya2Fyb3VuZCBvbiBpbnZhbGlkYXRpb24gcGF0aC4KPiAKPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIHwgMSArCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICAgIHwgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2dwdV9jb21tYW5kcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1
X2NvbW1hbmRzLmgKPiBpbmRleCBiMDIyN2FiMmZlMWIuLjhjOGU2YmY4MjRhOSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCj4gQEAgLTIzMCw2
ICsyMzAsNyBAQAo+ICAjZGVmaW5lICAgUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FDSEVf
RkxVU0ggICAgICAgKDE8PDEyKSAvKiBnZW42KyAqLwo+ICAjZGVmaW5lICAgUElQRV9DT05UUk9M
X0lOU1RSVUNUSU9OX0NBQ0hFX0lOVkFMSURBVEUgICAgKDE8PDExKSAvKiBNQlogb24gSUxLICov
Cj4gICNkZWZpbmUgICBQSVBFX0NPTlRST0xfVEVYVFVSRV9DQUNIRV9JTlZBTElEQVRFICAgICAg
ICAgICAgICAgICgxPDwxMCkgLyogR000NSsgb25seSAqLwo+ICsjZGVmaW5lICAgUElQRV9DT05U
Uk9MX0wzX1JPX0NBQ0hFX0lOVkFMSURBVEUgICAgICAgICAgKDE8PDEwKSAvKiBnZW4xMiAqLwoK
QWNrLgoKPiAgI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9JTkRJUkVDVF9TVEFURV9ESVNBQkxFICAg
ICAgICAgICgxPDw5KQo+ICAjZGVmaW5lICAgUElQRV9DT05UUk9MX05PVElGWSAgICAgICAgICAg
ICAgICAgICAgICAgICAgKDE8PDgpCj4gICNkZWZpbmUgICBQSVBFX0NPTlRST0xfRkxVU0hfRU5B
QkxFICAgICAgICAgICAgICAgICAgICAoMTw8NykgLyogZ2VuNysgKi8KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IGIwMDQ5OWNjNzU4Ni4uYzZmYmM3MjM1NjZmIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMzIxMyw2ICszMjEzLDcgQEAg
c3RhdGljIGludCBnZW4xMl9lbWl0X2ZsdXNoX3JlbmRlcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
ZXF1ZXN0LAo+ICAgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBFX0NPTlRST0xfVkZfQ0FDSEVf
SU5WQUxJREFURTsKPiAgICAgICAgICAgICAgICAgZmxhZ3MgfD0gUElQRV9DT05UUk9MX0NPTlNU
X0NBQ0hFX0lOVkFMSURBVEU7Cj4gICAgICAgICAgICAgICAgIGZsYWdzIHw9IFBJUEVfQ09OVFJP
TF9TVEFURV9DQUNIRV9JTlZBTElEQVRFOwo+ICsgICAgICAgICAgICAgICBmbGFncyB8PSBQSVBF
X0NPTlRST0xfTDNfUk9fQ0FDSEVfSU5WQUxJREFURTsKPiAgCj4gICAgICAgICAgICAgICAgIGZs
YWdzIHw9IFBJUEVfQ09OVFJPTF9TVE9SRV9EQVRBX0lOREVYOwo+ICAgICAgICAgICAgICAgICBm
bGFncyB8PSBQSVBFX0NPTlRST0xfUVdfV1JJVEU7CgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
