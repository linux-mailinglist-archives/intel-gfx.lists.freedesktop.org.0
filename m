Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C8F217A8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 13:25:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A10B898EE;
	Fri, 17 May 2019 11:25:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16725897B5;
 Fri, 17 May 2019 11:25:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 04:25:39 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.11.159])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2019 04:25:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 17 May 2019 12:25:08 +0100
Message-Id: <20190517112526.6738-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 07/25] gem_wsim: Use IGT uapi headers
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCldlIGFyZSBt
b3ZpbmcgdG93YXJkcyBidW1waW5nIHRoZSB1QVBJIGhlYWRlcnMgbW9yZSBvZnRlbiBpbnN0ZWFk
IG9mIHVzaW5nCnRvbyBtdWNoIGxvY2FsIHN0cnVjdC9pb2N0bC9wYXJhbSBkZWZpbml0aW9ucyBz
aW5jZSB0aGUgbGF0dGVyIGFyZSBtb3JlCmNoYWxsZW5naW5nIGZvciByZWJhc2UgYW5kIG1haW50
ZW5hbmNlLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotLS0KIGJlbmNobWFya3MvZ2VtX3dzaW0uYyB8IDEyICsrKystLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9i
ZW5jaG1hcmtzL2dlbV93c2ltLmMgYi9iZW5jaG1hcmtzL2dlbV93c2ltLmMKaW5kZXggYWZiNTNm
NDExNGQyLi5iOTFkYmRlYzJjY2UgMTAwNjQ0Ci0tLSBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYwor
KysgYi9iZW5jaG1hcmtzL2dlbV93c2ltLmMKQEAgLTQxLDcgKzQxLDYgQEAKICNpbmNsdWRlIDxs
aW1pdHMuaD4KICNpbmNsdWRlIDxwdGhyZWFkLmg+CiAKLQogI2luY2x1ZGUgImludGVsX2NoaXBz
ZXQuaCIKICNpbmNsdWRlICJpbnRlbF9yZWcuaCIKICNpbmNsdWRlICJkcm0uaCIKQEAgLTU3LDkg
KzU2LDYgQEAKIAogI2luY2x1ZGUgImV3bWEuaCIKIAotI2RlZmluZSBMT0NBTF9JOTE1X0VYRUNf
RkVOQ0VfSU4gICAgICAgICAgICAgICgxPDwxNikKLSNkZWZpbmUgTE9DQUxfSTkxNV9FWEVDX0ZF
TkNFX09VVCAgICAgICAgICAgICAoMTw8MTcpCi0KIGVudW0gaW50ZWxfZW5naW5lX2lkIHsKIAlS
Q1MsCiAJQkNTLApAQCAtODYzLDcgKzg1OSw3IEBAIGViX3VwZGF0ZV9mbGFncyhzdHJ1Y3Qgd19z
dGVwICp3LCBlbnVtIGludGVsX2VuZ2luZV9pZCBlbmdpbmUsCiAKIAlpZ3RfYXNzZXJ0KHctPmVt
aXRfZmVuY2UgPD0gMCk7CiAJaWYgKHctPmVtaXRfZmVuY2UpCi0JCXctPmViLmZsYWdzIHw9IExP
Q0FMX0k5MTVfRVhFQ19GRU5DRV9PVVQ7CisJCXctPmViLmZsYWdzIHw9IEk5MTVfRVhFQ19GRU5D
RV9PVVQ7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqCkBA
IC0yMDE2LDE2ICsyMDEyLDE2IEBAIGRvX2ViKHN0cnVjdCB3b3JrbG9hZCAqd3JrLCBzdHJ1Y3Qg
d19zdGVwICp3LCBlbnVtIGludGVsX2VuZ2luZV9pZCBlbmdpbmUsCiAJCWlndF9hc3NlcnQodGd0
ID49IDAgJiYgdGd0IDwgdy0+aWR4KTsKIAkJaWd0X2Fzc2VydCh3cmstPnN0ZXBzW3RndF0uZW1p
dF9mZW5jZSA+IDApOwogCi0JCXctPmViLmZsYWdzIHw9IExPQ0FMX0k5MTVfRVhFQ19GRU5DRV9J
TjsKKwkJdy0+ZWIuZmxhZ3MgfD0gSTkxNV9FWEVDX0ZFTkNFX0lOOwogCQl3LT5lYi5yc3ZkMiA9
IHdyay0+c3RlcHNbdGd0XS5lbWl0X2ZlbmNlOwogCX0KIAotCWlmICh3LT5lYi5mbGFncyAmIExP
Q0FMX0k5MTVfRVhFQ19GRU5DRV9PVVQpCisJaWYgKHctPmViLmZsYWdzICYgSTkxNV9FWEVDX0ZF
TkNFX09VVCkKIAkJZ2VtX2V4ZWNidWZfd3IoZmQsICZ3LT5lYik7CiAJZWxzZQogCQlnZW1fZXhl
Y2J1ZihmZCwgJnctPmViKTsKIAotCWlmICh3LT5lYi5mbGFncyAmIExPQ0FMX0k5MTVfRVhFQ19G
RU5DRV9PVVQpIHsKKwlpZiAody0+ZWIuZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0VfT1VUKSB7CiAJ
CXctPmVtaXRfZmVuY2UgPSB3LT5lYi5yc3ZkMiA+PiAzMjsKIAkJaWd0X2Fzc2VydCh3LT5lbWl0
X2ZlbmNlID4gMCk7CiAJfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
