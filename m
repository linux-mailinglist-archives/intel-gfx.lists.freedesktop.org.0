Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C632B905E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 11:48:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0DBB6E570;
	Thu, 19 Nov 2020 10:47:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE3646E563;
 Thu, 19 Nov 2020 10:47:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA978A882F;
 Thu, 19 Nov 2020 10:47:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 19 Nov 2020 10:47:58 -0000
Message-ID: <160578287876.18186.14120251038292187283@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201119071331.10934-1-manasi.d.navare@intel.com>
In-Reply-To: <20201119071331.10934-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Do_not_call_hsw=5Fset=5Fframe=5Fstart=5Fdelay_for_ds?=
 =?utf-8?q?i?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IERvIG5vdCBjYWxsIGhzd19z
ZXRfZnJhbWVfc3RhcnRfZGVsYXkgZm9yIGRzaQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9zZXJpZXMvODQwMzkvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9
PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRv
bWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRl
L2dlbmVyYXRlZC9jb21waWxlLmgKICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5vCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jOiBJbiBmdW5jdGlvbiDigJhoc3dfY3J0Y19lbmFibGXigJk6CmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjcyMjM6MzogZXJyb3I6IHRoaXMg4oCYaWbi
gJkgY2xhdXNlIGRvZXMgbm90IGd1YXJkLi4uIFstV2Vycm9yPW1pc2xlYWRpbmctaW5kZW50YXRp
b25dCiAgIGlmIChuZXdfY3J0Y19zdGF0ZS0+aGFzX3BjaF9lbmNvZGVyKQogICBefgpkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzo3MjI3OjQ6IG5vdGU6IC4uLnRo
aXMgc3RhdGVtZW50LCBidXQgdGhlIGxhdHRlciBpcyBtaXNsZWFkaW5nbHkgaW5kZW50ZWQgYXMg
aWYgaXQgd2VyZSBndWFyZGVkIGJ5IHRoZSDigJhpZuKAmQogICAgaHN3X3NldF9mcmFtZV9zdGFy
dF9kZWxheShuZXdfY3J0Y19zdGF0ZSk7CiAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmNj
MTogYWxsIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCnNjcmlwdHMvTWFrZWZpbGUu
YnVpbGQ6MjgzOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5Lm8nIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5vXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVp
bGQ6NTAwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZApt
YWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZp
bGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQK
bWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5i
dWlsZDo1MDA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06
ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTc5OTogcmVjaXBlIGZvciB0YXJn
ZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
