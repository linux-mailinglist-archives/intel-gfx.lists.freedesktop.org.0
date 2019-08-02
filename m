Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E6B80127
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 21:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1896E77B;
	Fri,  2 Aug 2019 19:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A288F6E77B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 19:41:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17825879-1500050 for multiple; Fri, 02 Aug 2019 20:41:32 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190802184055.31988-5-michal.wajdeczko@intel.com>
References: <20190802184055.31988-1-michal.wajdeczko@intel.com>
 <20190802184055.31988-5-michal.wajdeczko@intel.com>
Message-ID: <156477489082.6598.15291442673926544532@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 02 Aug 2019 20:41:30 +0100
Subject: Re: [Intel-gfx] [PATCH v7 4/6] drm/i915/uc: Move GuC error log to
 uc and release it on fini
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTAyIDE5OjQwOjUzKQo+IFdoZW4gd2Ug
ZmFpbCB0byBsb2FkIEd1QyBhbmQgd2FudCB0byBhYm9ydCBwcm9iZSwgd2UgaGl0Ogo+IAo+IDw3
PiBbMjI5LjkxNTc3OV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aW50ZWxfdWNfaW5pdF9odyBb
aTkxNV1dIEd1QyBpbml0aWFsaXphdGlvbiBmYWlsZWQgLTYKPiA8Nz4gWzIyOS45MTU4MTNdIGk5
MTUgMDAwMDowMDowMi4wOiBbZHJtOmk5MTVfZ2VtX2luaXRfaHcgW2k5MTVdXSBFbmFibGluZyB1
YyBmYWlsZWQgKC02KQo+IDw0PiBbMjI5Ljk1MzM1NF0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBd
LS0tLS0tLS0tLS0tCj4gPDQ+IFsyMjkuOTUzMzU1XSBXQVJOX09OKGRldl9wcml2LT5tbS5zaHJp
bmtfY291bnQpCj4gPDQ+IFsyMjkuOTUzNDA2XSBXQVJOSU5HOiBDUFU6IDkgUElEOiAzMjg3IGF0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmM6MTY4NCBpOTE1X2dlbV9jbGVhbnVwX2Vh
cmx5KzB4ZmMvMHgxMTAgW2k5MTVdCj4gPDQ+IFsyMjkuOTUzNDY0XSBDYWxsIFRyYWNlOgo+IDw0
PiBbMjI5Ljk1MzQ4OV0gIGk5MTVfZHJpdmVyX2xhdGVfcmVsZWFzZSsweDE5LzB4NjAgW2k5MTVd
Cj4gPDQ+IFsyMjkuOTUzNTE0XSAgaTkxNV9kcml2ZXJfcHJvYmUrMHhiODIvMHgxOGEwIFtpOTE1
XQo+IDw0PiBbMjI5Ljk1MzUxOV0gID8gX19wbV9ydW50aW1lX3Jlc3VtZSsweDRmLzB4ODAKPiA8
ND4gWzIyOS45NTM1NDVdICBpOTE1X3BjaV9wcm9iZSsweDQzLzB4MWIwIFtpOTE1XQo+IC4uLgo+
IDw0PiBbMjI5Ljk2Mjk1MV0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4g
PDQ+IFsyMjkuOTYyOTU2XSBERUJVR19MT0NLU19XQVJOX09OKGxvY2stPm1hZ2ljICE9IGxvY2sp
Cj4gPDQ+IFsyMjkuOTYyOTU5XSBXQVJOSU5HOiBDUFU6IDggUElEOiAyMzk1IGF0IGtlcm5lbC9s
b2NraW5nL211dGV4LmM6OTEyIF9fbXV0ZXhfbG9jaysweDc1MC8weDliMAo+IDw0PiBbMjI5Ljk2
MzA5MV0gQ2FsbCBUcmFjZToKPiA8ND4gWzIyOS45NjMxMjldICA/IGk5MTVfdm1hX2Rlc3Ryb3kr
MHg4Ni8weDM1MCBbaTkxNV0KPiA8ND4gWzIyOS45NjMxNjZdICA/IGk5MTVfdm1hX2Rlc3Ryb3kr
MHg4Ni8weDM1MCBbaTkxNV0KPiA8ND4gWzIyOS45NjMyMDFdICBpOTE1X3ZtYV9kZXN0cm95KzB4
ODYvMHgzNTAgW2k5MTVdCj4gPDQ+IFsyMjkuOTYzMjM2XSAgX19pOTE1X2dlbV9mcmVlX29iamVj
dHMrMHhiOC8weDUxMCBbaTkxNV0KPiA8ND4gWzIyOS45NjMyNzBdICBfX2k5MTVfZ2VtX2ZyZWVf
d29yaysweDVhLzB4OTAgW2k5MTVdCj4gPDQ+IFsyMjkuOTYzMjc1XSAgcHJvY2Vzc19vbmVfd29y
aysweDI0NS8weDYxMAo+IAo+IGFzIHNpbmNlIGNvbW1pdCA2Zjc2MDk4ZmUwZjMgKCJkcm0vaTkx
NS91YzogTW92ZSB1QyBlYXJseSBmdW5jdGlvbnMKPiBpbnNpZGUgdGhlIEdUIG9uZXMiKSB3ZSBj
bGVhbnVwIHVjIGFmdGVyIGdlbS4KPiAKPiBNb3ZlIGNhcHR1cmVkIEd1QyBsb2FkIGVycm9yIGxv
ZyB0byB1YyBzdHJ1Y3QgYW5kIHJlbGVhc2UgaXQKPiBpbiBpbnRlbF91Y19maW5pKCkgaW5zdGVh
ZCBvZiBpbnRlbF91Y19kcml2ZXJfbGF0ZV9yZWxlYXNlKCkKPiAKPiBOb3RlIHRoYXQgaW50ZWxf
dWNfZHJpdmVyX2xhdGVfcmVsZWFzZSgpIGlzIG5vdyBlbXB0eSwgYnV0Cj4gd2UgY2FuIGxlYXZl
IGl0IGFzIGEgcGxhY2Vob2xkZXIgZm9yIGZ1dHVyZSBjb2RlLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCldlbGwgZG9uZSwgSSB3
YXMgbG9va2luZyBmb3IgYW4gaW5jb3JyZWN0IG9uaW9uIGFuZCBkaWRuJ3Qgc3BvdCBpdCwgc28K
dGhvdWdodCBpdCB3YXMganVzdCB0aGUgZGVmZXJyZWQgZnJlZS4KUmV2aWV3ZWQtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
