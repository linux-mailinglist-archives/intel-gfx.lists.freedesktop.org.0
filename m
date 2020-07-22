Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CED2291C3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 09:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C5F6E5CA;
	Wed, 22 Jul 2020 07:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A93C6E5CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 07:10:57 +0000 (UTC)
IronPort-SDR: aET47jtdDwcVxresno5lpOK6d6iTaBVJJyOBH0297zsGNgD3lsGLq1ZjAXIfnpUckEYKuqJjCL
 i0kFxwR9IyzA==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="130365066"
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="130365066"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 00:10:57 -0700
IronPort-SDR: CzA2crMH3uGjV9z8fqtReK7wZtUdL6ELLPRp+49LkmfH4QJqyffbVpchyZxYKnBc7u2SQLeuZZ
 Pkb7zVXPL5Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="284132067"
Received: from eandrei-mobl4.ger.corp.intel.com (HELO [10.252.34.203])
 ([10.252.34.203])
 by orsmga003.jf.intel.com with ESMTP; 22 Jul 2020 00:10:56 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
References: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
 <6f8e6d8b-291c-e744-c569-9307cc22b493@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <74c3d4f0-9c25-3610-a7b7-cc3e424a685b@intel.com>
Date: Wed, 22 Jul 2020 10:10:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <6f8e6d8b-291c-e744-c569-9307cc22b493@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v12 0/3] drm/i915: timeline semaphore support
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

UGluZz8KCk9uIDE1LzA3LzIwMjAgMTQ6MTEsIExpb25lbCBMYW5kd2VybGluIHdyb3RlOgo+IFBp
bmc/Cj4KPiBPbiAwOC8wNy8yMDIwIDE2OjE3LCBMaW9uZWwgTGFuZHdlcmxpbiB3cm90ZToKPj4g
SGkgYWxsLAo+Pgo+PiBUaGlzIGlzIHJlc3VtaW5nIHRoZSB3b3JrIG9uIHRyeWluZyB0byBnZXQg
dGltZWxpbmUgc2VtYXBob3JlIHN1cHBvcnQKPj4gZm9yIGk5MTUgdXBzdHJlYW0sIG5vdyB0aGF0
IHNvbWUgc2VsZnRlc3RzIGhhdmUgYmVlbiBhZGRlZCB0bwo+PiBkbWEtZmVuY2UtY2hhaW4uCj4+
Cj4+IFRoZXJlIGFyZSBhIGZldyBmaXggZnJvbSB0aGUgbGFzdCBpdGVyYXRpb24gYW5kIGEgcmVi
YXNlIGZvbGxvd2luZyB0aGUKPj4gY2hhbmdlcyBpbiB0aGUgdXBzdHJlYW0gZXhlY2J1ZiBjb2Rl
Lgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IExpb25lbCBMYW5kd2VybGluICgzKToKPj4gwqDCoCBkcm0v
aTkxNTogaW50cm9kdWNlIGEgbWVjaGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgo+PiDCoMKgIGRy
bS9pOTE1OiBhZGQgc3luY29iaiB0aW1lbGluZSBzdXBwb3J0Cj4+IMKgwqAgZHJtL2k5MTU6IHBl
ZWwgZG1hLWZlbmNlLWNoYWlucyB3YWl0IGZlbmNlcwo+Pgo+PiDCoCAuLi4vZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmPCoMKgwqAgfCAzMzMgKysrKysrKysrKysrKysrLS0t
Cj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoMKgIDMgKy0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRw
YXJhbS5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+PiDCoCBpbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDY1ICsr
Ky0KPj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCAzNDIgaW5zZXJ0aW9ucygrKSwgNjAgZGVsZXRpb25z
KC0pCj4+Cj4+IC0tIAo+PiAyLjI3LjAKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
