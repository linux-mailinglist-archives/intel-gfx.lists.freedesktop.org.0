Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3336D47BC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:37:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191206EC85;
	Fri, 11 Oct 2019 18:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2FFE6EC84;
 Fri, 11 Oct 2019 18:37:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18808436-1500050 
 for multiple; Fri, 11 Oct 2019 19:37:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 19:37:12 +0100
Message-Id: <20191011183712.8263-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] debugfs: Define DROP_RCU
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

Q29ycmVzcG9uZGluZyBrZXJuZWwgY29tbWl0IDU0ODk1MDEwYTg5MyAoImRybS9pOTE1OiBBZGQg
YW4gcmN1X2JhcnJpZXIKb3B0aW9uIHRvIGk5MTVfZHJvcF9jYWNoZXMiKQoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNvbT4KLS0tCiBsaWIvaWd0X2RlYnVnZnMu
aCB8IDcgKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2xpYi9pZ3RfZGVidWdmcy5oIGIvbGliL2lndF9kZWJ1Z2ZzLmgKaW5kZXggMzZiNjM4MTc3
Li5hNTZmMDlkZDIgMTAwNjQ0Ci0tLSBhL2xpYi9pZ3RfZGVidWdmcy5oCisrKyBiL2xpYi9pZ3Rf
ZGVidWdmcy5oCkBAIC0xNzIsNiArMTcyLDEzIEBAIHZvaWQgaWd0X3JlcXVpcmVfaHBkX3N0b3Jt
X2N0bChpbnQgZmQpOwogICogUmVzZXQgdGhlIGdsb2JhbCByZXF1ZXN0IHNlcW5vIGNvdW50ZXIg
YmFjayB0byAwCiAgKi8KICNkZWZpbmUgRFJPUF9SRVNFVF9TRVFOTyAweDEwMAorLyoqCisgKiBE
Uk9QX1JDVToKKyAqCisgKiBQZXJmb3JtcyByY3VfYmFycmllcigpIGFuZCB3YWl0cyBmb3IgYW4g
UkNVIGdyYWNlIHBlcmlvZCB0byBjb21wbGV0ZSwKKyAqIHdoaWNoIHdpbGwgZmx1c2ggYW55IFJD
VSBjYWxsYmFja3MgYW5kIGRlZmVycmVkIHRhc2tzLgorICovCisjZGVmaW5lIERST1BfUkNVIDB4
MjAwCiAvKioKICAqIERST1BfQUxMOgogICoKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
