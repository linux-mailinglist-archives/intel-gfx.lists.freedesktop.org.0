Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC3CDD4F8
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 00:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D0889FCE;
	Fri, 18 Oct 2019 22:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 537E489E05;
 Fri, 18 Oct 2019 22:36:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D8D3A0138;
 Fri, 18 Oct 2019 22:36:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 18 Oct 2019 22:36:23 -0000
Message-ID: <20191018223623.27986.49335@emeril.freedesktop.org>
References: <20191018221450.26247-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191018221450.26247-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/13=5D_drm/i915=3A_Don=27t_set_queue?=
 =?utf-8?q?=5Fpriority=5Fhint_if_we_don=27t_kick_the_submission?=
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
XSBkcm0vaTkxNTogRG9uJ3Qgc2V0IHF1ZXVlX3ByaW9yaXR5X2hpbnQgaWYgd2UgZG9uJ3Qga2lj
ayB0aGUgc3VibWlzc2lvbgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjgyNDMvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3Bh
cnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC42LjAKQ29tbWl0OiBkcm0vaTkx
NTogRG9uJ3Qgc2V0IHF1ZXVlX3ByaW9yaXR5X2hpbnQgaWYgd2UgZG9uJ3Qga2ljayB0aGUgc3Vi
bWlzc2lvbgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9zZWxmdGVzdHM6IEFkZCBjb3ZlcmFnZSBv
ZiBtb2NzIHJlZ2lzdGVycwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9zZWxmdGVzdHM6IFRlYWNo
IGlndF9mbHVzaF90ZXN0IGFuZCBpZ3RfbGl2ZV90ZXN0IHRvIHRha2UgaW50ZWxfZ3QKT2theSEK
CkNvbW1pdDogZHJtL2k5MTU6IEV4cG9zZSBlbmdpbmUgcHJvcGVydGllcyB2aWEgc3lzZnMKLQor
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6NTI6MTA6IGVycm9y
OiBiYWQgaW50ZWdlciBjb25zdGFudCBleHByZXNzaW9uCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfc3lzZnMuYzo1MzoxMDogZXJyb3I6IGJhZCBpbnRlZ2VyIGNvbnN0YW50
IGV4cHJlc3Npb24KK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5j
OjU3OjEwOiBlcnJvcjogYmFkIGludGVnZXIgY29uc3RhbnQgZXhwcmVzc2lvbgorZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6NzM6MjA6IGVycm9yOiB1bmRlZmlu
ZWQgaWRlbnRpZmllciAnZW5naW5lJworZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3N5c2ZzLmM6OTY6OTogZXJyb3I6IGNhbm5vdCBzaXplIGV4cHJlc3Npb24KK2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jOjk5Ojk6IGVycm9yOiBjYW5ub3Qg
c2l6ZSBleHByZXNzaW9uCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lz
ZnMuYzo5OTo5OiBlcnJvcjogY2Fubm90IHNpemUgZXhwcmVzc2lvbgorZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6OTk6OTogZXJyb3I6IGNhbm5vdCBzaXplIGV4
cHJlc3Npb24KCkNvbW1pdDogZHJtL2k5MTU6IEV4cG9zZSB0aW1lc2xpY2UgZHVyYXRpb24gdG8g
c3lzZnMKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZXhlY2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9u
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBJbnRyb2R1Y2UgYmFycmllciBwdWxzZXMgYWxv
bmcgZW5naW5lcwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IENhbmNlbCBiYW5u
ZWQgY29udGV4dHMgb24gc2NoZWR1bGUtb3V0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2dlbTog
Q2FuY2VsIGNvbnRleHRzIHdoZW4gaGFuZ2NoZWNraW5nIGlzIGRpc2FibGVkCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1OiBSZXBsYWNlIGhhbmdjaGVjayBieSBoZWFydGJlYXRzCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1L2dlbTogTWFrZSBjb250ZXh0IHBlcnNpc3RlbmNlIG9wdGlvbmFsCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1L2dlbTogRGlzdGluZ3Vpc2ggZWFjaCBvYmplY3QgdHlwZQpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNTogRmx1c2ggaWRsZSBiYXJyaWVycyB3aGVuIHdhaXRpbmcKT2th
eSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
