Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 784317C327
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 15:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A685D89DF9;
	Wed, 31 Jul 2019 13:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B5689DF9
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 13:19:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 06:19:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="371517354"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2019 06:19:07 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6VDJ7ui015030; Wed, 31 Jul 2019 14:19:07 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190730181903.17820-1-michal.wajdeczko@intel.com>
 <20190730181903.17820-2-michal.wajdeczko@intel.com>
 <156451364846.6373.11504509841314194285@skylake-alporthouse-com>
Date: Wed, 31 Jul 2019 15:19:06 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5sm94ooxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156451364846.6373.11504509841314194285@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Consider enable_guc
 modparam during fw selection
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAzMCBKdWwgMjAxOSAyMTowNzoyOCArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+PiArc3RhdGljIGNvbnN0IGNoYXIqIF9fb3Zl
cnJpZGVfaHVjX2Zpcm13YXJlX3BhdGgodm9pZCkKPj4gK3sKPj4gKyAgICAgICBpZiAoKGk5MTVf
bW9kcGFyYW1zLmVuYWJsZV9ndWMgPCAwKSB8fAo+PiArICAgICAgICAgICAoaTkxNV9tb2RwYXJh
bXMuZW5hYmxlX2d1YyAmIEVOQUJMRV9HVUNfTE9BRF9IVUMpKQo+PiArICAgICAgICAgICAgICAg
cmV0dXJuIGk5MTVfbW9kcGFyYW1zLmh1Y19maXJtd2FyZV9wYXRoOwo+Cj4gV2UgY2FuIGV2ZW4g
bG9zZSB0aGUgPDAuIE5vIG5lZ2F0aXZlIHZhbHVlIG90aGVyIHRoYW4gLTEgaXMgZG9jdW1lbnRl
ZC4KCkkgdXNlZCA8MCB0byBtYXRjaCBleGlzdGluZyBpbXBsZW1lbnRhdGlvbiBpbiBzYW5pdGl6
ZV9vcHRpb25zX2Vhcmx5KCkKCgkvKiBBIG5lZ2F0aXZlIHZhbHVlIG1lYW5zICJ1c2UgcGxhdGZv
cm0gZGVmYXVsdCIgKi8KCWlmIChpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3VjIDwgMCkKCQlpOTE1
X21vZHBhcmFtcy5lbmFibGVfZ3VjID0gX19nZXRfcGxhdGZvcm1fZW5hYmxlX2d1Yyh1Yyk7Cgpp
ZiB3ZSBsb3NlIDwwIGNvbmRpdGlvbiB0aGVyZSBhcmUgcXVlc3Rpb25zIGhvdyB0byB0cmVhdCB1
bmRvY3VtZW50ZWQgIAp2YWx1ZXM6Ci0yIGlzIGRpc2FibGVkKDApIG9yIGF1dG8gYnV0IHdpdGhv
dXQgc3VibWlzc2lvbiBha2EgaHVjLW9ubHkoMikKLTMgaXMgZGlzYWJsZWQoMCkgb3IgYXV0byBi
dXQgd2l0aG91dCBodWMgYWthIHN1Ym1pc3Npb25fb25seSgxKQouLi4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
