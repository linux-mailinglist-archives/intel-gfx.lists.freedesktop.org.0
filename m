Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D8637822C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 12:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 676D86E0D5;
	Mon, 10 May 2021 10:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0044289B03;
 Mon, 10 May 2021 10:28:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9332B6191D;
 Mon, 10 May 2021 10:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620642492;
 bh=l5qEtyehlyXvv/SDET45/vq79ol14S8NVaAHOXDTcyE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C0s4/sCpLX8dUqr3yiQfShgVZSZ03jRS5yubk3BbNc0DnvOxVkJYOhXHu3TADVXvh
 43Ozg2Yx/tqKfgLdOrlELynryWvELECKvrtAed5SFABpvTGMgWe70ZKh8I8iZ1Loe5
 VXU39W3GA8N6OTEvmQAczKGWqKIyvCigQITV2G7gucuhPm9Ub08oJWv9Fs3fHuir72
 n/rR9khB+/2vMWBJItqiGJnJX7OkNXqzmn2FJxzQIa/8bsmoekWYO/vkZapKATKa4x
 jSmjJqZq2dlUWJhHEnN5FFZYEFS4Akt5WF3yjpYMDD0I72RvRHjuo4OjjMGKEJkKB8
 alViREAP/T09Q==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1lg38z-000UY0-9h; Mon, 10 May 2021 12:28:09 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Date: Mon, 10 May 2021 12:26:56 +0200
Message-Id: <36bc1118467da645a57515743c9f6c1cd86abe8c.1620641727.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620641727.git.mchehab+huawei@kernel.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 10 May 2021 10:31:52 +0000
Subject: [Intel-gfx] [PATCH 44/53] docs: gpu: avoid using UTF-8 chars
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 "James \(Qian\) Wang" <james.qian.wang@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Mali DP Maintainers <malidp@foss.arm.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hpbGUgVVRGLTggY2hhcmFjdGVycyBjYW4gYmUgdXNlZCBhdCB0aGUgTGludXggZG9jdW1lbnRh
dGlvbiwKdGhlIGJlc3QgaXMgdG8gdXNlIHRoZW0gb25seSB3aGVuIEFTQ0lJIGRvZXNuJ3Qgb2Zm
ZXIgYSBnb29kIHJlcGxhY2VtZW50LgpTbywgcmVwbGFjZSB0aGUgb2NjdXJlbmNlcyBvZiB0aGUg
Zm9sbG93aW5nIFVURi04IGNoYXJhY3RlcnM6CgoJLSBVKzIwMTkgKCfigJknKTogUklHSFQgU0lO
R0xFIFFVT1RBVElPTiBNQVJLCgpTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIg
PG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ci0tLQogRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5y
c3QgICAgICAgfCAyICstCiBEb2N1bWVudGF0aW9uL2dwdS9rb21lZGEta21zLnJzdCB8IDIgKy0K
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvaTkx
NS5yc3QKaW5kZXggNDg2YzcyMGYzODkwLi4yY2JmNTQ0NjBiNDggMTAwNjQ0Ci0tLSBhL0RvY3Vt
ZW50YXRpb24vZ3B1L2k5MTUucnN0CisrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CkBA
IC0zNjEsNyArMzYxLDcgQEAgTG9ja2luZyBHdWlkZWxpbmVzCiAJICByZWFsIGJhZC4KIAogIy4g
RG8gbm90IG5lc3QgZGlmZmVyZW50IGxydS9tZW1vcnkgbWFuYWdlciBsb2NrcyB3aXRoaW4gZWFj
aCBvdGhlci4KLSAgIFRha2UgdGhlbSBpbiB0dXJuIHRvIHVwZGF0ZSBtZW1vcnkgYWxsb2NhdGlv
bnMsIHJlbHlpbmcgb24gdGhlIG9iamVjdOKAmXMKKyAgIFRha2UgdGhlbSBpbiB0dXJuIHRvIHVw
ZGF0ZSBtZW1vcnkgYWxsb2NhdGlvbnMsIHJlbHlpbmcgb24gdGhlIG9iamVjdCdzCiAgICBkbWFf
cmVzdiB3d19tdXRleCB0byBzZXJpYWxpemUgYWdhaW5zdCBvdGhlciBvcGVyYXRpb25zLgogCiAj
LiBUaGUgc3VnZ2VzdGlvbiBmb3IgbHJ1L21lbW9yeSBtYW5hZ2VycyBsb2NrcyBpcyB0aGF0IHRo
ZXkgYXJlIHNtYWxsCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9rb21lZGEta21zLnJz
dCBiL0RvY3VtZW50YXRpb24vZ3B1L2tvbWVkYS1rbXMucnN0CmluZGV4IGViNjkzYzg1N2UyZC4u
YzIwNjc2NzhlOTJjIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9rb21lZGEta21zLnJz
dAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9rb21lZGEta21zLnJzdApAQCAtMzI0LDcgKzMyNCw3
IEBAIHRoZSBjb250cm9sLWFiaWxpdGVzIG9mIGRldmljZS4KIAogV2UgaGF2ZSAma29tZWRhX2Rl
diwgJmtvbWVkYV9waXBlbGluZSwgJmtvbWVkYV9jb21wb25lbnQuIE5vdyBmaWxsIGRldmljZXMg
d2l0aAogcGlwZWxpbmVzLiBTaW5jZSBrb21lZGEgaXMgbm90IGZvciBENzEgb25seSBidXQgYWxz
byBpbnRlbmRlZCBmb3IgbGF0ZXIgcHJvZHVjdHMsCi1vZiBjb3Vyc2Ugd2XigJlkIGJldHRlciBz
aGFyZSBhcyBtdWNoIGFzIHBvc3NpYmxlIGJldHdlZW4gZGlmZmVyZW50IHByb2R1Y3RzLiBUbwor
b2YgY291cnNlIHdlJ2QgYmV0dGVyIHNoYXJlIGFzIG11Y2ggYXMgcG9zc2libGUgYmV0d2VlbiBk
aWZmZXJlbnQgcHJvZHVjdHMuIFRvCiBhY2hpZXZlIHRoaXMsIHNwbGl0IHRoZSBrb21lZGEgZGV2
aWNlIGludG8gdHdvIGxheWVyczogQ09SRSBhbmQgQ0hJUC4KIAogLSAgIENPUkU6IGZvciBjb21t
b24gZmVhdHVyZXMgYW5kIGNhcGFiaWxpdGllcyBoYW5kbGluZy4KLS0gCjIuMzAuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
