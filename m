Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B392538F59A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 00:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3915E6E2BC;
	Mon, 24 May 2021 22:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A6A89E11
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 22:28:20 +0000 (UTC)
IronPort-SDR: SKKlNcS2zfMy1GWVbmILa8hgBQiMAKqXYGBzIVIeQ5ExUQGlxCuSvGNv626vzTeW2kFn6GYrcA
 ghqReN5v242g==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="265941687"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="265941687"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 15:28:16 -0700
IronPort-SDR: plReo7++8eLGQPivYhxuLShqc31jb0NQUy+RmK0vDBEZOBAQ1AVwOSsS+0LO84HD7b/SFXriCF
 gsnkUjC9/Vvg==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="470900400"
Received: from lpnguyen-mobl2.amr.corp.intel.com (HELO [10.209.115.31])
 ([10.209.115.31])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 15:28:16 -0700
To: intel-gfx@lists.freedesktop.org
References: <20210524214805.259692-1-jose.souza@intel.com>
 <20210524214805.259692-4-jose.souza@intel.com>
From: Clint Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <7f1a2814-2cae-49a9-58a4-b9f826590c11@intel.com>
Date: Mon, 24 May 2021 15:28:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210524214805.259692-4-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/display/adl_p: Allow DC3CO in
 pipe and port B
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMjQvMjEgMjo0OCBQTSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiBEQzND
TyBpcyBhbGxvd2VkIGluIGFsbCB0aGUgY29tYmluYXRpb25zIGJldHdlZW4gcGlwZSBhbmQgcG9y
dCBBIGFuZCBCCj4gb24gYWxkZXJsYWtlLVAuCj4KPiBCU3BlYzogNDkxOTYKPiBDYzogQW5zaHVt
YW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiBDYzogR3dhbi1neWVvbmcgTXVu
IDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgo+IENjOiBNYXR0IEF0d29vZCA8bWF0dGhldy5z
LmF0d29vZEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jIHwgMjAgKysrKysrKysrKysrKysrKy0tLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXggMjE2NjI2NDQ0Yzc2Li5jNTcyMTA4
NjIyMDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBA
QCAtNjQ2LDEyICs2NDYsMjYgQEAgc3RhdGljIHZvaWQgdGdsX2Rpc2FsbG93X2RjM2NvX29uX3Bz
cjJfZXhpdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICAgCXRnbF9wc3IyX2Rpc2FibGVf
ZGMzY28oaW50ZWxfZHApOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBib29sCj4gK2RjM2NvX2lzX3Bp
cGVfcG9ydF9jb21wYXRpYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gKwkJCSAgICAg
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsKPiAr
CWVudW0gcGlwZSBwaXBlID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpLT5w
aXBlOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShp
bnRlbF9kcCk7Cj4gKwllbnVtIHBvcnQgcG9ydCA9IGRpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4gKwo+
ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkKPiArCQlyZXR1cm4gcGlwZSA8PSBQSVBF
X0IgJiYgcG9ydCA8PSBQT1JUX0I7Cj4gKwllbHNlCj4gKwkJcmV0dXJuIHBpcGUgPT0gUElQRV9B
ICYmIHBvcnQgPT0gUE9SVF9BOwo+ICt9Cj4gKwo+ICAgc3RhdGljIHZvaWQKPiAgIHRnbF9kYzNj
b19leGl0bGluZV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICAg
CQkJCSAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gICB7Cj4gICAJY29u
c3QgdTMyIGNydGNfdmRpc3BsYXkgPSBjcnRjX3N0YXRlLT51YXBpLmFkanVzdGVkX21vZGUuY3J0
Y192ZGlzcGxheTsKPiAtCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBf
dG9fZGlnX3BvcnQoaW50ZWxfZHApOwo+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+ICAgCXUzMiBleGl0X3NjYW5saW5lczsKPiAg
IAo+IEBAIC02NzIsOSArNjg2LDcgQEAgdGdsX2RjM2NvX2V4aXRsaW5lX2NvbXB1dGVfY29uZmln
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gICAJaWYgKCEoZGV2X3ByaXYtPmRtYy5hbGxv
d2VkX2RjX21hc2sgJiBEQ19TVEFURV9FTl9EQzNDTykpCj4gICAJCXJldHVybjsKPiAgIAo+IC0J
LyogQi5TcGVjczo0OTE5NiBEQzNDTyBvbmx5IHdvcmtzIHdpdGggcGlwZUEgYW5kIERESUEuKi8K
PiAtCWlmICh0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0YyktPnBpcGUgIT0gUElQ
RV9BIHx8Cj4gLQkgICAgZGlnX3BvcnQtPmJhc2UucG9ydCAhPSBQT1JUX0EpCj4gKwlpZiAoIWRj
M2NvX2lzX3BpcGVfcG9ydF9jb21wYXRpYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlKSkKPiAgIAkJ
cmV0dXJuOwo+ICAgCj4gICAJLyoKClJldmlld2VkLWJ5OiBDbGludCBUYXlsb3IgPENsaW50b24u
QS5UYXlsb3JAaW50ZWwuY29tPgoKLUNsaW50CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
