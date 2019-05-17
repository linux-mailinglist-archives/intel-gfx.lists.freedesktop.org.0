Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F097221B7E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733E3898F1;
	Fri, 17 May 2019 16:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B8D898F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:22:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:22:31 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 17 May 2019 09:22:30 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HGMT7A016212; Fri, 17 May 2019 17:22:29 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 16:22:20 +0000
Message-Id: <20190517162227.6436-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
Subject: [Intel-gfx] [PATCH 0/7] GuC fixes
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

TWlzYyBHdUMgZml4ZXMgZm9yIHVwY29taW5nIDMyLjAuMwoKTWljaGFsIFdhamRlY3prbyAoNyk6
CiAgZHJtL2k5MTUvdWM6IFVzZSBHdUMgZmlybXdhcmUgc3RhdHVzIGhlbHBlcgogIGRybS9pOTE1
L3VjOiBFeHBsaWNpdGx5IHNhbml0aXplIEd1Qy9IdUMgb24gZmFpbHVyZSBhbmQgZmluaXNoCiAg
ZHJtL2k5MTUvdWM6IFNraXAgR3VDIEhXIHVud2luZGluZyBpZiBHdUMgaXMgYWxyZWFkeSBkZWFk
CiAgZHJtL2k5MTUvdWM6IFN0b3AgdGFsa2luZyB3aXRoIEd1QyB3aGVuIHJlc2V0dGluZwogIGRy
bS9pOTE1L3VjOiBTa2lwIHJlc2V0IHByZXBhcmF0aW9uIGlmIEd1QyBpcyBhbHJlYWR5IGRlYWQK
ICBkcm0vaTkxNS91YzogU3RvcCBHdUMgc3VibWlzc2lvbiBkdXJpbmcgcmVzZXQgcHJlcGFyZQog
IGRybS9pOTE1L3VjOiBEb24ndCBmb3JnZXQgdG8gcHJlcGFyZSBHdUMgZm9yIHRoZSByZXNldAoK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgICAgfCAgNCArKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2N0LmggICAgICAgICB8ICA1ICsrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8IDI1ICsrKysrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5oIHwgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyAgICAgICAgICAgICB8IDQ2ICsrKysrKysrKysrKysr
KysrLS0tLQogNSBmaWxlcyBjaGFuZ2VkLCA3MiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQoKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
