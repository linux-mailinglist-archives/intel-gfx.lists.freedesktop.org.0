Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FCAADCB9
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 18:07:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1100189CD8;
	Mon,  9 Sep 2019 16:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCE6289CBC;
 Mon,  9 Sep 2019 16:07:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C65B1A47DB;
 Mon,  9 Sep 2019 16:07:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 09 Sep 2019 16:07:41 -0000
Message-ID: <20190909160741.8306.73802@emeril.freedesktop.org>
References: <20190909110011.8958-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190909110011.8958-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/6=5D_drm/i915/selftests=3A_Take_ru?=
 =?utf-8?q?ntime_wakeref_for_igt=5Fggtt=5Flowlevel?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNl0g
ZHJtL2k5MTUvc2VsZnRlc3RzOiBUYWtlIHJ1bnRpbWUgd2FrZXJlZiBmb3IgaWd0X2dndHRfbG93
bGV2ZWwKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2
NDI1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3Jp
Z2luL2RybS10aXAKNzM4NmIwZWJjMjNjIGRybS9pOTE1L3NlbGZ0ZXN0czogVGFrZSBydW50aW1l
IHdha2VyZWYgZm9yIGlndF9nZ3R0X2xvd2xldmVsCi06MTM6IFdBUk5JTkc6Q09NTUlUX0xPR19M
T05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBh
IG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMxMzogCjw0PiBbNTM4LjE1MTgyNV0gV0FSTklO
RzogQ1BVOiAwIFBJRDogMTEgYXQgLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1l
X3BtLmg6MTA3IGZ3dGFibGVfcmVhZDMyKzB4MWJlLzB4MzAwIFtpOTE1XQoKdG90YWw6IDAgZXJy
b3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMjQgbGluZXMgY2hlY2tlZAplNTQ0ODhhYzRjZDcg
ZHJtL2k5MTUvc2VsZnRlc3RzOiBUaWdodGVuIHRoZSB0aW1lb3V0IHRlc3RpbmcgZm9yIHBhcnRp
YWwgbW1hcHMKLToxMjg6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNo
b3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiMxMjg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jOjE2OToKK3N0YXRpYyBpbnQgY2hlY2tf
cGFydGlhbF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJCSBj
b25zdCBzdHJ1Y3QgdGlsZSAqdGlsZSwKCi06MjY2OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzogTWlz
c2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRpb25zCiMyNjY6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jOjQzMToKKwlpbnRlbF93
YWtlcmVmX3Qgd2FrZXJlZjsKKwlJOTE1X1JORF9TVEFURShwcm5nKTsKCi06MjY4OiBXQVJOSU5H
OkxJTkVfU1BBQ0lORzogTWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRpb25zCiMy
Njg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1h
bi5jOjQzMzoKKwl1bnNpZ25lZCBsb25nIGNvdW50OworCUlHVF9USU1FT1VUKGVuZCk7CgotOjI4
NTogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMjg1OiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYzo0NTA6
CisJCQkgICAgICAoMSArIG5leHRfcHJpbWVfbnVtYmVyKGk5MTUtPmdndHQudm0udG90YWwgPj4g
UEFHRV9TSElGVCkpIDw8IFBBR0VfU0hJRlQpOwoKdG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdz
LCAxIGNoZWNrcywgMzI3IGxpbmVzIGNoZWNrZWQKNmJlOTBhOWIzMzJkIGRybS9pOTE1OiBQZXJm
b3JtIEdHVFQgcmVzdG9yZSBtdWNoIGVhcmxpZXIgZHVyaW5nIHJlc3VtZQoxODZhZmM5YWFhNTQg
ZHJtL2k5MTU6IEZvcmNlIGNvbXBpbGF0aW9uIHdpdGggaW50ZWwtaW9tbXUgZm9yIENJIHZhbGlk
YXRpb24KLTo4OiBXQVJOSU5HOkNPTU1JVF9NRVNTQUdFOiBNaXNzaW5nIGNvbW1pdCBkZXNjcmlw
dGlvbiAtIEFkZCBhbiBhcHByb3ByaWF0ZSBvbmUKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5n
cywgMCBjaGVja3MsIDggbGluZXMgY2hlY2tlZAowNDYyZWY5MjZiNjUgaW9tbXUvaW50ZWw6IERl
Y2xhcmUgQnJvYWR3ZWxsIGlnZnggZG1hciBzdXBwb3J0IHNuYWZ1CmMwZGYxYzYwMWIzYyBpb21t
dS9pbnRlbDogSWdub3JlIGlnZnhfb2ZmCi06ODogV0FSTklORzpDT01NSVRfTUVTU0FHRTogTWlz
c2luZyBjb21taXQgZGVzY3JpcHRpb24gLSBBZGQgYW4gYXBwcm9wcmlhdGUgb25lCgotOjE5OiBF
UlJPUjpNSVNTSU5HX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUocykKCnRv
dGFsOiAxIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDggbGluZXMgY2hlY2tlZAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
