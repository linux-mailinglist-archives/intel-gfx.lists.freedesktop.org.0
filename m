Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BF678743
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 10:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DA389BF3;
	Mon, 29 Jul 2019 08:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A182989BF3;
 Mon, 29 Jul 2019 08:22:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 977E6A010E;
 Mon, 29 Jul 2019 08:22:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiaolin Zhang" <xiaolin.zhang@intel.com>
Date: Mon, 29 Jul 2019 08:22:38 -0000
Message-ID: <20190729082238.26658.35940@emeril.freedesktop.org>
References: <1564417962-74325-1-git-send-email-xiaolin.zhang@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1564417962-74325-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_i?=
 =?utf-8?q?915_vgpu_PV_to_improve_vgpu_performance?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogaTkxNSB2Z3B1IFBWIHRvIGltcHJvdmUgdmdw
dSBwZXJmb3JtYW5jZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjQzNzIvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNl
IG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNTog
aW50cm9kdWNlZCB2Z3B1IHB2IGNhcGFiaWxpdHkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IHZn
cHUgc2hhcmVkIG1lbW9yeSBzZXR1cCBmb3IgcHYgb3B0aW1pemF0aW9uCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiB2Z3B1IHB2IGNvbW1hbmQgYnVmZmVyIHN1cHBvcnQKT2theSEKCkNvbW1pdDog
ZHJtL2k5MTU6IHZncHUgcHBndHQgdXBkYXRlIHB2IG9wdGltaXphdGlvbgpPa2F5IQoKQ29tbWl0
OiBkcm0vaTkxNTogdmdwdSBjb250ZXh0IHN1Ym1pc3Npb24gcHYgb3B0aW1pemF0aW9uCk9rYXkh
CgpDb21taXQ6IGRybS9pOTE1L2d2dDogR1ZUZyBoYW5kbGUgcHZfY2FwcyBQVklORk8gcmVnaXN0
ZXIKT2theSEKCkNvbW1pdDogZHJtL2k5MTUvZ3Z0OiBHVlRnIGhhbmRsZSBzaGFyZWRfcGFnZSBz
ZXR1cApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndnQ6IEdWVGcgc3VwcG9ydCBwcGd0dCBwdiBv
cHRpbWl6YXRpb24KKy4vaW5jbHVkZS9saW51eC9zbGFiLmg6NjcyOjEzOiBlcnJvcjogdW5kZWZp
bmVkIGlkZW50aWZpZXIgJ19fYnVpbHRpbl9tdWxfb3ZlcmZsb3cnCisuL2luY2x1ZGUvbGludXgv
c2xhYi5oOjY3MjoxMzogd2FybmluZzogY2FsbCB3aXRoIG5vIHR5cGUhCgpDb21taXQ6IGRybS9p
OTE1L2d2dDogR1ZUZyBzdXBwb3J0IGNvbnRleHQgc3VibWlzc2lvbiBwdiBvcHRpbWl6YXRpb24K
T2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
