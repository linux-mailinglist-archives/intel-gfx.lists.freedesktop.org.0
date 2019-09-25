Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8205EBE6D4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 23:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C862272F55;
	Wed, 25 Sep 2019 21:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 061E572F61;
 Wed, 25 Sep 2019 21:02:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF8E9A0087;
 Wed, 25 Sep 2019 21:02:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "James Ausmus" <james.ausmus@intel.com>
Date: Wed, 25 Sep 2019 21:02:49 -0000
Message-ID: <20190925210249.13731.93060@emeril.freedesktop.org>
References: <20190925203352.9827-1-james.ausmus@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190925203352.9827-1-james.ausmus@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915=3A_Extract_SAGV_bloc?=
 =?utf-8?q?k_time_function?=
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
ZHJtL2k5MTU6IEV4dHJhY3QgU0FHViBibG9jayB0aW1lIGZ1bmN0aW9uClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzI0MC8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjQ1YmFjOTNi
NzM3OSBkcm0vaTkxNTogRXh0cmFjdCBTQUdWIGJsb2NrIHRpbWUgZnVuY3Rpb24KZmZmYzEyMzVi
OWMwIGRybS9pOTE1L3RnbDogUmVhZCBTQUdWIGJsb2NrIHRpbWUgZnJvbSBQQ09ERQo1NmE5YzUz
OGE4MzEgZHJtL2k5MTUvdGdsOiBSZW1vdmUgc2luZ2xlIHBpcGUgcmVzdHJpY3Rpb24gZnJvbSBT
QUdWCi06Nzk6IEVSUk9SOk9QRU5fQlJBQ0U6IHRoYXQgb3BlbiBicmFjZSB7IHNob3VsZCBiZSBv
biB0aGUgcHJldmlvdXMgbGluZQojNzk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmM6MzgxNzoKKwkJCWZvciAobGV2ZWwgPSBpbGtfd21fbWF4X2xldmVsKGRldl9wcml2KTsK
KwkJCSAgICAgIXdtLT53bVtsZXZlbF0ucGxhbmVfZW47IC0tbGV2ZWwpCisJCQkgICAgIHsgfQoK
dG90YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNoZWNrcywgODYgbGluZXMgY2hlY2tlZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
