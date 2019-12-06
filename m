Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B024C11515E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 14:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9166FA19;
	Fri,  6 Dec 2019 13:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377B86FA19
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 13:52:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 05:52:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,284,1571727600"; d="scan'208";a="362238533"
Received: from cfromme-mobl1.ger.corp.intel.com (HELO [10.252.34.238])
 ([10.252.34.238])
 by orsmga004.jf.intel.com with ESMTP; 06 Dec 2019 05:52:01 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
References: <20191118222432.65399-1-umesh.nerlige.ramappa@intel.com>
 <20191118222432.65399-2-umesh.nerlige.ramappa@intel.com>
 <e1f91b06-cd11-5224-ddde-c7a7fdfcff36@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8bcc45a2-0a07-2b17-4846-5bfb85a9cc3c@intel.com>
Date: Fri, 6 Dec 2019 15:52:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <e1f91b06-cd11-5224-ddde-c7a7fdfcff36@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/perf: Configure OAR for
 specific context
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDYvMTIvMjAxOSAxNToyMiwgTGlvbmVsIExhbmR3ZXJsaW4gd3JvdGU6Cj4gT24gMTkvMTEv
MjAxOSAwMDoyNCwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+PiBHZW4xMiBzdXBwb3J0
cyBzYXZpbmcvcmVzdG9yaW5nIHJlbmRlciBjb3VudGVycyBwZXIgY29udGV4dC4gQXBwbHkgT0FS
Cj4+IGNvbmZpZ3VyYXRpb24gb25seSBmb3IgdGhlIGNvbnRleHQgdGhhdCBpcyBwYXNzZWQgaW4g
dG8gcGVyZi4KPj4KPj4gdjI6Cj4+IC0gRml4IE9BQ1RYQ09OVFJPTCB2YWx1ZSB0byBvbmx5IHN0
b3AvcmVzdW1lIGNvdW50ZXJzLgo+PiAtIFJlbW92ZSBnZW4xMl91cGRhdGVfcmVnX3N0YXRlX3Vu
bG9ja2VkIGFzIHBvd2VyIHN0YXRlIGlzIGFscmVhZHkKPj4gwqDCoCBhcHBsaWVkIGJ5IHRoZSBj
YWxsZXIuCj4+Cj4+IHYzOiAoTGlvbmVsKQo+PiAtIE1vdmUgcmVnaXN0ZXIgaW5pdGlhbGl6YXRp
b24gaW50byB0aGUgYXJyYXkKPj4gLSBBc3N1bWUgYSB2YWxpZCBvYV9jb25maWcgaW4gZW5hYmxl
X21ldHJpY19zZXQKPj4KPj4gU2lnbmVkLW9mZi1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1
bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50ZWwuY29tPgo+Cj4gTG9va3MgYWxsIGdvb2QsIHRoYW5r
cyEKPgo+Cj4gUmV2aWV3ZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2Vy
bGluQGludGVsLmNvbT4gCgoKSSBmb3Jnb3QgdG8gbWVudGlvbiB3ZSBzdXJlbHkgd2FudCB0byBh
ZGQgdGhpcyB0YWcgOgoKCkZpeGVzOiAwMGE3ZjBkNzE1NWMgKCJkcm0vaTkxNS90Z2w6IEFkZCBw
ZXJmIHN1cHBvcnQgb24gVEdMIikKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
