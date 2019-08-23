Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BAE9A5A1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 04:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053B189B05;
	Fri, 23 Aug 2019 02:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2289C89217;
 Fri, 23 Aug 2019 02:39:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1AD99A0099;
 Fri, 23 Aug 2019 02:39:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 23 Aug 2019 02:39:31 -0000
Message-ID: <20190823023931.14426.67674@emeril.freedesktop.org>
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/tgl=3A_Advanced_preparser_support_for_GPU_relocs?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdGdsOiBBZHZhbmNlZCBwcmVw
YXJzZXIgc3VwcG9ydCBmb3IgR1BVIHJlbG9jcwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjU2NTgvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9
PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo2OGE5NjQ4M2QyYzEgZHJtL2k5MTUv
dGdsOiBBZHZhbmNlZCBwcmVwYXJzZXIgc3VwcG9ydCBmb3IgR1BVIHJlbG9jcwotOjEyMTogV0FS
TklORzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9u
cwojMTIxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZl
ci5jOjEyMTI6CisJCWludCByZXQ7CisJCWViLT5lbmdpbmUtPmVtaXRfZmx1c2gocnEsIEVNSVRf
RkxVU0gpOwoKLToxNDI6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRo
YXQgJy8nIChjdHg6VnhWKQojMTQyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jOjEyNjY6CisJaWYgKGNhY2hlLT5ycV9zaXplID4gY2FjaGUtPnNp
emUvc2l6ZW9mKHUzMikgLSAobGVuICsgMSkpCiAJICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBeCgotOjE5MzogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhh
dCAnPDwnIChjdHg6VnhWKQojMTkzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ncHVfY29tbWFuZHMuaDo1NzoKKyNkZWZpbmUgICBNSV9DQkJFTkRfR0xPQkFMX0dUVAkJKDE8
PDIyKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCQkgIF4KCi06MTk0OiBDSEVDSzpT
UEFDSU5HOiBzcGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0ICc8PCcgKGN0eDpWeFYpCiMxOTQ6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oOjU4Ogor
I2RlZmluZSAgIE1JX0NCQkVORF9DT01QQVJFX1NFTUFQSE9SRQkoMTw8MjEpIC8qIEdlbjEyKyov
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCSAgXgoKLToxOTU6IENIRUNL
OlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzE5
NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmg6NTk6
CisjZGVmaW5lICAgTUlfQ0JCRU5EX0NPTVBBUkVfTUFTSwkoMTw8MTkpIC8qIEdlbjkrKi8KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCSAgXgoKLToxOTY6IENIRUNLOlNQQUNJTkc6
IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzE5NjogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmg6NjA6CisjZGVmaW5l
ICAgTUlfQ0JCRU5EX0VORF9DVVJSRU5UX0xFVkVMCSgxPDwxOCkgLyogR2VuMTIrKi8KICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAJICBeCgotOjIxMDogQ0hFQ0s6U1BBQ0lO
Rzogc3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnPDwnIChjdHg6VnhWKQojMjEwOiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaDoxNTA6CisjZGVm
aW5lICAgTUlfU1JNX0FERF9DU19NTUlPX1NUQVJUCSgxPDwxOSkgLyogZ2VuMTErICovCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCSAgXgoKLTozMTE6IFdBUk5JTkc6TElORV9T
UEFDSU5HOiBNaXNzaW5nIGEgYmxhbmsgbGluZSBhZnRlciBkZWNsYXJhdGlvbnMKIzMxMTogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MzA3NjoKKwkJdTMyIHRtcFsx
Nl07CisJCWVuZ2luZS0+ZW1pdF9wcmVwYXJzZXJfZGlzYWJsZSA9IGdlbjEyX2VtaXRfcHJlcGFy
c2VyX2Rpc2FibGU7Cgp0b3RhbDogMCBlcnJvcnMsIDIgd2FybmluZ3MsIDYgY2hlY2tzLCAyNzEg
bGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
