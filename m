Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DF5251497
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 10:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C0E6E030;
	Tue, 25 Aug 2020 08:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909796E030
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 08:48:10 +0000 (UTC)
IronPort-SDR: dTTM+SrTuxbgoSmZCYQskMHPlR9rJ7eQWSEVpMqQyAEg2K0FzZkLds/xLb2ct47b2lU0/JWpWp
 mzXLw6gWe30g==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="135619052"
X-IronPort-AV: E=Sophos;i="5.76,351,1592895600"; d="scan'208";a="135619052"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 01:48:10 -0700
IronPort-SDR: vpgoV0QBDZdOkp/5AHqArxYyNLpQtQOoUtvl7QSKqJStPyd06GzhCaZbHgG/NnpJICZz5ZfWPT
 NcZz/8sPP62g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,351,1592895600"; d="scan'208";a="281445957"
Received: from mtiebout-mobl.ger.corp.intel.com (HELO [10.252.32.225])
 ([10.252.32.225])
 by fmsmga008.fm.intel.com with ESMTP; 25 Aug 2020 01:48:09 -0700
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
 <20200819140904.1708856-8-maarten.lankhorst@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <81efa611-3184-bc43-d92a-c3efc99b56f7@linux.intel.com>
Date: Tue, 25 Aug 2020 10:48:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200819140904.1708856-8-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 07/24] drm/i915: Parse command buffer
 earlier in eb_relocate(slow)
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

T3AgMTktMDgtMjAyMCBvbSAxNjowOCBzY2hyZWVmIE1hYXJ0ZW4gTGFua2hvcnN0Ogo+IFdlIHdh
bnQgdG8gaW50cm9kdWNlIGJhY2tvZmYgbG9naWMsIGJ1dCB3ZSBuZWVkIHRvIGxvY2sgdGhlCj4g
cG9vbCBvYmplY3QgYXMgd2VsbCBmb3IgY29tbWFuZCBwYXJzaW5nLiBCZWNhdXNlIG9mIHRoaXMs
IHdlCj4gd2lsbCBuZWVkIGJhY2tvZmYgbG9naWMgZm9yIHRoZSBlbmdpbmUgcG9vbCBvYmosIG1v
dmUgdGhlIGJhdGNoCj4gdmFsaWRhdGlvbiB1cCBzbGlnaHRseSB0byBlYl9sb29rdXBfdm1hcywg
YW5kIHRoZSBhY3R1YWwgY29tbWFuZAo+IHBhcnNpbmcgaW4gYSBzZXBhcmF0ZSBmdW5jdGlvbiB3
aGljaCBjYW4gZ2V0IGNhbGxlZCBmcm9tIGV4ZWNidWYKPiByZWxvY2F0aW9uIGZhc3QgYW5kIHNs
b3dwYXRoLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KTWlzc2luZyBmcm9tIHRoZSBwcmV2aW91cyB2ZXJzaW9u
OgoKUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVs
LmNvbT4gQW5kIHB1c2hlZCwgdGhhbmtzIGZvciByZXZpZXdzLiA6LSkKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
