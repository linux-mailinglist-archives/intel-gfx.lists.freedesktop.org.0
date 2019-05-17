Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F9C21C0A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A33289916;
	Fri, 17 May 2019 16:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC1AC89916
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:54:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:54:55 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 17 May 2019 09:54:54 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HGsrKk022982; Fri, 17 May 2019 17:54:53 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-8-michal.wajdeczko@intel.com>
 <155811046421.826.15844367297246569999@skylake-alporthouse-com>
Date: Fri, 17 May 2019 18:54:53 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z1x09rdcxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155811046421.826.15844367297246569999@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/uc: Don't forget to prepare
 GuC for the reset
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNyBNYXkgMjAxOSAxODoyNzo0NCArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNS0xNyAxNzoyMjoyNykKPj4gV2hlbiB3ZSByZXNldCBlbmdpbmVzIHVzaW5nIEFMTF9F
TkdJTkVTIG1hc2ssIHdlIHdpbGwgZG8KPj4gZnVsbCBHUFUgcmVzZXQgYW5kIEd1QyB3aWxsIGJl
IGFsc28gYWZmZWN0ZWQuIExldCBHdUMgYmUKPj4gcHJlcGFyZWQgZm9yIHVwY29taW5nIHJlc2V0
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtv
QGludGVsLmNvbT4KPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5j
IHwgNCArKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jICAKPj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4+IGluZGV4IDQ2NDM2OWJjNTVhZC4u
Y2E2ZTQwYjZiNGUyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMK
Pj4gQEAgLTU2NCw2ICs1NjQsMTAgQEAgc3RhdGljIGludCBnZW44X3Jlc2V0X2VuZ2luZXMoc3Ry
dWN0ICAKPj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPj4gICAgICAgICAgICAgICAgICAqLwo+
PiAgICAgICAgIH0KPj4KPj4gKyAgICAgICAvKiBXZSBhcmUgYWJvdXQgdG8gZG8gZnVsbCBHUFUg
cmVzZXQsIGRvbid0IGZvcmdldCBhYm91dCBHdUMgKi8KPj4gKyAgICAgICBpZiAoZW5naW5lX21h
c2sgPT0gQUxMX0VOR0lORVMpCj4+ICsgICAgICAgICAgICAgICBpbnRlbF91Y19yZXNldF9wcmVw
YXJlKGk5MTUpOwo+Cj4gRWgsIHRoaXMgaXMgZG9uZSBpbiByZXNldF9wcmVwYXJlIGFscmVhZHku
IFRoZSBvbmx5IG90aGVyIHBhdGggdG8gY2FsbAo+IGludGVsX2dwdV9yZXNldCgpIGRpcmVjdGx5
IGlzIGFsb25nIHNhbml0aXphdGlvbiwgd2hpY2ggc2hvdWxkIGFsc28gaGF2ZQo+IGFscmVhZHkg
c2FuaXRpemVkIHRoZSBndWMgYXMgd2VsbC4gTm8/CgpUaGVyZSBpcyBpZ3RfYXRvbWljX3Jlc2V0
IHNlbGZ0ZXN0IHdoaWNoIGRvZXMgbm90IGNhbGwgcmVzZXRfcHJlcGFyZS4KQW5kIHNpbmNlIHdl
IGxvc3QgR3VDIGluIGdlbjZfcmVzZXRfZW5naW5lcyBkdWUgdG8gR0VONl9HUkRPTV9GVUxMLApv
dXIgbGF0ZXIgZ3JhY2VmdWwgZ29vZGJ5ZSB3aXRoIEd1QyB3YXMgbm90IHdvcmtpbmcuCgpUaGlz
IGlzIGhpZGRlbiB3aXRoIGN1cnJlbnQgR3VDIGZ3LCBidXQgd2l0aCBuZXcgSUNMIGZ3IHdpdGgg
Q1QgaXMgd2FzICAKdmlzaWJsZSBhczoKCjwzPiBbNTA4LjYxMzAyNF0gW2RybTppbnRlbF9ndWNf
c2VuZF9tbWlvIFtpOTE1XV0gKkVSUk9SKiBNTUlPOiBHdUMgYWN0aW9uICAKMHg0NTA2IGZhaWxl
ZCB3aXRoIGVycm9yIC0xMTAgMHg0NTA2CjwzPiBbNTA4LjYxMzE0Ml0gW2RybTpndWNfYWN0aW9u
X2RlcmVnaXN0ZXJfY3RfYnVmZmVyIFtpOTE1XV0gKkVSUk9SKiBDVDogIApkZXJlZ2lzdGVyIFNF
TkQgYnVmZmVyIGZhaWxlZDsgb3duZXI9MCBlcnI9LTExMAo8Mz4gWzUwOC42MjM1MjFdIFtkcm06
aW50ZWxfZ3VjX3NlbmRfbW1pbyBbaTkxNV1dICpFUlJPUiogTU1JTzogR3VDIGFjdGlvbiAgCjB4
NDUwNiBmYWlsZWQgd2l0aCBlcnJvciAtMTEwIDB4NDUwNgo8Mz4gWzUwOC42MjM1NzNdIFtkcm06
Z3VjX2FjdGlvbl9kZXJlZ2lzdGVyX2N0X2J1ZmZlciBbaTkxNV1dICpFUlJPUiogQ1Q6ICAKZGVy
ZWdpc3RlciBSRUNWIGJ1ZmZlciBmYWlsZWQ7IG93bmVyPTAgZXJyPS0xMTAKCk1pY2hhbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
