Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34AC2A464D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 14:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1C66EC9B;
	Tue,  3 Nov 2020 13:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A91C6EC9B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 13:28:02 +0000 (UTC)
IronPort-SDR: fRSnnFV9/MA+vrPY1YC8yjkYGc0V8T5kz9cTtoseOBSMKz1TAs3n14dk/syIGKnyb9s2a4N33/
 wpK1EbdVJxOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="148904390"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="148904390"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 05:28:00 -0800
IronPort-SDR: nhhUWf3fHGQCl+6zTTnYD1XInM3j4QQjSWxlYeAHv9+Oy1EKhhf9Q9ROGlZJ7gggnbyy6dsaBO
 IiBMLsuRRHSg==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="528483003"
Received: from emalinow-mobl.ger.corp.intel.com (HELO
 W10-45-itb-64.SSPE.ch.intel.com) ([10.249.254.149])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 05:27:59 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-60-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <55adb1f9-ce38-ac70-0f6b-89bfedde686e@linux.intel.com>
Date: Tue, 3 Nov 2020 14:27:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-60-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 59/61] drm/i915/selftests: Prepare gtt
 tests for obj->mm.lock removal
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

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBXZSBuZWVk
IHRvIGxvY2sgdGhlIGdsb2JhbCBndHQgZG1hX3Jlc3YsIHVzZSBpOTE1X3ZtX2xvY2tfb2JqZWN0
cwo+IHRvIGhhbmRsZSB0aGlzIGNvcnJlY3RseS4gQWRkIHd3IGhhbmRsaW5nIGZvciB0aGlzIHdo
ZXJlIHJlcXVpcmVkLgo+Cj4gQWRkIHRoZSBvYmplY3QgbG9jayBhcm91bmQgdW5waW4vcHV0IHBh
Z2VzLCBhbmQgdXNlIHRoZSB1bmxvY2tlZAo+IHZlcnNpb25zIG9mIHBpbl9wYWdlcyBhbmQgcGlu
X21hcCB3aGVyZSByZXF1aXJlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpGb3IgdGhpcyBhbmQgdGhlIHBh
dGNoZXMgaW4gdGhlIHNlcmllcyB0aGF0IHN0YXJ0IHdpdGgKCmRybS9pOTE1L3NlbGZ0ZXN0czoK
ClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhlbGxzdHJvbUBsaW51eC5pbnRlbC5j
b20+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
