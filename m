Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABFE9F6B6
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 01:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D021D89BF6;
	Tue, 27 Aug 2019 23:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFA189BF1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 23:13:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 16:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,439,1559545200"; d="scan'208";a="185444177"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga006.jf.intel.com with ESMTP; 27 Aug 2019 16:13:41 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Date: Tue, 27 Aug 2019 16:14:33 -0700
Message-Id: <20190827231435.398-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Add module parameter to reduce engine
 instances
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGEgbmV3IG1vZHVsZSBwYXJhbWV0ZXIsIHJpbmdfbWFzaywgdG8gYWxsb3cgdXNlcnMgdG8K
ZGlzYWJsZSBjZXJ0YWluIGVuZ2luZXMgZm9yIGEgcGxhdGZvcm0uIEJ5IGRlZmF1bHQgdGhpcwpt
YXNrIGlzIHNldCB0byBhbGwgZW5naW5lcyBlbmFibGVkLiBCaXRzIGluIHRoZSBtYXNrIGFyZQph
bGlnbmVkIHdpdGggdGhlIGludGVsX2VuZ2luZV9pZCBlbnVtcy4KCkFzIGEgcHJlcmVxdWlzaXRl
IHRvIHRoZSBwYXRjaCB3aGljaCBhZGRzIHRoZSBtb2R1bGUgcGFyYW1ldGVyLApjaGFuZ2UgdGhl
IEJVR19PTiB0byBhIFdBUk5fT04gaW4gdGhlIGV2ZW50IGEgVkRib3ggb3IgVkVib3gKZW5naW5l
IGZvciBhIHBsYXRmb3JtIGRvZXMgbm90IG1hdGNoIHRoZSB0b3RhbCBudW1iZXIgb2YgZW5naW5l
cwpvZiB0aGVzZSBjYXRhZ29yaWVzIHN1cHBvcnRlZCBpbiB0aGUgY29ycmVzcG9uZGluZyBmdXNl
cy4KClN0dWFydCBTdW1tZXJzICgyKToKICBkcm0vaTkxNTogV0FSTiByYXRoZXIgdGhhbiBCVUcg
d2l0aCB1bmV4cGVjdGVkIG1lZGlhIGVuZ2luZXMKICBkcm0vaTkxNTogQWRkIHJpbmdfbWFzayBt
b2R1bGUgcGFyYW1ldGVyCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyAgICAg
ICB8ICAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCAgICAgICB8ICAz
ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDEwICsrKysr
KysrLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
