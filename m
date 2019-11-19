Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96955102C4C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 20:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 696276E964;
	Tue, 19 Nov 2019 19:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2824F6E8FF;
 Tue, 19 Nov 2019 19:04:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E3FEA011A;
 Tue, 19 Nov 2019 19:04:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 19:04:32 -0000
Message-ID: <157419027209.32168.17731956510394564645@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B01/19=5D_drm/i915/selftests=3A_Force_bond?=
 =?utf-8?q?ed_submission_to_overlap_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE5
XSBkcm0vaTkxNS9zZWxmdGVzdHM6IEZvcmNlIGJvbmRlZCBzdWJtaXNzaW9uIHRvIG92ZXJsYXAg
KHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
OTY0Ny8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTUv
c2VsZnRlc3RzOiBGb3JjZSBib25kZWQgc3VibWlzc2lvbiB0byBvdmVybGFwCkFwcGx5aW5nOiBk
cm0vaTkxNS9nZW06IE1hbnVhbGx5IGR1bXAgdGhlIGRlYnVnIHRyYWNlIG9uIEdFTV9CVUdfT04K
VXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgKRmFsbGluZyBiYWNrIHRvIHBhdGNoaW5nIGJhc2UgYW5k
IDMtd2F5IG1lcmdlLi4uCk5vIGNoYW5nZXMgLS0gUGF0Y2ggYWxyZWFkeSBhcHBsaWVkLgpBcHBs
eWluZzogZHJtL2k5MTUvZ3Q6IENsb3NlIHJhY2UgYmV0d2VlbiBlbmdpbmVfcGFyayBhbmQgaW50
ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBi
YXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5j
Ck0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpGYWxsaW5nIGJhY2sg
dG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5nIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJn
ZSBjb25mbGljdCBpbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCkF1
dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCmVy
cm9yOiBGYWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0t
c2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQg
YXQgMDAwMyBkcm0vaTkxNS9ndDogQ2xvc2UgcmFjZSBiZXR3ZWVuIGVuZ2luZV9wYXJrIGFuZCBp
bnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMKV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2Js
ZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBw
YXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmlnaW5h
bCBicmFuY2ggYW5kIHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
