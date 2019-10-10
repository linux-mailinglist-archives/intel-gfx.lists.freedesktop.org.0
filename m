Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6515D2E8A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 18:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108266E384;
	Thu, 10 Oct 2019 16:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4FB06E384;
 Thu, 10 Oct 2019 16:25:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE07CA73C7;
 Thu, 10 Oct 2019 16:25:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 10 Oct 2019 16:25:52 -0000
Message-ID: <20191010162552.23081.55721@emeril.freedesktop.org>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_En?=
 =?utf-8?q?able_bigjoiner_support=2C_second_approach=2E_=28rev3=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRW5hYmxlIGJpZ2pvaW5lciBzdXBwb3J0LCBz
ZWNvbmQgYXBwcm9hY2guIChyZXYzKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjc1OTAvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBw
bHlpbmc6IEhBWCB0byBtYWtlIERTQyB3b3JrIG9uIHRoZSBpY2VsYWtlIHRlc3Qgc3lzdGVtCkFw
cGx5aW5nOiBkcm0vaTkxNTogRml4IGZvcl9lYWNoX2ludGVsX3BsYW5lX21hc2sgZGVmaW5pdGlv
bgpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKRmFsbGluZyBiYWNrIHRvIHBh
dGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaApObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVh
ZHkgYXBwbGllZC4KQXBwbHlpbmc6IGRybS9pOTE1OiBJbnRyb2R1Y2UgYW5kIHVzZSBpbnRlbF9h
dG9taWNfY3J0Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZS4KVXNpbmcgaW5kZXggaW5mbyB0
byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5oCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpGYWxs
aW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5n
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKTm8gY2hhbmdlcyAtLSBQYXRjaCBhbHJl
YWR5IGFwcGxpZWQuCkFwcGx5aW5nOiBkcm0vaTkxNTogUmVtb3ZlIGN1cnNvciB1c2Ugb2YgcHJv
cGVydGllcyBmb3IgY29vcmRpbmF0ZXMKVXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBh
IGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpGYWxsaW5nIGJhY2sgdG8gcGF0
Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCk5vIGNoYW5nZXMgLS0gUGF0Y2ggYWxyZWFk
eSBhcHBsaWVkLgpBcHBseWluZzogZHJtL2k5MTU6IFVzZSBpbnRlbF9wbGFuZV9zdGF0ZSBpbiBw
cmVwYXJlIGFuZCBjbGVhbnVwIHBsYW5lX2ZiClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1
Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4K
QXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CkNPTkZMSUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxpY3QgaW4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKZXJyb3I6IEZhaWxlZCB0byBtZXJnZSBpbiB0aGUg
Y2hhbmdlcy4KaGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0
aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZhaWxlZCBhdCAwMDA1IGRybS9pOTE1OiBVc2UgaW50ZWxf
cGxhbmVfc3RhdGUgaW4gcHJlcGFyZSBhbmQgY2xlYW51cCBwbGFuZV9mYgpXaGVuIHlvdSBoYXZl
IHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBw
cmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRv
IHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQg
YW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
