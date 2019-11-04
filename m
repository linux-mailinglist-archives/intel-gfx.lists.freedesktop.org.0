Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3BEEE0B6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 14:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D301F6E415;
	Mon,  4 Nov 2019 13:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F34A6E415
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 13:10:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 05:10:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="212312059"
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 04 Nov 2019 05:10:25 -0800
Received: by lahna (sSMTP sendmail emulation); Mon, 04 Nov 2019 15:10:24 +0200
Date: Mon, 4 Nov 2019 15:10:24 +0200
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <20191104131024.GB2552@lahna.fi.intel.com>
References: <b31b8649-cb2d-890b-2d4d-881e47895ee6@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b31b8649-cb2d-890b-2d4d-881e47895ee6@molgen.mpg.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] snd_hda_intel 0000:00:1f.3: No response from codec,
 resetting bus: last cmd=
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
Cc: Mario Limonciello <mario.limonciello@dell.com>,
 Michael Jamet <michael.jamet@intel.com>, intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yehezkel Bernat <YehezkelShB@gmail.com>, Christian Kellner <ck@xatom.net>,
 Takashi Iwai <tiwai@suse.de>, Andreas Noever <andreas.noever@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBNb24sIE5vdiAwNCwgMjAxOSBhdCAwMTo1Nzo1NFBNICswMTAwLCBQYXVsIE1lbnpl
