Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F39C5964C9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 17:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541286E832;
	Tue, 20 Aug 2019 15:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AB46E83B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 15:42:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 08:42:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="179779883"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 20 Aug 2019 08:42:11 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7KFgAjw014804; Tue, 20 Aug 2019 16:42:10 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
Date: Tue, 20 Aug 2019 17:42:10 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z6tu8kdjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Introduce intel_reg_types.h
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMCBBdWcgMjAxOSAwNDowMTo0NyArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdfdHlwZXMuaCAgCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdfdHlwZXMuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4g
aW5kZXggMDAwMDAwMDAwMDAwLi44N2JjZTgwZGQ1ZWQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnX3R5cGVzLmgKCgo+ICsKPiArdHlwZWRlZiBz
dHJ1Y3Qgewo+ICsJdTMyIHJlZzsKPiArfSBpOTE1X3JlZ190Owo+ICsKPiArI2RlZmluZSBfTU1J
TyhyKSAoKGNvbnN0IGk5MTVfcmVnX3QpeyAucmVnID0gKHIpIH0pCj4gKwo+ICsjZGVmaW5lIElO
VkFMSURfTU1JT19SRUcgX01NSU8oMCkKPiArCj4gK3N0YXRpYyBpbmxpbmUgdTMyIGk5MTVfbW1p
b19yZWdfb2Zmc2V0KGk5MTVfcmVnX3QgcmVnKQo+ICt7Cj4gKwlyZXR1cm4gcmVnLnJlZzsKPiAr
fQo+ICsKPiArc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfZXF1YWwoaTkxNV9yZWdf
dCBhLCBpOTE1X3JlZ190IGIpCj4gK3sKPiArCXJldHVybiBpOTE1X21taW9fcmVnX29mZnNldChh
KSA9PSBpOTE1X21taW9fcmVnX29mZnNldChiKTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSBi
b29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gK3sKPiArCXJldHVybiAh
aTkxNV9tbWlvX3JlZ19lcXVhbChyZWcsIElOVkFMSURfTU1JT19SRUcpOwo+ICt9Cj4gKwoKaG1t
LCB0aGVyZSBpcyBub3cgZGlzY29ubmVjdGlvbiBiZXR3ZWVuIHByZWZpeGVzIGluOgoKCSdpbnRl
bCdfcmVnX3R5cGVzLmgKYW5kCgknaTkxNSdfcmVnX3QKCSdpOTE1J19tbWlvX3JlZ194eHgoKQoK
dGhhdCBpcyB3aHkgSSB3YXMgc3VnZ2VzdGluZyB0byBrZWVwOgoKCSdpOTE1J19yZWcuaCAob3Ig
YXQgeW91ciBwcmVmZXJlbmNlICdpOTE1J19yZWdfdHlwZXMuaCkKd2l0aAoJJ2k5MTUnX3JlZ190
CgknaTkxNSdfbW1pb19yZWdfeHh4KCkKCmFuZCB1c2UgaW50ZWxfcmVnKiBmaWxlcyBmb3IgYWN0
dWFsIGh3IGRlZmluaXRpb25zLgoKaWYgd2UgZG9uJ3QgcGxhbiB0byByZW5hbWUgaTkxNV9yZWdf
dCBpbnRvIGludGVsX21taW9fcmVnX3QKdGhlbiBtYXliZSBiZXR0ZXIgdG8gc3RheSB3aXRoIGk5
MTVfcmVnX3R5cGVzLmggPwoKTWljaGFsCgpwcy4gaTkxNS9pbnRlbCBwcmVmaXggcnVsZXMgYXJl
IGtpbGxpbmcgbWUgdG9vIDspCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
