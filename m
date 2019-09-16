Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B28B3A8A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 14:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E287D6E96B;
	Mon, 16 Sep 2019 12:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 297146E96B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 12:43:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 05:43:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,512,1559545200"; d="scan'208";a="193426829"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 16 Sep 2019 05:43:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2019 15:43:40 +0300
Date: Mon, 16 Sep 2019 15:43:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20190916124340.GF1208@intel.com>
References: <20190914040858.GT20699@kadam> <87lfuou27c.fsf@intel.com>
 <20190916075913.GZ20699@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916075913.GZ20699@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] drivers/gpu/drm/i915/display/intel_display.c:3934
 skl_plane_stride() error: testing array offset 'color_plane' after use.
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, kbuild@01.org, kbuild-all@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMTA6NTk6MTNBTSArMDMwMCwgRGFuIENhcnBlbnRlciB3
cm90ZToKPiBPbiBNb24sIFNlcCAxNiwgMjAxOSBhdCAxMDozMTozNUFNICswMzAwLCBKYW5pIE5p
a3VsYSB3cm90ZToKPiA+IE9uIFNhdCwgMTQgU2VwIDIwMTksIERhbiBDYXJwZW50ZXIgPGRhbi5j
YXJwZW50ZXJAb3JhY2xlLmNvbT4gd3JvdGU6Cj4gPiA+IHRyZWU6ICAgaHR0cHM6Ly9rZXJuZWwu
Z29vZ2xlc291cmNlLmNvbS9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXgu
Z2l0IG1hc3Rlcgo+ID4gPiBoZWFkOiAgIGE3Zjg5NjE2YjczNzY0OTU0MjRmNjgyYjYwODZlMGMz
OTFhODlhMWQKPiA+ID4gY29tbWl0OiBkZjA1NjZhNjQxZjk1OTEwOGMxNTJiZTc0OGEwYTU4Nzk0
MjgwZTBlIGRybS9pOTE1OiBtb3ZlIG1vZGVzZXR0aW5nIGNvcmUgY29kZSB1bmRlciBkaXNwbGF5
Lwo+ID4gPiBkYXRlOiAgIDMgbW9udGhzIGFnbwo+ID4gPgo+ID4gPiBJZiB5b3UgZml4IHRoZSBp
c3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4gPiA+IFJlcG9ydGVkLWJ5OiBrYnVpbGQg
dGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiA+ID4gUmVwb3J0ZWQtYnk6IERhbiBDYXJwZW50
ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KPiA+ID4KPiA+ID4gTmV3IHNtYXRjaCB3YXJu
aW5nczoKPiA+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6
MzkzNCBza2xfcGxhbmVfc3RyaWRlKCkgZXJyb3I6IHRlc3RpbmcgYXJyYXkgb2Zmc2V0ICdjb2xv
cl9wbGFuZScgYWZ0ZXIgdXNlLgoKVGhlIGNvZGUgbG9va3MgZmluZSB0byBtZS4gaW50IGNvbG9y
X3BsYW5lIGlzIDAgb3IgMSBzbyB3ZSBrbm93CnRoZSBjb2xvcl9wbGFuZVtdIGFycmF5IGlzIGhh
cyBlbm91Z2ggZWxlbWVudHMuIEJ1dCBpZgpmYi0+bnVtX3BsYW5lcz09MSB3ZSBkb24ndCBhY3R1
YWxseSB3YW50IHRvIGxvb2sgYXQgY29sb3JfcGxhbmVbMV0uCgo+ID4gPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxNjMyOCBpbnRlbF9zYW5pdGl6ZV9lbmNv
ZGVyKCkgZXJyb3I6IHdlIHByZXZpb3VzbHkgYXNzdW1lZCAnY3J0YycgY291bGQgYmUgbnVsbCAo
c2VlIGxpbmUgMTYzMTgpCgpJZiBjcnRjX3N0YXRlIT1OVUxMIHRoZW4gY3J0YyE9TlVMTC4gTG9v
a3Mgc2FmZSB0byBtZS4KCj4gPiAKPiA+IE9kZCwgd2hhdCBjaGFuZ2VkIHRvIHByb3Zva2UgdGhl
IHdhcm5pbmdzIG5vdz8gT3IgaXMgdGhlIHNtYXRjaCB0ZXN0Cj4gPiBuZXc/Cj4gPiAKPiAKPiBJ
dCBsb29rcyBsaWtlIHRoZSBjcm9zcyBmdW5jdGlvbiBEQiBpcyBvdXQgb2YgZGF0YSBzbGlnaHRs
eS4gIE1heWJlCj4gYmVjYXVzZSB0aGUgZmlsZSBtb3ZlZD8gIE9uIG15IHN5c3RlbSBTbWF0Y2gg
a25vd3MgdGhhdCBjb2xvcl9wbGFuZSBpcwo+IDAtMSBhbmQgcGxhbmVfc3RhdGUtPmNvbG9yX3Bs
YW5lW10gaXMgYSB0d28gZWxlbWVudCBhcnJheSBzbyBpdCBkb2Vzbid0Cj4gcHJpbnQgdGhlIHdh
cm5pbmcuCj4gCj4gVGhpcyBpcyBqdXN0IGEgc2FuaXR5IGNoZWNrIHdoaWNoIGlzIG5ldmVyIHRy
aWdnZXJlZC4gIFNob3VsZCB0aGUgc2FuaXR5Cj4gY2hlY2sgYmUgbW92ZT8gIFdoYXQgd2FzIG9y
aWdpbmFsbHkgaW50ZW5kZWQ/ICBJdCdzIGhhcmQgdG8gc2F5Lgo+IAo+IHJlZ2FyZHMsCj4gZGFu
IGNhcnBlbnRlcgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