bCB3cm90ZToKPiBEZWFyIExpbnV4IGZvbGtzLAo+IAo+IAo+IE9uIHRoZSBEZWxsIFhQUyAxMyA5
MzgwIHdpdGggRGViaWFuIFNpZC91bnN0YWJsZSB3aXRoIExpbnV4IDUuMy43Cj4gcmVzdW1pbmcw
d2l0aCBEZWxs4oCZcyBUaHVuZGVyYm9sdCBUQjE2IGRvY2sgY29ubmVjdGVkLCBMaW51eCBzcGV3
cwo+IHRoZSBlcnJvcnMgYmVsb3cuCgpJIGhhdmUgdGhpcyBtYWNoaW5lIGhlcmUgc28gY2FuIHRy
eSB0byByZXByb2R1Y2UgaXQgYXMgd2VsbC4KCj4gYGBgCj4gWyAgICAwLjAwMDAwMF0gTGludXgg
dmVyc2lvbiA1LjMuMC0xLWFtZDY0IChkZWJpYW4ta2VybmVsQGxpc3RzLmRlYmlhbi5vcmcpIChn
Y2MgdmVyc2lvbiA5LjIuMSAyMDE5MTAwOCAoRGViaWFuIDkuMi4xLTkpKSAjMSBTTVAgRGViaWFu
IDUuMy43LTEgKDIwMTktMTAtMTkpCj4gW+KApl0KPiBbICAgIDEuNTk2NjE5XSBwY2kgMDAwMDow
MDoxZi4zOiBBZGRpbmcgdG8gaW9tbXUgZ3JvdXAgMTIKPiBbICAgMTQuNTM2Mjc0XSBzbmRfaGRh
X2ludGVsIDAwMDA6MDA6MWYuMzogZW5hYmxpbmcgZGV2aWNlICgwMDAwIC0+IDAwMDIpCj4gWyAg
IDE0LjU0NDEwMF0gc25kX2hkYV9pbnRlbCAwMDAwOjAwOjFmLjM6IGJvdW5kIDAwMDA6MDA6MDIu
MCAob3BzIGk5MTVfYXVkaW9fY29tcG9uZW50X2JpbmRfb3BzIFtpOTE1XSkKPiBbICAgMTQuNzYw
NzUxXSBpbnB1dDogSERBIEludGVsIFBDSCBIZWFkcGhvbmUgTWljIGFzIC9kZXZpY2VzL3BjaTAw
MDA6MDAvMDAwMDowMDoxZi4zL3NvdW5kL2NhcmQwL2lucHV0MTYKPiBbICAgMTQuNzYwNzkwXSBp
bnB1dDogSERBIEludGVsIFBDSCBIRE1JIGFzIC9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDox
Zi4zL3NvdW5kL2NhcmQwL2lucHV0MTcKPiBbICAxNTYuNjE0Mjg0XSBzbmRfaGRhX2ludGVsIDAw
MDA6MDA6MWYuMzogTm8gcmVzcG9uc2UgZnJvbSBjb2RlYywgZGlzYWJsaW5nIE1TSTogbGFzdCBj
bWQ9MHgyMDI3MDUwMwo+IFsgIDE1Ny42MjIyMzJdIHNuZF9oZGFfaW50ZWwgMDAwMDowMDoxZi4z
OiBObyByZXNwb25zZSBmcm9tIGNvZGVjLCByZXNldHRpbmcgYnVzOiBsYXN0IGNtZD0weDIwMjcw
NTAzCj4gWyAgMTU4LjYyNjM3MV0gc25kX2hkYV9pbnRlbCAwMDAwOjAwOjFmLjM6IE5vIHJlc3Bv
bnNlIGZyb20gY29kZWMsIHJlc2V0dGluZyBidXM6IGxhc3QgY21kPTB4MjAzNzA1MDMKPiBbICAx
NTkuNjM0MTAyXSBzbmRfaGRhX2ludGVsIDAwMDA6MDA6MWYuMzogTm8gcmVzcG9uc2UgZnJvbSBj
b2RlYywgcmVzZXR0aW5nIGJ1czogbGFzdCBjbWQ9MHgyMDFmMDUwMAo+IFsgIDE2MS42NzgxMjFd
IHNuZF9oZGFfaW50ZWwgMDAwMDowMDoxZi4zOiBObyByZXNwb25zZSBmcm9tIGNvZGVjLCByZXNl
dHRpbmcgYnVzOiBsYXN0IGNtZD0weDIwMjcwNTAzCj4gWyAgMTYyLjY4MjI3Ml0gc25kX2hkYV9p
bnRlbCAwMDAwOjAwOjFmLjM6IE5vIHJlc3BvbnNlIGZyb20gY29kZWMsIHJlc2V0dGluZyBidXM6
IGxhc3QgY21kPTB4MjAzNzA1MDMKPiBbICAxNjMuNjk0MjM0XSBzbmRfaGRhX2ludGVsIDAwMDA6
MDA6MWYuMzogTm8gcmVzcG9uc2UgZnJvbSBjb2RlYywgcmVzZXR0aW5nIGJ1czogbGFzdCBjbWQ9
MHgyMDFmMDUwMAo+IFsgIDE2NS43MzAxNDJdIHNuZF9oZGFfaW50ZWwgMDAwMDowMDoxZi4zOiBO
byByZXNwb25zZSBmcm9tIGNvZGVjLCByZXNldHRpbmcgYnVzOiBsYXN0IGNtZD0weDIwMjcwNTAz
Cj4gW+KApl0KPiBgYGAKPiAKPiBJbiB0aGUgYnVnIHJlcG9ydCAqW0ludGVsIEljZSBMYWtlLCBz
bmQtaGRhLWludGVsLCBIRE1JXSAiTm8KPiByZXNwb25zZSBmcm9tIGNvZGVjIiAoYWZ0ZXIgZGlz
cGxheSBob3RwbHVnPykqIFsxXSwgbm90ZSBpdOKAmXMgYQo+IGRpZmZlcmVudCBtb2RlbCwgVGFr
YXNoaSBjb21tZW50cyB0aGF0IHRoaXMgaXMgYSBUaHVuZGVyYm9sdCBvcgo+IGk5MTUgaXNzdWUu
CgowMDAwOjAwOjFmLjMgaXMgb24gUENIIHNvIG5vdCBzdXJlIGhvdyBpdCBjb3VsZCBiZSByZWxh
dGVkIHRvClRodW5kZXJib2x0LCB3ZWxsIG9yIGk5MTUgZm9yIHRoYXQgbWF0dGVyLgoKPiBQbGVh
c2UgdGVsbCBtZSwgaG93IHRvIGRlYnVnIHRoaXMgZnVydGhlci4KClVuZm9ydHVuYXRlbHkgSSBk
b24ndCBrbm93IG11Y2ggYWJvdXQgdGhlIEhEQSBkcml2ZXIgc28gY2FuJ3QgcmVhbGx5CnN1Z2dl
c3QgYW55dGhpbmcuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
