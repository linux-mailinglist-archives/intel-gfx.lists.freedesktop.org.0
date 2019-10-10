Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA54D1E7A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 04:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FADC6EA82;
	Thu, 10 Oct 2019 02:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E6C06EA82;
 Thu, 10 Oct 2019 02:32:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87801A363E;
 Thu, 10 Oct 2019 02:32:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 10 Oct 2019 02:32:47 -0000
Message-ID: <20191010023247.31953.35920@emeril.freedesktop.org>
References: <20191010010356.31413-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191010010356.31413-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/vbt=3A_Handle_generic_DTD_block?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdmJ0OiBIYW5kbGUgZ2VuZXJp
YyBEVEQgYmxvY2sKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzY3ODExLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0
Y2ggb3JpZ2luL2RybS10aXAKNDA4MWU4MzIwZTljIGRybS9pOTE1L3ZidDogSGFuZGxlIGdlbmVy
aWMgRFREIGJsb2NrCi06NDY6IFdBUk5JTkc6VU5ORUNFU1NBUllfRUxTRTogZWxzZSBpcyBub3Qg
Z2VuZXJhbGx5IHVzZWZ1bCBhZnRlciBhIGJyZWFrIG9yIHJldHVybgojNDY6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jOjIyOToKKwkJcmV0dXJuIE5VTEw7
CisJfSBlbHNlIHsKCi06ODQ6IENIRUNLOkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0IHVzZSBt
dWx0aXBsZSBibGFuayBsaW5lcwojODQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5jOjI2NzoKKworCgotOjE4MzogQ0hFQ0s6TElORV9TUEFDSU5HOiBQbGVh
c2UgZG9uJ3QgdXNlIG11bHRpcGxlIGJsYW5rIGxpbmVzCiMxODM6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaDo4NDI6CisKKwoKdG90YWw6IDAgZXJy
b3JzLCAxIHdhcm5pbmdzLCAyIGNoZWNrcywgMTU2IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
