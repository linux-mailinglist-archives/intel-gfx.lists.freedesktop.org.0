Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04827C2D9E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 08:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 535F36E0D1;
	Tue,  1 Oct 2019 06:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A125C6E0D1;
 Tue,  1 Oct 2019 06:56:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96C5AA0093;
 Tue,  1 Oct 2019 06:56:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Tue, 01 Oct 2019 06:56:28 -0000
Message-ID: <20191001065628.21991.17116@emeril.freedesktop.org>
References: <20191001063128.10566-1-swati2.sharma@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191001063128.10566-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/color=3A_fix_broken_display_in_icl+?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvY29sb3I6IGZpeCBicm9rZW4g
ZGlzcGxheSBpbiBpY2wrClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82NzQyOS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjVkOWQyN2U2ZWNjZiBkcm0vaTkxNS9jb2xvcjogZml4IGJy
b2tlbiBkaXNwbGF5IGluIGljbCsKLTozMTogV0FSTklORzpTVVNQRUNUX0NPREVfSU5ERU5UOiBz
dXNwZWN0IGNvZGUgaW5kZW50IGZvciBjb25kaXRpb25hbCBzdGF0ZW1lbnRzICg4LCAyNCkKIzMx
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxMDUz
MToKKwlpZiAoKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgKHBpcGVfY29uZmlnLT5nYW1t
YV9tb2RlICYgUE9TVF9DU0NfR0FNTUFfRU5BQkxFKSkgfHwKWy4uLl0KKwkJCWludGVsX2NvbG9y
X2dldF9jb25maWcocGlwZV9jb25maWcpOwoKLTozMTogQ0hFQ0s6VU5ORUNFU1NBUllfUEFSRU5U
SEVTRVM6IFVubmVjZXNzYXJ5IHBhcmVudGhlc2VzIGFyb3VuZCAncGlwZV9jb25maWctPmdhbW1h
X2VuYWJsZScKIzMxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYzoxMDUzMToKKwlpZiAoKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEgJiYgKHBpcGVf
Y29uZmlnLT5nYW1tYV9tb2RlICYgUE9TVF9DU0NfR0FNTUFfRU5BQkxFKSkgfHwKKwkgICAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA5ICYmIChwaXBlX2NvbmZpZy0+Z2FtbWFfZW5hYmxlKSkpCgot
OjMyOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2gg
b3BlbiBwYXJlbnRoZXNpcwojMzI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jOjEwNTMyOgorCWlmICgoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAm
JiAocGlwZV9jb25maWctPmdhbW1hX21vZGUgJiBQT1NUX0NTQ19HQU1NQV9FTkFCTEUpKSB8fAor
CSAgIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgJiYgKHBpcGVfY29uZmlnLT5nYW1tYV9lbmFi
bGUpKSkKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMiBjaGVja3MsIDEwIGxpbmVzIGNo
ZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
