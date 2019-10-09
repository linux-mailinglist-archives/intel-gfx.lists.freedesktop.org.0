Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF842D0FEE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 15:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306516E9A0;
	Wed,  9 Oct 2019 13:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C43C96E247;
 Wed,  9 Oct 2019 13:22:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE4AFA011B;
 Wed,  9 Oct 2019 13:22:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 09 Oct 2019 13:22:56 -0000
Message-ID: <20191009132256.31954.38308@emeril.freedesktop.org>
References: <20191009092852.27048-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191009092852.27048-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/execlists=3A_Prevent_merging_requests_with_conflict?=
 =?utf-8?q?ing_flags?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmV2ZW50
IG1lcmdpbmcgcmVxdWVzdHMgd2l0aCBjb25mbGljdGluZyBmbGFncwpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjc3NzYvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApkODZiMGYzMWY1
YzkgZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmV2ZW50IG1lcmdpbmcgcmVxdWVzdHMgd2l0aCBjb25m
bGljdGluZyBmbGFncwotOjE0OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3NzaWJs
ZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJz
IHBlciBsaW5lKQojMTQ6IApSZWZlcmVuY2VzOiAyYTk4ZjRlNjViYmEgKCJkcm0vaTkxNTogYWRk
IGluZnJhc3RydWN0dXJlIHRvIGhvbGQgb2ZmIHByZWVtcHRpb24gb24gYSByZXF1ZXN0IikKCi06
MTQ6IEVSUk9SOkdJVF9DT01NSVRfSUQ6IFBsZWFzZSB1c2UgZ2l0IGNvbW1pdCBkZXNjcmlwdGlv
biBzdHlsZSAnY29tbWl0IDwxMisgY2hhcnMgb2Ygc2hhMT4gKCI8dGl0bGUgbGluZT4iKScgLSBp
ZTogJ2NvbW1pdCAyYTk4ZjRlNjViYmEgKCJkcm0vaTkxNTogYWRkIGluZnJhc3RydWN0dXJlIHRv
IGhvbGQgb2ZmIHByZWVtcHRpb24gb24gYSByZXF1ZXN0IiknCiMxNDogClJlZmVyZW5jZXM6IDJh
OThmNGU2NWJiYSAoImRybS9pOTE1OiBhZGQgaW5mcmFzdHJ1Y3R1cmUgdG8gaG9sZCBvZmYgcHJl
ZW1wdGlvbiBvbiBhIHJlcXVlc3QiKQoKdG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNo
ZWNrcywgOSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
