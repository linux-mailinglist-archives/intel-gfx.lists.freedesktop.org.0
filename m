Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D03D122A4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 21:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A9C89701;
	Thu,  2 May 2019 19:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4470089701
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 19:42:19 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id p26so3224516edr.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2019 12:42:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RoRE5RxGdcJ/j2NKUSmbpYt6P0xbPbnk+3Byqv7+QCE=;
 b=gQfsaZCa6TKRhbzZTMKdjgDoof+MGFaMO6YEj/8UHDjvqHQnwLBOFwrbpokgQk+32J
 /9mmSi+s7zQvS1PWBYN96NJtLrFOGSH1vgzYxM2lmXp+7bJPE6M1oDeVZkz09BMJg11/
 /4Rr9RrU2YkbX3Pys+VBGSqvnCGc46dYhqerfMmaUzwkGpcu00QLd/OkXnsS4k09jYzd
 3bmfzro78h6hbmy8t4xJuln6iLI0NjTTms8Las87zZdjK1vrnz7Nt2Dej5u9fenJaoBd
 kjJqoSIva9UvzUA6Q7j+bBel/iTazxG0htJyg0z4CWnc87RjCkKeUKuL1R2D0RbpahNO
 WmGA==
X-Gm-Message-State: APjAAAWlwEKCNw6YdicMYiuzYzvK8vMcbBG+93ZdwTKd8ygr+e6QzB6t
 tC0YHL32DxhrsyvH6VIlC2MMom4kgbg=
X-Google-Smtp-Source: APXvYqy073gm6HmHNVt7tAJ8sLeJMv/VRSw6Vi3mMyoIOXfdo8zGvj1YxQ0GRzDYDsb79wMgoSh6gw==
X-Received: by 2002:a17:906:6446:: with SMTP id
 l6mr2758312ejn.30.1556826137644; 
 Thu, 02 May 2019 12:42:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id l43sm718924eda.70.2019.05.02.12.42.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 12:42:16 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu,  2 May 2019 21:42:08 +0200
Message-Id: <20190502194208.3535-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
References: <20190502194208.3535-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RoRE5RxGdcJ/j2NKUSmbpYt6P0xbPbnk+3Byqv7+QCE=;
 b=XYH6+dMNdqqzcAYMbnxGkrrVxDlhk1OGmZTatSGhN2szFWSDJuXFi8HhJewATHybzp
 DmHzlqf/ffCNEz0G/g7pKox3oJRpYqrk09K7Nq0yTJ85nt+cqPDbTmQJ3q9hWqLpVxKA
 h37OdzE0lkbHYKHuFkJgiM+ViKEZ7pcZuVhXw=
