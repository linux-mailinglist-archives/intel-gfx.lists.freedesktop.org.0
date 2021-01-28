Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 525DD307AC1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35916E998;
	Thu, 28 Jan 2021 16:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EBD06E993
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:26:12 +0100
Message-Id: <20210128162612.927917-64-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 63/63] drm/i915: Move gt_revoke() slightly
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgZ2V0IGEgbG9ja2RlcCBzcGxhdCB3aGVuIHRoZSByZXNldCBtdXRleCBpcyBoZWxkLCBiZWNh
dXNlIGl0IGNhbiBiZQp0YWtlbiBmcm9tIGZlbmNlX3dhaXQuIFRoaXMgY29uZmxpY3RzIHdpdGgg
dGhlIG1tdSBub3RpZmllciB3ZSBoYXZlLApiZWNhdXNlIHdlIHJlY3Vyc2UgYmV0d2VlbiByZXNl
dCBtdXRleCBhbmQgbW1hcCBsb2NrIC0+IG1tdSBub3RpZmllci4KClJlbW92ZSB0aGlzIHJlY3Vy
c2lvbiBieSBjYWxsaW5nIHJldm9rZV9tbWFwcyBiZWZvcmUgdGFraW5nIHRoZSBsb2NrLgoKVGhl
IHJlc2V0IGNvZGUgc3RpbGwgbmVlZHMgZml4aW5nLCBhcyB0YWtpbmcgbW1hcCBsb2NrcyBkdXJp
bmcgcmVzZXQKaXMgbm90IGFsbG93ZWQuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3Jz
dCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jCmluZGV4IDEwNzQzMGUxZTg2NC4uOGU1OTY3MjI3OWI1IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKQEAgLTk3Myw4ICs5NzMsNiBAQCBzdGF0aWMgaW50
IGRvX3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIGludGVsX2VuZ2luZV9tYXNrX3Qgc3RhbGxl
ZF9tYXNrKQogewogCWludCBlcnIsIGk7CiAKLQlndF9yZXZva2UoZ3QpOwotCiAJZXJyID0gX19p
bnRlbF9ndF9yZXNldChndCwgQUxMX0VOR0lORVMpOwogCWZvciAoaSA9IDA7IGVyciAmJiBpIDwg
UkVTRVRfTUFYX1JFVFJJRVM7IGkrKykgewogCQltc2xlZXAoMTAgKiAoaSArIDEpKTsKQEAgLTEw
MjksNiArMTAyNyw5IEBAIHZvaWQgaW50ZWxfZ3RfcmVzZXQoc3RydWN0IGludGVsX2d0ICpndCwK
IAogCW1pZ2h0X3NsZWVwKCk7CiAJR0VNX0JVR19PTighdGVzdF9iaXQoSTkxNV9SRVNFVF9CQUNL
T0ZGLCAmZ3QtPnJlc2V0LmZsYWdzKSk7CisKKwlndF9yZXZva2UoZ3QpOworCiAJbXV0ZXhfbG9j
aygmZ3QtPnJlc2V0Lm11dGV4KTsKIAogCS8qIENsZWFyIGFueSBwcmV2aW91cyBmYWlsZWQgYXR0
ZW1wdHMgYXQgcmVjb3ZlcnkuIFRpbWUgdG8gdHJ5IGFnYWluLiAqLwotLSAKMi4zMC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
