Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D003F5ED6E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 22:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2903D6E1BB;
	Wed,  3 Jul 2019 20:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 734EA6E1BB;
 Wed,  3 Jul 2019 20:25:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D4E4A00A0;
 Wed,  3 Jul 2019 20:25:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 03 Jul 2019 20:25:48 -0000
Message-ID: <20190703202548.7777.34417@emeril.freedesktop.org>
References: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Random_plane_stuff?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJhbmRvbSBwbGFuZSBzdHVm
ZgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjMxNjUv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0t
dGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNTogQWRkIHdpbmRvd2lu
ZyBmb3IgcHJpbWFyeSBwbGFuZXMgb24gZ2VuMi8zIGFuZCBjaHYKT2theSEKCkNvbW1pdDogZHJt
L2k5MTU6IERpc2FibGUgc3ByaXRlIGdhbW1hIG9uIGl2Yi1iZHcKT2theSEKCkNvbW1pdDogZHJt
L2k5MTU6IFByb2dyYW0gcGxhbmUgZ2FtbWEgcmFtcHMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6
IERlYWwgd2l0aCBjcHA9PTggZm9yIGc0eCB3YXRlcm1hcmtzCitkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jOjExMzQ6MjM6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZv
aWQpCi1kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjQ0NDE6MjU6IHdhcm5pbmc6IGV4
cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jOjQ0NTI6MjU6IHdhcm5pbmc6IHRvbyBtYW55IHdhcm5pbmdzCitkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jOjQ0NDE6MjU6IHdhcm5pbmc6IHRvbyBtYW55IHdhcm5pbmdzCgpDb21t
aXQ6IGRybS9pOTE1OiBDb3NtZXRpYyBmaXggZm9yIHNrbCsgcGxhbmUgc3dpdGNoIHN0YXRlbWVu
dApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogQ2xlYW4gdXAgc2tsIHZzLiBpY2wgcGxhbmUgZm9y
bWF0cwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
