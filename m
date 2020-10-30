Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC63C2A01E9
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 10:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B714D6ED34;
	Fri, 30 Oct 2020 09:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E032C6ED34
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 09:56:44 +0000 (UTC)
IronPort-SDR: BCa5+aHSvl3NF7PPCZY7vkSWcb9eqsaSWVAPxKhRTgSwEyxGyakE47Ar1ePT3hs1Qo7C8Ud11i
 oVyQKXS/eugg==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="165999570"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="165999570"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 02:56:44 -0700
IronPort-SDR: NZUTEWCsrJZiqNxYljVnPiNpEjVXnBMymHhsYm3nB12dbca1O+y1Rijr+aLoo5Z547do0XPWHJ
 OMilZDs4sGxA==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="527064719"
Received: from bmurphy-mobl.ger.corp.intel.com (HELO [10.249.41.199])
 ([10.249.41.199])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 02:56:43 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-14-maarten.lankhorst@linux.intel.com>
 <b8793d0e-6fee-2055-7447-3073b374666d@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <8d924da9-d88d-2f8e-65a5-247c561f2311@linux.intel.com>
Date: Fri, 30 Oct 2020 10:56:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <b8793d0e-6fee-2055-7447-3073b374666d@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 13/61] drm/i915: Reject more ioctls for
 userptr
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMzAtMTAtMjAyMCBvbSAxMDoyMiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiAxMC8xNi8yMCAxMjo0MyBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IEFs
bG93IHNldF9kb21haW4gdG8gZmFpbCBzaWxlbnRseSwgd2FpdGluZyBmb3IgaWRsZSBzaG91bGQg
YmUgZ29vZCBlbm91Z2guCj4+IHNldF90aWxpbmcgYW5kIHNldF9jYWNoaW5nIGFyZSByZWplY3Rl
ZCB3aXRoIC1FTlhJTywgdGhlcmUncyBubyB2YWxpZCByZWFzb24KPj4gdG8gYWxsb3cgaXQuCj4K
PiBQbGVhc2UgbGlzdCBhbGwgYWZmZWN0ZWQgaW9jdGxzIGFmZmVjdGVkIGJ5IHRoZSBJU19QUk9Y
WSBmbGFnLiBXZSBhbHNvIG5lZWQgdXNlcnNwYWNlIG1haW50YWluZXIgYWNrcyBmb3IgdGhpcy4K
CnNldF9jYWNoaW5nLCBzZXRfZG9tYWluIGFuZCBzZXRfdGlsaW5nLiBzZXRfZG9tYWluIHR1cm5z
IGludG8gYSBnZW1fd2FpdCBmb3IgY29oZXJlbnQgdXNlcnB0ciwgc2luY2UgdGhlIG90aGVyIGlv
Y3RsJ3MgdGhhdCBhZmZlY3QgcGxhY2VtZW50IGFuZCBjYWNoaW5nIGFyZSBubyBsb25nZXIgYWxs
b3dlZC4gOikKCn5NYWFydGVuCgo+PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
