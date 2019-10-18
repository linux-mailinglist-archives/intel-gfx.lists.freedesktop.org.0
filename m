Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9997DC425
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 13:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DCC16EB20;
	Fri, 18 Oct 2019 11:43:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0FE46EB20;
 Fri, 18 Oct 2019 11:43:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 384F4A0134;
 Fri, 18 Oct 2019 11:43:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Fri, 18 Oct 2019 11:43:32 -0000
Message-ID: <20191018114332.27985.35814@emeril.freedesktop.org>
References: <6250061.7lZMOAyebC@jkrzyszt-desk.ger.corp.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <6250061.7lZMOAyebC@jkrzyszt-desk.ger.corp.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Restore_full_symmetry_in_i915=5Fdriver=5Fmodeset?=
 =?utf-8?q?=5Fprobe/remove?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlc3RvcmUgZnVsbCBzeW1t
ZXRyeSBpbiBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlL3JlbW92ZQpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjgxODgvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo1ODZmMzNjYWNh
YjUgZHJtL2k5MTU6IFJlc3RvcmUgZnVsbCBzeW1tZXRyeSBpbiBpOTE1X2RyaXZlcl9tb2Rlc2V0
X3Byb2JlL3JlbW92ZQotOjE5OiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBj
b21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRp
dGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgNzhkYWUxYWMzNWRkICgiZHJtL2k5MTU6IFByb3Bh
Z2F0ZSAiX3JlbW92ZSIgZnVuY3Rpb24gbmFtZSBzdWZmaXggZG93biIpJwojMTk6IApjaGFuZ2Vk
IG1lYW53aGlsZSBieSBjb21taXQgNzhkYWUxYWMzNWRkICgiZHJtL2k5MTU6IFByb3BhZ2F0ZQoK
dG90YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNoZWNrcywgMjIgbGluZXMgY2hlY2tlZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
