Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD053B2911
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 02:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7981A6F4B7;
	Sat, 14 Sep 2019 00:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D180B6F4B7;
 Sat, 14 Sep 2019 00:18:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAD68A3DED;
 Sat, 14 Sep 2019 00:18:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 14 Sep 2019 00:18:29 -0000
Message-ID: <20190914001829.32423.33467@emeril.freedesktop.org>
References: <20190913232857.389834-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190913232857.389834-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/2=5D_drm/connector=3A_Share_w?=
 =?utf-8?q?ith_non-atomic_drivers_the_function_to_get_the_single_encoder?=
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
Ml0gZHJtL2Nvbm5lY3RvcjogU2hhcmUgd2l0aCBub24tYXRvbWljIGRyaXZlcnMgdGhlIGZ1bmN0
aW9uIHRvIGdldCB0aGUgc2luZ2xlIGVuY29kZXIKVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NzAxLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkg
PT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMDhlMWMxNGVjZGI2IGRybS9jb25u
ZWN0b3I6IFNoYXJlIHdpdGggbm9uLWF0b21pYyBkcml2ZXJzIHRoZSBmdW5jdGlvbiB0byBnZXQg
dGhlIHNpbmdsZSBlbmNvZGVyCjcxYTBiNTQ2MTgzNyBkcm0vY29ubmVjdG9yOiBBbGxvdyBtYXgg
cG9zc2libGUgZW5jb2RlcnMgdG8gYXR0YWNoIHRvIGEgY29ubmVjdG9yCi06NDk3OiBDSEVDSzpN
QUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdjb25uZWN0b3InIC0gcG9zc2li
bGUgc2lkZS1lZmZlY3RzPwojNDk3OiBGSUxFOiBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmg6
MTYxMjoKKyNkZWZpbmUgZHJtX2Nvbm5lY3Rvcl9mb3JfZWFjaF9wb3NzaWJsZV9lbmNvZGVyKGNv
bm5lY3RvciwgZW5jb2RlcikgXAorCWRybV9mb3JfZWFjaF9lbmNvZGVyX21hc2soZW5jb2Rlciwg
KGNvbm5lY3RvciktPmRldiwgXAorCQkJCSAgKGNvbm5lY3RvciktPnBvc3NpYmxlX2VuY29kZXJz
KQoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgMzkwIGxpbmVzIGNoZWNr
ZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
