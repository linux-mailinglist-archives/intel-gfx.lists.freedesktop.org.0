Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EDFA5780
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 15:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5079589AF3;
	Mon,  2 Sep 2019 13:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607E689AB9;
 Mon,  2 Sep 2019 13:15:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 06:15:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,459,1559545200"; d="scan'208";a="181874282"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 02 Sep 2019 06:15:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2019 16:15:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  2 Sep 2019 16:15:45 +0300
Message-Id: <20190902131546.4691-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/edid: Don't look for CEA data blocks in
 CEA ext block rev < 3
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
Cc: intel-gfx@lists.freedesktop.org, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNF
QSBleHQgYmxvY2sgcmV2aXNpb25zIDEgYW5kIDIgZG8gbm90IGNvbnRhaW4gdGhlIGRhdGEgYmxv
Y2sKY29sbGVjdGlvbi4gSW5zdGVhZCB0aGF0IHNlY3Rpb24gb2YgdGhlIGV4dGVuc2lvbiBibG9j
ayBpcwptYXJrZWQgYXMgcmVzZXJ2ZWQgZm9yIDggYnl0ZSB0aW1pbmcgZGVzY3JpcHRvcnMuIFJl
dmlzaW9uIDMKY2hhbmdlZCBpdCB0byBjb250YWluIHRoZSBDRUEgZGF0YSBibG9jayBjb2xsZWN0
aW9uIGluc3RlYWQuCgpNb3N0IHBsYWNlcyB0aGF0IGl0ZXJhdGUgdGhlIGRhdGEgYmxvY2tzIGFs
cmVhZHkgY2hlY2sgZm9yCnJldmlzaW9uID49IDMsIGJ1dCBkcm1fZGV0ZWN0X2hkbWlfbW9uaXRv
cigpIGFuZApkcm1fZGV0ZWN0X21vbml0b3JfYXVkaW8oKSBkbyBub3QuIFNvIGluIHRoZW9yeSB3
aGVuIGVuY291bnRlcmluZwpyZXYgMSBvciAyIENFQSBleHRlbnNpb24gYmxvY2sgdGhleSBjb3Vs
ZCBlbmQgdXAgbWlzaW50ZXJwcmV0aW5nCndoYXRldmVyIGRhdGEgaXMgaW4gdGhlIHJlc2VydmVk
IHNlY3Rpb24gYXMgQ0VBIGRhdGEgYmxvY2tzLgoKTGV0J3MgaGF2ZSBjZWFfZGJfb2Zmc2V0cygp
IGRvIHRoZSByZXZpc2lvbiBjaGVjayBzbyB0aGF0IHRoZQpjYWxsZXJzIGRvbid0IGV2ZW4gaGF2
ZSB3b3JyeSBhYm91dCBpdC4KCkNjOiBKZWFuIERlbHZhcmUgPGpkZWx2YXJlQHN1c2UuZGU+ClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgfCAzICsrKwogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRp
ZC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKaW5kZXggODJhNGNlZWQzZmNmLi43YjMw
NzJmYzU1MGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCkBAIC0zNjkwLDYgKzM2OTAsOSBAQCBjZWFfcmV2aXNp
b24oY29uc3QgdTggKmNlYSkKIHN0YXRpYyBpbnQKIGNlYV9kYl9vZmZzZXRzKGNvbnN0IHU4ICpj
ZWEsIGludCAqc3RhcnQsIGludCAqZW5kKQogeworCWlmIChjZWFfcmV2aXNpb24oY2VhKSA8IDMp
CisJCXJldHVybiAtRU5PVFNVUFA7CisKIAkvKiBEaXNwbGF5SUQgQ1RBIGV4dGVuc2lvbiBibG9j
a3MgYW5kIHRvcC1sZXZlbCBDRUEgRURJRAogCSAqIGJsb2NrIGhlYWRlciBkZWZpbml0aW9ucyBk
aWZmZXIgaW4gdGhlIGZvbGxvd2luZyBieXRlczoKIAkgKiAgIDEpIEJ5dGUgMiBvZiB0aGUgaGVh
ZGVyIHNwZWNpZmllcyBsZW5ndGggZGlmZmVyZW50bHksCi0tIAoyLjIxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
