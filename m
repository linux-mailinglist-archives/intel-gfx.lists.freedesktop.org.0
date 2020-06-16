Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571091FBD66
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 19:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B976E92A;
	Tue, 16 Jun 2020 17:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1FF96E92A;
 Tue, 16 Jun 2020 17:58:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECA1CA00CC;
 Tue, 16 Jun 2020 17:58:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shaofeng Tang" <shaofeng.tang@intel.com>
Date: Tue, 16 Jun 2020 17:58:39 -0000
Message-ID: <159233031994.4598.17487090911055330606@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
In-Reply-To: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gvt=3A_query_if_vgpu_is_active_via_GETPARAM_IOCTL?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Z0OiBxdWVyeSBpZiB2Z3B1
IGlzIGFjdGl2ZSB2aWEgR0VUUEFSQU0gSU9DVEwKVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzc4NDA5LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkg
PT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0
b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVk
ZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dldHBhcmFtLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jOiBJbiBmdW5j
dGlvbiDigJhpOTE1X2dldHBhcmFtX2lvY3Rs4oCZOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dldHBhcmFtLmM6MTY1OjExOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rp
b24g4oCYaW50ZWxfdmdwdV9hY3RpdmXigJk7IGRpZCB5b3UgbWVhbiDigJhpbnRlbF92dGRfYWN0
aXZl4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICAgdmFsdWUg
PSBpbnRlbF92Z3B1X2FjdGl2ZShpOTE1KTsKICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fgog
ICAgICAgICAgIGludGVsX3Z0ZF9hY3RpdmUKY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRl
ZCBhcyBlcnJvcnMKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyODA6IHJlY2lwZSBmb3IgdGFyZ2V0
ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLm8nIGZhaWxlZAptYWtlWzRdOiAq
KiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0ub10gRXJyb3IgMQpzY3JpcHRz
L01ha2VmaWxlLmJ1aWxkOjQ5NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9p
OTE1JyBmYWlsZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJyb3IgMgpz
Y3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ5NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1
L2RybScgZmFpbGVkCm1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyCnNjcmlw
dHMvTWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUnIGZh
aWxlZAptYWtlWzFdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAyCk1ha2VmaWxlOjE3NjQ6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTogKioqIFtkcml2ZXJzXSBFcnJv
ciAyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
