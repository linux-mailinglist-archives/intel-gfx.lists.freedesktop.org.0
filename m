Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7733B2623
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 06:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20B66E9DE;
	Thu, 24 Jun 2021 04:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 765886E9DE;
 Thu, 24 Jun 2021 04:19:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F5E7A8169;
 Thu, 24 Jun 2021 04:19:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "David Stevens" <stevensd@chromium.org>
Date: Thu, 24 Jun 2021 04:19:13 -0000
Message-ID: <162450835343.1852.10555318154256335632@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624035749.4054934-1-stevensd@google.com>
In-Reply-To: <20210624035749.4054934-1-stevensd@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBL?=
 =?utf-8?q?VM=3A_Remove_uses_of_struct_page_from_x86_and_arm64_MMU?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogS1ZNOiBSZW1vdmUgdXNlcyBvZiBzdHJ1Y3Qg
cGFnZSBmcm9tIHg4NiBhbmQgYXJtNjQgTU1VClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy85MTgzNi8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09
CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9hdG9t
aWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9n
ZW5lcmF0ZWQvY29tcGlsZS5oCiAgTEQgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1Lm8K
ICBIRFJURVNUIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndnQuaApJbiBmaWxlIGluY2x1ZGVk
IGZyb20gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3Z0Lmg6NzM0LAogICAgICAgICAgICAg
ICAgIGZyb20gPGNvbW1hbmQtbGluZT46Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L21wdC5o
OiBJbiBmdW5jdGlvbiDigJhpbnRlbF9ndnRfaHlwZXJ2aXNvcl9nZm5fdG9fbWZuX3BhZ2XigJk6
Ci4vZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L21wdC5oOjIyNzo5OiBlcnJvcjogcmV0dXJuaW5n
IOKAmHN0cnVjdCBwYWdlICrigJkgZnJvbSBhIGZ1bmN0aW9uIHdpdGggcmV0dXJuIHR5cGUg4oCY
bG9uZyB1bnNpZ25lZCBpbnTigJkgbWFrZXMgaW50ZWdlciBmcm9tIHBvaW50ZXIgd2l0aG91dCBh
IGNhc3QgWy1XZXJyb3I9aW50LWNvbnZlcnNpb25dCiAgcmV0dXJuIGludGVsX2d2dF9ob3N0Lm1w
dC0+Z2ZuX3RvX21mbl9wYWdlKHZncHUtPmhhbmRsZSwgZ2ZuKTsKICAgICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmNjMTogYWxsIHdh
cm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCmRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlOjMxOTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndnQu
aGRydGVzdCcgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2
dC5oZHJ0ZXN0XSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTE1OiByZWNpcGUgZm9y
IHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZl
cnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTE1OiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2
ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MTU6IHJlY2lwZSBm
b3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVd
IEVycm9yIDIKTWFrZWZpbGU6MTg0NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxl
ZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
