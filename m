Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F212E55B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 21:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AEB6E0BC;
	Wed, 29 May 2019 19:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253F46E0B0;
 Wed, 29 May 2019 19:31:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 12:31:39 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 12:31:35 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 01:29:03 +0530
Message-Id: <1559159944-21103-4-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559159944-21103-1-git-send-email-uma.shankar@intel.com>
References: <1559159944-21103-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [PATCH 3/4] drm: Fixed doc warnings in drm uapi header
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, seanpaul@chromium.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rml4ZWQgZG9jIHdhcm5pbmdzIGluIGRybSB1YXBpIGhlYWRlci4gQWxsIHRoZSBVQVBJCnN0cnVj
dHVyZXMgYXJlIG5vdyBkb2N1bWVudGVkIGluIGtlcm5lbCBkb2MuCgpTaWduZWQtb2ZmLWJ5OiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvdWFwaS9kcm0v
ZHJtX21vZGUuaCB8IDIyICsrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAy
MiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5o
IGIvaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5oCmluZGV4IDVkMzk2NGYuLjAyYjJhMmIgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaAorKysgYi9pbmNsdWRlL3VhcGkv
ZHJtL2RybV9tb2RlLmgKQEAgLTg2MSw2ICs4NjEsMTAgQEAgc3RydWN0IGRybV9mb3JtYXRfbW9k
aWZpZXIgewogfTsKIAogLyoqCisgKiBzdHJ1Y3QgZHJtX21vZGVfY3JlYXRlX2Jsb2IgLSBDcmVh
dGUgTmV3IGJsb2NrIHByb3BlcnR5CisgKiBAZGF0YTogUG9pbnRlciB0byBkYXRhIHRvIGNvcHku
CisgKiBAbGVuZ3RoOiBMZW5ndGggb2YgZGF0YSB0byBjb3B5LgorICogQGJsb2JfaWQ6IG5ldyBw
cm9wZXJ0eSBJRC4KICAqIENyZWF0ZSBhIG5ldyAnYmxvYicgZGF0YSBwcm9wZXJ0eSwgY29weWlu
ZyBsZW5ndGggYnl0ZXMgZnJvbSBkYXRhIHBvaW50ZXIsCiAgKiBhbmQgcmV0dXJuaW5nIG5ldyBi
bG9iIElELgogICovCkBAIC04NzQsNiArODc4LDggQEAgc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9i
bG9iIHsKIH07CiAKIC8qKgorICogc3RydWN0IGRybV9tb2RlX2Rlc3Ryb3lfYmxvYiAtIERlc3Ry
b3kgdXNlciBibG9iCisgKiBAYmxvYl9pZDogYmxvYl9pZCB0byBkZXN0cm95CiAgKiBEZXN0cm95
IGEgdXNlci1jcmVhdGVkIGJsb2IgcHJvcGVydHkuCiAgKi8KIHN0cnVjdCBkcm1fbW9kZV9kZXN0
cm95X2Jsb2IgewpAQCAtODgxLDYgKzg4NywxMiBAQCBzdHJ1Y3QgZHJtX21vZGVfZGVzdHJveV9i
bG9iIHsKIH07CiAKIC8qKgorICogc3RydWN0IGRybV9tb2RlX2NyZWF0ZV9sZWFzZSAtIENyZWF0
ZSBsZWFzZQorICogQG9iamVjdF9pZHM6IFBvaW50ZXIgdG8gYXJyYXkgb2Ygb2JqZWN0IGlkcy4K
KyAqIEBvYmplY3RfY291bnQ6IE51bWJlciBvZiBvYmplY3QgaWRzLgorICogQGZsYWdzOiBmbGFn
cyBmb3IgbmV3IEZELgorICogQGxlc3NlZV9pZDogdW5pcXVlIGlkZW50aWZpZXIgZm9yIGxlc3Nl
ZS4KKyAqIEBmZDogZmlsZSBkZXNjcmlwdG9yIHRvIG5ldyBkcm1fbWFzdGVyIGZpbGUuCiAgKiBM
ZWFzZSBtb2RlIHJlc291cmNlcywgY3JlYXRpbmcgYW5vdGhlciBkcm1fbWFzdGVyLgogICovCiBz
dHJ1Y3QgZHJtX21vZGVfY3JlYXRlX2xlYXNlIHsKQEAgLTg5OCw2ICs5MTAsMTAgQEAgc3RydWN0
IGRybV9tb2RlX2NyZWF0ZV9sZWFzZSB7CiB9OwogCiAvKioKKyAqIHN0cnVjdCBkcm1fbW9kZV9s
aXN0X2xlc3NlZXMgLSBMaXN0IGxlc3NlZXMKKyAqIEBjb3VudF9sZXNzZWVzOiBOdW1iZXIgb2Yg
bGVzc2Vlcy4KKyAqIEBwYWQ6IHBhZC4KKyAqIEBsZXNzZWVzX3B0cjogUG9pbnRlciB0byBsZXNz
ZXNzLgogICogTGlzdCBsZXNzZXMgZnJvbSBhIGRybV9tYXN0ZXIKICAqLwogc3RydWN0IGRybV9t
b2RlX2xpc3RfbGVzc2VlcyB7CkBAIC05MTgsNiArOTM0LDEwIEBAIHN0cnVjdCBkcm1fbW9kZV9s
aXN0X2xlc3NlZXMgewogfTsKIAogLyoqCisgKiBzdHJ1Y3QgZHJtX21vZGVfZ2V0X2xlYXNlIC0g
R2V0IExlYXNlCisgKiBAY291bnRfb2JqZWN0czogTnVtYmVyIG9mIGxlYXNlZCBvYmplY3RzLgor
ICogQHBhZDogcGFkLgorICogQG9iamVjdHNfcHRyOiBQb2ludGVyIHRvIG9iamVjdHMuCiAgKiBH
ZXQgbGVhc2VkIG9iamVjdHMKICAqLwogc3RydWN0IGRybV9tb2RlX2dldF9sZWFzZSB7CkBAIC05
MzgsNiArOTU4LDggQEAgc3RydWN0IGRybV9tb2RlX2dldF9sZWFzZSB7CiB9OwogCiAvKioKKyAq
IHN0cnVjdCBkcm1fbW9kZV9yZXZva2VfbGVhc2UgLSBSZXZva2UgbGVhc2UKKyAqIEBsZXNzZWVf
aWQ6IFVuaXF1ZSBJRCBvZiBsZXNzZWUuCiAgKiBSZXZva2UgbGVhc2UKICAqLwogc3RydWN0IGRy
bV9tb2RlX3Jldm9rZV9sZWFzZSB7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