Subject: [Intel-gfx] [PATCH 2/2] RFC: soft/hardlookup: taint kernel
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
Cc: Don Zickus <dzickus@redhat.com>, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Peter Zijlstra <peterz@infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Sinan Kaya <okaya@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Laurence Oberman <loberman@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUncyB0aGUgc29mdC9oYXJkbG9va3VwX3BhbmljIHN5c2N0bHMsIGJ1dCB0aGF0J3MgYSBi
aXQgYW4gZXh0cmVtZQptZWFzdXJlLiBBcyBhIGZhbGxiYWNrIHRhaW50IGF0IGxlYXN0IHRoZSBt
YWNoaW5lLgoKT3VyIENJIHVzZXMgdGhpcyB0byBkZWNpZGUgd2hlbiBhIHJlYm9vdCBpcyBuZWNl
c3NhcnksIHBsdXMgdG8gZmlndXJlCm91dCB3aGV0aGVyIHRoZSBrZXJuZWwgaXMgc3RpbGwgaGFw
cHkuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNv
bT4KQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogSW5nbyBNb2xu
YXIgPG1pbmdvQGtlcm5lbC5vcmc+CkNjOiBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVh
ZC5vcmc+CkNjOiBWYWxkaXMgS2xldG5pZWtzIDx2YWxkaXMua2xldG5pZWtzQHZ0LmVkdT4KQ2M6
IExhdXJlbmNlIE9iZXJtYW4gPGxvYmVybWFuQHJlZGhhdC5jb20+CkNjOiBWaW5jZW50IFdoaXRj
aHVyY2ggPHZpbmNlbnQud2hpdGNodXJjaEBheGlzLmNvbT4KQ2M6IERvbiBaaWNrdXMgPGR6aWNr
dXNAcmVkaGF0LmNvbT4KQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5v
cmc+CkNjOiBTZXJnZXkgU2Vub3poYXRza3kgPHNlcmdleS5zZW5vemhhdHNreS53b3JrQGdtYWls
LmNvbT4KQ2M6IFNpbmFuIEtheWEgPG9rYXlhQGtlcm5lbC5vcmc+CkNjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGtlcm5lbC93YXRjaGRvZy5jICAgICB8IDIg
KysKIGtlcm5lbC93YXRjaGRvZ19obGQuYyB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEva2VybmVsL3dhdGNoZG9nLmMgYi9rZXJuZWwvd2F0Y2hk
b2cuYwppbmRleCA2YTU3ODcyMzMxMTMuLmRlN2E2MDUwMzUxNyAxMDA2NDQKLS0tIGEva2VybmVs
L3dhdGNoZG9nLmMKKysrIGIva2VybmVsL3dhdGNoZG9nLmMKQEAgLTQ2OSw2ICs0NjksOCBAQCBz
dGF0aWMgZW51bSBocnRpbWVyX3Jlc3RhcnQgd2F0Y2hkb2dfdGltZXJfZm4oc3RydWN0IGhydGlt
ZXIgKmhydGltZXIpCiAJCWFkZF90YWludChUQUlOVF9TT0ZUTE9DS1VQLCBMT0NLREVQX1NUSUxM
X09LKTsKIAkJaWYgKHNvZnRsb2NrdXBfcGFuaWMpCiAJCQlwYW5pYygic29mdGxvY2t1cDogaHVu
ZyB0YXNrcyIpOworCQllbHNlCisJCQlhZGRfdGFpbnQoVEFJTlRfV0FSTiwgTE9DS0RFUF9TVElM
TF9PSyk7CiAJCV9fdGhpc19jcHVfd3JpdGUoc29mdF93YXRjaGRvZ193YXJuLCB0cnVlKTsKIAl9
IGVsc2UKIAkJX190aGlzX2NwdV93cml0ZShzb2Z0X3dhdGNoZG9nX3dhcm4sIGZhbHNlKTsKZGlm
ZiAtLWdpdCBhL2tlcm5lbC93YXRjaGRvZ19obGQuYyBiL2tlcm5lbC93YXRjaGRvZ19obGQuYwpp
bmRleCAyNDdiZjBiMTU4MmMuLmNjZTQ2Y2Y3NWQ3NiAxMDA2NDQKLS0tIGEva2VybmVsL3dhdGNo
ZG9nX2hsZC5jCisrKyBiL2tlcm5lbC93YXRjaGRvZ19obGQuYwpAQCAtMTU0LDYgKzE1NCw4IEBA
IHN0YXRpYyB2b2lkIHdhdGNoZG9nX292ZXJmbG93X2NhbGxiYWNrKHN0cnVjdCBwZXJmX2V2ZW50
ICpldmVudCwKIAogCQlpZiAoaGFyZGxvY2t1cF9wYW5pYykKIAkJCW5taV9wYW5pYyhyZWdzLCAi
SGFyZCBMT0NLVVAiKTsKKwkJZWxzZQorCQkJYWRkX3RhaW50KFRBSU5UX1dBUk4sIExPQ0tERVBf
U1RJTExfT0spOwogCiAJCV9fdGhpc19jcHVfd3JpdGUoaGFyZF93YXRjaGRvZ193YXJuLCB0cnVl
KTsKIAkJcmV0dXJuOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
