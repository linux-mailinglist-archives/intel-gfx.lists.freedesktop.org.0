Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2BF140FB4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 18:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ADAC6F64A;
	Fri, 17 Jan 2020 17:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812A26F63E;
 Fri, 17 Jan 2020 17:16:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19919964-1500050 
 for multiple; Fri, 17 Jan 2020 17:15:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 17:15:45 +0000
Message-Id: <20200117171545.3212625-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200117171545.3212625-1-chris@chris-wilson.co.uk>
References: <20200117171545.3212625-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 5/5] HAX: run gem_render_copy tests in BAT
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5j
b20+CgotLS0KIHRlc3RzL2ludGVsLWNpL2Zhc3QtZmVlZGJhY2sudGVzdGxpc3QgfCAzOCArKysr
KysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdCBiL3Rl
c3RzL2ludGVsLWNpL2Zhc3QtZmVlZGJhY2sudGVzdGxpc3QKaW5kZXggMzdhOTJiNGU3Li42NDY1
NzI1YjkgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2ludGVsLWNpL2Zhc3QtZmVlZGJhY2sudGVzdGxpc3QK
KysrIGIvdGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdApAQCAtMzcsNiArMzcs
NDQgQEAgaWd0QGdlbV9mbGlua19iYXNpY0BmbGluay1saWZldGltZQogaWd0QGdlbV9saW5lYXJf
YmxpdHNAYmFzaWMKIGlndEBnZW1fbW1hcEBiYXNpYwogaWd0QGdlbV9tbWFwX2d0dEBiYXNpYwor
aWd0QGdlbV9yZW5kZXJfY29weUBsaW5lYXIKK2lndEBnZW1fcmVuZGVyX2NvcHlAeC10aWxlZAor
aWd0QGdlbV9yZW5kZXJfY29weUB5LXRpbGVkCitpZ3RAZ2VtX3JlbmRlcl9jb3B5QHlmLXRpbGVk
CitpZ3RAZ2VtX3JlbmRlcl9jb3B5QG1peGVkLXRpbGVkLXRvLXktdGlsZWQtY2NzCitpZ3RAZ2Vt
X3JlbmRlcl9jb3B5QG1peGVkLXRpbGVkLXRvLXlmLXRpbGVkLWNjcworaWd0QGdlbV9yZW5kZXJf
Y29weUB5LXRpbGVkLWNjcy10by1saW5lYXIKK2lndEBnZW1fcmVuZGVyX2NvcHlAeS10aWxlZC1j
Y3MtdG8teC10aWxlZAoraWd0QGdlbV9yZW5kZXJfY29weUB5LXRpbGVkLWNjcy10by15LXRpbGVk
CitpZ3RAZ2VtX3JlbmRlcl9jb3B5QHktdGlsZWQtY2NzLXRvLXlmLXRpbGVkCitpZ3RAZ2VtX3Jl
bmRlcl9jb3B5QHlmLXRpbGVkLWNjcy10by1saW5lYXIKK2lndEBnZW1fcmVuZGVyX2NvcHlAeWYt
dGlsZWQtY2NzLXRvLXgtdGlsZWQKK2lndEBnZW1fcmVuZGVyX2NvcHlAeWYtdGlsZWQtY2NzLXRv
LXktdGlsZWQKK2lndEBnZW1fcmVuZGVyX2NvcHlAeWYtdGlsZWQtY2NzLXRvLXlmLXRpbGVkCitp
Z3RAZ2VtX3JlbmRlcl9jb3B5QHktdGlsZWQtY2NzLXRvLXktdGlsZWQtY2NzCitpZ3RAZ2VtX3Jl
bmRlcl9jb3B5QHlmLXRpbGVkLWNjcy10by15Zi10aWxlZC1jY3MKK2lndEBnZW1fcmVuZGVyX2Nv
cHlAeS10aWxlZC1jY3MtdG8teWYtdGlsZWQtY2NzCitpZ3RAZ2VtX3JlbmRlcl9jb3B5QHlmLXRp
bGVkLWNjcy10by15LXRpbGVkLWNjcworaWd0QGdlbV9yZW5kZXJfY29weUBsaW5lYXItdG8tdmVi
b3gteWYtdGlsZWQKK2lndEBnZW1fcmVuZGVyX2NvcHlAbGluZWFyLXRvLXZlYm94LXktdGlsZWQK
K2lndEBnZW1fcmVuZGVyX2NvcHlAeC10aWxlZC10by12ZWJveC15Zi10aWxlZAoraWd0QGdlbV9y
ZW5kZXJfY29weUB4LXRpbGVkLXRvLXZlYm94LXktdGlsZWQKK2lndEBnZW1fcmVuZGVyX2NvcHlA
eS10aWxlZC10by12ZWJveC1saW5lYXIKK2lndEBnZW1fcmVuZGVyX2NvcHlAeS10aWxlZC10by12
ZWJveC14LXRpbGVkCitpZ3RAZ2VtX3JlbmRlcl9jb3B5QHktdGlsZWQtdG8tdmVib3gteS10aWxl
ZAoraWd0QGdlbV9yZW5kZXJfY29weUB5LXRpbGVkLXRvLXZlYm94LXlmLXRpbGVkCitpZ3RAZ2Vt
X3JlbmRlcl9jb3B5QHlmLXRpbGVkLXRvLXZlYm94LWxpbmVhcgoraWd0QGdlbV9yZW5kZXJfY29w
eUB5Zi10aWxlZC10by12ZWJveC14LXRpbGVkCitpZ3RAZ2VtX3JlbmRlcl9jb3B5QHlmLXRpbGVk
LXRvLXZlYm94LXlmLXRpbGVkCitpZ3RAZ2VtX3JlbmRlcl9jb3B5QHlmLXRpbGVkLXRvLXZlYm94
LXktdGlsZWQKK2lndEBnZW1fcmVuZGVyX2NvcHlAeS10aWxlZC1tYy1jY3MtdG8tdmVib3gteS10
aWxlZAoraWd0QGdlbV9yZW5kZXJfY29weUB5Zi10aWxlZC1tYy1jY3MtdG8tdmVib3gteWYtdGls
ZWQKK2lndEBnZW1fcmVuZGVyX2NvcHlAeS10aWxlZC1tYy1jY3MtdG8tdmVib3gteWYtdGlsZWQK
K2lndEBnZW1fcmVuZGVyX2NvcHlAeWYtdGlsZWQtbWMtY2NzLXRvLXZlYm94LXktdGlsZWQKK2ln
dEBnZW1fcmVuZGVyX2NvcHlAeS10aWxlZC1tYy1jY3MtdG8teS10aWxlZC1jY3MKK2lndEBnZW1f
cmVuZGVyX2NvcHlAeS10aWxlZC1tYy1jY3MtdG8teWYtdGlsZWQtY2NzCitpZ3RAZ2VtX3JlbmRl
cl9jb3B5QHktdGlsZWQtY2NzLXRvLXktdGlsZWQtbWMtY2NzCitpZ3RAZ2VtX3JlbmRlcl9jb3B5
QHktdGlsZWQtY2NzLXRvLXlmLXRpbGVkLW1jLWNjcwogaWd0QGdlbV9yZW5kZXJfbGluZWFyX2Js
aXRzQGJhc2ljCiBpZ3RAZ2VtX3JlbmRlcl90aWxlZF9ibGl0c0BiYXNpYwogaWd0QGdlbV9yaW5n
ZmlsbEBiYXNpYy1kZWZhdWx0Ci0tIAoyLjI1LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
