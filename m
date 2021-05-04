Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 773EF372A18
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 14:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3286F6EACE;
	Tue,  4 May 2021 12:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C226EACE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 12:31:46 +0000 (UTC)
IronPort-SDR: 0bC7mC7a16LVMTz8exGq0RKQDU2FZ8lOe/IQcjneG74TDYlmUbHA233lSVSlzehTm0mIl5qXU4
 Sd2QYG25HH8A==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="178178753"
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; d="scan'208";a="178178753"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 05:31:30 -0700
IronPort-SDR: PQt17YehKWVaaBciZVt1MYohoN14aiE9Vd6ocSg6h//24ozC04RXbB7BxfsCOlnpTcxxZ9ql/t
 lk956k/dZraw==
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; d="scan'208";a="433260814"
Received: from radwanib-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 05:31:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YJEKvxfc7ASUMU+D@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1620115982.git.jani.nikula@intel.com>
 <6c2f6afa4c8866f8c1714b4f8dba9ea2d1509e4a.1620115983.git.jani.nikula@intel.com>
 <YJEKvxfc7ASUMU+D@intel.com>
Date: Tue, 04 May 2021 15:31:25 +0300
Message-ID: <87zgxay92a.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/audio: fix indentation,
 remove extra braces
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwNCBNYXkgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBNYXkgMDQsIDIwMjEgYXQgMTE6MTQ6MDFBTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IENsZWFudXAgdGhlIGNvZGUuIE5vIGZ1bmN0aW9u
YWwgY2hhbmdlcy4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+Cj4KPiBmb3IgdGhlIHNlcmllcwo+IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKVGhhbmtzLCBwdXNoZWQuCgpC
UiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
