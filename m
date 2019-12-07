Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D0D115EC1
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 22:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A586E248;
	Sat,  7 Dec 2019 21:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 8399 seconds by postgrey-1.36 at gabe;
 Sat, 07 Dec 2019 21:23:45 UTC
Received: from 4.mo1.mail-out.ovh.net (4.mo1.mail-out.ovh.net [46.105.76.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AADA6E248
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 21:23:45 +0000 (UTC)
Received: from player731.ha.ovh.net (unknown [10.108.35.197])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 01055194348
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 18:43:52 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player731.ha.ovh.net (Postfix) with ESMTPSA id B1F3ACD4A98D;
 Sat,  7 Dec 2019 17:43:48 +0000 (UTC)
Date: Sat, 7 Dec 2019 19:43:47 +0200
From: Andi Shyti <andi@etezian.org>
To: Andi Shyti <andi@etezian.org>
Message-ID: <20191207174347.GD1300@jack.zhora.eu>
References: <20191207010835.2100418-1-chris@chris-wilson.co.uk>
 <20191207174239.GC1300@jack.zhora.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207174239.GC1300@jack.zhora.eu>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 16489930037583200962
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -85
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudekhedguddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenogetfedtuddqtdduucdludehmdenucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefuddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
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

PiA+IFRoaXMgcmV2ZXJ0cyBjb21taXQgMzQzYWFlNzc2YTU4YTY3ZmExNTM4MjUzODVlNmZlOTBl
MzE4NWM1Yi4KClsuLi5dCgo+ID4gLQlfX2Zvcl9lYWNoX3BoeXNpY2FsX2VuZ2luZShmZCwgZSkg
ewo+ID4gKwlmb3IgKGNvbnN0IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZSA9IGlu
dGVsX2V4ZWN1dGlvbl9lbmdpbmVzMjsKPiA+ICsJICAgICBlLT5uYW1lOyBlKyspIHsKPiAKPiBf
X2Zvcl9lYWNoX3N0YXRpY19lbmdpbmUoKSA/CgpvaCB5ZXMsIHRoYXQncyBhIHJldmVydCEgaWdu
b3JlIGl0LgoKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
