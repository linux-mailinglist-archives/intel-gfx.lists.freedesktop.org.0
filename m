Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B61DE752
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 11:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8325B89C3B;
	Mon, 21 Oct 2019 09:01:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 722C289C1E;
 Mon, 21 Oct 2019 09:01:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68F87A363E;
 Mon, 21 Oct 2019 09:01:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 21 Oct 2019 09:01:36 -0000
Message-ID: <20191021090136.797.88544@emeril.freedesktop.org>
References: <20191021080226.537-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191021080226.537-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B01/16=5D_drm/i915=3A_Don=27t_set_queue?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE2
XSBkcm0vaTkxNTogRG9uJ3Qgc2V0IHF1ZXVlX3ByaW9yaXR5X2hpbnQgaWYgd2UgZG9uJ3Qga2lj
ayB0aGUgc3VibWlzc2lvbgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjgyOTUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3Bh
cnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC42LjAKQ29tbWl0OiBkcm0vaTkx
NTogRG9uJ3Qgc2V0IHF1ZXVlX3ByaW9yaXR5X2hpbnQgaWYgd2UgZG9uJ3Qga2ljayB0aGUgc3Vi
bWlzc2lvbgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRHJvcCBhc3NlcnRpb24gdGhhdCBjZS0+
cGluX211dGV4IGd1YXJkcyBzdGF0ZSB1cGRhdGVzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L3Nl
bGZ0ZXN0czogQWRkIGNvdmVyYWdlIG9mIG1vY3MgcmVnaXN0ZXJzCk9rYXkhCgpDb21taXQ6IGRy
bS9pOTE1L3NlbGZ0ZXN0czogVGVhY2ggaWd0X2ZsdXNoX3Rlc3QgYW5kIGlndF9saXZlX3Rlc3Qg
dG8gdGFrZSBpbnRlbF9ndApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9zZWxmdGVzdHM6IEZvcmNl
IG9yZGVyaW5nIG9mIGNvbnRleHQgc3dpdGNoZXMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IEV4
cG9zZSBlbmdpbmUgcHJvcGVydGllcyB2aWEgc3lzZnMKLQorZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6NTI6MTA6IGVycm9yOiBiYWQgaW50ZWdlciBjb25zdGFu
dCBleHByZXNzaW9uCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMu
Yzo1MzoxMDogZXJyb3I6IGJhZCBpbnRlZ2VyIGNvbnN0YW50IGV4cHJlc3Npb24KK2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jOjU3OjEwOiBlcnJvcjogYmFkIGlu
dGVnZXIgY29uc3RhbnQgZXhwcmVzc2lvbgorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3N5c2ZzLmM6NzM6MjA6IGVycm9yOiB1bmRlZmluZWQgaWRlbnRpZmllciAnZW5naW5l
JworZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmM6OTY6OTogZXJy
b3I6IGNhbm5vdCBzaXplIGV4cHJlc3Npb24KK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9zeXNmcy5jOjk5Ojk6IGVycm9yOiBjYW5ub3Qgc2l6ZSBleHByZXNzaW9uCitkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYzo5OTo5OiBlcnJvcjogY2Fu
bm90IHNpemUgZXhwcmVzc2lvbgorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3N5c2ZzLmM6OTk6OTogZXJyb3I6IGNhbm5vdCBzaXplIGV4cHJlc3Npb24KCkNvbW1pdDogZHJt
L2k5MTU6IEV4cG9zZSBlbmdpbmUtPm1taW9fYmFzZSB2aWEgc3lzZnMKK2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jOjYxOjEwOiBlcnJvcjogYmFkIGludGVnZXIg
Y29uc3RhbnQgZXhwcmVzc2lvbgorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3N5c2ZzLmM6NjI6MTA6IGVycm9yOiBiYWQgaW50ZWdlciBjb25zdGFudCBleHByZXNzaW9uCi1P
OmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jOjUyOjEwOiBlcnJv
cjogYmFkIGludGVnZXIgY29uc3RhbnQgZXhwcmVzc2lvbgotTzpkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYzo1MzoxMDogZXJyb3I6IGJhZCBpbnRlZ2VyIGNvbnN0
YW50IGV4cHJlc3Npb24KCkNvbW1pdDogZHJtL2k5MTU6IEV4cG9zZSB0aW1lc2xpY2UgZHVyYXRp
b24gdG8gc3lzZnMKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZXhlY2xpc3RzOiBGb3JjZSBwcmVl
bXB0aW9uCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d0OiBJbnRyb2R1Y2UgYmFycmllciBwdWxz
ZXMgYWxvbmcgZW5naW5lcwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IENhbmNl
bCBiYW5uZWQgY29udGV4dHMgb24gc2NoZWR1bGUtb3V0Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1
L2dlbTogQ2FuY2VsIGNvbnRleHRzIHdoZW4gaGFuZ2NoZWNraW5nIGlzIGRpc2FibGVkCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBSZXBsYWNlIGhhbmdjaGVjayBieSBoZWFydGJlYXRzCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1L2dlbTogTWFrZSBjb250ZXh0IHBlcnNpc3RlbmNlIG9wdGlvbmFs
Ck9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2dlbTogRGlzdGluZ3Vpc2ggZWFjaCBvYmplY3QgdHlw
ZQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRmx1c2ggaWRsZSBiYXJyaWVycyB3aGVuIHdhaXRp
bmcKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
