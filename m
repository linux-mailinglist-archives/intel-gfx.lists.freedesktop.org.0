Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C84981A334F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 13:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7056E053;
	Thu,  9 Apr 2020 11:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 687DA890E9;
 Thu,  9 Apr 2020 11:40:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65DDDA3C0D;
 Thu,  9 Apr 2020 11:40:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Apr 2020 11:40:34 -0000
Message-ID: <158643243441.11552.15775685868998516963@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409090953.8671-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200409090953.8671-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBI?=
 =?utf-8?q?AX_timer=3A_Describe_the_delayed=5Fwork_for_a_freed_timer?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogSEFYIHRpbWVyOiBEZXNjcmliZSB0aGUgZGVs
YXllZF93b3JrIGZvciBhIGZyZWVkIHRpbWVyClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy83NTc0MC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09
CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9t
aWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBDSEsgICAgIGluY2x1ZGUv
Z2VuZXJhdGVkL2NvbXBpbGUuaAogIENDICAgICAga2VybmVsL3RpbWUvdGltZXIubwprZXJuZWwv
dGltZS90aW1lci5jOiBJbiBmdW5jdGlvbiDigJh0aW1lcl9kZWJ1Z19oaW504oCZOgprZXJuZWwv
dGltZS90aW1lci5jOjYwNzoxMDogd2FybmluZzogZGVyZWZlcmVuY2luZyDigJh2b2lkICrigJkg
cG9pbnRlcgogIGlmIChhZGRyLT5mdW5jdGlvbiA9PSBkZWxheWVkX3dvcmtfdGltZXJfZm4pIHsK
ICAgICAgICAgIF5+Cmtlcm5lbC90aW1lL3RpbWVyLmM6NjA3OjEwOiBlcnJvcjogcmVxdWVzdCBm
b3IgbWVtYmVyIOKAmGZ1bmN0aW9u4oCZIGluIHNvbWV0aGluZyBub3QgYSBzdHJ1Y3R1cmUgb3Ig
dW5pb24Kc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNjc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdrZXJu
ZWwvdGltZS90aW1lci5vJyBmYWlsZWQKbWFrZVsyXTogKioqIFtrZXJuZWwvdGltZS90aW1lci5v
XSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA1OiByZWNpcGUgZm9yIHRhcmdldCAn
a2VybmVsL3RpbWUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2tlcm5lbC90aW1lXSBFcnJvciAyCk1h
a2VmaWxlOjE2ODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdrZXJuZWwnIGZhaWxlZAptYWtlOiAqKiog
W2tlcm5lbF0gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
