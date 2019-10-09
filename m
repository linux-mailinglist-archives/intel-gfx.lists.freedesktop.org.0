Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4010ED08C1
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 09:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900C26E917;
	Wed,  9 Oct 2019 07:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0B8D6E917;
 Wed,  9 Oct 2019 07:47:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA7D1A3DED;
 Wed,  9 Oct 2019 07:47:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Wed, 09 Oct 2019 07:47:42 -0000
Message-ID: <20191009074742.31954.91635@emeril.freedesktop.org>
References: <20191009065542.27415-1-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191009065542.27415-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_fix_broken_state_checker_and_enable_state_checker_for_icl+_?=
 =?utf-8?b?KHJldjIp?=
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
ZCBlbmFibGUgc3RhdGUgY2hlY2tlciBmb3IgaWNsKyAocmV2MikKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3NTg2LwpTdGF0ZSA6IHdhcm5pbmcKCj09
IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKN2QyMWE3OWNlYTQx
IGRybS9pOTE1L2NvbG9yOiBmaXggYnJva2VuIGdhbW1hIHN0YXRlLWNoZWNrZXIgZHVyaW5nIGJv
b3QKLToxODogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2Ny
aXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIp
JyAtIGllOiAnY29tbWl0IDFiODU4ODc0MWZkYyAoIlJldmVydCAiZHJtL2k5MTUvY29sb3I6IEV4
dHJhY3QgaWNsX3JlYWRfbHV0cygpIiIpJwojMTg6IApUaGlzIGZpeCBpcyBpbmRlcGVuZGVudCBm
cm9tIHRoZSByZXZlcnQgMWI4NTg4NzQxZmRjICgiUmV2ZXJ0Cgp0b3RhbDogMSBlcnJvcnMsIDAg
d2FybmluZ3MsIDAgY2hlY2tzLCA1MiBsaW5lcyBjaGVja2VkCjViNjgzODRkYjUzYSBkcm0vaTkx
NS9jb2xvcjogbW92ZSBjaGVjayBvZiBnYW1tYV9lbmFibGUgdG8gc3BlY2lmaWMgZnVuYy9wbGF0
Zm9ybQoyZTg0MWEwNTgzNTggZHJtL2k5MTUvY29sb3I6IEV4dHJhY3QgaWNsX3JlYWRfbHV0cygp
Ci06MzM6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBj
b21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMz
MzogCiAgICAtcmVtb3ZlZCByZWFkb3V0cyBvZiBmaW5lIGFuZCBjb2Fyc2Ugc2VnbWVudHMsIGZh
aWx1cmUgdG8gcmVhZCBQQUxfUFJFQ19EQVRBCgotOjY0OiBDSEVDSzpCUkFDRVM6IEJsYW5rIGxp
bmVzIGFyZW4ndCBuZWNlc3NhcnkgYmVmb3JlIGEgY2xvc2UgYnJhY2UgJ30nCiM2NDogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jOjE0OTc6CisKK30KCnRv
dGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMSBjaGVja3MsIDE3NCBsaW5lcyBjaGVja2VkCjhj
M2Q5ZDZhNGIyYiBGT1JfVEVTVElOR19PTkxZOiBQcmludCByZ2IgdmFsdWVzIG9mIGh3IGFuZCBz
dyBibG9icwotOjE4OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJz
CiMxODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jOjE1
MjQ6CisJRFJNX0RFQlVHX0tNUygiaHdfbHV0LT5yZWQ9MHgleCBzd19sdXQtPnJlZD0weCV4IGh3
X2x1dC0+Ymx1ZT0weCV4IHN3X2x1dC0+Ymx1ZT0weCV4IGh3X2x1dC0+Z3JlZW49MHgleCBzd19s
dXQtPmdyZWVuPTB4JXgiLCBsdXQyLT5yZWQsIGx1dDEtPnJlZCwgbHV0Mi0+Ymx1ZSwgbHV0MS0+
Ymx1ZSwgbHV0Mi0+Z3JlZW4sIGx1dDEtPmdyZWVuKTsKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJu
aW5ncywgMCBjaGVja3MsIDggbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
