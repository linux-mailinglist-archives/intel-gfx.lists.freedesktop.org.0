Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5895419F63
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 16:36:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84046893EF;
	Fri, 10 May 2019 14:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69A44893EF;
 Fri, 10 May 2019 14:36:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62D05A0084;
 Fri, 10 May 2019 14:36:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 10 May 2019 14:36:13 -0000
Message-ID: <20190510143613.17667.33240@emeril.freedesktop.org>
References: <20190510140255.25215-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190510140255.25215-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/icl=3A_More_workaround_for_port_F_detection_due_to_?=
 =?utf-8?q?broken_VBTs?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvaWNsOiBNb3JlIHdvcmthcm91
bmQgZm9yIHBvcnQgRiBkZXRlY3Rpb24gZHVlIHRvIGJyb2tlbiBWQlRzClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDUwOC8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjI4MjEyZjY2
OGEyNyBkcm0vaTkxNS9pY2w6IE1vcmUgd29ya2Fyb3VuZCBmb3IgcG9ydCBGIGRldGVjdGlvbiBk
dWUgdG8gYnJva2VuIFZCVHMKLToxMTogV0FSTklORzpUWVBPX1NQRUxMSU5HOiAnZXhpc3RhbnQn
IG1heSBiZSBtaXNzcGVsbGVkIC0gcGVyaGFwcyAnZXhpc3RlbnQnPwojMTE6IAo2IHBvcnRzIGFu
ZC9vciBnZXQgYSBWQlQgZml4IHRvIG1hcmsgdGhlc2UgcG9ydHMgbm9uLWV4aXN0YW50LCBidXQg
dW50aWwKCi06MTg6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3Jh
cHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxp
bmUpCiMxODogCglXQVJOX09OKGludGVsX3dhaXRfZm9yX3JlZ2lzdGVyKCZkZXZfcHJpdi0+dW5j
b3JlLCByZWdzLT5kcml2ZXIsICgweDEgPDwgKChwd19pZHgpICogMikpLCAoMHgxIDw8ICgocHdf
aWR4KSAqIDIpKSwgMSkpCgp0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3MsIDAgY2hlY2tzLCAx
NiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
