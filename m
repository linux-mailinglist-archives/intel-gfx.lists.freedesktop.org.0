Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4559D2F9D53
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 11:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD7889DFE;
	Mon, 18 Jan 2021 10:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A75889E50
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 10:59:01 +0000 (UTC)
IronPort-SDR: Lv/FVGfVyG6T0fpy+qxZ5QhNjOZj/pnyUnU1/PbjwxtkSy//7TYjRKk0lttJIk23yoOr9krfIV
 EuDfKQYiDndQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="178010364"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="178010364"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 02:58:59 -0800
IronPort-SDR: smzT9fuI5QaQX0XSmJIB/NRQoNaFjaTH5g913bygERSy7T15wsPCsKDQimHbcyz0EVA/hbR0Ly
 ZFXn6LUCzUWA==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383527192"
Received: from jwalsh1-mobl1.ger.corp.intel.com (HELO [10.252.7.161])
 ([10.252.7.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 02:58:57 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-63-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <5d0c9e58-cf3a-f4cf-3b57-433676e5b81a@linux.intel.com>
Date: Mon, 18 Jan 2021 11:58:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210105153558.134272-63-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 62/64] drm/i915: Keep userpointer
 bindings if seqcount is unchanged, v2.
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEvNS8yMSA0OjM1IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBJbnN0ZWFkIG9m
IGZvcmNlIHVuYmluZGluZyBhbmQgcmViaW5kaW5nIGV2ZXJ5IHRpbWUsIHdlIHRyeSB0byBjaGVj
awo+IGlmIG91ciBub3RpZmllciBzZXFjb3VudCBpcyBzdGlsbCBjb3JyZWN0IHdoZW4gcGFnZXMg
YXJlIGJvdW5kLiBUaGlzCj4gd2F5IHdlIG9ubHkgcmViaW5kIHVzZXJwdHIgd2hlbiB3ZSBuZWVk
IHRvLCBhbmQgcHJldmVudCBzdGFsbHMuCj4KPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0gTWlzc2lu
ZyBtdXRleF91bmxvY2ssIHJlcG9ydGVkIGJ5IGtidWlsZC4KPgo+IFJlcG9ydGVkLWJ5OiBrZXJu
ZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiBSZXBvcnRlZC1ieTogRGFuIENhcnBlbnRl
ciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5
OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
