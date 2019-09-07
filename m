Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F84AC3B7
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 02:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A116E121;
	Sat,  7 Sep 2019 00:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 572006E118;
 Sat,  7 Sep 2019 00:43:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46327A47DF;
 Sat,  7 Sep 2019 00:43:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 07 Sep 2019 00:43:54 -0000
Message-ID: <20190907004354.31240.5700@emeril.freedesktop.org>
References: <20190907002143.22591-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190907002143.22591-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_cdclk_consolidation_and_rework_for_BXT-TGL?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogY2RjbGsgY29uc29saWRhdGlvbiBhbmQgcmV3
b3JrIGZvciBCWFQtVEdMClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82NjM2NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjYzN2RlZGRhNDAzMCBkcm0vaTkxNTogQ29uc29saWRhdGUg
Ynh0L2NubC9pY2wgY2RjbGsgcmVhZG91dAotOjcyOiBDSEVDSzpDQU1FTENBU0U6IEF2b2lkIENh
bWVsQ2FzZTogPENOTF9EU1NNX0NEQ0xLX1BMTF9SRUZDTEtfMjRNSHo+CiM3MjogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jOjEyNzI6CisJaWYgKEk5MTVf
UkVBRChTS0xfRFNTTSkgJiBDTkxfRFNTTV9DRENMS19QTExfUkVGQ0xLXzI0TUh6KQoKdG90YWw6
IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgNDEyIGxpbmVzIGNoZWNrZWQKMWNjYjE0
OTJmMDk2IGRybS9pOTE1OiBVc2UgbGl0ZXJhbCByZXByZXNlbnRhdGlvbiBvZiBjZGNsayB0YWJs
ZXMKNGNmMDI5M2Q5NzNjIGRybS9pOTE1OiBDb21iaW5lIGJ4dF9zZXRfY2RjbGsgYW5kIGNubF9z
ZXRfY2RjbGsKOTM4NDhlYjlmYmVlIGRybS9pOTE1OiBLaWxsIGNubF9zYW5pdGl6ZV9jZGNsaygp
CmMzYzVjZDgzYmYwNCBkcm0vaTkxNTogQ29uc29saWRhdGUge2J4dCwgY25sLCBpY2x9X3VuaW5p
dF9jZGNsawo3YmYwMjA4NTdjNDEgZHJtL2k5MTU6IEFkZCBjYWxjX3ZvbHRhZ2VfbGV2ZWwgZGlz
cGxheSB2ZnVuYwo4ZDA3YTQ1NzEzNWYgZHJtL2k5MTU6IEVuaGFuY2UgY2RjbGsgc2FuaXRpemF0
aW9uCmY1OWUxYjEzZTI0OCBkcm0vaTkxNTogQ29uc29saWRhdGUge2J4dCwgY25sLCBpY2x9X2lu
aXRfY2RjbGsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
