Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 542901594FC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B726E512;
	Tue, 11 Feb 2020 16:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5ED56E512
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 16:32:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:32:47 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226558644"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:32:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200211162903.GW13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211161451.6867-1-jani.nikula@intel.com>
 <20200211162903.GW13686@intel.com>
Date: Tue, 11 Feb 2020 18:32:42 +0200
Message-ID: <877e0tythx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: move intel_csr.[ch] under
 display/
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

T24gVHVlLCAxMSBGZWIgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMDY6MTQ6NTBQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFRoZSBETUMgZmlybXdhcmUgaXMgYWJvdXQgZGlz
cGxheS4gTW92ZSB0aGUgaGFuZGxpbmcgdW5kZXIgZGlzcGxheS4gTm8KPj4gZnVuY3Rpb25hbCBj
aGFuZ2VzLgo+PiAKPj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4KPiBBY2tlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPgo+IEknbSBhbHNvIHRoaW5raW5nIHMvY3NyL2RtYy8gbWlndGggYmUgYSBn
b29kIGlkZWEuIEkgZG9uJ3QgZXZlbgo+IHJlbWVtYmVyIHdoYXQgImNzciIgbWVhbnMuLi4KCkNv
bnRleHQgU2F2ZSAmIFJlc3RvcmUsIHBlcmhhcHM/IEknbGwgc2F2ZSB0aGUgcmVuYW1lIGZvciBh
bm90aGVyIGRheSwKYW5kIGFub3RoZXIgcGF0Y2guCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
