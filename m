Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CF587210
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 08:16:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8860F6ECFE;
	Fri,  9 Aug 2019 06:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73046E1D6;
 Fri,  9 Aug 2019 06:16:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17938045-1500050 
 for multiple; Fri, 09 Aug 2019 07:16:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 07:16:37 +0100
Message-Id: <20190809061637.10758-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Flush idle work before
 waiting for suspend
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UnVudGltZSBzdXNwZW5kIGtpY2tzIGluIHF1aWNrZXIgaWYgd2UgZmx1c2ggYW55IGlkbGUgd29y
ayB0aGF0IG1heSBiZWVuCmFjY3J1ZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9wZXJmX3BtdS5jIHwgMSArCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS90ZXN0cy9wZXJmX3BtdS5j
IGIvdGVzdHMvcGVyZl9wbXUuYwppbmRleCBkMzkyYTY3ZDQuLjM1MTA5MDcxMCAxMDA2NDQKLS0t
IGEvdGVzdHMvcGVyZl9wbXUuYworKysgYi90ZXN0cy9wZXJmX3BtdS5jCkBAIC0xNDE3LDYgKzE0
MTcsNyBAQCB0ZXN0X3JjNihpbnQgZ2VtX2ZkLCB1bnNpZ25lZCBpbnQgZmxhZ3MpCiAJCWRybU1v
ZGVGcmVlUmVzb3VyY2VzKHJlcyk7CiAKIAkJaWd0X3JlcXVpcmUoaWd0X3NldHVwX3J1bnRpbWVf
cG0oKSk7CisJCWlndF9kcm9wX2NhY2hlc19zZXQoZ2VtX2ZkLCBEUk9QX0lETEUpOwogCQlpZ3Rf
cmVxdWlyZShpZ3Rfd2FpdF9mb3JfcG1fc3RhdHVzKElHVF9SVU5USU1FX1BNX1NUQVRVU19TVVNQ
RU5ERUQpKTsKIAogCQkvKgotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
