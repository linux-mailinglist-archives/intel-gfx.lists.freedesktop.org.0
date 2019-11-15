Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD73FDEC8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:20:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D006E5E6;
	Fri, 15 Nov 2019 13:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B04756E5E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:20:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 05:20:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="288554695"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by orsmga001.jf.intel.com with ESMTP; 15 Nov 2019 05:20:27 -0800
Date: Fri, 15 Nov 2019 15:20:26 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20191115132026.GB1853@intel.intel>
References: <20191114152621.7235-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114152621.7235-1-imre.deak@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restore GT coarse power gating
 workaround
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgSW1yZSwKCk9uIFRodSwgTm92IDE0LCAyMDE5IGF0IDA1OjI2OjIxUE0gKzAyMDAsIEltcmUg
RGVhayB3cm90ZToKPiBUaGUgd29ya2Fyb3VuZCB0byBkaXNhYmxlIGNvYXJzZSBwb3dlciBnYXRp
bmcgaXMgc3RpbGwgbmVlZGVkIG9uIFNLTAo+IEdUMy9HVDQgbWFjaGluZXMgYW5kIHNpbmNlIHRo
ZSBSQzYgY29udGV4dCBjb3JydXB0aW9uIHdhcyBkaXNjb3ZlcmVkIGJ5Cj4gdGhlIGhhcmR3YXJl
IHRlYW0gYWxzbyBvbiBhbGwgR0VOOSBtYWNoaW5lcy4gUmVzdG9yZSBhcHBseWluZyB0aGUKPiB3
b3JrYXJvdW5kLgo+IAo+IEZpeGVzOiBjMTEzMjM2NzE4ZTggKCJkcm0vaTkxNTogRXh0cmFjdCBH
VCByZW5kZXIgc2xlZXAgKHJjNikgbWFuYWdlbWVudCIpCj4gVGVzdGNhc2U6IGlndC9pbnRlbF9n
dF9wbV9sYXRlX3NlbGZ0ZXN0cy9saXZlX3JjNl9jdHgKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KCkFj
a2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KClRoYW5rcywKQW5kaQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
