Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4174F52F9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 18:53:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097396FA36;
	Fri,  8 Nov 2019 17:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EF786FA36;
 Fri,  8 Nov 2019 17:53:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BA2CA0096;
 Fri,  8 Nov 2019 17:53:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2019 17:53:05 -0000
Message-ID: <157323558530.6461.74236635165388714@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191107151725.10507-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191107151725.10507-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Gamma_cleanups_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEdhbW1hIGNsZWFudXBzIChy
ZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjkx
MzYvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9k
cm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC42LjAKQ29tbWl0OiBkcm06IElubGluZSBkcm1fY29s
b3JfbHV0X2V4dHJhY3QoKQorLi9pbmNsdWRlL2RybS9kcm1fY29sb3JfbWdtdC5oOjQ4OjI4OiB3
YXJuaW5nOiBzaGlmdCBjb3VudCBpcyBuZWdhdGl2ZSAoLTEpCisuL2luY2x1ZGUvZHJtL2RybV9j
b2xvcl9tZ210Lmg6NDg6Mjg6IHdhcm5pbmc6IHNoaWZ0IGNvdW50IGlzIG5lZ2F0aXZlICgtMSkK
Ky4vaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21nbXQuaDo0ODoyODogd2FybmluZzogc2hpZnQgY291
bnQgaXMgbmVnYXRpdmUgKC0xKQorLi9pbmNsdWRlL2RybS9kcm1fY29sb3JfbWdtdC5oOjQ4OjI4
OiB3YXJuaW5nOiBzaGlmdCBjb3VudCBpcyBuZWdhdGl2ZSAoLTEpCisuL2luY2x1ZGUvZHJtL2Ry
bV9jb2xvcl9tZ210Lmg6NDg6Mjg6IHdhcm5pbmc6IHNoaWZ0IGNvdW50IGlzIG5lZ2F0aXZlICgt
MSkKKy4vaW5jbHVkZS9kcm0vZHJtX2NvbG9yX21nbXQuaDo0ODoyODogd2FybmluZzogc2hpZnQg
Y291bnQgaXMgbmVnYXRpdmUgKC0xKQoKQ29tbWl0OiBkcm0vaTkxNTogUG9saXNoIENIViAubG9h
ZF9sdXRzKCkgYSBiaXQKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFBvbGlzaCBDSFYgQ0dNIENT
QyBsb2FkaW5nCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBBZGQgaTl4eF9sdXRfOCgpCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBDbGVhbiB1cCBpOXh4X2xvYWRfbHV0c19pbnRlcm5hbCgpCk9r
YXkhCgpDb21taXQ6IGRybS9pOTE1OiBTcGxpdCBpOXh4X3JlYWRfbHV0XzgoKSB0byBnbWNoIHZz
LiBpbGsgdmFyaWFudHMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IHMvYmxvYl9kYXRhL2x1dC8K
T2theSEKCkNvbW1pdDogZHJtL2k5MTU6IHMvY2h2X3JlYWRfY2dtX2x1dC9jaHZfcmVhZF9jZ21f
Z2FtbWEvCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBDbGVhbiB1cCBpbnRlZ2VyIHR5cGVzIGlu
IGNvbG9yIGNvZGUKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFJlZmFjdG9yIExVVCByZWFkIGZ1
bmN0aW9ucwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRml4IHJlYWRvdXQgb2YgUElQRUdDTUFY
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBQYXNzIHRoZSBjcnRjIHRvIHRoZSBsb3cgbGV2ZWwg
cmVhZF9sdXQoKSBmdW5jcwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
