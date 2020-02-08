Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 977CD156593
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 17:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0399F6E391;
	Sat,  8 Feb 2020 16:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 9.mo177.mail-out.ovh.net (9.mo177.mail-out.ovh.net
 [46.105.72.238])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2079D6E391
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 16:58:15 +0000 (UTC)
Received: from player159.ha.ovh.net (unknown [10.110.208.160])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id 634441213ED
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 17:51:45 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player159.ha.ovh.net (Postfix) with ESMTPSA id 061A8F218550;
 Sat,  8 Feb 2020 16:51:39 +0000 (UTC)
Date: Sat, 8 Feb 2020 18:51:39 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200208165139.GA32188@jack.zhora.eu>
References: <20200208122759.30833-1-andi@etezian.org>
 <158117917844.18291.12433280872368810807@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158117917844.18291.12433280872368810807@skylake-alporthouse-com>
X-Ovh-Tracer-Id: 16654311425250411017
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrheejgdeliecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrudehledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: make a gt sysfs group and move
 power management files
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 08, 2020 at 04:26:18PM +0000, Chris Wilson wrote:
> Quoting Andi Shyti (2020-02-08 12:27:59)
> > From: Andi Shyti <andi.shyti@intel.com>
> > 
> > The GT has its own properties and in sysfs they should be grouped
> > in the 'gt/' directory.
> > 
> > Create the 'gt/' directory in sysfs and move the power management
> > related files.
> 
> As shown by BAT, we have a conundrum; do we have to preserve the old
> names forevermore? Or do we just userspace that they have to adapt?

With this, I guess you are suggesting to change igt accordingly,
because I'm pretty sure this interface is subject to change,
sooner or later.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
