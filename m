Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E4A1565AE
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 18:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E2E6E3AE;
	Sat,  8 Feb 2020 17:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 7.mo2.mail-out.ovh.net (7.mo2.mail-out.ovh.net [188.165.48.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F0136E3AE
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 17:11:31 +0000 (UTC)
Received: from player692.ha.ovh.net (unknown [10.108.57.18])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 00C7C1C5749
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 18:01:58 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player692.ha.ovh.net (Postfix) with ESMTPSA id 89CD5F045A61;
 Sat,  8 Feb 2020 17:01:54 +0000 (UTC)
Date: Sat, 8 Feb 2020 19:01:53 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200208170153.GB32188@jack.zhora.eu>
References: <20200208122759.30833-1-andi@etezian.org>
 <158117917844.18291.12433280872368810807@skylake-alporthouse-com>
 <20200208165139.GA32188@jack.zhora.eu>
 <158118102661.18291.13808402197936060238@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158118102661.18291.13808402197936060238@skylake-alporthouse-com>
X-Ovh-Tracer-Id: 16827137058309456393
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrheejgdelkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieelvddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
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

Hi Chris,

> > > > The GT has its own properties and in sysfs they should be grouped
> > > > in the 'gt/' directory.
> > > > 
> > > > Create the 'gt/' directory in sysfs and move the power management
> > > > related files.
> > > 
> > > As shown by BAT, we have a conundrum; do we have to preserve the old
> > > names forevermore? Or do we just userspace that they have to adapt?
> > 
> > With this, I guess you are suggesting to change igt accordingly,
> > because I'm pretty sure this interface is subject to change,
> > sooner or later.
> 
> Right; but what about powertop? And the bajillion wikis?

mmhhh... right!

> Just feels clumsy, so I'd like to spend a moment to see if we can think
> of any options before dropping them. No matter how silly, if userspace
> breaks, it's a regression :(
> 
> Maybe we could do something like keep the old ones and put a deprecation
> warning in?

how about linking and declare the old interface obsolete?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
