Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A38C2113AE4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 05:42:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969FA6F54D;
	Thu,  5 Dec 2019 04:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 745656F546;
 Thu,  5 Dec 2019 04:42:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D84EA0087;
 Thu,  5 Dec 2019 04:42:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Dec 2019 04:42:21 -0000
Message-ID: <157552094142.19945.1812754527671396429@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191204232616.94397-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191204232616.94397-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Remove_vestigal_i915=5Fgem=5Fcontext_locals_from?=
 =?utf-8?q?_cmdparser?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlbW92ZSB2ZXN0aWdhbCBp
OTE1X2dlbV9jb250ZXh0IGxvY2FscyBmcm9tIGNtZHBhcnNlcgpVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzA0NjcvClN0YXRlIDogd2FybmluZwoKPT0g
U3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApmZmI1MDE5OTNiNjAg
ZHJtL2k5MTU6IFJlbW92ZSB2ZXN0aWdhbCBpOTE1X2dlbV9jb250ZXh0IGxvY2FscyBmcm9tIGNt
ZHBhcnNlcgotOjEyOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndy
YXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBs
aW5lKQojMTI6IApSZWZlcmVuY2VzOiBjZDMwYTUwMzE3MDQgKCJkcm0vaTkxNS9nZW06IEV4Y2lz
ZSB0aGUgcGVyLWJhdGNoIHdoaXRlbGlzdCBmcm9tIHRoZSBjb250ZXh0IikKCi06MTI6IEVSUk9S
OkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAn
Y29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1p
dCBjZDMwYTUwMzE3MDQgKCJkcm0vaTkxNS9nZW06IEV4Y2lzZSB0aGUgcGVyLWJhdGNoIHdoaXRl
bGlzdCBmcm9tIHRoZSBjb250ZXh0IiknCiMxMjogClJlZmVyZW5jZXM6IGNkMzBhNTAzMTcwNCAo
ImRybS9pOTE1L2dlbTogRXhjaXNlIHRoZSBwZXItYmF0Y2ggd2hpdGVsaXN0IGZyb20gdGhlIGNv
bnRleHQiKQoKdG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNTkgbGluZXMg
Y2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
