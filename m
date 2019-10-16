Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 366FCD876D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 06:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D43B898CA;
	Wed, 16 Oct 2019 04:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A458E898CA;
 Wed, 16 Oct 2019 04:26:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D94DA0134;
 Wed, 16 Oct 2019 04:26:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 16 Oct 2019 04:26:36 -0000
Message-ID: <20191016042636.22840.55197@emeril.freedesktop.org>
References: <20191016033841.6888-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191016033841.6888-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_simplify_set?=
 =?utf-8?q?ting_of_ddi=5Fio=5Fpower=5Fdomain?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
NV0gZHJtL2k5MTU6IHNpbXBsaWZ5IHNldHRpbmcgb2YgZGRpX2lvX3Bvd2VyX2RvbWFpbgpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjgwNjkvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAo1ZmU3OGE1ZGFhODQgZHJtL2k5MTU6IHNpbXBsaWZ5IHNldHRpbmcgb2YgZGRpX2lvX3Bvd2Vy
X2RvbWFpbgo3MGI2ZDQ3MmNmNmQgZHJtL2k5MTU6IGZpeCBwb3J0IGNoZWNrcyBmb3IgTVNUIHN1
cHBvcnQgb24gZ2VuID49IDExCmI3ZTI3ZDUxZTIwYiBkcm0vaTkxNTogcmVtb3ZlIGV4dHJhIG5l
dyBsaW5lIG9uIHBpcGVfY29uZmlnIG1pc21hdGNoCi06NTI6IFdBUk5JTkc6TE9OR19MSU5FOiBs
aW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzUyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxMjYwNzoKKwkJCQkgICAgICJ1bmFibGUgdG8gdmVyaWZ5
IHdoZXRoZXIgc3RhdGUgbWF0Y2hlcyBleGFjdGx5LCBmb3JjaW5nIG1vZGVzZXQgKGV4cGVjdGVk
ICVzLCBmb3VuZCAlcykiLCBcCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tz
LCA4OCBsaW5lcyBjaGVja2VkCjYxZjYwYzc3ZWJkZCBkcm0vaTkxNTogYWRkIHBpcGUgaWQvbmFt
ZSB0byBwaXBlIG1pc21hdGNoIGxvZ3MKMTFlNjYyZTZlYTJhIGRybS9pOTE1OiBwcmV0dGlmeSBN
U1QgZGVidWcgbWVzc2FnZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
