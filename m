Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B8F7CA29
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 19:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF636E13B;
	Wed, 31 Jul 2019 17:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8488089D7F;
 Wed, 31 Jul 2019 17:19:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7EDEAA0114;
 Wed, 31 Jul 2019 17:19:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Pietrasiewicz" <andrzej.p@collabora.com>
Date: Wed, 31 Jul 2019 17:19:00 -0000
Message-ID: <20190731171900.8835.61902@emeril.freedesktop.org>
References: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
X-Patchwork-Hint: ignore
In-Reply-To: <65481afa-1104-4ee9-e53d-f2732a10d4b9@baylibre.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/13=5D_drm/amdgpu=3A_Provide_ddc_symli?=
 =?utf-8?q?nk_in_dm_connector=27s_sysfs_directory?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEz
XSBkcm0vYW1kZ3B1OiBQcm92aWRlIGRkYyBzeW1saW5rIGluIGRtIGNvbm5lY3RvcidzIHN5c2Zz
IGRpcmVjdG9yeQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNjQ1MTAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9y
aWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vYW1kZ3B1OiBQ
cm92aWRlIGRkYyBzeW1saW5rIGluIGRtIGNvbm5lY3RvcidzIHN5c2ZzIGRpcmVjdG9yeQotZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvLi4vZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmM6
NTMyOToyNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1Ly4uL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jOjUzMjk6
Mjc6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS8uLi9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYzo1MzMzOjI3OiB3
YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvLi4vZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmM6NTMzMzoyNzogd2Fybmlu
ZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1Ly4uL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jOjUzMzA6Mjc6IHdhcm5pbmc6IGV4
cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS8u
Li9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYzo1MzMwOjI3OiB3YXJuaW5nOiBleHByZXNz
aW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvLi4vZGlz
cGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmM6NTMzNDoyNzogd2FybmluZzogZXhwcmVzc2lvbiB1
c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1Ly4uL2Rpc3BsYXkv
YW1kZ3B1X2RtL2FtZGdwdV9kbS5jOjUzMzQ6Mjc6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcg
c2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9yYWRlb246IEVsaW1pbmF0ZSBwb3NzaWJsZSB1c2Ug
b2YgYW4gdW5pbml0aWFsaXplZCB2YXJpYWJsZQpPa2F5IQoKQ29tbWl0OiBkcm0vZXh5bm9zOiBQ
cm92aWRlIGRkYyBzeW1saW5rIGluIGNvbm5lY3RvcidzIHN5c2ZzCk9rYXkhCgpDb21taXQ6IGRy
bTogcm9ja2NoaXA6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gcmszMDY2X2hkbWkgc3lzZnMgZGly
ZWN0b3J5Ck9rYXkhCgpDb21taXQ6IGRybTogcm9ja2NoaXA6IFByb3ZpZGUgZGRjIHN5bWxpbmsg
aW4gaW5ub19oZG1pIHN5c2ZzIGRpcmVjdG9yeQpPa2F5IQoKQ29tbWl0OiBkcm0vbXNtL2hkbWk6
IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gaGRtaSBjb25uZWN0b3Igc3lzZnMgZGlyZWN0b3J5Ck9r
YXkhCgpDb21taXQ6IGRybS9tZWRpYXRlazogUHJvdmlkZSBkZGMgc3ltbGluayBpbiBoZG1pIGNv
bm5lY3RvciBzeXNmcyBkaXJlY3RvcnkKT2theSEKCkNvbW1pdDogZHJtL3RlZ3JhOiBQcm92aWRl
IGRkYyBzeW1saW5rIGluIG91dHB1dCBjb25uZWN0b3Igc3lzZnMgZGlyZWN0b3J5Ck9rYXkhCgpD
b21taXQ6IGRybS92YzQ6IFByb3ZpZGUgZGRjIHN5bWxpbmsgaW4gY29ubmVjdG9yIHN5c2ZzIGRp
cmVjdG9yeQpPa2F5IQoKQ29tbWl0OiBkcm06IHp0ZTogUHJvdmlkZSBkZGMgc3ltbGluayBpbiBo
ZG1pIGNvbm5lY3RvciBzeXNmcyBkaXJlY3RvcnkKT2theSEKCkNvbW1pdDogZHJtOiB6dGU6IFBy
b3ZpZGUgZGRjIHN5bWxpbmsgaW4gdmdhIGNvbm5lY3RvciBzeXNmcyBkaXJlY3RvcnkKT2theSEK
CkNvbW1pdDogZHJtL3RpbGNkYzogUHJvdmlkZSBkZGMgc3ltbGluayBpbiBjb25uZWN0b3Igc3lz
ZnMgZGlyZWN0b3J5Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBQcm92aWRlIGRkYyBzeW1saW5r
IGluIGhkbWkgY29ubmVjdG9yIHN5c2ZzIGRpcmVjdG9yeQpPa2F5IQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
