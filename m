Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7162A01AA
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 10:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0462D89954;
	Fri, 30 Oct 2020 09:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 427E789954
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 09:42:06 +0000 (UTC)
IronPort-SDR: cWWNCkJQJGz3yFXPRIE/kkox6x49cP31VhM3moW6fKV2uizKsGMYzt2hOON7FU/HWfWanPI+Nr
 y+0tuFNjkKMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="168680750"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="168680750"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 02:42:05 -0700
IronPort-SDR: 72nrfV2u8B6788zrRmIekBYeAFq8dW7mcwx+fwXTgv8lyGJPqjWvq2Vvdvz55dIy77yKpPzup2
 P7XDkjjiVScA==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="351808682"
Received: from oc5mblwhs02.amr.corp.intel.com (HELO
 Win10-45-1tb161.SSPE.ch.intel.com) ([10.249.254.155])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 02:42:04 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-18-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <a35f0aae-57be-d870-d69b-a7b1c83459d9@linux.intel.com>
Date: Fri, 30 Oct 2020 10:42:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-18-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 17/61] drm/i915: Populate logical context
 during first pin.
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

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBUaGlzIGFs
bG93cyB1cyB0byByZW1vdmUgcGluX21hcCBmcm9tIHN0YXRlIGFsbG9jYXRpb24sIHdoaWNoIHNh
dmVzCj4gdXMgYSBmZXcgcmV0cnkgbG9vcHMuIFdlIHdvbid0IG5lZWQgdGhpcyB1bnRpbCBmaXJz
dCBwaW4sIGFueXdheS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9jb250ZXh0X3R5cGVzLmggfCAgMTMgKystCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgICAgfCAxMDcgKysrKysrKysrLS0tLS0tLS0t
Cj4gICAyIGZpbGVzIGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDU4IGRlbGV0aW9ucygtKQoK
UmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4Lmlu
dGVsLmNvbT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
