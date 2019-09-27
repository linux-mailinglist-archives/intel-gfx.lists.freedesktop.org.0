Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C61C0A7E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4718982E;
	Fri, 27 Sep 2019 17:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BEEE8982E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:37:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18643188-1500050 for multiple; Fri, 27 Sep 2019 18:37:32 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-2-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-2-matthew.auld@intel.com>
Message-ID: <156960584767.1880.12892918340593546077@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 18:37:27 +0100
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915: check for kernel_context
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NDgpCj4gRXhwbG9zaW9ucyBk
dXJpbmcgZWFybHkgZHJpdmVyIGluaXQgb24gdGhlIGVycm9yIHBhdGguIE1ha2Ugc3VyZSB3ZSBm
YWlsCj4gZ3JhY2VmdWxseS4KCkpvb25hcyB3b3VsZCBjb21wbGFpbiBhYm91dCB0aGUgY2xlYXJs
eSBub3Qgb25pb24gdW53aW5kIGhlcmUsIGJ1dCB3ZQpoYXZlIHRocm93biBpdCBpbiBhcyBhIGNh
dGNoLWFsbCBjbGVhbnVwIGZvciB3aGF0IGlzIHF1aXRlIGEgY29tcGxpY2F0ZWQKc2V0dXAuCiAK
PiBbIDk1NDcuNjcyMjU4XSBCVUc6IGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UsIGFk
ZHJlc3M6IDAwMDAwMDAwMDAwMDAwN2MKPiBbIDk1NDcuNjcyMjg4XSAjUEY6IHN1cGVydmlzb3Ig
cmVhZCBhY2Nlc3MgaW4ga2VybmVsIG1vZGUKPiBbIDk1NDcuNjcyMjkyXSAjUEY6IGVycm9yX2Nv
ZGUoMHgwMDAwKSAtIG5vdC1wcmVzZW50IHBhZ2UKPiBbIDk1NDcuNjcyMjk2XSBQR0QgODAwMDAw
MDg0NmI0MTA2NyBQNEQgODAwMDAwMDg0NmI0MTA2NyBQVUQgNzk3MDM0MDY3IFBNRCAwCj4gWyA5
NTQ3LjY3MjMwM10gT29wczogMDAwMCBbIzFdIFNNUCBQVEkKPiBbIDk1NDcuNjcyMzA3XSBDUFU6
IDEgUElEOiAyNTYzNCBDb21tOiBpOTE1X3NlbGZ0ZXN0IFRhaW50ZWQ6IEcgICAgIFUgICAgICAg
ICAgICA1LjMuMC1yYzgrICM3Mwo+IFsgOTU0Ny42NzIzMTNdIEhhcmR3YXJlIG5hbWU6ICAvTlVD
Nmk3S1lCLCBCSU9TIEtZU0tMaTcwLjg2QS4wMDUwLjIwMTcuMDgzMS4xOTI0IDA4LzMxLzIwMTcK
PiBbIDk1NDcuNjcyMzk1XSBSSVA6IDAwMTA6aW50ZWxfY29udGV4dF91bnBpbisweDkvMHgxMDAg
W2k5MTVdCj4gWyA5NTQ3LjY3MjQwMF0gQ29kZTogNmIgNjAgMDAgZTkgMTcgZmYgZmYgZmYgYmQg
ZmMgZmYgZmYgZmYgZTkgN2MgZmYgZmYgZmYgNjYgNjYgMmUgMGYgMWYgODQgMDAgMDAgMDAgMDAK
PiAgMDAgMGYgMWYgNDAgMDAgMGYgMWYgNDQgMDAgMDAgNDEgNTQgNTUgNTMgPDhiPiA0NyA3YyA4
MyBmOCAwMSA3NCAyNiA4ZCA0OCBmZiBmMCAwZiBiMSA0ZiA3YyA0OCA4ZCA1NyA3Ywo+ICA3NSAw
NQo+IFsgOTU0Ny42NzI0MTNdIFJTUDogMDAxODpmZmZmYWU4YWMyNGZmODc4IEVGTEFHUzogMDAw
MTAyNDYKPiBbIDk1NDcuNjcyNDE3XSBSQVg6IGZmZmY5NDRhMWI3ODQyZDAgUkJYOiBmZmZmOTQ0
YTFiNzg0MDAwIFJDWDogZmZmZjk0NGExMmRkNmZhOAo+IFsgOTU0Ny42NzI0MjJdIFJEWDogZmZm
Zjk0NGExYjc4NDJjMCBSU0k6IGZmZmY5NDRhMTJkZDUzMjggUkRJOiAwMDAwMDAwMDAwMDAwMDAw
Cj4gWyA5NTQ3LjY3MjQyOF0gUkJQOiAwMDAwMDAwMDAwMDAwMDAwIFIwODogZmZmZjk0NGExMWU1
ZDg0MCBSMDk6IDAwMDAwMDAwMDAwMDAwMDAKPiBbIDk1NDcuNjcyNDMzXSBSMTA6IDAwMDAwMDAw
MDAwMDAwMDAgUjExOiAwMDAwMDAwMDAwMDAwMDAwIFIxMjogMDAwMDAwMDAwMDAwMDAwMAo+IFsg
OTU0Ny42NzI0MzhdIFIxMzogZmZmZmZmZmZjMTFhYWYwMCBSMTQ6IDAwMDAwMDAwZmZmZmZmZTQg
UjE1OiBmZmZmOTQ0YTBlMjliZjM4Cj4gWyA5NTQ3LjY3MjQ0M10gRlM6ICAwMDAwN2ZjMjU5Yjg4
YWMwKDAwMDApIEdTOmZmZmY5NDRhMWY4ODAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAw
MAo+IFsgOTU0Ny42NzI0NDldIENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAw
MDAwODAwNTAwMzMKPiBbIDk1NDcuNjcyNDU0XSBDUjI6IDAwMDAwMDAwMDAwMDAwN2MgQ1IzOiAw
MDAwMDAwODUzMzQ2MDAzIENSNDogMDAwMDAwMDAwMDM2MDZlMAo+IFsgOTU0Ny42NzI0NTldIERS
MDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIyOiAwMDAwMDAwMDAw
MDAwMDAwCj4gWyA5NTQ3LjY3MjQ2NF0gRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERSNjogMDAwMDAw
MDBmZmZlMGZmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDAKPiBbIDk1NDcuNjcyNDY5XSBDYWxsIFRy
YWNlOgo+IFsgOTU0Ny42NzI1MThdICBpbnRlbF9lbmdpbmVfY2xlYW51cF9jb21tb24rMHhlMy8w
eDI3MCBbaTkxNV0KPiBbIDk1NDcuNjcyNTY3XSAgZXhlY2xpc3RzX2Rlc3Ryb3krMHhlLzB4MzAg
W2k5MTVdCj4gWyA5NTQ3LjY3MjY2OV0gIGludGVsX2VuZ2luZXNfaW5pdCsweDk0LzB4ZjAgW2k5
MTVdCj4gWyA5NTQ3LjY3Mjc0OV0gIGk5MTVfZ2VtX2luaXQrMHgxOTEvMHg5NTAgW2k5MTVdCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
