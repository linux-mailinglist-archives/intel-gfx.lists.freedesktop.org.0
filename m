Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A53A48B76
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 20:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B17D8893B;
	Mon, 17 Jun 2019 18:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D958893B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 18:10:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 11:10:20 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga003.jf.intel.com with ESMTP; 17 Jun 2019 11:10:19 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 11:09:29 -0700
Message-Id: <20190617180935.505-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Display uncore prep patches
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlc2UgYXJlIHByZXBhcmF0b3J5IHBhdGNoZXMgZm9yIHRoZSBkaXNwbGF5L2d0IHVuY29yZSBz
cGxpdCB0aGF0IG1ha2UKc2Vuc2UgZXZlbiBiZWZvcmUgdGhlIHNwbGl0IGlzIGRvbmUuIE1haW4g
Z29hbCBpcyB0byBiZXR0ZXIgaXNvbGF0ZQpmb3JjZXdha2UtcmVsYXRlZCBhY3Rpb25zIGFuZCB0
byBwZXJmb3JtIHNvbWUgY2xlYW51cC9zaW1wbGlmaWNhdGlvbiBvZgp0aGUgY29kZS4KCkNjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+CgpEYW5pZWxlIENlcmFvbG8gU3B1cmlv
ICg2KToKICBkcm0vaTkxNTogdXNlIHZmdW5jcyBmb3IgcmVnX3JlYWQvd3JpdGVfZndfZG9tYWlu
cwogIGRybS9pOTE1OiBraWxsIHVuY29yZV9zYW5pdGl6ZQogIGRybS9pOTE1OiBraWxsIHVuY29y
ZV90b19pOTE1CiAgZHJtL2k5MTU6IHNraXAgZm9yY2V3YWtlIGFjdGlvbnMgb24gZm9yY2V3YWtl
LWxlc3MgdW5jb3JlCiAgZHJtL2k5MTU6IGR5bmFtaWNhbGx5IGFsbG9jYXRlIGZvcmNld2FrZSBk
b21haW5zCiAgZHJtL2k5MTUvZ3Z0OiBkZWNvdXBsZSBjaGVja192Z3B1KCkgZnJvbSB1bmNvcmVf
aW5pdCgpCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgfCAg
MzEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgIHwgICA1
IC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHZpbmZvLmggICAgICAgICAgIHwgICA1ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYyAgICAgICAgICAgICB8ICAzMSArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgICAgICAgICAgfCA0ODMgKysrKysr
KysrKy0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmggICAgICAg
ICAgfCAgMzEgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX3VuY29yZS5j
IHwgICA0ICstCiA3IGZpbGVzIGNoYW5nZWQsIDMyMSBpbnNlcnRpb25zKCspLCAyNjkgZGVsZXRp
b25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
