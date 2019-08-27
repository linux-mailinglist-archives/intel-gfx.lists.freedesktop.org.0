Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 596F59F6B4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 01:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4692E89BF1;
	Tue, 27 Aug 2019 23:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2963F89BF5
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 23:13:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 16:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,439,1559545200"; d="scan'208";a="185444178"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga006.jf.intel.com with ESMTP; 27 Aug 2019 16:13:41 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Date: Tue, 27 Aug 2019 16:14:34 -0700
Message-Id: <20190827231435.398-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827231435.398-1-stuart.summers@intel.com>
References: <20190827231435.398-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: WARN rather than BUG with
 unexpected media engines
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

SW5zdGVhZCBvZiBwcmV2ZW50aW5nIGRyaXZlciBsb2FkIHdoZW4gbWVkaWEgZW5naW5lcyBlbmFi
bGVkCmZvciBhIHBsYXRmb3JtIGRvIG5vdCBtYXRjaCB0aGUgZnVzZSB2YWx1ZXMgZm9yIHRob3Nl
IG1lZGlhCmVuZ2luZXMsIFdBUk5fT04gdG8gaW5kaWNhdGUgdGhlIG9ic2VydmF0aW9uIGJ1dCBj
b250aW51ZQp3aXRoIGRyaXZlciBsb2FkLgoKU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMg
PHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
CmluZGV4IGQ5YjViYWFlZjVkMC4uY2FlZjAxYjFkYTIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTEwMjMsNyArMTAyMyw3IEBAIHZvaWQgaW50ZWxfZGV2
aWNlX2luZm9faW5pdF9tbWlvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl9
CiAJRFJNX0RFQlVHX0RSSVZFUigidmRib3ggZW5hYmxlOiAlMDR4LCBpbnN0YW5jZXM6ICUwNGx4
XG4iLAogCQkJIHZkYm94X21hc2ssIFZEQk9YX01BU0soZGV2X3ByaXYpKTsKLQlHRU1fQlVHX09O
KHZkYm94X21hc2sgIT0gVkRCT1hfTUFTSyhkZXZfcHJpdikpOworCUdFTV9XQVJOX09OKHZkYm94
X21hc2sgIT0gVkRCT1hfTUFTSyhkZXZfcHJpdikpOwogCiAJZm9yIChpID0gMDsgaSA8IEk5MTVf
TUFYX1ZFQ1M7IGkrKykgewogCQlpZiAoIUhBU19FTkdJTkUoZGV2X3ByaXYsIF9WRUNTKGkpKSkK
QEAgLTEwMzYsNSArMTAzNiw1IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9faW5pdF9tbWlvKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl9CiAJRFJNX0RFQlVHX0RSSVZFUigi
dmVib3ggZW5hYmxlOiAlMDR4LCBpbnN0YW5jZXM6ICUwNGx4XG4iLAogCQkJIHZlYm94X21hc2ss
IFZFQk9YX01BU0soZGV2X3ByaXYpKTsKLQlHRU1fQlVHX09OKHZlYm94X21hc2sgIT0gVkVCT1hf
TUFTSyhkZXZfcHJpdikpOworCUdFTV9XQVJOX09OKHZlYm94X21hc2sgIT0gVkVCT1hfTUFTSyhk
ZXZfcHJpdikpOwogfQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
