Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16C92A001B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 09:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB5F6ED0D;
	Fri, 30 Oct 2020 08:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABA66ED0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 08:34:31 +0000 (UTC)
IronPort-SDR: BUZ3UZ3Pgk1mVvYCR1hEuPz+47DJDFzN4okpdmIduQIFJ/G9UbhBv04aauWMlJVptle3R2an/z
 vxqMisWMqEGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="168673363"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="168673363"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 01:34:31 -0700
IronPort-SDR: h/yd4oji1cZipllDsygEG+cRGWrqCUAit+E+I6TNHnI1bGp3T2tZ6tCdncSERn7NVEyUltt+Eg
 bG2+7FEAiXkg==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="351791119"
Received: from oc5mblwhs02.amr.corp.intel.com (HELO
 Win10-45-1tb161.SSPE.ch.intel.com) ([10.249.254.155])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 01:34:30 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-9-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <58eb90b3-aeb1-eae2-a412-70247971e2a1@linux.intel.com>
Date: Fri, 30 Oct 2020 09:34:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-9-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 08/61] drm/i915: Rework struct phys
 attachment handling
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

Ck9uIDEwLzE2LzIwIDEyOjQzIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBJbnN0ZWFk
IG9mIGNyZWF0aW5nIGEgc2VwYXJhdGUgb2JqZWN0IHR5cGUsIHdlIG1ha2UgY2hhbmdlcyB0bwo+
IHRoZSBzaG1lbSB0eXBlLCB0byBjbGVhciBzdHJ1Y3QgcGFnZSBiYWNraW5nLiBUaGlzIHdpbGwg
YWxsb3cgdXMgdG8KPiBlbnN1cmUgd2UgbmV2ZXIgcnVuIGludG8gYSByYWNlIHdoZW4gd2UgZXhj
aGFuZ2Ugb2JqLT5vcHMgd2l0aCBvdGhlcgo+IGZ1bmN0aW9uIHBvaW50ZXJzLgo+Cj4gU2lnbmVk
LW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBs
aW51eC5pbnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
