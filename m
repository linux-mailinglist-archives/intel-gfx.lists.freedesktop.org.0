Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BBF45096
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 02:33:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3FCE892F3;
	Fri, 14 Jun 2019 00:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D35892F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 00:33:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 17:33:16 -0700
X-ExtLoop1: 1
Received: from rmfosha-dev-1.fm.intel.com ([10.19.83.123])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jun 2019 17:32:53 -0700
From: "Robert M. Fosha" <robert.m.fosha@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 17:28:34 -0700
Message-Id: <20190614002838.3072-1-robert.m.fosha@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Update whitelist support for new hardware
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

UmVjZW50IGhhcmR3YXJlIGFkZHMgc3VwcG9ydCBmb3IgZmluZXItZ3JhaW5lZCBjb250cm9sIG92
ZXIKd2hpdGVsaXN0aW5nLCBhbGxvd2luZyByZWdpc3RlcnMgdG8gYmUgd2hpdGVsaXN0ZWQgaW5k
ZXBlbmRlbnRseQpmb3IgcmVhZHMgYW5kL29yIHdyaXRlcy4gVGhpcyBzZXJpZXMgd2lsbCBhZGQg
dGhlIGJhc2ljIHBsdW1iaW5nCnRvIHN1cHBvcnQgdGhhdC4KClNpZ25lZC1vZmYtYnk6IEpvaG4g
SGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJvYmVy
dCBNLiBGb3NoYSA8cm9iZXJ0Lm0uZm9zaGFAaW50ZWwuY29tPgoKSm9obiBIYXJyaXNvbiAoNCk6
CiAgZHJtL2k5MTU6IFN1cHBvcnQgZmxhZ3MgaW4gd2hpdGxpc3QgV0FzCiAgZHJtL2k5MTU6IFN1
cHBvcnQgd2hpdGVsaXN0IHdvcmthcm91bmRzIG9uIGFsbCBlbmdpbmVzCiAgZHJtL2k5MTU6IEFk
ZCB3aGl0ZWxpc3Qgd29ya2Fyb3VuZHMgZm9yIENGTAogIGRybS9pOTE1OiBBZGQgd2hpdGVsaXN0
IHdvcmthcm91bmRzIGZvciBJQ0wKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jIHwgMTkxICsrKysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgICA3ICsKIDIgZmlsZXMgY2hhbmdlZCwgMTcyIGlu
c2VydGlvbnMoKyksIDI2IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMC41LmdhZWI1ODJhOTgzCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
