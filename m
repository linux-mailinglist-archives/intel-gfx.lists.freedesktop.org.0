Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D382EAF0E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C716E177;
	Tue,  5 Jan 2021 15:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F4C96E169
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:42 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:49 +0100
Message-Id: <20210105153558.134272-56-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 55/64] drm/i915/selftests: Prepare ring
 submission for obj->mm.lock removal
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIHVubG9ja2VkIHZlcnNpb25zIHdoZW4gdGhlIHd3IGxvY2sgaXMgbm90IGhlbGQuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21A
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jp
bmdfc3VibWlzc2lvbi5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X3Jpbmdfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfcmluZ19zdWJtaXNzaW9uLmMKaW5kZXggMzM1MGU3Yzk5NWJjLi45OTYwOTI3MWMzYTcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jpbmdfc3VibWlzc2lv
bi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jpbmdfc3VibWlzc2lv
bi5jCkBAIC0zNSw3ICszNSw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV93YWxs
eShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCXJldHVybiBFUlJfUFRSKGVycik7
CiAJfQogCi0JY3MgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dDKTsK
KwljcyA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKG9iaiwgSTkxNV9NQVBfV0Mp
OwogCWlmIChJU19FUlIoY3MpKSB7CiAJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAkJcmV0
dXJuIEVSUl9DQVNUKGNzKTsKQEAgLTIxMiw3ICsyMTIsNyBAQCBzdGF0aWMgaW50IF9fbGl2ZV9j
dHhfc3dpdGNoX3dhKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlpZiAoSVNfRVJS
KGJiKSkKIAkJcmV0dXJuIFBUUl9FUlIoYmIpOwogCi0JcmVzdWx0ID0gaTkxNV9nZW1fb2JqZWN0
X3Bpbl9tYXAoYmItPm9iaiwgSTkxNV9NQVBfV0MpOworCXJlc3VsdCA9IGk5MTVfZ2VtX29iamVj
dF9waW5fbWFwX3VubG9ja2VkKGJiLT5vYmosIEk5MTVfTUFQX1dDKTsKIAlpZiAoSVNfRVJSKHJl
c3VsdCkpIHsKIAkJaW50ZWxfY29udGV4dF9wdXQoYmItPnByaXZhdGUpOwogCQlpOTE1X3ZtYV91
bnBpbl9hbmRfcmVsZWFzZSgmYmIsIDApOwotLSAKMi4zMC4wLnJjMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
