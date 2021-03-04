Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D67832D844
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 18:04:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 955596EA2F;
	Thu,  4 Mar 2021 17:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A15256EA2F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 17:04:33 +0000 (UTC)
IronPort-SDR: H2Be/HvJFpWD6RZYCgDHNII+7tM3fuh+IMwyha0I8WUpy164GRcyQUhNZtmmWYsXOZsx1CKxBO
 mjGS+7Fx4z7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="248850801"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="248850801"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 09:04:31 -0800
IronPort-SDR: CYymJzOEI5H3ehmDKWXtvIA/Xoj8CkRrD5uCB8yBjZS1HXLTiK2C2KT+TWx8fX44qsqeJGjuYY
 Ig4oD6HYkPPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="445800174"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 04 Mar 2021 09:04:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Mar 2021 19:04:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Mar 2021 19:04:19 +0200
Message-Id: <20210304170421.10901-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
References: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Don't try to query the frame
 counter for disabled pipes
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
Cc: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkZv
ciBwbGF0Zm9ybXMvb3V0cHV0cyB3aXRob3V0IGhhcmR3YXJlIGZyYW1lIGNvdW50ZXJzIHdlIGNh
bid0CmNhbGwgZHJtX2NydGNfYWNjdXJhdGVfdmJsYW5rX2NvdW50KCkgd2hlbiB0aGUgdmJsYW5r
IHN1cHBvcnQgaXMKZGlzYWJsZWQgb3Igd2UganVzdCBnZXQgYSBXQVJOIGR1ZSB0byB0aGUgY3J0
YyB0aW1pbmdzCih2YmxhbmstPmh3bW9kZSkgYmVpbmcgY29uc2lkZXJlZCBpbnZhbGlkLiBOb3Rl
IHRoYXQgdW50aWwgdGhlCnBpcGUgaW4gcXVlc3Rpb24gaGFzIGJlZW4gZW5hYmxlZCBhbmQgZHJt
X2NydGNfc2V0X21heF92YmxhbmtfY291bnQoKQpoYXMgYmVlbiBjYWxsZWQgb24gaXQgd2Ugd291
bGQgYWxzbyB0YWtlIHRoaXMgcGF0aCBvbiBwbGF0Zm9ybXMKd2hpY2ggaGF2ZSBhIHdvcmtpbmcg
ZnJhbWUgY291bnRlci4gU28gZ2V0dGluZyB0aGUgV0FSTiBpcyByYXRoZXIKbGlrZWx5IG9uIGFu
eSBwbGF0Zm9ybSB1bmxlc3MgeW91IGFsd2F5cyBib290IHdpdGggbG90cyBvZiBkaXNwbGF5cwpw
bHVnZ2VkIGluLgoKQWxzbyBldmVuIG9uIGhhcmR3YXJlIHdpdGggYSB3b3JraW5nIGZyYW1lIGNv
dW50ZXIgd2UgbWF5IG5vdCBiZQphYmxlIHRvIHJlYWQgdGhlIGFjdHVhbCBmcmFtZSBjb3VudGVy
IHJlZ2lzdGVyIG9uIGRpc2FibGVkIHBpcGVzCmR1ZSB0aGUgcmVsZXZhbnQgcG93ZXIgd2VsbCBi
ZWluZyBkaXNhYmxlZC4gSWUuIHdvdWxkIGp1c3QgcmVzdWx0CmluIHRoZSB1bmNsYWltZWQgcmVn
IHNwZXcuCgpTbyBsZXQncyBqdXN0IGF2b2lkIGFsbCB0aGlzIGFuIGRpcmVjdGx5IHJlcG9ydCB6
ZXJvIGluIGNhc2UKdGhlIHBpcGUgaXMgZGlzYWJsZWQuCgpSZXBvcnRlZC1ieTogU3RldmVuIFJv
c3RlZHQgPHJvc3RlZHRAZ29vZG1pcy5vcmc+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMKaW5kZXgg
ZmQ4YTY2Y2VjZTgwLi4zNGZmNDA4NTJhMzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3J0Yy5jCkBAIC00MSw2ICs0MSw5IEBAIHUzMiBpbnRlbF9jcnRjX2dldF92Ymxh
bmtfY291bnRlcihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAlzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2ID0gY3J0Yy0+YmFzZS5kZXY7CiAJc3RydWN0IGRybV92YmxhbmtfY3J0YyAqdmJsYW5rID0g
JmRldi0+dmJsYW5rW2RybV9jcnRjX2luZGV4KCZjcnRjLT5iYXNlKV07CiAKKwlpZiAoIWNydGMt
PmFjdGl2ZSkKKwkJcmV0dXJuIDA7CisKIAlpZiAoIXZibGFuay0+bWF4X3ZibGFua19jb3VudCkK
IAkJcmV0dXJuICh1MzIpZHJtX2NydGNfYWNjdXJhdGVfdmJsYW5rX2NvdW50KCZjcnRjLT5iYXNl
KTsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
