Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D16115DDE
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 18:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E686E207;
	Sat,  7 Dec 2019 17:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 600 seconds by postgrey-1.36 at gabe;
 Sat, 07 Dec 2019 17:58:53 UTC
Received: from 5.mo4.mail-out.ovh.net (5.mo4.mail-out.ovh.net [188.165.44.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34746E207
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 17:58:53 +0000 (UTC)
Received: from player774.ha.ovh.net (unknown [10.108.57.14])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 772E9215C25
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 18:42:43 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player774.ha.ovh.net (Postfix) with ESMTPSA id 5AF93D02E8B2;
 Sat,  7 Dec 2019 17:42:40 +0000 (UTC)
Date: Sat, 7 Dec 2019 19:42:39 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191207174239.GC1300@jack.zhora.eu>
References: <20191207010835.2100418-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207010835.2100418-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 16470508262785991177
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudekhedguddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejgedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: Re: [Intel-gfx] [PATCH i-g-t] Revert "tests/i915: Use engine query
 interface for gem_ctx_isolation/persistence"
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBTYXQsIERlYyAwNywgMjAxOSBhdCAwMTowODozNUFNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gVGhpcyByZXZlcnRzIGNvbW1pdCAzNDNhYWU3NzZhNThhNjdmYTE1
MzgyNTM4NWU2ZmU5MGUzMTg1YzViLgo+IAo+IF9fZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKCkg
cmVwcm9ncmFtcyB0aGUgY29udGV4dCwgaW52YWxpZGF0aW5nIHRoZQo+IHVzZSBvZiBlLT5mbGFn
cyB0byBzZWxlY3QgZW5naW5lcywgbmVjZXNzaXRhdGluZyBlLT5pbmRleCBpbnN0ZWFkLgo+IFdp
dGhvdCBhbHNvIGZpeGluZyB1cCB0aGUgZW5naW5lIHNlbGVjdGlvbiwgdGhlIHJlc3VsdCBpcyB0
aGF0IHJhbmRvbQo+IGVuZ2luZXMgd2VyZSBiZWluZyB1c2VkIHRvIHJlYWQgcmVnaXN0ZXJzIGZy
b20gdGhlIGludGVuZGVkIGVuZ2luZS4KPiBUaGlzIGRvZXMgbm90IGVuZCB3ZWxsLgoKU28sIHRo
ZSBwcm9ibGVtIGhlcmUgaXMgdGhhdCB3aXRoIF9fZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKCkg
d2UKInJlcHJvZ3JhbSB0aGUgY29udGV4dCIgd2hpY2ggbWVhbnMgdGhhdCB0aGVyZSBpcyBhIHJl
LW1hcHBpbmcgb2YKZW5naW5lcyBpbiBpdC4gSGF2ZSBJIHVuZGVyc3Rvb2QgY29ycmVjdGx5PwoK
RG9lc24ndCB0aGF0IGhhcHBlbiBvbmx5IGluIHRoZSBjYXNlIHdoZW4gdGhlIGNvbnRleHQgaGFz
IG5vCmVuZ2luZXMgaW4gaXQ/Cgo+IEBAIC04NzcsNyArODc2LDggQEAgaWd0X21haW4KPiAgCQlp
Z3Rfc2tpcF9vbihnZW4gPiBMQVNUX0tOT1dOX0dFTik7Cj4gIAl9Cj4gIAo+IC0JX19mb3JfZWFj
aF9waHlzaWNhbF9lbmdpbmUoZmQsIGUpIHsKPiArCWZvciAoY29uc3Qgc3RydWN0IGludGVsX2V4
ZWN1dGlvbl9lbmdpbmUyICplID0gaW50ZWxfZXhlY3V0aW9uX2VuZ2luZXMyOwo+ICsJICAgICBl
LT5uYW1lOyBlKyspIHsKCl9fZm9yX2VhY2hfc3RhdGljX2VuZ2luZSgpID8KCkFuZGkKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
