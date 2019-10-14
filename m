Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECDDD5D39
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 10:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A3689EBD;
	Mon, 14 Oct 2019 08:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8785889EBD
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 08:15:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 01:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="396407680"
Received: from bpuehrin-mobl.ger.corp.intel.com (HELO [10.252.6.153])
 ([10.252.6.153])
 by fmsmga006.fm.intel.com with ESMTP; 14 Oct 2019 01:15:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191013091127.1165-1-chris@chris-wilson.co.uk>
 <20191013114509.3405-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <91819aad-3e51-8341-ca4e-d66ebf79af0f@intel.com>
Date: Mon, 14 Oct 2019 09:15:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191013114509.3405-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Fixup naked 64b
 divide
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

T24gMTMvMTAvMjAxOSAxMjo0NSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24ubzogaW4gZnVuY3Rpb24gYGlndF9tb2NrX2NvbnRp
Z3VvdXMnOgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVn
aW9uLmM6MTY2OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBfX3Vtb2RkaTMnCj4gCj4gdjI6IHBy
b21vdGUgdGFyZ2V0IHRvIHU2NCBmb3IgY29uc2lzdGVuY3kgYWNyb3NzIGFsbCBidWlsZHMKPiAK
PiBSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gRml4ZXM6
IDJmMGI5N2NhMDIxMSAoImRybS9pOTE1L3JlZ2lvbjogc3VwcG9ydCBjb250aWd1b3VzIGFsbG9j
YXRpb25zIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
