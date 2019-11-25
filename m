Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF8C1091CB
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 17:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BF56E14C;
	Mon, 25 Nov 2019 16:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3546E155
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 16:28:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19332955-1500050 
 for multiple; Mon, 25 Nov 2019 16:27:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 16:27:37 +0000
Message-Id: <20191125162737.2161069-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Default to more lenient force preempt
 timeout
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmFzZWQgb24gYSBzYW1wbGluZyBvZiBhIG51bWJlciBvZiBiZW5jaG1hcmtzIGFjcm9zcyBwbGF0
Zm9ybXMsIGJ5CmRlZmF1bHQgb3B0IGZvciBhIG1vcmUgbXVjaCBsZW5pZW50IHRpbWVvdXQgc28g
dGhhdCB3ZSBzaG91bGQgbm90CmFkdmVyc2VseSBhZmZlY3QgZXhpc3RpbmcgY2xpZW50cy4KCjY0
MG1zIG91Z2h0IHRvIGJlIGVub3VnaCBmb3IgYW55b25lLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjE2OQpGaXhlczogM2E3YTkyYWJh
OGZiICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9uIikKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFo
dGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBFZXJvIFRhbW1pbmVu
IDxlZXJvLnQudGFtbWluZW5AaW50ZWwuY29tPgpDYzogRG1pdHJ5IFJvZ296aGtpbiA8ZG1pdHJ5
LnYucm9nb3poa2luQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmln
LnByb2ZpbGUgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKaW5kZXggMTc5OTUzN2EzMjI4
Li5jMjgwYjZhZTM4ZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcu
cHJvZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKQEAgLTI1
LDcgKzI1LDcgQEAgY29uZmlnIERSTV9JOTE1X0hFQVJUQkVBVF9JTlRFUlZBTAogCiBjb25maWcg
RFJNX0k5MTVfUFJFRU1QVF9USU1FT1VUCiAJaW50ICJQcmVlbXB0IHRpbWVvdXQgKG1zLCBqaWZm
eSBncmFudWxhcml0eSkiCi0JZGVmYXVsdCAxMDAgIyBtaWxsaXNlY29uZHMKKwlkZWZhdWx0IDY0
MCAjIG1pbGxpc2Vjb25kcwogCWhlbHAKIAkgIEhvdyBsb25nIHRvIHdhaXQgKGluIG1pbGxpc2Vj
b25kcykgZm9yIGEgcHJlZW1wdGlvbiBldmVudCB0byBvY2N1cgogCSAgd2hlbiBzdWJtaXR0aW5n
IGEgbmV3IGNvbnRleHQgdmlhIGV4ZWNsaXN0cy4gSWYgdGhlIGN1cnJlbnQgY29udGV4dAotLSAK
Mi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
