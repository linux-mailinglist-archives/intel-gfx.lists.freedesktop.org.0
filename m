Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60314102F99
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 23:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63ECC6E88B;
	Tue, 19 Nov 2019 22:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C8EE6E88B;
 Tue, 19 Nov 2019 22:57:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13C6DA363E;
 Tue, 19 Nov 2019 22:57:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Summers, Stuart" <stuart.summers@intel.com>
Date: Tue, 19 Nov 2019 22:57:09 -0000
Message-ID: <157420422907.32168.881170976802493137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191119213032.133992-1-stuart.summers@intel.com>
In-Reply-To: <20191119213032.133992-1-stuart.summers@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/gem=3A_Ensure_aperture_exists_before_setting_domain_to_G?=
 =?utf-8?q?TT?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBFbnN1cmUgYXBlcnR1
cmUgZXhpc3RzIGJlZm9yZSBzZXR0aW5nIGRvbWFpbiB0byBHVFQKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5Njk4LwpTdGF0ZSA6IGZhaWx1cmUKCj09
IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBz
Y3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAg
ICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQVIgICAgICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9idWlsdC1pbi5hCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZG9tYWluLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jOiBJ
biBmdW5jdGlvbiDigJhpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2d0dF9kb21haW7igJk6CmRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYzoxMTU6MzE6IGVycm9yOiDigJhp
OTE14oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBt
ZWFuIOKAmHRvX2k5MTXigJk/CiAgaWYgKCFpOTE1X2dndHRfaGFzX2FwZXJ0dXJlKCZpOTE1LT5n
Z3R0KSkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn4KICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHRvX2k5MTUKZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2RvbWFpbi5jOjExNTozMTogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVw
b3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4Kc2NyaXB0cy9N
YWtlZmlsZS5idWlsZDoyNjU6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG9tYWluLm8nIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4ub10gRXJyb3IgMQpzY3JpcHRzL01ha2VmaWxl
LmJ1aWxkOjUwOTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1JyBmYWls
ZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJyb3IgMgpzY3JpcHRzL01h
a2VmaWxlLmJ1aWxkOjUwOTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFp
bGVkCm1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyCnNjcmlwdHMvTWFrZWZp
bGUuYnVpbGQ6NTA5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUnIGZhaWxlZAptYWtl
WzFdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAyCk1ha2VmaWxlOjE2NTI6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTogKioqIFtkcml2ZXJzXSBFcnJvciAyCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
