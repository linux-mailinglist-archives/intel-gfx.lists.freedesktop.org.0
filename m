Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 272CB3B59CA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 09:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941616E0D8;
	Mon, 28 Jun 2021 07:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 349BF6E0BC;
 Mon, 28 Jun 2021 07:32:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="207845851"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="207845851"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 00:32:00 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="454421242"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO [10.249.254.242])
 ([10.249.254.242])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 00:31:58 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210625122751.590289-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <8b41b974-9470-c82e-1450-a5c2e3ad4874@linux.intel.com>
Date: Mon, 28 Jun 2021 09:31:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210625122751.590289-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/gem: only allow WC for lmem
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjUvMjEgMjoyNyBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IFRoaXMgaXMgYWxyZWFk
eSB0aGUgY2FzZSBmb3Igb3VyIGtlcm5lbCBpbnRlcm5hbCBtYXBwaW5ncywgYW5kIHNpbmNlIHdl
Cj4gbm93IG9ubHkgc3VwcG9ydCBhIHNpbmdsZSBtb2RlIHRoaXMgc2hvdWxkIGFsd2F5cyBiZSBX
QyBpZiB0aGUgb2JqZWN0Cj4gY2FuIGJlIHBsYWNlZCBpbiBsbWVtLgo+Cj4gdjI6IHJlYmFzZSBh
bmQgYWxzbyB1cGRhdGUgc2V0X2RvbWFpbgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+CgpBIGNvdXBsZSBvZiBxdWVzdGlvbnM6CgoxKSBTaW5jZSB0aGlz
IG5vdyBiZWNvbWVzIHVhcGksIGFyZSB3ZSBjb21wbGV0ZWx5IHN1cmUgdGhhdCB3ZSBhcmUgbm90
IApnb2luZyB0byB3YW50IHRvIG1hcCB0aGVzZSBib3MgY2FjaGVkIHdoZW4gdGhleSBhcmUgZXZp
Y3RlZCBvciBtaWdyYXRlZC4gCklmIHdlIHRoaW5rIHdlIGFyZSBnb2luZyB0byB3YW50IHRvIGRv
IHRoYXQsIHdlIHNob3VsZCBwcm9iYWJseSBqdXN0IApzaWxlbnRseSBhY2NlcHQgYW55IG1hcHBp
bmcgbW9kZSB1c2VyLXNwYWNlIHdhbnRzIGFuZCB0aGVuIGhhdmUgdGhlIAprZXJuZWwgb3ZlcnJp
ZGUgdXNlci1zcGFjZSdzIHdpc2hlcy4KClBpbmcgRGFuaWVsIGFib3V0IHRoaXMgYXMgd2VsbC4K
CjIpIEhvdyBhcmUgd2UgZ29pbmcgdG8gaGFuZGxlIGtlcm5lbCBtYXBzIHRvIG1ha2Ugc3VyZSB3
ZSBkb24ndCB1c2UgYSAKZGlmZmVyZW50IGtlcm5lbCBtYXAgY2FjaGluZyBtb2RlIHRvIHRoZXNl
IG9iamVjdHMuIFdpbGwgdGhhdCBiZSBhIGxhdGVyIApzZXJpZXM/IFNlZW1zIGxpa2Ugd2UgYXQg
bGVhc3QgbmVlZCB0byBtb2RpZnkgImk5MTVfY29oZXJlbnRfbWFwX3R5cGUiCgpBcGFydCBmcm9t
IHRoaXMsIGNvZGUgbG9va3MgZ29vZCB0byBtZS4KCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
