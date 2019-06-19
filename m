Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DBB4C086
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CEE06E444;
	Wed, 19 Jun 2019 18:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3906E444
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:08:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16957019-1500050 for multiple; Wed, 19 Jun 2019 19:08:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
 <20190619180312.31817-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20190619180312.31817-2-ville.syrjala@linux.intel.com>
Message-ID: <156096771112.664.6582962934340127578@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 19:08:31 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/sdvo: Use named initializers
 for the SDVO command names
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA2LTE5IDE5OjAzOjA4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gVXNlIG5hbWVk
IGluaXRpYWxpemVycyB0byBtYWtlIGl0IGVhc2llciB0byBhc3NvY2lhdGUgdGhlIFNEVk8gZGVi
dWcKPiBwcmludHMgd2l0aCB0aGUgU0RWTyBjb21tYW5kIGRlZmluZXMuIEFsc28gc3dpdGNoIHRv
IHVzaW5nIEFSUkFZX1NJWkUoKQo+IGluc3RlYWQgb2YgYXNzdW1pbmcgdGhhdCBTRFZPX0NNRF9T
VEFUVVNfU0NBTElOR19OT1RfU1VQUCBpcyB0aGUgbGFzdAo+IGNvbW1hbmQgdHlwZS4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYyB8
IDE2ICsrKysrKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zZHZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nk
dm8uYwo+IGluZGV4IDY4MTQxMWFhZTc1NC4uZmI3NzE3NmI5YThjIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKPiBAQCAtNDI5LDEzICs0MjksMTMgQEAg
c3RhdGljIHZvaWQgaW50ZWxfc2R2b19kZWJ1Z193cml0ZShzdHJ1Y3QgaW50ZWxfc2R2byAqaW50
ZWxfc2R2bywgdTggY21kLAo+ICB9Cj4gIAo+ICBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGNt
ZF9zdGF0dXNfbmFtZXNbXSA9IHsKPiAtICAgICAgICJQb3dlciBvbiIsCj4gLSAgICAgICAiU3Vj
Y2VzcyIsCj4gLSAgICAgICAiTm90IHN1cHBvcnRlZCIsCj4gLSAgICAgICAiSW52YWxpZCBhcmci
LAo+IC0gICAgICAgIlBlbmRpbmciLAo+IC0gICAgICAgIlRhcmdldCBub3Qgc3BlY2lmaWVkIiwK
PiAtICAgICAgICJTY2FsaW5nIG5vdCBzdXBwb3J0ZWQiCj4gKyAgICAgICBbU0RWT19DTURfU1RB
VFVTX1BPV0VSX09OXSA9ICJQb3dlciBvbiIsCj4gKyAgICAgICBbU0RWT19DTURfU1RBVFVTX1NV
Q0NFU1NdID0gIlN1Y2Nlc3MiLAo+ICsgICAgICAgW1NEVk9fQ01EX1NUQVRVU19OT1RTVVBQXSA9
ICJOb3Qgc3VwcG9ydGVkIiwKPiArICAgICAgIFtTRFZPX0NNRF9TVEFUVVNfSU5WQUxJRF9BUkdd
ID0gIkludmFsaWQgYXJnIiwKPiArICAgICAgIFtTRFZPX0NNRF9TVEFUVVNfUEVORElOR10gPSAi
UGVuZGluZyIsCj4gKyAgICAgICBbU0RWT19DTURfU1RBVFVTX1RBUkdFVF9OT1RfU1BFQ0lGSUVE
XSA9ICJUYXJnZXQgbm90IHNwZWNpZmllZCIsCj4gKyAgICAgICBbU0RWT19DTURfU1RBVFVTX1ND
QUxJTkdfTk9UX1NVUFBdID0gIlNjYWxpbmcgbm90IHN1cHBvcnRlZCIsCj4gIH07Cj4gIAo+ICBz
dGF0aWMgYm9vbCBfX2ludGVsX3Nkdm9fd3JpdGVfY21kKHN0cnVjdCBpbnRlbF9zZHZvICppbnRl
bF9zZHZvLCB1OCBjbWQsCj4gQEAgLTU2Miw3ICs1NjIsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9z
ZHZvX3JlYWRfcmVzcG9uc2Uoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sCj4gICNkZWZp
bmUgQlVGX1BSSU5UKGFyZ3MuLi4pIFwKPiAgICAgICAgIHBvcyArPSBzbnByaW50ZihidWZmZXIg
KyBwb3MsIG1heF90KGludCwgQlVGX0xFTiAtIHBvcywgMCksIGFyZ3MpCj4gIAo+IC0gICAgICAg
aWYgKHN0YXR1cyA8PSBTRFZPX0NNRF9TVEFUVVNfU0NBTElOR19OT1RfU1VQUCkKPiArICAgICAg
IGlmIChzdGF0dXMgPCBBUlJBWV9TSVpFKGNtZF9zdGF0dXNfbmFtZXMpKQoKQW5kIG1pZ2h0IGFz
IHdlbGwgYmUgZGVmZW5zaXZlIChzdHJpbmdzIHZzIEhXIHZzIGRldiksCglpZiAoc3RhdHVzIDwg
QVJSQVlfU0laRShjbWRfc3RhdHVzX25hbWVzKSAmJgoJICAgIGNtZF9zdGF0dXNfbmFtZXNbc3Rh
dHVzXSkpCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
