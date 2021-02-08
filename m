Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D659B312EBB
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 11:18:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 259936E856;
	Mon,  8 Feb 2021 10:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAC9B6E856
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 10:18:56 +0000 (UTC)
IronPort-SDR: eA5PdqBuIPtBnLTQHvk9m0bKNczxaRbdJQk8wfWqYKmhjQeC64v6tFziH3OuOB6QpRn6KrR7c8
 71LeeSH8AzuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="168813036"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="168813036"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 02:18:55 -0800
IronPort-SDR: +lzgc5uIH0mfrjAHrtxyqN45q6JezuUso6uuItLCdNkrjSZkO8BYthtc9+How2hD22MULl7TR5
 q9I2ZF5Qym1Q==
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="395328249"
Received: from abodrova-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.34.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 02:18:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YB2sQX8VgJ9MH8lh@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1612536383.git.jani.nikula@intel.com>
 <7a9463a87517fc5cbb5d4cbf395531b7fc0713d0.1612536383.git.jani.nikula@intel.com>
 <YB1fmmHXYdg/A8iK@intel.com> <YB2sQX8VgJ9MH8lh@intel.com>
Date: Mon, 08 Feb 2021 12:18:49 +0200
Message-ID: <87o8gueuba.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v12 8/8] drm/i915: move ddi pll state get to
 dpll mgr
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

T24gRnJpLCAwNSBGZWIgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gVGVtcHRhdGlvbiB0dXJuZWQgaW50byBjb2RlLiBJIHRoaW5r
IEkgaGF2ZSBhIGRlY2VudCB3YXkgZm9yd2FyZAo+IHdpdGggdGhpcyBpZGVhIG9uIHRvcCBvZiBt
eSBvdGhlciByZWZhY3RvcmluZ3MsIHNvIEknZCBqdXN0IGRyb3AKPiB0aGlzIHBhdGNoLgoKVGhh
bmtzIGZvciB0aGUgcGF0Y2hlcyBhbmQgcmV2aWV3IGFuZCBwZXJzZXZlcmFuY2UhIEZpbmFsbHkg
cHVzaGVkCmV2ZXJ5dGhpbmcgZXhjZXB0IHRoaXMgcGF0Y2gsIGFuZCBub3RoaW5nIGNvbmZsaWN0
ZWQuIFxvLwoKQlIsCkphbmkuCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
