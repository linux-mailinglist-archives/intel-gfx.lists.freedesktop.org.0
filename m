Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FC138D3D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 16:36:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66AD589B48;
	Fri,  7 Jun 2019 14:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B48FA89B48;
 Fri,  7 Jun 2019 14:36:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD70EA010A;
 Fri,  7 Jun 2019 14:36:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 07 Jun 2019 14:36:24 -0000
Message-ID: <20190607143624.32140.41985@emeril.freedesktop.org>
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Legacy_mmio_accessor_macro_pruning?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogTGVnYWN5IG1taW8gYWNjZXNzb3IgbWFjcm8g
cHJ1bmluZwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
NjE3NzIvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBv
cmlnaW4vZHJtLXRpcAowNDNjNjExNTNkYjQgZHJtL2k5MTU6IEVsaW1pbmF0ZSB1bnVzZWQgbW1p
byBhY2Nlc3NvcnMKMTAzNzY4YmEwYzI2IGRybS9pOTE1OiBDb252ZXJ0IGk5MTVfcmVnX3JlYWRf
aW9jdGwgdG8gdXNlIGV4cGxpY2l0IG1taW8gYWNjZXNzb3JzCmJiOTZkMTgyOTcyNSBkcm0vaTkx
NTogQ29udmVydCBpY2xfZ2V0X3N0b2xlbl9yZXNlcnZlZCB0byB1bmNvcmUgbW1pbyBhY2Nlc3Nv
cnMKZjlkMzhlYmI2ODEzIGRybS9pOTE1OiBDb252ZXJ0IGdlbV9yZWNvcmRfZmVuY2VzIHRvIHVu
Y29yZSBtbWlvIGFjY2Vzc29ycwplZTdmODUwZTdmNTkgZHJtL2k5MTU6IENvbnZlcnQgaW50ZWxf
cmVhZF93bV9sYXRlbmN5IHRvIHVuY29yZSBtbWlvIGFjY2Vzc29ycwpkODYxZGY3MWIwNDkgZHJt
L2k5MTU6IFJlbW92ZSBJOTE1X1JFQUQ2NCBhbmQgSTkxNV9SRUFENjRfMzJ4Mgo0NjAzYWJiMjIw
ZTQgZHJtL2k5MTU6IFJlbW92ZSBJOTE1X1JFQUQ4Ci06NjE6IFdBUk5JTkc6TElORV9TUEFDSU5H
OiBNaXNzaW5nIGEgYmxhbmsgbGluZSBhZnRlciBkZWNsYXJhdGlvbnMKIzYxOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jcnQuYzo2ODI6CisJCXUzMiBwaXBlY29uZiA9IGludGVs
X3VuY29yZV9yZWFkKHVuY29yZSwgcGlwZWNvbmZfcmVnKTsKKwkJaW50ZWxfdW5jb3JlX3dyaXRl
KHVuY29yZSwKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDEyNCBsaW5l
cyBjaGVja2VkCmRhOTNmN2ZkNmJlOSBkcm0vaTkxNTogUmVtb3ZlIEk5MTVfUE9TVElOR19SRUFE
X0ZXCjZmYjJlOTkwZjdiZCBkcm0vaTkxNTogUmVtb3ZlIFBPU1RJTkdfUkVBRDE2CmVjZWQ5YjZl
OTc1MyBkcm0vaTkxNTogUmVtb3ZlIEk5MTVfV1JJVEVfTk9UUkFDRQoyNTM4ZTc3NTVmYWQgZHJt
L2k5MTU6IFJlbW92ZSBJOTE1X1JFQURfTk9UUkFDRQotOjExODogV0FSTklORzpMT05HX0xJTkU6
IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMTE4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcC5jOjEwOTA6CisjZGVmaW5lIEMgKCgoc3RhdHVzID0gaW50ZWxfdW5jb3JlX3Jl
YWRfbm90cmFjZSgmaTkxNS0+dW5jb3JlLCBjaF9jdGwpKSAmIERQX0FVWF9DSF9DVExfU0VORF9C
VVNZKSA9PSAwKQoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTk1IGxp
bmVzIGNoZWNrZWQKMDBkN2FiMWFiYjBiIGRybS9pOTE1OiBSZW1vdmUgSTkxNV9SRUFEMTYgYW5k
IEk5MTVfV1JJVEUxNgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
