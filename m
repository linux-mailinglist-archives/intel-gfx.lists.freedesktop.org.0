Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE171D5653
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 18:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F285C6ECF5;
	Fri, 15 May 2020 16:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1736B6ECF5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 16:41:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21207190-1500050 for multiple; Fri, 15 May 2020 17:41:38 +0100
MIME-Version: 1.0
In-Reply-To: <20191028113036.27553-6-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
 <20191028113036.27553-6-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158956089688.29850.12690160923821919392@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 15 May 2020 17:41:36 +0100
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Protect overlay colorkey
 macro arguments
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEwLTI4IDExOjMwOjM2KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUHV0IHRoZSBj
dXN0b21hcnkgKCkgYXJvdW5kIHRoZSBtYWNybyBhcmd1bWVudCBpbiB0aGUgb3ZlcmxheQo+IGNv
bG9ya2V5IG1hY3Jvcy4gQW5kIHdoaWxlIGF0IHN3aXRjaCB0byB1c2luZyBhIGNvbnNpc3RlbnQK
PiBjYXNlIGZvciB0aGUgaGV4IGNvbnN0YW50cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYyB8IDggKysrKy0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYwo+IGluZGV4IDMyNDFjYzk4
ZTI1MS4uNGJjMDdjMTA1N2UyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfb3ZlcmxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9vdmVybGF5LmMKPiBAQCAtMTAzLDEzICsxMDMsMTMgQEAKPiAgI2RlZmluZSBDTEtf
UkdCMTVfTUFTSyAgICAgICAgIDB4MDcwNzA3Cj4gIAo+ICAjZGVmaW5lIFJHQjMwX1RPX0NPTE9S
S0VZKGMpIFwKPiAtICAgICAgICgoKGMgJiAweDNGQzAwMDAwKSA+PiA2KSB8ICgoYyAmIDB4MDAw
RkYwMDApID4+IDQpIHwgKChjICYgMHgwMDAwMDNGQykgPj4gMikpCj4gKyAgICAgICAoKCgoYykg
JiAweDNmYzAwMDAwKSA+PiA2KSB8ICgoKGMpICYgMHgwMDBmZjAwMCkgPj4gNCkgfCAoKChjKSAm
IDB4MDAwMDAzZmMpID4+IDIpKQo+ICAjZGVmaW5lIFJHQjE2X1RPX0NPTE9SS0VZKGMpIFwKPiAt
ICAgICAgICgoKGMgJiAweEY4MDApIDw8IDgpIHwgKChjICYgMHgwN0UwKSA8PCA1KSB8ICgoYyAm
IDB4MDAxRikgPDwgMykpCj4gKyAgICAgICAoKCgoYykgJiAweGY4MDApIDw8IDgpIHwgKCgoYykg
JiAweDA3ZTApIDw8IDUpIHwgKCgoYykgJiAweDAwMWYpIDw8IDMpKQo+ICAjZGVmaW5lIFJHQjE1
X1RPX0NPTE9SS0VZKGMpIFwKPiAtICAgICAgICgoKGMgJiAweDdjMDApIDw8IDkpIHwgKChjICYg
MHgwM0UwKSA8PCA2KSB8ICgoYyAmIDB4MDAxRikgPDwgMykpCj4gKyAgICAgICAoKCgoYykgJiAw
eDdjMDApIDw8IDkpIHwgKCgoYykgJiAweDAzZTApIDw8IDYpIHwgKCgoYykgJiAweDAwMWYpIDw8
IDMpKQo+ICAjZGVmaW5lIFJHQjhJX1RPX0NPTE9SS0VZKGMpIFwKPiAtICAgICAgICgoKGMgJiAw
eEZGKSA8PCAxNikgfCAoKGMgJiAwWEZGKSA8PCA4KSB8ICgoYyAmIDB4RkYpIDw8IDApKQo+ICsg
ICAgICAgKCgoKGMpICYgMHhmZikgPDwgMTYpIHwgKCgoYykgJiAweGZmKSA8PCA4KSB8ICgoKGMp
ICYgMHhmZikgPDwgMCkpCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
