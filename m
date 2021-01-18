Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9A22F9DCD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 12:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52CA6E1D2;
	Mon, 18 Jan 2021 11:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187266E1D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 11:17:41 +0000 (UTC)
IronPort-SDR: mwbNRs8Hm/7qh51ReGjk2Z/KOkszx5lCQ5NN2d1mU/fC2Ow69d/FLW3TUilESJrEWRFwWVpQjI
 PC0YVnQnjvFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="178940371"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="178940371"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 03:17:41 -0800
IronPort-SDR: U5OT/6wQCZCawFc6Eoja3S8bMd+FDPglHhKEQv+dbLvLAJEOeCJiCWMm/lwLCEc79om7h1gJmu
 j+LyKf7ezfQg==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383531411"
Received: from jwalsh1-mobl1.ger.corp.intel.com (HELO [10.252.7.161])
 ([10.252.7.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 03:17:40 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-16-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <898f7049-5f08-a751-2f91-a6271909d309@linux.intel.com>
Date: Mon, 18 Jan 2021 12:17:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210105153558.134272-16-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 15/64] drm/i915: Make compilation of
 userptr code depend on MMU_NOTIFIER.
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

Ck9uIDEvNS8yMSA0OjM1IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBOb3cgdGhhdCB1
bnN5bmNocm9uaXplZCBtYXBwaW5ncyBhcmUgcmVtb3ZlZCwgdGhlIG9ubHkgdGltZSB1c2VycHRy
Cj4gd29ya3MgaXMgd2hlbiB0aGUgTU1VIG5vdGlmaWVyIGlzIGVuYWJsZWQuIFB1dCBhbGwgb2Yg
dGhlIHVzZXJwdHIKPiBjb2RlIGJlaGluZCBhIG1tdSBub3RpZmllciBpZmRlZi4KPgo+IFNpZ25l
ZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+CgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21A
aW50ZWwuY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
