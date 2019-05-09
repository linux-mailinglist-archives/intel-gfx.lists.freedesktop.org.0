Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E59101854F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 08:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BA4892E6;
	Thu,  9 May 2019 06:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B39F892E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 06:20:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 23:20:14 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 08 May 2019 23:20:12 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 09:19:43 +0300
Message-Id: <20190509061954.10379-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/11] drm/i915: Add support for asynchronous
 display power disabling
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

VGhpcyBwYXRjaHNldCBpcyB2MiBvZiBbMV0uIFRoZSBtYWluIGNoYW5nZSBpcyB0aGUgcmV3b3Jr
IG9mIHBhdGNoIDEKYmFzZWQgb24gQ2hyaXMnIGZlZWRiYWNrLgoKQ2M6IFZpbGxlIFN5cmphbGEg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KClsx
XSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYwMjQyLwoKSW1yZSBE
ZWFrICgxMSk6CiAgZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciB0cmFja2luZyB3YWtlcmVmcyB3
L28gcG93ZXItb24gZ3VhcmFudGVlCiAgZHJtL2k5MTU6IEZvcmNlIHByaW50aW5nIHdha2VyZWYg
dGFja2luZyBkdXJpbmcgcG1fY2xlYW51cAogIGRybS9pOTE1OiBWZXJpZnkgcG93ZXIgZG9tYWlu
cyBzdGF0ZSBkdXJpbmcgc3VzcGVuZCBpbiBhbGwgY2FzZXMKICBkcm0vaTkxNTogQWRkIHN1cHBv
cnQgZm9yIGFzeW5jaHJvbm91cyBkaXNwbGF5IHBvd2VyIGRpc2FibGluZwogIGRybS9pOTE1OiBE
aXNhYmxlIHBvd2VyIGFzeW5jaHJvbm91c2x5IGR1cmluZyBEUCBBVVggdHJhbnNmZXJzCiAgZHJt
L2k5MTU6IFdBUk4gZm9yIGVEUCBlbmNvZGVycyBpbiBpbnRlbF9kcF9kZXRlY3RfZHBjZCgpCiAg
ZHJtL2k5MTU6IFJlbW92ZSB0aGUgdW5uZWVkZWQgQVVYIHBvd2VyIHJlZiBmcm9tIGludGVsX2Rw
X2RldGVjdCgpCiAgZHJtL2k5MTU6IFJlbW92ZSB0aGUgdW5uZWVkZWQgQVVYIHBvd2VyIHJlZiBm
cm9tIGludGVsX2RwX2hwZF9wdWxzZSgpCiAgZHJtL2k5MTU6IFJlcGxhY2UgdXNlIG9mIFBMTFMg
cG93ZXIgZG9tYWluIHdpdGggRElTUExBWV9DT1JFIGRvbWFpbgogIGRybS9pOTE1OiBBdm9pZCB0
YWtpbmcgdGhlIFBQUyBsb2NrIGZvciBub24tZURQL1ZMVi9DSFYKICBkcm0vaTkxNTogQXNzZXJ0
IHRoYXQgVHlwZUMgcG9ydHMgYXJlIG5vdCB1c2VkIGZvciBlRFAKCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgfCAgIDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGlzcGxheS5jICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5LmggICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgICAgICAg
ICB8ICA4MyArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5jICAgfCAg
MzYgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oICAgICAgICB8ICA1MiArKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bzci5jICAgICAgICB8ICAgNiArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMgfCA1OTUgKysrKysrKysrKysrKysrKysr
KysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmggfCAgIDggKwog
OSBmaWxlcyBjaGFuZ2VkLCA2NjIgaW5zZXJ0aW9ucygrKSwgMTI3IGRlbGV0aW9ucygtKQoKLS0g
CjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
