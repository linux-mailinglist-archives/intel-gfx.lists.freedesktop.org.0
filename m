Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D6610CA0D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 15:02:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1ED16E81C;
	Thu, 28 Nov 2019 14:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2E096E81C;
 Thu, 28 Nov 2019 14:02:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A6CDA0BA8;
 Thu, 28 Nov 2019 14:02:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel@ffwll.ch>
Date: Thu, 28 Nov 2019 14:02:56 -0000
Message-ID: <157494977662.21450.6314899687720216764@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1574871797.git.jani.nikula@intel.com>
In-Reply-To: <cover.1574871797.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_vi?=
 =?utf-8?q?deo=2C_drm=3A_constify_fbops_in_struct_fb=5Finfo_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogdmlkZW8sIGRybTogY29uc3RpZnkgZmJvcHMg
aW4gc3RydWN0IGZiX2luZm8gKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy83MDExOS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpB
cHBseWluZzogdmlkZW86IGZiX2RlZmlvOiBwcmVzZXJ2ZSB1c2VyIGZiX29wcwpBcHBseWluZzog
ZHJtL2ZiLWhlbHBlcjogZG9uJ3QgcHJlc2VydmUgZmJfb3BzIGFjcm9zcyBkZWZlcnJlZCBJTyB1
c2UKQXBwbHlpbmc6IHZpZGVvOiBzbXNjdWZ4OiBkb24ndCByZXN0b3JlIGZiX21tYXAgYWZ0ZXIg
ZGVmZXJyZWQgSU8gY2xlYW51cApBcHBseWluZzogdmlkZW86IHVkbGZiOiBkb24ndCByZXN0b3Jl
IGZiX21tYXAgYWZ0ZXIgZGVmZXJyZWQgSU8gY2xlYW51cApBcHBseWluZzogdmlkZW86IGZiZGV2
OiB2ZXNhZmI6IG1vZGlmeSB0aGUgc3RhdGljIGZiX29wcyBkaXJlY3RseQpBcHBseWluZzogdmlk
ZW86IGZibWVtOiB1c2UgY29uc3QgcG9pbnRlciBmb3IgZmJfb3BzCkFwcGx5aW5nOiB2aWRlbzog
b21hcGZiOiB1c2UgY29uc3QgcG9pbnRlciBmb3IgZmJfb3BzCkFwcGx5aW5nOiB2aWRlbzogZmJk
ZXY6IG1ha2UgZmJvcHMgbWVtYmVyIG9mIHN0cnVjdCBmYl9pbmZvIGEgY29uc3QgcG9pbnRlcgpV
c2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JaW5jbHVkZS9s
aW51eC9mYi5oCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4u
LgpBdXRvLW1lcmdpbmcgaW5jbHVkZS9saW51eC9mYi5oCkNPTkZMSUNUIChjb250ZW50KTogTWVy
Z2UgY29uZmxpY3QgaW4gaW5jbHVkZS9saW51eC9mYi5oCmVycm9yOiBGYWlsZWQgdG8gbWVyZ2Ug
aW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0
byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwOCB2aWRlbzogZmJkZXY6
IG1ha2UgZmJvcHMgbWVtYmVyIG9mIHN0cnVjdCBmYl9pbmZvIGEgY29uc3QgcG9pbnRlcgpXaGVu
IHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIu
CklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGlu
c3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywg
cnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
