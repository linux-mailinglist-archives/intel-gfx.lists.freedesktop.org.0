Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BB311AF8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 038BD895B6;
	Thu,  2 May 2019 14:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E2A8895B6
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:11:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 07:11:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="145438886"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 02 May 2019 07:11:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 May 2019 17:11:27 +0300
Date: Thu, 2 May 2019 17:11:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20190502141127.GM24299@intel.com>
References: <20190430142901.7302-1-ville.syrjala@linux.intel.com>
 <20190430142901.7302-2-ville.syrjala@linux.intel.com>
 <871s1hoxui.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871s1hoxui.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: hsw+ audio regs are
 per-transocder
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gVGh1LCBNYXkgMDIsIDIwMTkgYXQgMDM6MTY6MzdQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVHVlLCAzMCBBcHIgMjAxOSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+Cj4gPiBzL3BpcGUvdHJhbnNjb2Rlci8gd2hlbiBk
ZWFsaW5nIHdpdGggaHN3KyBhdWRpbyByZWdpc3RlcnMuIFRoaXMKPiA+IHdvbid0IGFjdHVhbGx5
IG1ha2UgYW55IHJlYWwgZGlmZmVyZW5jZSBzaW5jZSB0aGVyZSBpcyBubyBhdWRpbwo+ID4gb24g
dGhlIEVEUCB0cmFuc2NvZGVyLiBCdXQgdGhpcyBzaG91bGQgYXZvaWQgYSBiaXQgb2YgY29uZnVz
aW9uCj4gPiB3aGVuIGNyb3NzIGNoZWNraW5nIGFnYWluc3QgdGhlIHNwZWMuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiAKPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
ClRoYW5rcy4gU2VyaWVzIHB1c2hlZCB0byBkaW5xLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRl
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
