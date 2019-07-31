Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A537BC03
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 10:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7615F89491;
	Wed, 31 Jul 2019 08:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1976897FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 08:43:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 01:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="191190719"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2019 01:43:37 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6V8hano010520; Wed, 31 Jul 2019 09:43:36 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190730230743.19542-1-daniele.ceraolospurio@intel.com>
Date: Wed, 31 Jul 2019 10:43:36 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5saiychxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190730230743.19542-1-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915/uc: Don't enable
 communication twice on resume
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

T24gV2VkLCAzMSBKdWwgMjAxOSAwMTowNzozOSArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gV2hlbiBjb21p
bmcgb3V0IG9mIFMzL1M0IHdlIHNhbml0aXplIGFuZCByZS1pbml0IHRoZSBIVywgd2hpY2ggaW5j
bHVkZXMKPiBlbmFibGluZyBjb21tdW5pY2F0aW9uIGR1cmluZyB1Y19pbml0X2h3LiBXZSB0aGVy
ZWZvcmUgZG9uJ3Qgd2FudCB0byBkbwo+IHRoYXQgYWdhaW4gaW4gdWNfcmVzdW1lIGFuZCBjYW4g
anVzdCB0ZWxsIEd1QyB0byByZWxvYWQgaXRzIHN0YXRlLgo+Cj4gdjI6IHNwbGl0IHVjX3Jlc3Vt
ZSBhbmQgdWNfcnVudGltZV9yZXN1bWUgdG8gbWF0Y2ggdGhlIHN1c3BlbmQKPiAgICAgZnVuY3Rp
b25zIGFuZCB0byBiZXR0ZXIgZGlmZmVyZW50aWF0ZSB0aGUgZXhwZWN0ZWQgc3RhdGUgaW4gdGhl
IDIKPiAgICAgc2NlbmFyaW9zIChDaHJpcykKPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2Vy
YW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClJldmlld2VkLWJ5OiBNaWNoYWwgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
