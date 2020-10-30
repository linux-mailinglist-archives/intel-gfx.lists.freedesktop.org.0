Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F192A00A2
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 10:03:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F846ED14;
	Fri, 30 Oct 2020 09:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D4F6ED14
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 09:03:03 +0000 (UTC)
IronPort-SDR: KDDQsTYNKOcnLw/TYcf0C3kbaTEf8dNpMVllL7kGnQbB3nCZ7TsegNR9oHlH5mfLtcSDgfn7mx
 n8ayPNaMfvrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="253288655"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="253288655"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 02:03:03 -0700
IronPort-SDR: Y52GkQC2LFbdwJtIUBPj+AQy/jgLCW14InuWrMMxe29HBZCoUxGBKKRg8VXhh2HYOhOhE8FzNh
 l/McFRARkNfw==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="351798710"
Received: from oc5mblwhs02.amr.corp.intel.com (HELO
 Win10-45-1tb161.SSPE.ch.intel.com) ([10.249.254.155])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 02:03:02 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-12-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <54a645b4-799d-ba50-3d96-af0ee958425f@linux.intel.com>
Date: Fri, 30 Oct 2020 10:03:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-12-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 11/61] drm/i915: Disable userptr
 pread/pwrite support.
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

Ck9uIDEwLzE2LzIwIDEyOjQzIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBVc2VycHRy
IHNob3VsZCBub3QgbmVlZCB0aGUga2VybmVsIGZvciBhIHVzZXJzcGFjZSBtZW1jcHksIHVzZXJz
cGFjZQo+IG5lZWRzIHRvIGNhbGwgbWVtY3B5IGRpcmVjdGx5Lgo+Cj4gU2lnbmVkLW9mZi1ieTog
TWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCldl
IG5lZWQgYW4gYWNrIGZyb20gdXNlcnNwYWNlIG1haW50YWluZXJzIHRoYXQgdGhpcyBpcyBpbmRl
ZWQgbm90IHVzZWQgCmFueXdoZXJlCmJlc2lkZXMgaWd0LgoKQXNzdW1pbmcgdGhlcmUgaXMgc3Vj
aCBhbiBhY2ssCgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
