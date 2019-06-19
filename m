Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E664B771
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 13:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756796E378;
	Wed, 19 Jun 2019 11:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D535F6E35F;
 Wed, 19 Jun 2019 11:53:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC925A010C;
 Wed, 19 Jun 2019 11:53:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 19 Jun 2019 11:53:07 -0000
Message-ID: <20190619115307.18134.10577@emeril.freedesktop.org>
References: <20190619112341.9082-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190619112341.9082-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/7=5D_drm/i915/gtt=3A_Defer_address?=
 =?utf-8?q?_space_cleanup_to_an_RCU_worker?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvN10g
ZHJtL2k5MTUvZ3R0OiBEZWZlciBhZGRyZXNzIHNwYWNlIGNsZWFudXAgdG8gYW4gUkNVIHdvcmtl
cgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjIzODIv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcAozZTIxOGE5MGUwYmIgZHJtL2k5MTUvZ3R0OiBEZWZlciBhZGRyZXNzIHNwYWNlIGNs
ZWFudXAgdG8gYW4gUkNVIHdvcmtlcgo1ZmUxOTlhNjg0ZWEgZHJtL2k5MTU6IFRyYWNrIGk5MTVf
YWN0aXZlIHVzaW5nIGRlYnVnb2JqZWN0cwo5MWI0NDc5NWM5NDcgZHJtL2k5MTU6IFNpZ25hbCBm
ZW5jZSBjb21wbGV0aW9uIGZyb20gaTkxNV9yZXF1ZXN0X3dhaXQKZTYzODZhOWE3MGQxIGRybS9p
OTE1OiBSZW1vdmUgd2FpdGluZyAmIHJldGlyaW5nIGZyb20gc2hyaW5rZXIgcGF0aHMKMGI3MThk
YmVlMGEwIGRybS9pOTE1OiBUaHJvdyBhd2F5IHRoZSBhY3RpdmUgb2JqZWN0IHJldGlyZW1lbnQg
Y29tcGxleGl0eQo5MTg1Y2Y5ZjU2ZjcgZHJtL2k5MTU6IFByb3ZpZGUgYW4gaTkxNV9hY3RpdmUu
YWNxdWlyZSBjYWxsYmFjawotOjcwODogQ0hFQ0s6VU5DT01NRU5URURfREVGSU5JVElPTjogc3Ry
dWN0IG11dGV4IGRlZmluaXRpb24gd2l0aG91dCBjb21tZW50CiM3MDg6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmg6MzY6CisJc3RydWN0IG11dGV4IG11dGV4
OwoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgODQyIGxpbmVzIGNoZWNr
ZWQKNGI1OGE3ZmU1YTdmIGRybS9pOTE1OiBQdXNoIHRoZSBpOTE1X2FjdGl2ZS5yZXRpcmUgaW50
byBhIHdvcmtlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
