Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0964428A05
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 21:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE5D36E06D;
	Thu, 23 May 2019 19:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04A7A89F49;
 Thu, 23 May 2019 19:55:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1A0AA0073;
 Thu, 23 May 2019 19:55:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Thu, 23 May 2019 19:55:55 -0000
Message-ID: <20190523195555.12609.5201@emeril.freedesktop.org>
References: <20190523191935.19857-1-rodrigo.vivi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190523191935.19857-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_We_don=27t_need_display=27s_suspend/resume_opera?=
 =?utf-8?q?tions_when_!HAS=5FDISPLAY_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFdlIGRvbid0IG5lZWQgZGlz
cGxheSdzIHN1c3BlbmQvcmVzdW1lIG9wZXJhdGlvbnMgd2hlbiAhSEFTX0RJU1BMQVkgKHJldjIp
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDgzOS8K
U3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9k
cm0tdGlwCmIxMDZhYjlmMjcyZSBkcm0vaTkxNTogV2UgZG9uJ3QgbmVlZCBkaXNwbGF5J3Mgc3Vz
cGVuZC9yZXN1bWUgb3BlcmF0aW9ucyB3aGVuICFIQVNfRElTUExBWQotOjE0OiBXQVJOSU5HOkNP
TU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9u
IChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMTQ6IAotOjc4OiBXQVJOSU5H
OkJSQUNFUzogYnJhY2VzIHt9IGFyZSBub3QgbmVjZXNzYXJ5IGZvciBzaW5nbGUgc3RhdGVtZW50
IGJsb2NrcwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTU1IGxpbmVz
IGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
