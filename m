Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8AB10CB8F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 16:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1676E843;
	Thu, 28 Nov 2019 15:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BDA2F6E842;
 Thu, 28 Nov 2019 15:17:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B5011A0BCB;
 Thu, 28 Nov 2019 15:17:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 15:17:26 -0000
Message-ID: <157495424671.21454.9382308816132532411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191128145211.3920290-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191128145211.3920290-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Allow_i915_t?=
 =?utf-8?q?o_manage_the_vma_offset_nodes_instead_of_drm_core?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTU6IEFsbG93IGk5MTUgdG8gbWFuYWdlIHRoZSB2bWEgb2Zmc2V0IG5vZGVzIGlu
c3RlYWQgb2YgZHJtIGNvcmUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzcwMTYzLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNo
ZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMDE1OTZmOThiZmZiIGRybS9pOTE1OiBBbGxvdyBpOTE1
IHRvIG1hbmFnZSB0aGUgdm1hIG9mZnNldCBub2RlcyBpbnN0ZWFkIG9mIGRybSBjb3JlCi06Mzcx
OiBDSEVDSzpCUkFDRVM6IEJsYW5rIGxpbmVzIGFyZW4ndCBuZWNlc3NhcnkgYmVmb3JlIGEgY2xv
c2UgYnJhY2UgJ30nCiMzNzE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9tbWFuLmM6NjQ0OgorCisJfQoKLTo0MDI6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFk
ZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRh
dGluZz8KIzQwMjogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjQwNzogV0FSTklORzpTUERYX0xJ
Q0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0
YWcgaW4gbGluZSAxCiM0MDc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9tbWFuLmg6MToKKy8qCgotOjQwODogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFj
ZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiM0MDg6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmg6MjoKKyAqIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06NjI3OiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBs
ZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUgYmxhbmsgbGluZXMKIzYyNzogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmM6NTgxOgogCisKCi06ODAy
OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllciB0YWcgLSB1c2UgbGluZSAxIGluc3RlYWQKIzgwMjogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZXRwYXJhbS5jOjI6CiAgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
Cgp0b3RhbDogMCBlcnJvcnMsIDQgd2FybmluZ3MsIDIgY2hlY2tzLCA2OTIgbGluZXMgY2hlY2tl
ZAo3ZWE0YzgzYWNmZWEgZHJtL2k5MTU6IEludHJvZHVjZSBEUk1fSTkxNV9HRU1fTU1BUF9PRkZT
RVQKLToxODQ6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzE4
NDogRklMRTogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oOjM5ODoKKyNkZWZpbmUgRFJNX0lP
Q1RMX0k5MTVfR0VNX01NQVBfT0ZGU0VUCURSTV9JT1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1f
STkxNV9HRU1fTU1BUF9HVFQsIHN0cnVjdCBkcm1faTkxNV9nZW1fbW1hcF9vZmZzZXQpCgp0b3Rh
bDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxNTAgbGluZXMgY2hlY2tlZAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
