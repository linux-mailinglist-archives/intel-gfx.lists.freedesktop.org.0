Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD845C9F1C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 15:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0E9E6E132;
	Thu,  3 Oct 2019 13:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85096E132
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 13:09:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18707317-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Oct 2019 14:09:48 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20191003093639.10186-1-chris@chris-wilson.co.uk>
 <20191003093639.10186-2-chris@chris-wilson.co.uk>
In-Reply-To: <20191003093639.10186-2-chris@chris-wilson.co.uk>
Message-ID: <157010818568.2173.17563179133662647600@skylake-alporthouse-com>
Date: Thu, 03 Oct 2019 14:09:45 +0100
Subject: Re: [Intel-gfx] [PATCH 01/22] dma-fence: Serialise signal enabling
 (dma_fence_enable_sw_signaling)
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMDMgMTA6MzY6MTgpCj4gTWFrZSBkbWFfZmVu
Y2VfZW5hYmxlX3N3X3NpZ25hbGluZygpIGJlaGF2ZSBsaWtlIGl0cwo+IGRtYV9mZW5jZV9hZGRf
Y2FsbGJhY2soKSBhbmQgZG1hX2ZlbmNlX2RlZmF1bHRfd2FpdCgpIGNvdW50ZXJwYXJ0cyBhbmQK
PiBwZXJmb3JtIHRoZSB0ZXN0IHRvIGVuYWJsZSBzaWduYWxpbmcgdW5kZXIgdGhlIGZlbmNlLT5s
b2NrLCBhbG9uZyB3aXRoCj4gdGhlIGFjdGlvbiB0byBkbyBzby4gVGhpcyBlbnN1cmUgdGhhdCBz
aG91bGQgYW4gaW1wbGVtZW50YXRpb24gYmUgdHJ5aW5nCj4gdG8gZmx1c2ggdGhlIGNiX2xpc3Qg
KGJ5IHNpZ25hbGluZykgb24gcmV0aXJlbWVudCBiZWZvcmUgZnJlZWluZyB0aGUKPiBmZW5jZSwg
aXQgY2FuIGRvIHNvIGluIGEgcmFjZS1mcmVlIG1hbm5lci4KPiAKPiBTZWUgYWxzbyAwZmM4OWI2
ODAyYmEgKCJkbWEtZmVuY2U6IFNpbXBseSB3cmFwIGRtYV9mZW5jZV9zaWduYWxfbG9ja2VkCj4g
d2l0aCBkbWFfZmVuY2Vfc2lnbmFsIikuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYyB8IDExICsrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+IGluZGV4IDJjMTM2YWVlM2U3
OS4uNTg3NzI3MDg5MTM0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Uu
Ywo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYwo+IEBAIC0yODUsMTkgKzI4NSwx
OCBAQCB2b2lkIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKQo+ICB7Cj4gICAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+ICAKPiArICAgICAg
IGlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3Mp
KQo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKwo+ICsgICAgICAgc3Bpbl9sb2NrX2lycXNh
dmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsKPiAgICAgICAgIGlmICghdGVzdF9hbmRfc2V0X2JpdChE
TUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAmZmVuY2UtPmZsYWdzKSAmJgo+IC0gICAgICAgICAgICF0ZXN0X2JpdChETUFfRkVO
Q0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+ZmxhZ3MpICYmCgpTdGFyaW5nIGF0IHRoaXMg
aW4gZGlzY3Vzc2lvbiB3aXRoIFR2cnRrbywgd2UgY2FuJ3QgZHJvcCB0aGlzIGNoZWNrCmVpdGhl
ci4gQWZ0ZXIgd2hpY2ggdGhpcyBsb29rcyBhbG1vc3QgaWRlbnRpY2FsIHdpdGggdGhlIG90aGVy
CmVuYWJsZV9zaWduYWxpbmcgY2FsbGVycy4KCj4gICAgICAgICAgICAgZmVuY2UtPm9wcy0+ZW5h
YmxlX3NpZ25hbGluZykgewo+ICAgICAgICAgICAgICAgICB0cmFjZV9kbWFfZmVuY2VfZW5hYmxl
X3NpZ25hbChmZW5jZSk7Cj4gLQo+IC0gICAgICAgICAgICAgICBzcGluX2xvY2tfaXJxc2F2ZShm
ZW5jZS0+bG9jaywgZmxhZ3MpOwo+IC0KPiAgICAgICAgICAgICAgICAgaWYgKCFmZW5jZS0+b3Bz
LT5lbmFibGVfc2lnbmFsaW5nKGZlbmNlKSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBkbWFf
ZmVuY2Vfc2lnbmFsX2xvY2tlZChmZW5jZSk7Cj4gLQo+IC0gICAgICAgICAgICAgICBzcGluX3Vu
bG9ja19pcnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4gICAgICAgICB9Cj4gKyAgICAg
ICBzcGluX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4gIH0KPiAgRVhQ
T1JUX1NZTUJPTChkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyk7Cj4gIAo+IC0tIAo+IDIu
MjMuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
