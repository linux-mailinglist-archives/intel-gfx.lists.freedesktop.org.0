Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10684310E47
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 18:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A9C6F455;
	Fri,  5 Feb 2021 17:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7163D6F455
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 17:03:03 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1l84VW-00017l-SZ; Fri, 05 Feb 2021 18:02:58 +0100
Message-ID: <b8dc4e6b3603827fc770293a0d8f532bae8223b1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Chris Wilson <chris@chris-wilson.co.uk>, linux-kernel@vger.kernel.org
Date: Fri, 05 Feb 2021 18:02:56 +0100
In-Reply-To: <20210205163752.11932-1-chris@chris-wilson.co.uk>
References: <20210205163752.11932-1-chris@chris-wilson.co.uk>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH] kernel: Expose SYS_kcmp by default
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
Cc: Will Drewry <wad@chromium.org>, Kees Cook <keescook@chromium.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Andy Lutomirski <luto@amacapital.net>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gRnJlaXRhZywgZGVtIDA1LjAyLjIwMjEgdW0gMTY6MzcgKzAwMDAgc2NocmllYiBDaHJpcyBX
aWxzb246Cj4gVXNlcnNwYWNlIGhhcyBkaXNjb3ZlcmVkIHRoZSBmdW5jdGlvbmFsaXR5IG9mZmVy
ZWQgYnkgU1lTX2tjbXAgYW5kIGhhcwo+IHN0YXJ0ZWQgdG8gZGVwZW5kIHVwb24gaXQuIEluIHBh
cnRpY3VsYXIsIE1lc2EgdXNlcyBTWVNfa2NtcCBmb3IKPiBvc19zYW1lX2ZpbGVfZGVzY3JpcHRp
b24oKSBpbiBvcmRlciB0byBpZGVudGlmeSB3aGVuIHR3byBmZCAoZS5nLiBkZXZpY2UKPiBvciBk
bWFidWYpIHBvaW50IHRvIHRoZSBzYW1lIHN0cnVjdCBmaWxlLiBTaW5jZSB0aGV5IGRlcGVuZCBv
biBpdCBmb3IKPiBjb3JlIGZ1bmN0aW9uYWxpdHksIGxpZnQgU1lTX2tjbXAgb3V0IG9mIHRoZSBu
b24tZGVmYXVsdAo+IENPTkZJR19DSEVDS1BPSU5UX1JFU1RPUkUgaW50byB0aGUgc2VsZWN0YWJs
ZSBzeXNjYWxsIGNhdGVnb3J5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVt
Lm9yZz4KPiBDYzogQW5keSBMdXRvbWlyc2tpIDxsdXRvQGFtYWNhcGl0YWwubmV0Pgo+IENjOiBX
aWxsIERyZXdyeSA8d2FkQGNocm9taXVtLm9yZz4KPiBDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBs
aW51eC1mb3VuZGF0aW9uLm9yZz4KPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29t
Pgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IEx1Y2FzIFN0YWNo
IDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+IMKgaW5pdC9LY29uZmlnICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTEgKysrKysrKysrKysKPiDCoGtlcm5lbC9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCj4gwqB0b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9zZWNjb21wL3NlY2NvbXBfYnBmLmMgfCAgMiArLQo+IMKgMyBmaWxlcyBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9pbml0L0tjb25maWcgYi9pbml0L0tjb25maWcKPiBpbmRleCBiNzdjNjBmOGI5NjMuLmY2MmZj
YTEzYWM1YiAxMDA2NDQKPiAtLS0gYS9pbml0L0tjb25maWcKPiArKysgYi9pbml0L0tjb25maWcK
PiBAQCAtMTE5NCw2ICsxMTk0LDcgQEAgZW5kaWYgIyBOQU1FU1BBQ0VTCj4gwqBjb25maWcgQ0hF
Q0tQT0lOVF9SRVNUT1JFCj4gwqAJYm9vbCAiQ2hlY2twb2ludC9yZXN0b3JlIHN1cHBvcnQiCj4g
wqAJc2VsZWN0IFBST0NfQ0hJTERSRU4KPiArCXNlbGVjdCBLQ01QCj4gwqAJZGVmYXVsdCBuCj4g
wqAJaGVscAo+IMKgCSAgRW5hYmxlcyBhZGRpdGlvbmFsIGtlcm5lbCBmZWF0dXJlcyBpbiBhIHNh
a2Ugb2YgY2hlY2twb2ludC9yZXN0b3JlLgo+IEBAIC0xNzM3LDYgKzE3MzgsMTYgQEAgY29uZmln
IEFSQ0hfSEFTX01FTUJBUlJJRVJfQ0FMTEJBQ0tTCj4gwqBjb25maWcgQVJDSF9IQVNfTUVNQkFS
UklFUl9TWU5DX0NPUkUKPiDCoAlib29sCj4gwqAKPiAKPiAKPiAKPiArY29uZmlnIEtDTVAKPiAr
CWJvb2wgIkVuYWJsZSBrY21wKCkgc3lzdGVtIGNhbGwiIGlmIEVYUEVSVAo+ICsJZGVmYXVsdCB5
Cj4gKwloZWxwCj4gKwkgIEVuYWJsZSB0aGUgZmlsZSBkZXNjcmlwdG9yIGNvbXBhcmlzb24gc3lz
dGVtIGNhbGwuIEl0IHByb3ZpZGVzCj4gKwkgIHVzZXItc3BhY2Ugd2l0aCB0aGUgYWJpbGl0eSB0
byBjb21wYXJlIHR3byBmZCB0byBzZWUgaWYgdGhleQo+ICsJICBwb2ludCB0byB0aGUgc2FtZSBm
aWxlLCBhbmQgY2hlY2sgb3RoZXIgYXR0cmlidXRlcy4KClRoaXMgZGVzY3JpcHRpb24gdW5kZXJz
ZWxscyB0aGUgYWJpbGl0aWVzIG9mIGtjbXAsIHdoaWxlIGZkIGNvbXBhcmUgaXMKdGhlIG9ubHkg
dGhpbmcgdXNlZCBieSB0aGUgZ3JhcGhpY3Mgc3RhY2ssIGtjbXAgY2FuIGNvbXBhcmUgYSBoYW5k
ZnVsCm9mIG90aGVyIHN5c3RlbSByZXNvdXJjZXMsIHNlZSBtYW4gMiBrY21wLiBJIHRoaW5rIHRo
ZSBoZWxwdGV4dCBzaG91bGQKYXQgbGVhc3QgdHJ5IHRvIGNvdmVyIHRoaXMgZmFjdCBzb21ld2hh
dC4KClJlZ2FyZHMsCkx1Y2FzCgo+ICsKPiArCSAgSWYgdW5zdXJlLCBzYXkgWS4KPiArCj4gwqBj
b25maWcgUlNFUQo+IMKgCWJvb2wgIkVuYWJsZSByc2VxKCkgc3lzdGVtIGNhbGwiIGlmIEVYUEVS
VAo+IMKgCWRlZmF1bHQgeQo+IGRpZmYgLS1naXQgYS9rZXJuZWwvTWFrZWZpbGUgYi9rZXJuZWwv
TWFrZWZpbGUKPiBpbmRleCBhYTczNjhjN2VhYmYuLjMyMGYxZjM5NDFiNyAxMDA2NDQKPiAtLS0g
YS9rZXJuZWwvTWFrZWZpbGUKPiArKysgYi9rZXJuZWwvTWFrZWZpbGUKPiBAQCAtNTEsNyArNTEs
NyBAQCBvYmoteSArPSBsaXZlcGF0Y2gvCj4gwqBvYmoteSArPSBkbWEvCj4gwqBvYmoteSArPSBl
bnRyeS8KPiDCoAo+IAo+IAo+IAo+IC1vYmotJChDT05GSUdfQ0hFQ0tQT0lOVF9SRVNUT1JFKSAr
PSBrY21wLm8KPiArb2JqLSQoQ09ORklHX0tDTVApICs9IGtjbXAubwo+IMKgb2JqLSQoQ09ORklH
X0ZSRUVaRVIpICs9IGZyZWV6ZXIubwo+IMKgb2JqLSQoQ09ORklHX1BST0ZJTElORykgKz0gcHJv
ZmlsZS5vCj4gwqBvYmotJChDT05GSUdfU1RBQ0tUUkFDRSkgKz0gc3RhY2t0cmFjZS5vCj4gZGlm
ZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL3NlY2NvbXAvc2VjY29tcF9icGYuYyBi
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL3NlY2NvbXAvc2VjY29tcF9icGYuYwo+IGluZGV4IDI2
YzcyZjJiNjFiMS4uMWI2YzdkMzNjNGZmIDEwMDY0NAo+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL3NlY2NvbXAvc2VjY29tcF9icGYuYwo+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL3NlY2NvbXAvc2VjY29tcF9icGYuYwo+IEBAIC0zMTUsNyArMzE1LDcgQEAgVEVTVChrY21w
KQo+IMKgCXJldCA9IF9fZmlsZWNtcChnZXRwaWQoKSwgZ2V0cGlkKCksIDEsIDEpOwo+IMKgCUVY
UEVDVF9FUShyZXQsIDApOwo+IMKgCWlmIChyZXQgIT0gMCAmJiBlcnJubyA9PSBFTk9TWVMpCj4g
LQkJU0tJUChyZXR1cm4sICJLZXJuZWwgZG9lcyBub3Qgc3VwcG9ydCBrY21wKCkgKG1pc3Npbmcg
Q09ORklHX0NIRUNLUE9JTlRfUkVTVE9SRT8pIik7Cj4gKwkJU0tJUChyZXR1cm4sICJLZXJuZWwg
ZG9lcyBub3Qgc3VwcG9ydCBrY21wKCkgKG1pc3NpbmcgQ09ORklHX0tDTVA/KSIpOwo+IMKgfQo+
IMKgCj4gCj4gCj4gCj4gwqBURVNUKG1vZGVfc3RyaWN0X3N1cHBvcnQpCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
