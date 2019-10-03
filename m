Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF67CA042
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 16:25:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9D86E9F8;
	Thu,  3 Oct 2019 14:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE8196E9F6;
 Thu,  3 Oct 2019 14:25:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7DF5A011A;
 Thu,  3 Oct 2019 14:25:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 03 Oct 2019 14:25:14 -0000
Message-ID: <20191003142514.3223.36059@emeril.freedesktop.org>
References: <20191002140808.12000-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191002140808.12000-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/tgl=3A_Add_the_Thunderbolt_PLL_divider_values_=28re?=
 =?utf-8?b?djMp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdGdsOiBBZGQgdGhlIFRodW5k
ZXJib2x0IFBMTCBkaXZpZGVyIHZhbHVlcyAocmV2MykKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3NDk4LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1h
cnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMmE3OWQxYzYwNWI0IGRybS9p
OTE1L3RnbDogQWRkIHRoZSBUaHVuZGVyYm9sdCBQTEwgZGl2aWRlciB2YWx1ZXMKLTozMzogQ0hF
Q0s6Q0FNRUxDQVNFOiBBdm9pZCBDYW1lbENhc2U6IDx0Z2xfdGJ0X3BsbF8xOV8yTUh6X3ZhbHVl
cz4KIzMzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmM6MjUyMzoKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2tsX3dycGxsX3BhcmFtcyB0Z2xfdGJ0X3Bs
bF8xOV8yTUh6X3ZhbHVlcyA9IHsKCi06Mzk6IENIRUNLOkNBTUVMQ0FTRTogQXZvaWQgQ2FtZWxD
YXNlOiA8dGdsX3RidF9wbGxfMjRNSHpfdmFsdWVzPgojMzk6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYzoyNTI5Ogorc3RhdGljIGNvbnN0IHN0cnVj
dCBza2xfd3JwbGxfcGFyYW1zIHRnbF90YnRfcGxsXzI0TUh6X3ZhbHVlcyA9IHsKCi06NzQ6IENI
RUNLOkNBTUVMQ0FTRTogQXZvaWQgQ2FtZWxDYXNlOiA8aWNsX3RidF9wbGxfMTlfMk1Iel92YWx1
ZXM+CiM3NDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jOjI1ODI6CisJCQkqcGxsX3BhcmFtcyA9IGljbF90YnRfcGxsXzE5XzJNSHpfdmFsdWVzOwoK
LTo3NzogQ0hFQ0s6Q0FNRUxDQVNFOiBBdm9pZCBDYW1lbENhc2U6IDxpY2xfdGJ0X3BsbF8yNE1I
el92YWx1ZXM+CiM3NzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jOjI1ODU6CisJCQkqcGxsX3BhcmFtcyA9IGljbF90YnRfcGxsXzI0TUh6X3ZhbHVl
czsKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgNCBjaGVja3MsIDU0IGxpbmVzIGNoZWNr
ZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
