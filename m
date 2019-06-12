Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C02B42EC3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 20:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39918981B;
	Wed, 12 Jun 2019 18:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB2908981B;
 Wed, 12 Jun 2019 18:35:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D224CA3C0D;
 Wed, 12 Jun 2019 18:35:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 12 Jun 2019 18:35:31 -0000
Message-ID: <20190612183531.21001.24552@emeril.freedesktop.org>
References: <20190612130801.2085-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190612130801.2085-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/4=5D_drm/i915=3A_Don=27t_clob?=
 =?utf-8?q?ber_M/N_values_during_fastset_check_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
NF0gZHJtL2k5MTU6IERvbid0IGNsb2JiZXIgTS9OIHZhbHVlcyBkdXJpbmcgZmFzdHNldCBjaGVj
ayAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzYxOTYwLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2gg
b3JpZ2luL2RybS10aXAKZjMxYjIzY2MxYjFhIGRybS9pOTE1OiBEb24ndCBjbG9iYmVyIE0vTiB2
YWx1ZXMgZHVyaW5nIGZhc3RzZXQgY2hlY2sKNTFjZTU3ODEyZDFjIGRybS9pOTE1OiBDb25zdGlm
eSBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKCkKYjdiOWQ5ZmYxYWE5IGRybS9pOTE1OiBNYWtl
IHBpcGVfY29uZmlnX2VycigpIHZzLiBmYXN0c2V0IGxlc3MgY29uZnVzaW5nCi06MTMzOiBXQVJO
SU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMxMzM6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYzoxMjQyNjoKKwkJCQkgICAgICJ1bmFibGUg
dG8gdmVyaWZ5IHdoZXRoZXIgc3RhdGUgbWF0Y2hlcyBleGFjdGx5LCBmb3JjaW5nIG1vZGVzZXQg
KGV4cGVjdGVkICVzLCBmb3VuZCAlcylcbiIsIFwKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5n
cywgMCBjaGVja3MsIDI1NiBsaW5lcyBjaGVja2VkCjBiZGVhNjc3MDYxZCBkcm0vaTkxNTogRHJv
cCB0aGUgX0lOQ09NUExFVEUgZm9yIGhhc19pbmZvZnJhbWUKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
