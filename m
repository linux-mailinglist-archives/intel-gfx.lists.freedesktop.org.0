Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 005A2236B3
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 15:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4E98926F;
	Mon, 20 May 2019 13:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4A448910D;
 Mon, 20 May 2019 13:05:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B83C6A00EA;
 Mon, 20 May 2019 13:05:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 May 2019 13:05:11 -0000
Message-ID: <20190520130511.786.50747@emeril.freedesktop.org>
References: <20190520080127.18255-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190520080127.18255-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B01/33=5D_drm/i915=3A_Restore_control_over_p?=
 =?utf-8?q?pgtt_for_context_creation_ABI?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzMz
XSBkcm0vaTkxNTogUmVzdG9yZSBjb250cm9sIG92ZXIgcHBndHQgZm9yIGNvbnRleHQgY3JlYXRp
b24gQUJJClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
MDg0Mi8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6
IFJlc3RvcmUgY29udHJvbCBvdmVyIHBwZ3R0IGZvciBjb250ZXh0IGNyZWF0aW9uIEFCSQpBcHBs
eWluZzogZHJtL2k5MTU6IEFsbG93IGEgY29udGV4dCB0byBkZWZpbmUgaXRzIHNldCBvZiBlbmdp
bmVzCkFwcGx5aW5nOiBkcm0vaTkxNTogRXh0ZW5kIEk5MTVfQ09OVEVYVF9QQVJBTV9TU0VVIHRv
IHN1cHBvcnQgbG9jYWwgY3R4LT5lbmdpbmVbXQpBcHBseWluZzogZHJtL2k5MTU6IFJlLWV4cG9z
ZSBTSU5HTEVfVElNRUxJTkUgZmxhZ3MgZm9yIGNvbnRleHQgY3JlYXRpb24KQXBwbHlpbmc6IGRy
bS9pOTE1OiBBbGxvdyB1c2Vyc3BhY2UgdG8gY2xvbmUgY29udGV4dHMgb24gY3JlYXRpb24KQXBw
bHlpbmc6IGRybS9pOTE1OiBMb2FkIGJhbGFuY2luZyBhY3Jvc3MgYSB2aXJ0dWFsIGVuZ2luZQpB
cHBseWluZzogZHJtL2k5MTU6IEFwcGx5IGFuIGV4ZWN1dGlvbl9tYXNrIHRvIHRoZSB2aXJ0dWFs
X2VuZ2luZQpBcHBseWluZzogZHJtL2k5MTU6IEV4dGVuZCBleGVjdXRpb24gZmVuY2UgdG8gc3Vw
cG9ydCBhIGNhbGxiYWNrCkFwcGx5aW5nOiBkcm0vaTkxNS9leGVjbGlzdHM6IFZpcnR1YWwgZW5n
aW5lIGJvbmRpbmcKQXBwbHlpbmc6IGRybS9pOTE1OiBBbGxvdyBzcGVjaWZpY2F0aW9uIG9mIHBh
cmFsbGVsIGV4ZWNidWYKQXBwbHlpbmc6IGRybS9pOTE1OiBTcGxpdCBHRU0gb2JqZWN0IHR5cGUg
ZGVmaW5pdGlvbiB0byBpdHMgb3duIGhlYWRlcgpBcHBseWluZzogZHJtL2k5MTU6IFB1bGwgR0VN
IGlvY3RscyBpbnRlcmZhY2UgdG8gaXRzIG93biBmaWxlCkFwcGx5aW5nOiBkcm0vaTkxNTogTW92
ZSBvYmplY3QtPnBhZ2VzIEFQSSB0byBpOTE1X2dlbV9vYmplY3QuW2NoXQpBcHBseWluZzogZHJt
L2k5MTU6IE1vdmUgc2htZW0gb2JqZWN0IHNldHVwIHRvIGl0cyBvd24gZmlsZQpVc2luZyBpbmRl
eCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVy
Z2UuLi4KQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQ09ORkxJ
Q1QgKGNvbnRlbnQpOiBNZXJnZSBjb25mbGljdCBpbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jCmVycm9yOiBGYWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAn
Z2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRj
aCBmYWlsZWQgYXQgMDAxNCBkcm0vaTkxNTogTW92ZSBzaG1lbSBvYmplY3Qgc2V0dXAgdG8gaXRz
IG93biBmaWxlCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBh
bSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0
IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBz
dG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
