Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C4E61F7C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 15:21:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D8189A61;
	Mon,  8 Jul 2019 13:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 594EB89A61;
 Mon,  8 Jul 2019 13:21:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E6C0A011B;
 Mon,  8 Jul 2019 13:21:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 08 Jul 2019 13:21:20 -0000
Message-ID: <20190708132120.21808.18350@emeril.freedesktop.org>
References: <20190708125325.16576-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190708125325.16576-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Plane_cdclk_requirements_and_fp16_for_gen4+?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFBsYW5lIGNkY2xrIHJlcXVp
cmVtZW50cyBhbmQgZnAxNiBmb3IgZ2VuNCsKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzYzMzczLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0K
CiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4yCkNvbW1p
dDogZHJtOiBBZGQgZHJtX21vZGVzZXRfbG9ja19hc3NlcnRfaGVsZCgpCk9rYXkhCgpDb21taXQ6
IGRybS9hdG9taWMtaGVscGVyOiBNYWtlIGNydGMgaGVscGVyIGZ1bmNzIG9wdGlvbmFsCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBSZW1vdmUgcG9pbnRsZXNzIHBsYW5lc19jaGFuZ2VkPXRydWUg
YXNzaWdubWVudApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogUmVwbGFjZSBpc19wbGFuYXJfeXV2
X2Zvcm1hdCgpIHdpdGggZHJtX2Zvcm1hdF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyKCkKLU86ZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTQ0OTk6MjE6IHdhcm5p
bmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE0NDk5OjIxOiB3YXJuaW5nOiBleHByZXNzaW9uIHVz
aW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmM6MTQ0OTk6MjE6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxNDQ5OToyMTogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTU6IEFs
bG93IGRvd25zY2FsZSBmYWN0b3Igb2YgPDMuMCBvbiBnbGsrIGZvciBhbGwgZm9ybWF0cwotTzpk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxNDQ5OToyMTogd2Fy
bmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTQ0OTk6MjE6IHdhcm5pbmc6IGV4cHJlc3Npb24g
dXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYzoxNDUwMjoyMTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
K2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE0NTAyOjIxOiB3
YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkxNTog
RXh0cmFjdCBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsoKQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkx
NTogcy9waXBlX2NvbmZpZy9jcnRjX3N0YXRlLyBpbiBpbnRlbF9jcnRjX2F0b21pY19jaGVjaygp
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBTdG9wIHVzaW5nIGRybV9hdG9taWNfaGVscGVyX2No
ZWNrX3BsYW5lcygpCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBBZGQgZGVidWdzIHRvIGRpc3Rp
bmdpdXNoIGEgY2QyeCB1cGRhdGUgZnJvbSBhIGZ1bGwgY2RjbGsgcGxsIHVwZGF0ZQpPa2F5IQoK
Q29tbWl0OiBkcm0vaTkxNTogTWFrZSAubW9kZXNldF9jYWxjX2NkY2xrKCkgbWFuZGF0b3J5Ck9r
YXkhCgpDb21taXQ6IGRybS9pOTE1OiBSZXdvcmsgZ2xvYmFsIHN0YXRlIGxvY2tpbmcKLU86ZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jOjI1NDY6MTc6IHdhcm5pbmc6
IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYzoyNTQ2OjE3OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNp
emVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmM6
MjYzNjoxNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jOjI2MzY6MTc6IHdhcm5pbmc6IGV4
cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmM6MjU2OToxNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yo
dm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYzoyNTY5OjE3
OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jOjI2NDY6MTc6IHdhcm5pbmc6IGV4cHJlc3Npb24g
dXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmM6MjY0NjoxNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCkNv
bW1pdDogZHJtL2k5MTU6IE1vdmUgY2hlY2tfZGlnaXRhbF9wb3J0X2NvbmZsaWN0cygpIGVhcmll
cgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQWxsb3cgcGxhbmVzIHRvIGRlY2xhcmUgdGhlaXIg
bWluaW11bSBhY2NlcHRhYmxlIGNkY2xrCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmM6MjIzODoyOTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9p
ZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYzoyMjM4OjI5OiB3
YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmM6MjI4NToyOTogd2FybmluZzogZXhwcmVzc2lvbiB1
c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYzoyMjk4OjI5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jOjIzMDE6MjE6IHdhcm5pbmc6
IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmM6MjMwMToyMTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmM6MTIy
NToxNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmM6MTIyNToxNzogd2FybmluZzogZXhwcmVz
c2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmM6MzYyOjE3OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lk
KQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYzozNjI6MTc6IHdh
cm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jOjM2MzoxNzogd2FybmluZzogZXhwcmVzc2lvbiB1c2lu
ZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmM6MzYzOjE3OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKQ29tbWl0
OiBkcm0vaTkxNTogRWxpbWluYXRlIHNrbF9jaGVja19waXBlX21heF9waXhlbF9yYXRlKCkKLS4v
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9maXhlZC5oOjU1OjQzOiB3YXJuaW5nOiBleHByZXNz
aW9uIHVzaW5nIHNpemVvZih2b2lkKQotLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ZpeGVk
Lmg6NTU6NDM6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi0uL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZml4ZWQuaDo1NTo0Mzogd2FybmluZzogZXhwcmVzc2lvbiB1
c2luZyBzaXplb2Yodm9pZCkKLS4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9maXhlZC5oOjU1
OjQzOiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotLi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2ZpeGVkLmg6NTU6NDM6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcg
c2l6ZW9mKHZvaWQpCi0uL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZml4ZWQuaDo1NTo0Mzog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmM6NDM1MToyNTogd2FybmluZzogdG9vIG1hbnkgd2FybmluZ3MKK2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDM1MToyNTogd2FybmluZzogZXhwcmVzc2lvbiB1
c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDM2Mjoy
NTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmM6NDM2MjoyNTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NDg2NzozMDogd2Fybmlu
ZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmM6NDg2NzozMDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkK
K2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NjczNToyNDogd2FybmluZzogZXhwcmVz
c2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6
NjczNToyNDogd2FybmluZzogdG9vIG1hbnkgd2FybmluZ3MKCkNvbW1pdDogZHJtL2k5MTU6IFNp
bXBsaWZ5IHNrbF9tYXhfc2NhbGUoKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYzoxNDU2MToyMTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yo
dm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTQ1
NjE6MjE6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRy
bS9pOTE1OiBBZGQgc3VwcG9ydCBmb3IgaGFsZiBmbG9hdCBmcmFtZWJ1ZmZlcnMgZm9yIHNrbCsK
T2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBoYWxmIGZsb2F0IGZyYW1l
YnVmZmVycyBmb3IgZ2VuNCsgcHJpbWFyeSBwbGFuZXMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6
IEFkZCBzdXBwb3J0IGZvciBoYWxmIGZsb2F0IGZyYW1lYnVmZmVycyBmb3IgaXZiKyBzcHJpdGVz
Citkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jOjEzODI6Mjg6IHdh
cm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jOjEzODQ6MjA6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNp
bmcgc2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1OiBBZGQgc3VwcG9ydCBmb3IgaGFsZiBm
bG9hdCBmcmFtZWJ1ZmZlcnMgb24gc25iIHNwcml0ZXMKT2theSEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
