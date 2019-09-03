Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 284D7A7191
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 19:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43059892C9;
	Tue,  3 Sep 2019 17:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3704892C9
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 17:21:02 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 10:21:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="189894047"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 03 Sep 2019 10:20:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2019 20:20:57 +0300
Date: Tue, 3 Sep 2019 20:20:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Shashank Sharma <shashank.sharma@intel.com>
Message-ID: <20190903172057.GZ7482@intel.com>
References: <20190903165227.6056-1-shashank.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903165227.6056-1-shashank.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC 0/2] Enable Nearest-neighbor for Integer mode
 scaling
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

T24gVHVlLCBTZXAgMDMsIDIwMTkgYXQgMTA6MjI6MjVQTSArMDUzMCwgU2hhc2hhbmsgU2hhcm1h
IHdyb3RlOgo+IEJsdXJyeSBvdXRwdXRzIGR1cmluZyB1cHNjYWxpbmcgdGhlIGJ1ZmZlciwgaXMg
YSBnZW5lcmljIHByb2JsZW0gb2YgZ2Z4Cj4gaW5kdXN0cnkuIE9uZSBvZiB0aGUgbWFqb3IgcmVh
c29uIGJlaGluZCB0aGlzIGJsdXJyaW5lc3MgaXMgdGhlCj4gaW50ZXJwb2xhdGlvbiBvZiBwaXhl
bCB2YWx1ZXMgdXNlZCBieSBtb3N0IG9mIHRoZSB1cHNjYWxpbmcgaGFyZHdhcmVzLgo+IAo+IE5l
YXJlc3QtbmVpZ2hib3IgaXMgYSBzY2FsaW5nIG1vZGUsIHdoaWNoIHdvcmtzIGJ5IGZpbGxpbmcg
aW4gdGhlIG1pc3NpbmcKPiBjb2xvciB2YWx1ZXMgaW4gdGhlIHVwc2NhbGVkIGltYWdlIHdpdGgg
dGhhdCBvZiB0aGUgY29vcmRpbmF0ZS1tYXBwZWQKPiBuZWFyZXN0IHNvdXJjZSBwaXhlbCB2YWx1
ZS4KPiAKPiBOZWFyZXN0LW5laWdoYm9yIGNhbiBwcm9kdWNlIChhbG1vc3QpIG5vbi1ibHVycnkg
c2NhbGluZyBvdXRwdXRzIHdoZW4KPiB0aGUgc2NhbGluZyByYXRpbyBpcyBjb21wbGV0ZSBpbnRl
Z2VyLiBGb3IgZXhhbXBsZTogCj4gLSBpbnB1dCBidWZmZXIgcmVzb2x1dGlvbjogMTI4MHg3MjAo
SEQpCj4gLSBvdXRwdXQgYnVmZmVyIHJlc29sdXRpb246IDM4NDB4MjE2MChVSEQvNEspCj4gLSBz
Y2FsaW5nIHJhdGlvIChoKSA9IDM4NDAvMTI4MCA9IDMgIAo+ICAgc2NhbGluZyByYXRpbyAodikg
PSAyMTYwLzcyMCA9IDMKPiBJbiBzdWNoIHNjZW5hcmlvcywgd2Ugc2hvdWxkIHRyeSB0byBwaWNr
IE5lYXJlc3QtbmVpZ2hib3IgYXMgc2NhbGluZwo+IG1ldGhvZCB3aGVuIHBvc3NpYmxlLgo+IAo+
IE1hbnkgZ2FtaW5nIGNvbW11bml0aWVzIGhhdmUgYmVlbiBhc2tpbmcgZm9yIGludGVnZXItbW9k
ZSBzY2FsaW5nCj4gc3VwcG9ydCwgc29tZSBsaW5rcyBhbmQgYmFja2dyb3VuZDoKPiBodHRwczov
L3NvZnR3YXJlLmludGVsLmNvbS9lbi11cy9hcnRpY2xlcy9pbnRlZ2VyLXNjYWxpbmctc3VwcG9y
dC1vbi1pbnRlbC1ncmFwaGljcwo+IGh0dHA6Ly90YW5hbGluLmNvbS9lbi9hcnRpY2xlcy9sb3Nz
bGVzcy1zY2FsaW5nLwo+IGh0dHBzOi8vY29tbXVuaXR5LmFtZC5jb20vdGhyZWFkLzIwOTEwNwo+
IGh0dHBzOi8vd3d3Lm52aWRpYS5jb20vZW4tdXMvZ2Vmb3JjZS9mb3J1bXMvZ2FtZS1yZWFkeS1k
cml2ZXJzLzEzLzEwMDIvZmVhdHVyZS1yZXF1ZXN0LW5vbmJsdXJyeS11cHNjYWxpbmctYXQtaW50
ZWdlci1yYXQvCj4gCj4gVGhpcyBwYXRjaCBzZXJpZXMgZW5hYmxlcyBOTiBzY2FsaW5nIG9uIElu
dGVsIGRpc3BsYXkgKElDTCksIHdoZW4gdGhlIHVwc2NhbGluZwo+IHJhdGlvIGlzIGludGVnZXIu
CgpJIHRoaW5rIHdlJ2QgcHJvYmFibHkgd2FudCBhIHByb3BlcnR5IGZvciB0aGlzIHNvcnQgb2Yg
c3R1ZmYuIGlndApjb3VsZCBwZXJoYXBzIGFsc28gdXNlIGl0IHRvIGVuYWJsZSBjcmMgYmFzZWQg
c2NhbGluZyB0ZXN0cy4KCkFub3RoZXIgcHJvYmxlbSBpcyB0aGF0IHdlIGN1cnJlbnRseSBkb24n
dCBleHBvc2UgdGhlIHBhbmVsIGZpdHRlcgpmb3IgZXh0ZXJuYWwgZGlzcGxheXMgc28gdGhpcyB3
b3VsZCBiZSBsaW1pdGVkIHRvIGVEUC9EU0kgb25seS4KSSBoYXZlIGEgYnJhbmNoIHRoYXQgaW1w
bGVtZW50cyBib3JkZXJzIChmb3IgdW5kZXJzY2FuKSBmb3IgRFAvSERNSQp3aGljaCBpcyBhdCBs
ZWFzdCBtb3ZpbmcgdGhlIGNvZGUgYSBsaXR0bGUgYml0IGludG8gYSBkaXJlY3Rpb24gd2hlcmUK
d2UgY291bGQgY29uc2lkZXIgZXhwb3NpbmcgdGhlIHBhbmVsIGZpdHRlciBmb3IgZXh0ZXJuYWwg
ZGlzcGxheXMuCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
