Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F9075DEF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 06:47:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0FB6E87E;
	Fri, 26 Jul 2019 04:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 231446E87E
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 04:47:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 21:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,309,1559545200"; d="scan'208";a="164462106"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga008.jf.intel.com with ESMTP; 25 Jul 2019 21:47:04 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.165])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6Q4l3Uc024007; Fri, 26 Jul 2019 05:47:03 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190725205106.36148-1-michal.wajdeczko@intel.com>
 <156409104874.30723.3136641710682253705@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 06:47:03 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5ip8pwoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156409104874.30723.3136641710682253705@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Don't sanitize guc_log_level
 modparam
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

T24gVGh1LCAyNSBKdWwgMjAxOSAyMzo0NDowOCArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNy0yNSAyMTo1MTowNikKPj4gV2UgYXJlIGFscmVhZHkgc3RvcmluZyBydW50aW1lIHZh
bHVlIG9mIGxvZyBsZXZlbCBpbiBwcml2YXRlCj4+IGZpZWxkLCBzbyB0aGVyZSBpcyBubyBuZWVk
IHRvIG1vZGlmeSBtb2RwYXJhbS4KPgo+IFRoZXJlIGlzIGFuIGFzcGVjdCBvZiBjb21tdW5pY2F0
aW5nIHRoZSBjbGFtcGVkIHZhbHVlIGJhY2sgdG8gdGhlIHVzZXIuCj4gRG9lcyB0aGF0IGhhdmUg
YW55IHZhbHVlIG9yIGFsdGVybmF0aXZlPwoKQWN0dWFsIChjbGFtcGVkIG9yIGRlZmF1bHQpIHZh
bHVlIG9mIHRoZSBHdUMgbG9nIGxldmVsIGlzIGV4cG9zZWQgaW4KaTkxNV9ndWNfbG9nX2xldmVs
IGRlYnVnZnMgZW50cnkuIFVzZXIgY2FuIG1vZGlmeSBpdCBmcm9tIHRoZXJlIHRvby4KCk1pY2hh
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
