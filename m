Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971A637523B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 12:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F3C46ECAD;
	Thu,  6 May 2021 10:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E101B6ECB2;
 Thu,  6 May 2021 10:23:40 +0000 (UTC)
IronPort-SDR: MftYsarp29WMCvhKkVB15nT57FUN7NQab9Haun5zPC1A6BGuKLjuDsNGKHsG9L8qpqilFCdE44
 XENCI0KVS3pA==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="178674305"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="178674305"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 03:23:40 -0700
IronPort-SDR: 5I3kMzgzvJNNNpzTYA8mcEXEMTkYotZxmJ4qj06DGbdCqtxoAx3g43W3tlBjbQPe8gjorZSBC8
 S4PLdrEZ33jA==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="434283575"
Received: from tchrzano-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.214])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 03:23:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Andi
 Kleen <ak@linux.intel.com>
In-Reply-To: <YJKq15HgIWQqFeho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210505033737.1282652-1-ak@linux.intel.com>
 <87r1ily9k5.fsf@intel.com> <20210505141830.GP4032392@tassilo.jf.intel.com>
 <YJKq15HgIWQqFeho@intel.com>
Date: Thu, 06 May 2021 13:23:35 +0300
Message-ID: <87mtt8w47s.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] i915: Increase *_latency array size
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 Andi Kleen <andi@firstfloor.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwNSBNYXkgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBNYXkgMDUsIDIwMjEgYXQgMDc6MTg6MzBBTSAt
MDcwMCwgQW5kaSBLbGVlbiB3cm90ZToKPj4gV2hhdCBkbyBJIG1pc3Mgd2hlbiB5b3Ugc2F5IHRo
ZXJlIGlzIG5vIGJ1Zz8KPgo+IFdlIGFsd2F5cyB1c2UgZGV2X3ByaXYtPndtLnNrbF9sYXRlbmN5
W10gZm9yIGdlbjkrLiBTZWUKPiB7cHJpLHNwcixjdXJ9X3dtX2xhdGVuY3lfc2hvdygpLCBza2xf
c2V0dXBfd21fbGF0ZW5jeSgpLCBldGMuCgpHcmFudGVkLCB3ZSBzaG91bGQgcHJvYmFibHkgbWFr
ZSB0aGlzIG1vcmUgb2J2aW91cyBhbmQvb3IgcGFzcyBpbiB0aGUKYnVmIHNpemUgdG8gbWFrZSBp
dCBlYXNpZXIgdG8gc2VlIHdoYXQncyBnb2luZyBvbi4KCkJSLApKYW5pLgoKCi0tIApKYW5pIE5p
a3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
