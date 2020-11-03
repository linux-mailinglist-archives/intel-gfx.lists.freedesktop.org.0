Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6372A468D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 14:32:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81AB46ECA1;
	Tue,  3 Nov 2020 13:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E81FD6ECA1
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 13:32:09 +0000 (UTC)
IronPort-SDR: RP86kd/MZIsTOmE1GG5uRYeFsk4xg8sGiH5gnbaCAugY/RlhH5uyDO1Z+e7kwzCCYQF2MEX2zN
 xMrrdt8nRMZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="253760705"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="253760705"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 05:32:09 -0800
IronPort-SDR: dh+il0DbC8xe3JPvqVO/MiSrm5gkv9EUnFmv3pP3UsccRqF0yeh7hHm4VdKibjnrfKHS0hZt8a
 gNSbZytORzLw==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="528484413"
Received: from emalinow-mobl.ger.corp.intel.com (HELO
 W10-45-itb-64.SSPE.ch.intel.com) ([10.249.254.149])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 05:32:08 -0800
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-60-maarten.lankhorst@linux.intel.com>
 <55adb1f9-ce38-ac70-0f6b-89bfedde686e@linux.intel.com>
Message-ID: <bd08df6e-3d54-1651-d0b2-4f75fe2b4267@linux.intel.com>
Date: Tue, 3 Nov 2020 14:32:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <55adb1f9-ce38-ac70-0f6b-89bfedde686e@linux.intel.com>
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

Ck9uIDExLzMvMjAgMjoyNyBQTSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4KPiBPbiAxMC8x
Ni8yMCAxMjo0NCBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IFdlIG5lZWQgdG8gbG9j
ayB0aGUgZ2xvYmFsIGd0dCBkbWFfcmVzdiwgdXNlIGk5MTVfdm1fbG9ja19vYmplY3RzCj4+IHRv
IGhhbmRsZSB0aGlzIGNvcnJlY3RseS4gQWRkIHd3IGhhbmRsaW5nIGZvciB0aGlzIHdoZXJlIHJl
cXVpcmVkLgo+Pgo+PiBBZGQgdGhlIG9iamVjdCBsb2NrIGFyb3VuZCB1bnBpbi9wdXQgcGFnZXMs
IGFuZCB1c2UgdGhlIHVubG9ja2VkCj4+IHZlcnNpb25zIG9mIHBpbl9wYWdlcyBhbmQgcGluX21h
cCB3aGVyZSByZXF1aXJlZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPgo+IEZvciB0aGlzIGFuZCB0aGUg
cGF0Y2hlcyBpbiB0aGUgc2VyaWVzIHRoYXQgc3RhcnQgd2l0aAo+Cj4gZHJtL2k5MTUvc2VsZnRl
c3RzOgo+Cj4gUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aGVsbHN0cm9tQGxpbnV4
LmludGVsLmNvbT4KPgo+ClNpZ2guIENvbmZ1c2VkIGJ5IGFsbCBlbWFpbCBhZGRyZXNzZXMgOikK
ClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5p
bnRlbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
