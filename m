Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 618DCA86B0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D28AC89C6E;
	Wed,  4 Sep 2019 16:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A157D89C6E;
 Wed,  4 Sep 2019 16:47:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C151A47E2;
 Wed,  4 Sep 2019 16:47:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 04 Sep 2019 16:47:20 -0000
Message-ID: <20190904164720.9970.21377@emeril.freedesktop.org>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Expose_margin_connector_properties_for_underscan?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEV4cG9zZSBtYXJnaW4gY29u
bmVjdG9yIHByb3BlcnRpZXMgZm9yIHVuZGVyc2NhbgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjYyMjUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFy
eSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC42LjAK
Q29tbWl0OiBkcm0vZWRpZDogQWRkIGRybV9oZG1pX2F2aV9pbmZvZnJhbWVfYmFycygpCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1OiBQYXJhbWV0cml6ZSBQRklUX1BJUEUKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IFJlcGxhY2Ugc29tZSBhY2NpZGVudGFsIEk5MTVfUkVBRF9GVygpcyB3aXRoIHRo
ZSBub3JtYWwgdmVyc2lvbgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogRml4IHNrbCsgbm9uLXNj
YWxlZCBwZml0IG1vZGVzCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBGbGF0dGVuIGEgYnVuY2gg
b2YgdGhlIHBmaXQgZnVuY3Rpb25zCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1OiBVc2UgZHJtX3Jl
Y3QgdG8gc3RvcmUgdGhlIHBmaXQgd2luZG93IHBvcy9zaXplCk9rYXkhCgpDb21taXQ6IGRybS9p
OTE1OiBDaGVjayBwaXBlIHNvdXJjZSBzaXplIGFnYWluc3QgcGZpdCBsaW1pdHMKT2theSEKCkNv
bW1pdDogZHJtL2k5MTU6IENoZWNrIHBmaXQgc2NhbGluZyBmYWN0b3JzCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiBDaGVjayBwZml0IG1pbmltdW0gdGltaW5ncwpPa2F5IQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
