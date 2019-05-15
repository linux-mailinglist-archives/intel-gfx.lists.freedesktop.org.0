Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DFB1F57D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 15:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CED28932E;
	Wed, 15 May 2019 13:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3EBC892F1;
 Wed, 15 May 2019 13:21:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC9FBA00FD;
 Wed, 15 May 2019 13:21:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 May 2019 13:21:26 -0000
Message-ID: <20190515132126.5990.47281@emeril.freedesktop.org>
References: <20190515130052.4475-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190515130052.4475-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/5=5D_drm/i915=3A_Mark_semaphores_a?=
 =?utf-8?q?s_complete_on_unsubmit_out_if_payload_was_started?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTU6IE1hcmsgc2VtYXBob3JlcyBhcyBjb21wbGV0ZSBvbiB1bnN1Ym1pdCBvdXQgaWYg
cGF5bG9hZCB3YXMgc3RhcnRlZApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjA2NzEvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo0NGY3NmVlOGUyZTIgZHJtL2k5MTU6IE1hcmsgc2Vt
YXBob3JlcyBhcyBjb21wbGV0ZSBvbiB1bnN1Ym1pdCBvdXQgaWYgcGF5bG9hZCB3YXMgc3RhcnRl
ZAotOjEyOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQg
Y29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQoj
MTI6IApSZWZlcmVuY2VzOiBjYTZlNTZmNjU0ZTcgKCJkcm0vaTkxNTogRGlzYWJsZSBzZW1hcGhv
cmUgYnVzeXdhaXRzIG9uIHNhdHVyYXRlZCBzeXN0ZW1zIikKCi06MTI6IEVSUk9SOkdJVF9DT01N
SVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwx
MisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCBjYTZlNTZm
NjU0ZTcgKCJkcm0vaTkxNTogRGlzYWJsZSBzZW1hcGhvcmUgYnVzeXdhaXRzIG9uIHNhdHVyYXRl
ZCBzeXN0ZW1zIiknCiMxMjogClJlZmVyZW5jZXM6IGNhNmU1NmY2NTRlNyAoImRybS9pOTE1OiBE
aXNhYmxlIHNlbWFwaG9yZSBidXN5d2FpdHMgb24gc2F0dXJhdGVkIHN5c3RlbXMiKQoKdG90YWw6
IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTIgbGluZXMgY2hlY2tlZAoyZTYzMzlk
NDkzOWIgZHJtL2k5MTU6IFRydWx5IGJ1bXAgcmVhZHkgdGFza3MgYWhlYWQgb2YgYnVzeXdhaXRz
CmU4YjI0MTY5MzQ0MSBkcm0vaTkxNTogQnVtcCBzaWduYWxlciBwcmlvcml0eSBvbiBhZGRpbmcg
YSB3YWl0ZXIKMjllMmQwNTkwODFlIGRybS9pOTE1OiBEb3duZ3JhZGUgTkVXQ0xJRU5UIHRvIG5v
bi1wcmVlbXB0aXZlCi06Mzc6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNv
bW1pdCBkZXNjcmlwdGlvbiBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0
bGUgbGluZT4iKScgLSBpZTogJ2NvbW1pdCBiMTZjNzY1MTIyZjkgKCJkcm0vaTkxNTogUHJpb3Jp
dHkgYm9vc3QgZm9yIG5ldyBjbGllbnRzIiknCiMzNzogClJlZmVyZW5jZXM6IGIxNmM3NjUxMjJm
OSAoImRybS9pOTE1OiBQcmlvcml0eSBib29zdCBmb3IgbmV3IGNsaWVudHMiKQoKdG90YWw6IDEg
ZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNoZWNrcywgMzMgbGluZXMgY2hlY2tlZAo4NzM3ZjZiOWE2
MmYgZHJtL2k5MTUvZXhlY2xpc3RzOiBEcm9wIHByb21vdGlvbiBvbiB1bnN1Ym1pdAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
