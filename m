Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA6610CB5E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 16:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8217897FB;
	Thu, 28 Nov 2019 15:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FDFF897FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 15:09:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 07:09:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="410712834"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga006.fm.intel.com with ESMTP; 28 Nov 2019 07:09:38 -0800
Date: Thu, 28 Nov 2019 17:09:37 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@zeliteleevi
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20191126235220.GH6337@mdroper-desk1.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.21.1911281707360.16459@zeliteleevi>
References: <20191125125313.17584-1-kai.vehmanen@linux.intel.com>
 <20191125125313.17584-2-kai.vehmanen@linux.intel.com>
 <20191126235220.GH6337@mdroper-desk1.amr.corp.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: fix DP infoframe init
 for PORT_A on gen12+
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

SGksCgpPbiBUdWUsIDI2IE5vdiAyMDE5LCBNYXR0IFJvcGVyIHdyb3RlOgoKPiBPbiBNb24sIE5v
diAyNSwgMjAxOSBhdCAwMjo1MzoxM1BNICswMjAwLCBLYWkgVmVobWFuZW4gd3JvdGU6Cj4gPiBT
dGFydGluZyB3aXRoIGdlbjEyLCBQT1JUX0EgY2FuIGJlIGFsc28gY29ubmVjdGVkIHRvIERQCj4g
PiB0cmFuc2NvZGVyLiBVcGRhdGUgY29kZSBpbiBpbnRlbF9kcF9pbml0KCkgdG8gdGFrZSB0aGlz
Cj4gPiBpbnRvIGFjY291bnQuCj4gCj4gSSBkb24ndCB0aGluayB0aGlzIGZ1bmN0aW9uIGdldHMg
Y2FsbGVkIG9uIGdlbjEyOyB0aGlzIG9uZSBpcyBmb3IKPiBwcmUtRERJIHBsYXRmb3Jtcy4gIERQ
IGluaXRpYWxpemF0aW9uIG9uIHJlY2VudCBwbGF0Zm9ybXMgaGFwcGVucyB2aWEKPiBpbnRlbF9k
ZGlfaW5pdCgpIGFuZCB0aGF0IG9uZSBjYWxscyBpbnRlbF9pbmZvZnJhbWVfaW5pdCB3aXRob3V0
IHRoZQo+IFBPUlRfQSByZXN0cmljdGlvbi4KCmFhLCBvay4gVGhhbmtzIGZvciB0aGUgcmV2aWV3
cyEKCkkgd2FzIGRvaW5nIGEgbWVjaGFuaWNhbCBjaGVjayBmb3IgYWxsIGxvZ2ljIGZvciBQT1JU
X0EgdGhhdCBhc3N1bWVkIGl0IApjYW5ub3QgYmUgY29ubmVjdGVkIHRvIERQL0hETUksIGFuZCBk
aWRuJ3QgY2hlY2sgdGhlIGZ1bGwgY2FsbCBjaGFpbi4gQnV0IAp5ZWFoLCBpZiB0aGlzIGZ1bmN0
aW9uIG5ldmVyIGdldHMgY2FsbGVkIG9uIGdlbjEyLCB0aGVuIHRoaXMgaXMgYSAKbm9uLWlzc3Vl
IGFuZCBwYXRjaCBhbiBiZSBkcm9wcGVkLgoKQnIsIEthaQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
