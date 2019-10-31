Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9634CEAE9D
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 12:17:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB856EC14;
	Thu, 31 Oct 2019 11:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EAFF6EC14;
 Thu, 31 Oct 2019 11:17:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58A72A0096;
 Thu, 31 Oct 2019 11:17:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 31 Oct 2019 11:17:46 -0000
Message-ID: <20191031111746.29577.55379@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191031105929.11594-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191031105929.11594-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B1/4=5D_drm/i915=3A_s/icl=5Fis=5Fnv12=5Fy?=
 =?utf-8?q?=5Fplane/icl=5Fis=5Fsdr=5Fy=5Fplane/?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTU6IHMvaWNsX2lzX252MTJfeV9wbGFuZS9pY2xfaXNfc2RyX3lfcGxhbmUvClVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODgxNS8KU3RhdGUg
OiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5z
aAogIENBTEwgICAgc2NyaXB0cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQgIG9i
anRvb2wKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAogIENDICAgICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaC5zCkluIGZpbGUgaW5jbHVk
ZWQgZnJvbSA8Y29tbWFuZC1saW5lPjowOjA6Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuaDogSW4gZnVuY3Rpb24g4oCYaWNsX3Nkcl95X3BsYW5lX21hc2vigJk6
Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaDozNzo2OiBlcnJv
cjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYSU5URUxfR0VO4oCZOyBkaWQg
eW91IG1lYW4g4oCYSU5URUxfQlNN4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNs
YXJhdGlvbl0KICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKICAgICAgXn5+fn5+fn5+
CiAgICAgIElOVEVMX0JTTQpjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9y
cwpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI5MzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmgucycgZmFpbGVkCm1ha2VbNV06ICoq
KiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaC5zXSBFcnJvciAx
CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheScgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwOTogcmVjaXBl
IGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1JyBmYWlsZWQKbWFrZVszXTogKioqIFtk
cml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwOTog
cmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFpbGVkCm1ha2VbMl06ICoqKiBb
ZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA5OiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2RyaXZlcnMv
Z3B1XSBFcnJvciAyCk1ha2VmaWxlOjE2NDk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBm
YWlsZWQKbWFrZTogKioqIFtkcml2ZXJzXSBFcnJvciAyCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
