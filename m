Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD576D660
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 23:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71FE06E37F;
	Thu, 18 Jul 2019 21:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D15966E37F;
 Thu, 18 Jul 2019 21:23:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C77F5A41FB;
 Thu, 18 Jul 2019 21:23:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Thu, 18 Jul 2019 21:23:04 -0000
Message-ID: <20190718212304.17740.14036@emeril.freedesktop.org>
References: <20190718204912.24149-1-rodrigo.vivi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190718204912.24149-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_We_don=27t_need_display=27s_suspend/resume_operation?=
 =?utf-8?q?s_when_!HAS=5FDISPLAY_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFdlIGRvbid0IG5lZWQgZGlz
cGxheSdzIHN1c3BlbmQvcmVzdW1lIG9wZXJhdGlvbnMgd2hlbiAhSEFTX0RJU1BMQVkgKHJldjUp
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDgzOS8K
U3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10
aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1OiBXZSBkb24ndCBuZWVk
IGRpc3BsYXkncyBzdXNwZW5kL3Jlc3VtZSBvcGVyYXRpb25zIHdoZW4gIUhBU19ESVNQTEFZCitk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYzo0NDQwOjY6
IHdhcm5pbmc6IHN5bWJvbCAnaHN3X2VuYWJsZV9wYzgnIHdhcyBub3QgZGVjbGFyZWQuIFNob3Vs
ZCBpdCBiZSBzdGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYzo0NDU2OjY6IHdhcm5pbmc6IHN5bWJvbCAnaHN3X2Rpc2FibGVfcGM4JyB3YXMg
bm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPworZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmM6NDU1Njo2OiB3YXJuaW5nOiBzeW1ib2wgJ2J4
dF9kaXNwbGF5X2NvcmVfaW5pdCcgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRp
Yz8KK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jOjQ1
ODg6Njogd2FybmluZzogc3ltYm9sICdieHRfZGlzcGxheV9jb3JlX3VuaW5pdCcgd2FzIG5vdCBk
ZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jOjQ2Nzk6Njogd2FybmluZzogc3ltYm9sICdpY2xfZGlz
cGxheV9jb3JlX2luaXQnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Citk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYzo0NzE1OjY6
IHdhcm5pbmc6IHN5bWJvbCAnaWNsX2Rpc3BsYXlfY29yZV91bmluaXQnIHdhcyBub3QgZGVjbGFy
ZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYzo3MjY6Njogd2FybmluZzogc3ltYm9sICdnZW45X3Nhbml0aXpl
X2RjX3N0YXRlJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPworZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmM6Nzg2OjY6IHdhcm5p
bmc6IHN5bWJvbCAnYnh0X2VuYWJsZV9kYzknIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBi
ZSBzdGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYzo4MDE6Njogd2FybmluZzogc3ltYm9sICdieHRfZGlzYWJsZV9kYzknIHdhcyBub3QgZGVj
bGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuYzo4NTU6Njogd2FybmluZzogc3ltYm9sICdnZW45X2VuYWJs
ZV9kYzUnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/Citkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYzo4Nzk6Njogd2FybmluZzog
c3ltYm9sICdza2xfZW5hYmxlX2RjNicgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0
YXRpYz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
