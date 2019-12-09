Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0828B1169E0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 10:46:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3B989E5B;
	Mon,  9 Dec 2019 09:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 137112 seconds by postgrey-1.36 at gabe;
 Mon, 09 Dec 2019 09:46:29 UTC
Received: from 2.mo179.mail-out.ovh.net (2.mo179.mail-out.ovh.net
 [178.33.250.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA28689E5B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 09:46:29 +0000 (UTC)
Received: from player735.ha.ovh.net (unknown [10.108.42.88])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 0482A14DC5C
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 10:46:26 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player735.ha.ovh.net (Postfix) with ESMTPSA id D5006CFA5882;
 Mon,  9 Dec 2019 09:46:23 +0000 (UTC)
Date: Mon, 9 Dec 2019 11:46:48 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191209094648.GA5718@jack.zhora.eu>
References: <20191207182937.2583002-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207182937.2583002-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 1725441610985488905
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudeltddgtdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpfeejrdduudeirdegledrudeludenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefhedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flesh out device_info pretty
 printer
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

SGkgQ2hyaXMsCgpPbiBTYXQsIERlYyAwNywgMjAxOSBhdCAwNjoyOTozN1BNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gSW5jbHVkZSBhbGwgdGhlIG51bWJlciBmaWVsZHMgZm9yIGRlc2Ny
aWJpbmcgdGhlIEdULCBhcyB3ZWxsIGFzIHRoZQo+IGN1cnJlbnQgYm9vbGVhbiBmbGFncywgcHJp
bWFyaWx5IGZvciBpbmNsdXNpb24gaW4gZXJyb3Igc3RhdGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBBbmRpIFNoeXRp
IDxhbmRpLnNoeXRpQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNo
eXRpQGludGVsLmNvbT4KClRoYW5rcywKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
