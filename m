Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB65A26BFA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB6A89BF1;
	Wed, 22 May 2019 19:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F2D89BD2
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:32:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:32:07 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2019 12:32:06 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJW5Gh020993; Wed, 22 May 2019 20:32:05 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:31:54 +0000
Message-Id: <20190522193203.23932-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
Subject: [Intel-gfx] [PATCH v2 0/9] GuC fixes
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWlzYyBHdUMgZml4ZXMgZm9yIHVwY29taW5nIDMyLjAuMwoKdjI6IG1vZGlmaWVkIHJlc2V0IHNl
bGZ0ZXN0cwoKTWljaGFsIFdhamRlY3prbyAoOSk6CiAgZHJtL2k5MTUvc2VsZnRlc3RzOiBNb3Zl
IHNvbWUgcmVzZXQgdGVzdGNhc2VzIHRvIHNlcGFyYXRlIGZpbGUKICBkcm0vaTkxNS9zZWxmdGVz
dHM6IFNwbGl0IGlndF9hdG9taWNfcmVzZXQgdGVzdGNhc2UKICBkcm0vaTkxNS9zZWxmdGVzdHM6
IFVzZSBwcmVwYXJlL2ZpbmlzaCBkdXJpbmcgYXRvbWljIHJlc2V0IHRlc3QKICBkcm0vaTkxNS9n
dWM6IFJlbmFtZSBpbnRlbF9ndWNfaXNfYWxpdmUgdG8gaW50ZWxfZ3VjX2lzX2xvYWRlZAogIGRy
bS9pOTE1L3VjOiBFeHBsaWNpdGx5IHNhbml0aXplIEd1Qy9IdUMgb24gZmFpbHVyZSBhbmQgZmlu
aXNoCiAgZHJtL2k5MTUvdWM6IFVzZSBHdUMgZmlybXdhcmUgc3RhdHVzIGhlbHBlcgogIGRybS9p
OTE1L3VjOiBTa2lwIEd1QyBIVyB1bndpbmRpbmcgaWYgR3VDIGlzIGFscmVhZHkgZGVhZAogIGRy
bS9pOTE1L3VjOiBTdG9wIHRhbGtpbmcgd2l0aCBHdUMgd2hlbiByZXNldHRpbmcKICBkcm0vaTkx
NS91YzogU2tpcCByZXNldCBwcmVwYXJhdGlvbiBpZiBHdUMgaXMgYWxyZWFkeSBkZWFkCgogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgICAgIHwgICA0ICsKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jICB8IDE1OSArKystLS0tLS0t
LS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jlc2V0LmMgICAgICB8
IDExOSArKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMuaCAgICAg
ICAgICAgICAgfCAgMTAgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19jdC5oICAg
ICAgICAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lv
bi5jICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMgICAgICAgICAg
ICAgICB8ICA0NCArKystLQogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRl
c3RzLmggIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfYXRvbWlj
LmggICB8ICA1NiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfcmVz
ZXQuYyAgICB8ICAgOCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3Jlc2V0
LmggICAgfCAgIDEgKwogMTEgZmlsZXMgY2hhbmdlZCwgMjQ5IGluc2VydGlvbnMoKyksIDE2MCBk
ZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9yZXNldC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2lndF9hdG9taWMuaAoKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
