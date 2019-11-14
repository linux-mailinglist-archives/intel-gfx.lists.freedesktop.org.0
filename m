Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E1EFCFF4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 21:57:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA66F6EF32;
	Thu, 14 Nov 2019 20:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8879F6EF32;
 Thu, 14 Nov 2019 20:57:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FBF3A0094;
 Thu, 14 Nov 2019 20:57:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 14 Nov 2019 20:57:40 -0000
Message-ID: <157376506049.31208.9315660996476144387@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191114192114.61547-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20191114192114.61547-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/perf=3A_Allow_non-pr?=
 =?utf-8?q?ivileged_access_when_OA_buffer_is_not_sampled?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvcGVyZjogQWxsb3cgbm9uLXByaXZpbGVnZWQgYWNjZXNzIHdoZW4gT0EgYnVmZmVy
IGlzIG5vdCBzYW1wbGVkClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82OTQ5MS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjYxZjliYmY4NTg4OCBkcm0vaTkxNS9wZXJmOiBBbGxvdyBu
b24tcHJpdmlsZWdlZCBhY2Nlc3Mgd2hlbiBPQSBidWZmZXIgaXMgbm90IHNhbXBsZWQKZTU4ZWI2
ODFmODE0IGRybS9pOTE1L3BlcmY6IENvbmZpZ3VyZSBPQVIgZm9yIHNwZWNpZmljIGNvbnRleHQK
LToyNjc6IENIRUNLOkNPTVBBUklTT05fVE9fTlVMTDogQ29tcGFyaXNvbiB0byBOVUxMIGNvdWxk
IGJlIHdyaXR0ZW4gIm9hX2NvbmZpZyIKIzI2NzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmM6MjUwMjoKKwkJcmV0ID0gZ2VuMTJfY29uZmlndXJlX29hcl9jb250ZXh0KHN0
cmVhbSwgb2FfY29uZmlnICE9IE5VTEwpOwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAx
IGNoZWNrcywgMjY4IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
