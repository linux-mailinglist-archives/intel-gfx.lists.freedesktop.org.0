Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A05B7716A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 20:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19C996EE24;
	Fri, 26 Jul 2019 18:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A04D6EE24
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 18:42:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 11:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="254412848"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga001.jf.intel.com with ESMTP; 26 Jul 2019 11:42:18 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6QIgG5O006385; Fri, 26 Jul 2019 19:42:17 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 18:42:12 +0000
Message-Id: <20190726184212.1836-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190726184212.1836-1-michal.wajdeczko@intel.com>
References: <20190726184212.1836-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/uc: Remove redundant RSA offset
 definition
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

QWNjb3JkaW5nIHRvIEZpcm13YXJlIGxheW91dCBkZWZpbml0aW9uLCBSU0Egc2lnbmF0dXJlIGlz
IGxvY2F0ZWQKYWZ0ZXIgQ1NTIGhlYWRlciBhbmQgdUNvZGUgc28gYWN0dWFsIFJTQSBvZmZzZXQg
aW4gdGhlIGJsb2IgY2FuIGJlCmVhc2lseSBjYWxjdWxhdGVkIHdoZW4gbmVlZGVkIChhbmQgd2Ug
bmVlZCBpdCBvbmx5IG9uY2UpLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWlj
aGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIHwgOCArKystLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCB8IDEgLQogMiBmaWxlcyBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX3VjX2Z3LmMKaW5kZXggMTZhYjliYzkyOTE5Li4wYmFkOWI4NTg1MDEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwpAQCAtMjM4LDcgKzIzOCw2IEBAIHZvaWQg
aW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiAJCWVyciA9IC1FTk9FWEVDOwogCQlnb3RvIGZhaWw7CiAJfQot
CXVjX2Z3LT5yc2Ffb2Zmc2V0ID0gc2l6ZW9mKHN0cnVjdCB1Y19jc3NfaGVhZGVyKSArIHVjX2Z3
LT51Y29kZV9zaXplOwogCXVjX2Z3LT5yc2Ffc2l6ZSA9IGNzcy0+a2V5X3NpemVfZHcgKiBzaXpl
b2YodTMyKTsKIAogCS8qIEF0IGxlYXN0LCBpdCBzaG91bGQgaGF2ZSBoZWFkZXIsIHVDb2RlIGFu
ZCBSU0EuIFNpemUgb2YgYWxsIHRocmVlLiAqLwpAQCAtNTEyLDExICs1MTEsMTEgQEAgc2l6ZV90
IGludGVsX3VjX2Z3X2NvcHlfcnNhKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHZvaWQgKmRz
dCwgdTMyIG1heF9sZW4pCiB7CiAJc3RydWN0IHNnX3RhYmxlICpwYWdlcyA9IHVjX2Z3LT5vYmot
Pm1tLnBhZ2VzOwogCXUzMiBzaXplID0gbWluX3QodTMyLCB1Y19mdy0+cnNhX3NpemUsIG1heF9s
ZW4pOworCXUzMiBvZmZzZXQgPSBzaXplb2Yoc3RydWN0IHVjX2Nzc19oZWFkZXIpICsgdWNfZnct
PnVjb2RlX3NpemU7CiAKIAlHRU1fQlVHX09OKCFpbnRlbF91Y19md19pc19hdmFpbGFibGUodWNf
ZncpKTsKIAotCXJldHVybiBzZ19wY29weV90b19idWZmZXIocGFnZXMtPnNnbCwgcGFnZXMtPm5l
bnRzLAotCQkJCSAgZHN0LCBzaXplLCB1Y19mdy0+cnNhX29mZnNldCk7CisJcmV0dXJuIHNnX3Bj
b3B5X3RvX2J1ZmZlcihwYWdlcy0+c2dsLCBwYWdlcy0+bmVudHMsIGRzdCwgc2l6ZSwgb2Zmc2V0
KTsKIH0KIAogLyoqCkBAIC01MzYsNiArNTM1LDUgQEAgdm9pZCBpbnRlbF91Y19md19kdW1wKGNv
bnN0IHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0cnVjdCBkcm1fcHJpbnRlciAqcCkKIAkJ
ICAgdWNfZnctPm1ham9yX3Zlcl93YW50ZWQsIHVjX2Z3LT5taW5vcl92ZXJfd2FudGVkLAogCQkg
ICB1Y19mdy0+bWFqb3JfdmVyX2ZvdW5kLCB1Y19mdy0+bWlub3JfdmVyX2ZvdW5kKTsKIAlkcm1f
cHJpbnRmKHAsICJcdHVDb2RlOiAldSBieXRlc1xuIiwgdWNfZnctPnVjb2RlX3NpemUpOwotCWRy
bV9wcmludGYocCwgIlx0UlNBOiBvZmZzZXQgJXUsIHNpemUgJXVcbiIsCi0JCSAgIHVjX2Z3LT5y
c2Ffb2Zmc2V0LCB1Y19mdy0+cnNhX3NpemUpOworCWRybV9wcmludGYocCwgIlx0UlNBOiAldSBi
eXRlc1xuIiwgdWNfZnctPnJzYV9zaXplKTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5oCmluZGV4IDZhMDRiYzZkNDE5Zi4uYzJhYjI4MDM3MTVkIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKQEAgLTc1LDcgKzc1LDYgQEAgc3RydWN0
IGludGVsX3VjX2Z3IHsKIAl1MTYgbWlub3JfdmVyX2ZvdW5kOwogCiAJdTMyIHJzYV9zaXplOwot
CXUzMiByc2Ffb2Zmc2V0OwogCXUzMiB1Y29kZV9zaXplOwogfTsKIAotLSAKMi4xOS4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
