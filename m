Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C60B7034
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:53:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDFC86F7F2;
	Thu, 19 Sep 2019 00:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B226F7F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:53:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:53:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="212051536"
Received: from csilveir-mobl.amr.corp.intel.com (HELO localhost)
 ([10.254.178.50])
 by fmsmga004.fm.intel.com with ESMTP; 18 Sep 2019 17:53:53 -0700
MIME-Version: 1.0
In-Reply-To: <20190917121155.13197-7-radhakrishna.sripada@intel.com>
References: <20190917121155.13197-1-radhakrishna.sripada@intel.com>
 <20190917121155.13197-7-radhakrishna.sripada@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Jordan Justen <jordan.l.justen@intel.com>
Message-ID: <156885443252.27503.11536278572514861591@jljusten-skl>
User-Agent: alot/0.8
Date: Wed, 18 Sep 2019 17:53:52 -0700
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/tgl: Add Clear Color supoort
 for TGL Render Decompression
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
Cc: ville.syrjala@intel.com, nanley.g.chery@intel.com,
 dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOS0xNyAwNToxMTo1NSwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6Cj4gICAg
ICAgICAgICAgICAgIHJldHVybiBQTEFORV9DVExfVElMRURfWSB8IFBMQU5FX0NUTF9SRU5ERVJf
REVDT01QUkVTU0lPTl9FTkFCTEU7Cj4gICAgICAgICBjYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJ
TEVEX0dFTjEyX01DX0NDUzoKPiAgICAgICAgICAgICAgICAgcmV0dXJuIFBMQU5FX0NUTF9USUxF
RF9ZIHwgUExBTkVfQ1RMX01FRElBX0RFQ09NUFJFU1NJT05fRU5BQkxFOwo+IEBAIC05ODk3LDkg
Kzk5MjQsMTMgQEAgc2t5bGFrZV9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoc3RydWN0IGludGVs
X2NydGMgKmNydGMsCj4gICAgICAgICBjYXNlIFBMQU5FX0NUTF9USUxFRF9ZOgo+ICAgICAgICAg
ICAgICAgICBwbGFuZV9jb25maWctPnRpbGluZyA9IEk5MTVfVElMSU5HX1k7Cj4gICAgICAgICAg
ICAgICAgIGlmICh2YWwgJiBQTEFORV9DVExfUkVOREVSX0RFQ09NUFJFU1NJT05fRU5BQkxFKQoK
U2hvdWxkIHt9IGJlIGFkZGVkIHRvIHRoaXMgYGlmYCBzaW5jZSBhIG5lc3RlZCBpZi1lbHNlIGlz
IGJlaW5nIGFkZGVkPwoKPiAtICAgICAgICAgICAgICAgICAgICAgICBmYi0+bW9kaWZpZXIgPSBJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDEyID8KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUyA6Cj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1M7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBmYi0+bW9kaWZpZXIgPSB2YWwgJgo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJQ0xfUExBTkVfQ1RMX0NMRUFSX0NPTE9S
X0RJU0FCTEUgPwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJOTE1
X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MgOgo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1Nf
Q0M7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZmItPm1vZGlmaWVyID0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOwo+
ICAgICAgICAgICAgICAgICBlbHNlIGlmICh2YWwgJiBQTEFORV9DVExfUkVOREVSX0RFQ09NUFJF
U1NJT05fRU5BQkxFKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGZiLT5tb2RpZmllciA9IEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUzsKPiAgICAgICAgICAgICAgICAgZWxz
ZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
