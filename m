Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83912EE31C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 16:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB68E6E53C;
	Mon,  4 Nov 2019 15:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE5896E529;
 Mon,  4 Nov 2019 15:07:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D72E9A011B;
 Mon,  4 Nov 2019 15:07:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 Nov 2019 15:07:29 -0000
Message-ID: <157288004987.17422.977603203459600400@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191104135307.21083-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191104135307.21083-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/execlists=3A_Reset_CSB_pointers_by_mmio_as_well?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBSZXNldCBD
U0IgcG9pbnRlcnMgYnkgbW1pbyBhcyB3ZWxsClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82ODk0NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09
CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjIzOGE2YmFmNDU3MiBkcm0vaTkxNS9l
eGVjbGlzdHM6IFJlc2V0IENTQiBwb2ludGVycyBieSBtbWlvIGFzIHdlbGwKLTo5OiBXQVJOSU5H
OkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0
aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojOTogCjwwPlsgIDYxOC4x
Mzg0OTBdIGk5MTVfc2VsLTU2MzYgICAgM2QuLjEgNjczNDI1NDY1dXMgOiB0cmFjZV9wb3J0czog
dmVjczA6IHN1Ym1pdCB7IDE0ZGUyOjUwNCwgMDowIH0KCi06Mzk6IEVSUk9SOkdJVF9DT01NSVRf
SUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisg
Y2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCA1ODJhNmY5MGFh
MGQgKCJkcm0vaTkxNS9leGVjbGlzdHM6IEFkZCBhIHBhcmFub2lkIGZsdXNoIG9mIHRoZSBDU0Ig
cG9pbnRlcnMgdXBvbiByZXNldCIpJwojMzk6IApSZWZlcmVuY2VzOiA1ODJhNmY5MGFhMGQgKCJk
cm0vaTkxNS9leGVjbGlzdHM6IEFkZCBhIHBhcmFub2lkIGZsdXNoIG9mIHRoZSBDU0IgcG9pbnRl
cnMgdXBvbiByZXNldCIpCgp0b3RhbDogMSBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAx
NCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
