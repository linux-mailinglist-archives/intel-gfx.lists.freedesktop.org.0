Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC14ACB757
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 11:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE1F6E2BE;
	Fri,  4 Oct 2019 09:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACF3D6E2BE;
 Fri,  4 Oct 2019 09:29:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A33EFA0094;
 Fri,  4 Oct 2019 09:29:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Fri, 04 Oct 2019 09:29:53 -0000
Message-ID: <20191004092953.26992.15878@emeril.freedesktop.org>
References: <20191004082610.24664-1-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191004082610.24664-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_fix_broken_state_checker_and_enable_state_checker_for_icl+?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZml4IGJyb2tlbiBzdGF0ZSBjaGVja2VyIGFu
ZCBlbmFibGUgc3RhdGUgY2hlY2tlciBmb3IgaWNsKwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjc1ODYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFy
eSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAphMzE2NDBkNmQ0YzAgZHJtL2k5
MTUvY29sb3I6IGZpeCBicm9rZW4gZ2FtbWEgc3RhdGUtY2hlY2tlciBkdXJpbmcgYm9vdAotOjE4
OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24g
c3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6
ICdjb21taXQgMWI4NTg4NzQxZmRjICgiUmV2ZXJ0ICJkcm0vaTkxNS9jb2xvcjogRXh0cmFjdCBp
Y2xfcmVhZF9sdXRzKCkiIiknCiMxODogClRoaXMgZml4IGlzIGluZGVwZW5kZW50IGZyb20gdGhl
IHJldmVydCAxYjg1ODg3NDFmZGMgKCJSZXZlcnQKCnRvdGFsOiAxIGVycm9ycywgMCB3YXJuaW5n
cywgMCBjaGVja3MsIDU4IGxpbmVzIGNoZWNrZWQKZjA1NzI2OWY1ODcyIGRybS9pOTE1L2NvbG9y
OiBtb3ZlIGNoZWNrIG9mIGdhbW1hX2VuYWJsZSB0byBzcGVjaWZpYyBmdW5jL3BsYXRmb3JtCmFm
NjExNTBjYzg1NyBkcm0vaTkxNS9jb2xvcjogRXh0cmFjdCBpY2xfcmVhZF9sdXRzKCkKLTozMzog
V0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBk
ZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzMzOiAKICAg
IC1yZW1vdmVkIHJlYWRvdXRzIG9mIGZpbmUgYW5kIGNvYXJzZSBzZWdtZW50cywgZmFpbHVyZSB0
byByZWFkIFBBTF9QUkVDX0RBVEEKCi06NjQ6IENIRUNLOkJSQUNFUzogQmxhbmsgbGluZXMgYXJl
bid0IG5lY2Vzc2FyeSBiZWZvcmUgYSBjbG9zZSBicmFjZSAnfScKIzY0OiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmM6MTUwNDoKKworfQoKdG90YWw6IDAg
ZXJyb3JzLCAxIHdhcm5pbmdzLCAxIGNoZWNrcywgMTc0IGxpbmVzIGNoZWNrZWQKZGE2MzJjOTRm
MmU2IEZPUl9URVNUSU5HX09OTFk6IFByaW50IHJnYiB2YWx1ZXMgb2YgaHcgYW5kIHN3IGJsb2Jz
Ci06MTg6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzE4OiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmM6MTUzMToKKwlE
Uk1fREVCVUdfS01TKCJod19sdXQtPnJlZD0weCV4IHN3X2x1dC0+cmVkPTB4JXggaHdfbHV0LT5i
bHVlPTB4JXggc3dfbHV0LT5ibHVlPTB4JXggaHdfbHV0LT5ncmVlbj0weCV4IHN3X2x1dC0+Z3Jl
ZW49MHgleCIsIGx1dDItPnJlZCwgbHV0MS0+cmVkLCBsdXQyLT5ibHVlLCBsdXQxLT5ibHVlLCBs
dXQyLT5ncmVlbiwgbHV0MS0+Z3JlZW4pOwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAw
IGNoZWNrcywgOCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
