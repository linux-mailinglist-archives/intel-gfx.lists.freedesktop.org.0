Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E0C47AAB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 09:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513FC891CE;
	Mon, 17 Jun 2019 07:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81863891A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 07:19:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16923047-1500050 
 for multiple; Mon, 17 Jun 2019 08:19:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 08:19:01 +0100
Message-Id: <20190617071912.20256-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617071912.20256-1-chris@chris-wilson.co.uk>
References: <20190617071912.20256-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/22] dma-fence: Report the composite sync_file
 status
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
Cc: Gustavo Padovan <gustavo@padovan.org>, matthew.auld@intel.com,
 Sumit Semwal <sumit.semwal@linaro.org>, mika.kuoppala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2FtZSBhcyBmb3IgdGhlIGluZGl2aWR1YWwgZmVuY2VzLCB3ZSB3YW50IHRvIHJlcG9ydCB0aGUg
YWN0dWFsIHN0YXR1cwpvZiB0aGUgZmVuY2Ugd2hlbiBxdWVyaWVkLgoKUmVwb3J0ZWQtYnk6IFBl
dHJpIExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFN1bWl0IFNlbXdhbCA8c3Vt
aXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiBHdXN0YXZvIFBhZG92YW4gPGd1c3Rhdm9AcGFkb3Zh
bi5vcmc+CkNjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3lu
Y19maWxlLmMgYi9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMKaW5kZXggZWU0ZDFhOTZkNzc5
Li4yNWM1YzA3MTY0NWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2ZpbGUuYwor
KysgYi9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMKQEAgLTQxOSw3ICs0MTksNyBAQCBzdGF0
aWMgbG9uZyBzeW5jX2ZpbGVfaW9jdGxfZmVuY2VfaW5mbyhzdHJ1Y3Qgc3luY19maWxlICpzeW5j
X2ZpbGUsCiAJICogaW5mby0+bnVtX2ZlbmNlcy4KIAkgKi8KIAlpZiAoIWluZm8ubnVtX2ZlbmNl
cykgewotCQlpbmZvLnN0YXR1cyA9IGRtYV9mZW5jZV9pc19zaWduYWxlZChzeW5jX2ZpbGUtPmZl
bmNlKTsKKwkJaW5mby5zdGF0dXMgPSBkbWFfZmVuY2VfZ2V0X3N0YXR1cyhzeW5jX2ZpbGUtPmZl
bmNlKTsKIAkJZ290byBub19mZW5jZXM7CiAJfSBlbHNlIHsKIAkJaW5mby5zdGF0dXMgPSAxOwot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
