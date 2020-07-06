Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8482159C4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 16:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8198989EB4;
	Mon,  6 Jul 2020 14:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E744A89EA3
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 14:42:52 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id 9so45641864ljv.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 07:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AJpcZstIpy2dQl6+c3wtzS24tt29cvj33sv7x1/FoVI=;
 b=PA+vU+wQ7qfu0yCEnLcGsL5lrJFKiVgr4GeOBwBfqSoKKz2/3IWh6YYa89hC9jSh5M
 rDfzpOnxUXuGjb/azaxwnYl1S2Hu33evDCwBuBMB/Cg6wgfu3CZWFR43QIBNp/va3WB1
 /3Shu+oePxd2n4puCDp2k9BDDrH9wavwVMLPqqtQmTqX5ZGWuKZC3SBm4zAdE5xXRtc8
 K7WrkyCGWzSt8eUfv0ST1/k0Cguwk9uws1gWWEHnSSAk2QHpsqZekqYsgyDXryeQdtTf
 Jgl23HadMmt5rEWlhM8gWcYSxGSn/iv+JMfj9V9qajC3CYchuamPJ26J0YijDxngayib
 Wstw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AJpcZstIpy2dQl6+c3wtzS24tt29cvj33sv7x1/FoVI=;
 b=cVlxmkUh2nLmy6j+Kc3BIPxDAaGBa+hyWASXGv2wk1nuoUtmsWXU5sYmrY48TfFjVo
 XlxXkKjInAsWsCuoZhxD3mhSkIPxQj0E4tS9QeQbnFw2ttme0c4PDcenFnNbTb/ihpD0
 PgxOTvaQrblY+zrD4mbRgu2NROwmATqIkwBLw6t8QefGx7jHVcYL4EfW+otOMAPG+Q0d
 c7QLdEP6+gkqenWWCzcQ4yr4rmPS+5dWhIioQskxclYWKSSuBPPeX4todxBVIlxMy2Rg
 6LoGh43L+x/gENp14rA4aUhs1M3YgPXzXrsbx0oLLGCFbBFZaQXzwQMROdKSn1ksmUEN
 V0Ng==
X-Gm-Message-State: AOAM530ci3RL6nXMa+tM1apLv/bvQLlsF3CCJiAaBCmn4PqKnQIxODVB
 LUkhJvOpvAHU8q9qdpC7A4tyQ4Lvs4rDeQ==
X-Google-Smtp-Source: ABdhPJxueTOusAyjySwMmuEueA98K9xXDgb8lRpy80cxlt2dIIzDQj9Q9mkWVV6e+a3BxPt//UvD4Q==
X-Received: by 2002:a05:651c:217:: with SMTP id
 y23mr23868157ljn.447.1594046571109; 
 Mon, 06 Jul 2020 07:42:51 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id y1sm7883834lji.5.2020.07.06.07.42.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 07:42:50 -0700 (PDT)
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal@hardline.pl>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 16:41:07 +0200
Message-Id: <20200706144107.204821-3-michal@hardline.pl>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200706144107.204821-1-michal@hardline.pl>
References: <20200706144107.204821-1-michal@hardline.pl>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: Don't taint when using fault
 injection
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgoKSXQg
aXMgbm90IHJlYWxseSB1bmV4cGVjdGVkIHRvIGhpdCB3ZWRnZSBvbiBpbml0IHRoaXMgd2F5LgpX
ZSdyZSBhbHJlYWR5IGRvd25ncmFkaW5nIGVycm9yIHByaW50ayB3aGVuIHJ1bm5pbmcgd2l0aCBm
YXVsdCBpbmplY3Rpb24sCmxldCdzIHVzZSB0aGUgc2FtZSBhcHByb2FjaCBmb3IgQ0kgdGFpbnRp
bmcuCgp2MjogRG9uJ3QgY2hlY2sgZmF1bHQgaW5qZWN0IGluIHRyYWNlIGR1bXAgKENocmlzKQoK
U2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwu
Y29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWNo
YWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IFBldHJpIExhdHZh
bGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYwppbmRleCAwMWEzZDNjOTQxYmYuLjRj
MzA1ZDgzODAxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYwpAQCAtNTMsNyArNTMsMTAg
QEAgdm9pZCBhZGRfdGFpbnRfZm9yX0NJKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1
bnNpZ25lZCBpbnQgdGFpbnQpCiB7CiAJX19pOTE1X3ByaW50ayhpOTE1LCBLRVJOX05PVElDRSwg
IkNJIHRhaW50ZWQ6JSN4IGJ5ICVwU1xuIiwKIAkJICAgICAgdGFpbnQsICh2b2lkICopX1JFVF9J
UF8pOwotCV9fYWRkX3RhaW50X2Zvcl9DSSh0YWludCk7CisKKwkvKiBGYWlsdXJlcyB0aGF0IG9j
Y3VyIGR1cmluZyBmYXVsdCBpbmplY3Rpb24gdGVzdGluZyBhcmUgZXhwZWN0ZWQgKi8KKwlpZiAo
IWk5MTVfZXJyb3JfaW5qZWN0ZWQoKSkKKwkJX19hZGRfdGFpbnRfZm9yX0NJKHRhaW50KTsKIH0K
IAogI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHKQotLSAKMi4yNy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
