Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2499C10CC15
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 16:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B506E84C;
	Thu, 28 Nov 2019 15:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0839C6E0AD;
 Thu, 28 Nov 2019 15:50:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F397BA00FD;
 Thu, 28 Nov 2019 15:50:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 15:50:48 -0000
Message-ID: <157495624897.21455.13144209747729907939@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191128145913.3949081-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191128145913.3949081-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Introduce_DRM=5FI915=5FGEM=5FMMAP=5FOFFSET?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEludHJvZHVjZSBEUk1fSTkx
NV9HRU1fTU1BUF9PRkZTRVQKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzcwMTY0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNo
ZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMTFhZTFmNzg4OWI2IGRybS9pOTE1OiBJbnRyb2R1Y2Ug
RFJNX0k5MTVfR0VNX01NQVBfT0ZGU0VUCi06NDE2OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1F
TlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNDE2OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jOjU4ODoKK2k5MTVfZ2VtX21t
YXBfZHVtYihzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCisJCSAgc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKCi06NDI2OiBXQVJOSU5HOlVOTkVDRVNTQVJZX0VMU0U6IGVsc2UgaXMgbm90IGdlbmVyYWxs
eSB1c2VmdWwgYWZ0ZXIgYSBicmVhayBvciByZXR1cm4KIzQyNjogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYzo1OTg6CisJCXJldHVybiAtRU5PREVWOworCWVs
c2UKCi06NTg4OiBDSEVDSzpCUkFDRVM6IEJsYW5rIGxpbmVzIGFyZW4ndCBuZWNlc3NhcnkgYmVm
b3JlIGEgY2xvc2UgYnJhY2UgJ30nCiM1ODg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9tbWFuLmM6NzYzOgorCisJfQoKLTo2Mjk6IFdBUk5JTkc6RklMRV9QQVRIX0NI
QU5HRVM6IGFkZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMg
bmVlZCB1cGRhdGluZz8KIzYyOTogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjYzNDogV0FSTklO
RzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllciB0YWcgaW4gbGluZSAxCiM2MzQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9tbWFuLmg6MToKKy8qCgotOjYzNTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFH
OiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0
ZWFkCiM2MzU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmg6
MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06NjYxOiBDSEVDSzpQQVJFTlRI
RVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwoj
NjYxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5oOjI4Ogor
aW50IGk5MTVfZ2VtX21tYXBfZHVtYihzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwgc3RydWN0
IGRybV9kZXZpY2UgKmRldiwKKwkJICAgICAgdTMyIGhhbmRsZSwgdTY0ICpvZmZzZXQpOwoKLTo4
NjA6IENIRUNLOkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0IHVzZSBtdWx0aXBsZSBibGFuayBs
aW5lcwojODYwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYzo1ODE6CiAKKwoKLToxMTUwOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1p
c3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQK
IzExNTA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYzoyOgogICog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKLToxMjAwOiBXQVJOSU5HOkxPTkdfTElORTog
bGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMxMjAwOiBGSUxFOiBpbmNsdWRlL3VhcGkvZHJtL2k5
MTVfZHJtLmg6Mzk4OgorI2RlZmluZSBEUk1fSU9DVExfSTkxNV9HRU1fTU1BUF9PRkZTRVQJRFJN
X0lPV1IoRFJNX0NPTU1BTkRfQkFTRSArIERSTV9JOTE1X0dFTV9NTUFQX0dUVCwgc3RydWN0IGRy
bV9pOTE1X2dlbV9tbWFwX29mZnNldCkKCnRvdGFsOiAwIGVycm9ycywgNiB3YXJuaW5ncywgNCBj
aGVja3MsIDEwNzUgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
