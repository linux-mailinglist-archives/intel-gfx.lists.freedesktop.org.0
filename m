Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BEE156B3A
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 16:50:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDB36E830;
	Sun,  9 Feb 2020 15:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2.mo69.mail-out.ovh.net (2.mo69.mail-out.ovh.net
 [178.33.251.80])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803D26E830
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Feb 2020 15:50:54 +0000 (UTC)
Received: from player799.ha.ovh.net (unknown [10.110.103.115])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id 99CBC8146F
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Feb 2020 16:50:51 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player799.ha.ovh.net (Postfix) with ESMTPSA id 0649EF2E35DC;
 Sun,  9 Feb 2020 15:50:44 +0000 (UTC)
Date: Sun, 9 Feb 2020 17:50:43 +0200
From: Andi Shyti <andi@etezian.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200209155043.GA38454@jack.zhora.eu>
References: <20200208122759.30833-1-andi@etezian.org>
 <877e0vwyri.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877e0vwyri.fsf@intel.com>
X-Ovh-Tracer-Id: 3052033175819960859
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrheelgdehlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeelledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
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

Hi Jani,

> >  void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
> >  {
> > @@ -321,6 +322,7 @@ void intel_gt_driver_register(struct intel_gt *gt)
> >  	intel_rps_driver_register(&gt->rps);
> >  
> >  	debugfs_gt_register(gt);
> 
> Yikes, when did this happen? Not good. We don't own the debugfs
> "namespace" prefix.
> 
> > +	sysfs_gt_register(gt);
> 
> Ditto for the sysfs namespace prefix.
> 
> I guess it's not likely debugfs or sysfs would add functions named like
> that, but if they did, they'd be right to call these names a violation
> of their namespace.
> 
> I have been promoting the idea of naming functions somewhat based on the
> name of the file they reside in... so do we want to name the files like
> this either?

Yes, you're right here. I will rename the "debugfs" function and
fix the sysfs in my next patch.

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
