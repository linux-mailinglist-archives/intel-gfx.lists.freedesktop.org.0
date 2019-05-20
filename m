Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB8024467
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 01:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C25A8891C2;
	Mon, 20 May 2019 23:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3CB3891C2;
 Mon, 20 May 2019 23:36:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D812FA0019;
 Mon, 20 May 2019 23:36:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Mon, 20 May 2019 23:36:00 -0000
Message-ID: <20190520233600.785.76677@emeril.freedesktop.org>
References: <20190520232541.16085-1-khaled.almahallawy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190520232541.16085-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Fix_the_interpretation_of_MAX=5FPRE-EMPHASIS=5FR?=
 =?utf-8?q?EACHED_bit_inorder_to_pass_Link_Layer_compliance_test_number_40?=
 =?utf-8?b?MC4zLjEuMTU=?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCB0aGUgaW50ZXJwcmV0
YXRpb24gb2YgTUFYX1BSRS1FTVBIQVNJU19SRUFDSEVEIGJpdCBpbm9yZGVyIHRvIHBhc3MgTGlu
ayBMYXllciBjb21wbGlhbmNlIHRlc3QgbnVtYmVyIDQwMC4zLjEuMTUKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwODgwLwpTdGF0ZSA6IHdhcm5pbmcK
Cj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKYmM2NjY0YTI1
OTI1IGRybS9pOTE1OiBGaXggdGhlIGludGVycHJldGF0aW9uIG9mIE1BWF9QUkUtRU1QSEFTSVNf
UkVBQ0hFRCBiaXQgaW5vcmRlciB0byBwYXNzIExpbmsgTGF5ZXIgY29tcGxpYW5jZSB0ZXN0IG51
bWJlciA0MDAuMy4xLjE1Ci06NzogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2li
bGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFy
cyBwZXIgbGluZSkKIzc6IApBY2NvcmRpbmcgdG8gRFAgMS40IHN0YW5kYXJkLCBpZiB0aGUgc291
cmNlIHN1cHBvcnRzIGZvdXIgcHJlLWVtcGhhc2lzIGxldmVscywgdGhlbiB0aGUgc291cmNlIHNo
YWxsIHNldCB0aGUgYml0IE1BWF9QUkUtRU1QSEFTSVNfUkVBQ0hFRCA9IDEgb25seSB3aGVuIHRy
YXNtaXR0ZXIgcHJvZ3JhbW1lZCBQUkUtRU1QSEFTSVNfU0VUIGZpZWxkIChiaXRzIDQ6MykgdG8g
MTFiIChMZXZlbCAzKS4gUHJlLWVtcGhhc2lzIGxldmVsIDMgaXMgdGhlIG1heGltdW0gcHJlLWVt
cGhhc2lzIGxldmVsIHRoYXQgdGhlIHNvdXJjZSBzdXBwb3J0cy4KCnRvdGFsOiAwIGVycm9ycywg
MSB3YXJuaW5ncywgMCBjaGVja3MsIDM0IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
