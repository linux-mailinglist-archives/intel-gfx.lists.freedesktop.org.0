Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A53095985
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 10:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCEF96E82A;
	Tue, 20 Aug 2019 08:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCA416E7AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 08:19:59 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id a21so5332843edt.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 01:19:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EfuXWDGKyoQ+utA9DObLdBzgNQ7PmRM7y9+Md6RChRo=;
 b=jASbgCZYSJwmCPXv1fiLAbywHfrL7k9gCtI8YdGdPMoc5GFSoA7NcgSRQ5Tvpj5SkC
 cyNncLZGzjFs/gVJE3c9Li0AWXsmN23kA/HRB5ShvM1sO5rv6hUs9EsJvqBAuZntDYI1
 yL4GJy1Plv8Ir0KqLyNAsUHP93fUb1zVfW4qxRKEDvTvptFvN7M4/4iCWXUuBB61fCgF
 xcISh/28BEVG/AwctINCzTbKJzPPsxAxC12RdNeenxAG4oNQco7stq6qkziOfb2PFVYy
 UFOVltYrGG9qTSokjsqyqhb/yh0ZBImigodxdYUXNUPqXOByPBHYOTCqT8l2HwhnKCJM
 NfuQ==
X-Gm-Message-State: APjAAAWb+qvELKwu0SyS2XbV5OSGOSmlam7AyP28ebTXvebRTtUUWlB3
 WG52WzQOn0iKEJFTMvg2wp+Jl128zIasaQ==
X-Google-Smtp-Source: APXvYqwslvZPG/vQIrSy/z3Y4BVivFQjmK/hYGPsHbZyAilMU+rn5KrbwxywGPMgCi4TSq7L+XqPhA==
X-Received: by 2002:aa7:c353:: with SMTP id j19mr30023854edr.292.1566289197967; 
 Tue, 20 Aug 2019 01:19:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id i4sm2467705ejs.39.2019.08.20.01.19.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 01:19:57 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 20 Aug 2019 10:19:50 +0200
Message-Id: <20190820081951.25053-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190820081951.25053-1-daniel.vetter@ffwll.ch>
References: <20190820081951.25053-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EfuXWDGKyoQ+utA9DObLdBzgNQ7PmRM7y9+Md6RChRo=;
 b=IpD4KcUWdJJzGYciCrUh7Bv8uXRwVIsqc9WDxDjSY8vgC4bD1MqnLoFtEJ3WKlW7x2
 rkEWO8mJXsbLYBcZ+swGGgyCtnXjR2zgHpDjOKk71pTR3TdV0ToLIe4lyHCOZjpEPdUf
 mEs4X/epqWonM/u4BgTxkPW+QH5Xg2F1UbKI4=
Subject: [Intel-gfx] [PATCH 2/3] lockdep: add might_lock_nested()
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmVjZXNzYXJ5IHRvIGFubm90YXRlIGZ1bmN0aW9ucyB3aGVyZSB3ZSBtaWdodCBhY3F1aXJlIGEK
bXV0ZXhfbG9ja19uZXN0ZWQoKSBvciBzaW1pbGFyLiBOZWVkZWQgYnkgaTkxNS4KClNpZ25lZC1v
ZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogUGV0ZXIg
WmlqbHN0cmEgPHBldGVyekBpbmZyYWRlYWQub3JnPgpDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJl
ZGhhdC5jb20+CkNjOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgpDYzogbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZwotLS0KIGluY2x1ZGUvbGludXgvbG9ja2RlcC5oIHwgOCArKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvbG9ja2RlcC5oIGIvaW5jbHVkZS9saW51eC9sb2NrZGVwLmgKaW5kZXggMzhlYTYx
NzhkZjdkLi4zMGY2MTcyZDY4ODkgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbG9ja2RlcC5o
CisrKyBiL2luY2x1ZGUvbGludXgvbG9ja2RlcC5oCkBAIC02MzEsNiArNjMxLDEzIEBAIGRvIHsJ
CQkJCQkJCQlcCiAJbG9ja19hY3F1aXJlKCYobG9jayktPmRlcF9tYXAsIDAsIDAsIDEsIDEsIE5V
TEwsIF9USElTX0lQXyk7CVwKIAlsb2NrX3JlbGVhc2UoJihsb2NrKS0+ZGVwX21hcCwgMCwgX1RI
SVNfSVBfKTsJCQlcCiB9IHdoaWxlICgwKQorIyBkZWZpbmUgbWlnaHRfbG9ja19uZXN0ZWQobG9j
aywgc3ViY2xhc3MpIAkJCQlcCitkbyB7CQkJCQkJCQkJXAorCXR5cGVjaGVjayhzdHJ1Y3QgbG9j
a2RlcF9tYXAgKiwgJihsb2NrKS0+ZGVwX21hcCk7CQlcCisJbG9ja19hY3F1aXJlKCYobG9jaykt
PmRlcF9tYXAsIHN1YmNsYXNzLCAwLCAxLCAxLCBOVUxMLAkJXAorCQkgICAgIF9USElTX0lQXyk7
CQkJCQlcCisJbG9ja19yZWxlYXNlKCYobG9jayktPmRlcF9tYXAsIDAsIF9USElTX0lQXyk7CQlc
Cit9IHdoaWxlICgwKQogCiAjZGVmaW5lIGxvY2tkZXBfYXNzZXJ0X2lycXNfZW5hYmxlZCgpCWRv
IHsJCQkJXAogCQlXQVJOX09OQ0UoZGVidWdfbG9ja3MgJiYgIWN1cnJlbnQtPmxvY2tkZXBfcmVj
dXJzaW9uICYmCVwKQEAgLTY1Myw2ICs2NjAsNyBAQCBkbyB7CQkJCQkJCQkJXAogI2Vsc2UKICMg
ZGVmaW5lIG1pZ2h0X2xvY2sobG9jaykgZG8geyB9IHdoaWxlICgwKQogIyBkZWZpbmUgbWlnaHRf
bG9ja19yZWFkKGxvY2spIGRvIHsgfSB3aGlsZSAoMCkKKyMgZGVmaW5lIG1pZ2h0X2xvY2tfbmVz
dGVkKGxvY2ssIHN1YmNsYXNzKSBkbyB7IH0gd2hpbGUgKDApCiAjIGRlZmluZSBsb2NrZGVwX2Fz
c2VydF9pcnFzX2VuYWJsZWQoKSBkbyB7IH0gd2hpbGUgKDApCiAjIGRlZmluZSBsb2NrZGVwX2Fz
c2VydF9pcnFzX2Rpc2FibGVkKCkgZG8geyB9IHdoaWxlICgwKQogIyBkZWZpbmUgbG9ja2RlcF9h
c3NlcnRfaW5faXJxKCkgZG8geyB9IHdoaWxlICgwKQotLSAKMi4yMy4wLnJjMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
