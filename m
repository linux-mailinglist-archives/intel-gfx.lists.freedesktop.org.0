Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BA77D49B
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 06:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A3E89AB9;
	Thu,  1 Aug 2019 04:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 196D789AB9
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 04:35:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 21:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,332,1559545200"; d="scan'208";a="372445973"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.252.74.118])
 ([10.252.74.118])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2019 21:35:55 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190730135024.31765-1-anshuman.gupta@intel.com>
 <20190730135024.31765-3-anshuman.gupta@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <da19bf32-2ff2-db1c-0269-f84f628167ff@intel.com>
Date: Thu, 1 Aug 2019 10:05:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190730135024.31765-3-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/9] drm/i915/tgl: Add DC3CO mask to
 allowed_dc_mask and gen9_dc_mask
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
Cc: jani.nikula@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgoKT24gNy8zMC8yMDE5IDc6MjAgUE0sIEFuc2h1bWFuIEd1cHRhIHdyb3RlOgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wYXJhbXMuYwo+IGluZGV4IDI5NjQ1MmY5ZWZlNC4uN2E0NmRjOTU3NjYw
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jCj4gQEAgLTQ2LDcgKzQ2LDggQEAg
aTkxNV9wYXJhbV9uYW1lZChtb2Rlc2V0LCBpbnQsIDA0MDAsCj4gICAKPiAgIGk5MTVfcGFyYW1f
bmFtZWRfdW5zYWZlKGVuYWJsZV9kYywgaW50LCAwNDAwLAo+ICAgCSJFbmFibGUgcG93ZXItc2F2
aW5nIGRpc3BsYXkgQy1zdGF0ZXMuICIKPiAtCSIoLTE9YXV0byBbZGVmYXVsdF07IDA9ZGlzYWJs
ZTsgMT11cCB0byBEQzU7IDI9dXAgdG8gREM2KSIpOwo+ICsJIigtMT1hdXRvIFtkZWZhdWx0XTsg
MD1kaXNhYmxlOyAxPXVwIHRvIERDNTsgMj11cCB0byBEQzY7ICIKPiArCSIzPXVwIHRvIERDNiB3
aXRoIERDM0NPKSIpOwpXaGF0IGFib3V0IERDM2NvIHdpdGggREM1PyBVc2VyIGRvIG5vdCBhbiBv
cHRpb24gdG8gZW5hYmxlIERDM2NvIHdpdGggCnVwdG8gREM1IGVuYWJsZWQuCgpSZWdhcmRzLApB
bmltZXNoCj4gICAKPiAgIGk5MTVfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9mYmMsIGludCwg
MDYwMCwKPiAgIAkiRW5hYmxlIGZyYW1lIGJ1ZmZlciBjb21wcmVzc2lvbiBmb3IgcG93ZXIgc2F2
aW5ncyAiCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
