Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5586B8DEA3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 22:20:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB026E833;
	Wed, 14 Aug 2019 20:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ADF86E832
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 20:20:42 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id p28so372978edi.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 13:20:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8YdsxBm4SorcCs6LR7QkyWK07j5ac679kdHnkcCO8NA=;
 b=MpI+K0fxcqGNqHuqbJ6cMfmgz2emqJpoKAd8IXt/YNGs1XR+EZuRm696zjE7JGvJhe
 dpB9EJcTT3bEXGfjBjAawgEBOZAw9NlBaq7aoOXnd2wLrDSz6sLTb4XsUcXspH9OndGW
 YIRRLw9TCNseq31D4/z+N6sYxDh8l5ryCsuYwONd+LnP1Eu9SH60WZ4Zb7KYHS8Lsx5S
 A2nY4GtvzRILjkY1hYQshU6yitI6VqHHpf6ivSm2MFaI6MQu7XB/p6cR6bImss5NAM8I
 R0A4g2QgrWeOvJqoqeTgAO5uWNAMTauolstu0WbMe649zUcAexW3bO/zsrqqsLpmHsfC
 3n3A==
X-Gm-Message-State: APjAAAXrruy19yFzlbyue+VhsiDgS48AXwqPuanE7WMt7AeL1k2X8bTF
 jYL0KS+tnN7pDF70hpUjXDqrTQ==
X-Google-Smtp-Source: APXvYqyP95CvDgYSo4eGFz7IoA7gCAiTTQNCbZZ85IgUxdxzhynRxhcbBwMwFB/O5KsYTtdIbvM0uQ==
X-Received: by 2002:aa7:d285:: with SMTP id w5mr1658562edq.134.1565814040425; 
 Wed, 14 Aug 2019 13:20:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id ns22sm84342ejb.9.2019.08.14.13.20.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 13:20:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Wed, 14 Aug 2019 22:20:27 +0200
Message-Id: <20190814202027.18735-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
References: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8YdsxBm4SorcCs6LR7QkyWK07j5ac679kdHnkcCO8NA=;
 b=SElBQSnY/MEpHH8627z9LUJO0AwXfwMVSdTTj8+/meirzqVOVaUQig461Ql4grU9BW
 AVOrqu2gy8FVObWFxEJFZZI9KGDQ9zAPfmV41ZLckaSp17XA9+mEmzFQIBhzh/7c6swP
 BOywaRmA/1lgbIGeuvAe+e1TOiq/MWLuxLS1U=
Subject: [Intel-gfx] [PATCH 5/5] mm/hmm: WARN on illegal
 ->sync_cpu_device_pagetables errors
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
Cc: Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-mm@kvack.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, John Hubbard <jhubbard@nvidia.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Balbir Singh <bsingharora@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Souptick Joarder <jrdr.linux@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2ltaWxhciB0byB0aGUgd2FybmluZyBpbiB0aGUgbW11IG5vdGlmZXIsIHdhcm5pbmcgaWYgYW4g
aG1tIG1pcnJvcgpjYWxsYmFjayBnZXRzIGl0J3MgYmxvY2tpbmcgdnMuIG5vbmJsb2NraW5nIGhh
bmRsaW5nIHdyb25nLCBvciBpZiBpdApmYWlscyB3aXRoIGFueXRoaW5nIGVsc2UgdGhhbiAtRUFH
QUlOLgoKQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzogUmFscGggQ2FtcGJl
bGwgPHJjYW1wYmVsbEBudmlkaWEuY29tPgpDYzogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlk
aWEuY29tPgpDYzogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+CkNjOiBE
YW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+CkNjOiBNYXR0aGV3IFdpbGNv
eCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4KQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+
CkNjOiBCYWxiaXIgU2luZ2ggPGJzaW5naGFyb3JhQGdtYWlsLmNvbT4KQ2M6IElyYSBXZWlueSA8
aXJhLndlaW55QGludGVsLmNvbT4KQ2M6IFNvdXB0aWNrIEpvYXJkZXIgPGpyZHIubGludXhAZ21h
aWwuY29tPgpDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4KQ2M6
ICJKw6lyw7RtZSBHbGlzc2UiIDxqZ2xpc3NlQHJlZGhhdC5jb20+CkNjOiBsaW51eC1tbUBrdmFj
ay5vcmcKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5j
b20+Ci0tLQogbW0vaG1tLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL21tL2htbS5jIGIvbW0vaG1tLmMKaW5kZXggMTZiNjczMWEzNGRiLi41
MmFjNTkzODQyNjggMTAwNjQ0Ci0tLSBhL21tL2htbS5jCisrKyBiL21tL2htbS5jCkBAIC0yMDUs
NiArMjA1LDkgQEAgc3RhdGljIGludCBobW1faW52YWxpZGF0ZV9yYW5nZV9zdGFydChzdHJ1Y3Qg
bW11X25vdGlmaWVyICptbiwKIAkJCXJldCA9IC1FQUdBSU47CiAJCQlicmVhazsKIAkJfQorCQlX
QVJOKHJldCwgIiVwUyBjYWxsYmFjayBmYWlsZWQgd2l0aCAlZCBpbiAlc2Jsb2NrYWJsZSBjb250
ZXh0XG4iLAorCQkgICAgIG1pcnJvci0+b3BzLT5zeW5jX2NwdV9kZXZpY2VfcGFnZXRhYmxlcywg
cmV0LAorCQkgICAgIHVwZGF0ZS5ibG9ja2FibGUgPyAiIiA6ICJub24tIik7CiAJfQogCXVwX3Jl
YWQoJmhtbS0+bWlycm9yc19zZW0pOwogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
