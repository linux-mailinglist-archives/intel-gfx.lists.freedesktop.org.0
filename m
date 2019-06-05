Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0252C3635B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 20:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57CB7892D2;
	Wed,  5 Jun 2019 18:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9BF37892CF;
 Wed,  5 Jun 2019 18:29:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97DB1A00EF;
 Wed,  5 Jun 2019 18:29:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 05 Jun 2019 18:29:30 -0000
Message-ID: <20190605182930.10844.17144@emeril.freedesktop.org>
References: <20190605181735.7020-1-hdegoede@redhat.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190605181735.7020-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/3=5D_drm/i915/dsi=3A_Move_logging_of_D?=
 =?utf-8?q?SI_VBT_parameters_to_a_helper_function?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvZHNpOiBNb3ZlIGxvZ2dpbmcgb2YgRFNJIFZCVCBwYXJhbWV0ZXJzIHRvIGEgaGVs
cGVyIGZ1bmN0aW9uClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82MTY3OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ug
b3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1L2Rz
aTogTW92ZSBsb2dnaW5nIG9mIERTSSBWQlQgcGFyYW1ldGVycyB0byBhIGhlbHBlciBmdW5jdGlv
bgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9kc2k6IE1vdmUgdmx2L2ljbF9kcGh5X3BhcmFtX2lu
aXQgY2FsbCBvdXQgb2YgaW50ZWxfZHNpX3ZidF9pbml0ICh2MikKK2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ljbF9kc2kuYzoxNDA0OjI1OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2
b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaWNsX2RzaS5jOjE0MDQ6MjU6IHdhcm5pbmc6IGV4
cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pY2xfZHNp
LmM6MTQwNToyNjogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYzoxNDA1OjI2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVz
aW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmM6
NTk5OjI1OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmM6NTk5OjI1OiB3YXJuaW5nOiBleHByZXNzaW9u
IHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0
LmM6NjAwOjI2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmM6NjAwOjI2OiB3YXJuaW5nOiBleHByZXNz
aW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lf
dmJ0LmM6NzM3OjI2OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmM6NzM3OjI2OiB3YXJuaW5nOiBleHBy
ZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
c2lfdmJ0LmM6Nzc5OjI1OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQot
Tzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmM6Nzc5OjI1OiB3YXJuaW5nOiBl
eHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kc2lfdmJ0LmM6ODExOjM3OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lk
KQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmM6ODExOjM3OiB3YXJuaW5n
OiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2
X2RzaS5jOjE3MzE6MjY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitk
cml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmM6MTczMToyNjogd2FybmluZzogZXhwcmVzc2lv
biB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2kuYzoxNzcz
OjI1OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUv
ZHJtL2k5MTUvdmx2X2RzaS5jOjE3NzM6MjU6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6
ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmM6MTgwNTozNzogd2Fybmlu
ZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Zs
dl9kc2kuYzoxODA1OjM3OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoK
Q29tbWl0OiBkcm0vaTkxNS9kc2k6IFJlYWQgYmFjayBwY2xrIHNldCBieSBHT1AgYW5kIHVzZSB0
aGF0IGFzIHBjbGsgKHYzKQpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
