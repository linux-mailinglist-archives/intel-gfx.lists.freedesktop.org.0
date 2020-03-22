Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7357E18ECC5
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 22:56:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB75D6E02F;
	Sun, 22 Mar 2020 21:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4199 seconds by postgrey-1.36 at gabe;
 Sun, 22 Mar 2020 21:56:34 UTC
Received: from 8.mo6.mail-out.ovh.net (8.mo6.mail-out.ovh.net [178.33.42.204])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61F76E02F
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2020 21:56:34 +0000 (UTC)
Received: from player772.ha.ovh.net (unknown [10.110.171.173])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 12BC620361E
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2020 21:37:17 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player772.ha.ovh.net (Postfix) with ESMTPSA id 9924010BAD92C;
 Sun, 22 Mar 2020 20:37:08 +0000 (UTC)
Date: Sun, 22 Mar 2020 22:37:07 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200322203707.GA131048@jack.zhora.eu>
References: <20200322163225.28791-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322163225.28791-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 14734933558807478793
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudegiedgudegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejvddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Treat idling as a RPS
 downclock event
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Sun, Mar 22, 2020 at 04:32:24PM +0000, Chris Wilson wrote:
> If we park/unpark faster than we can respond to RPS events, we never
> will process a downlock event after expiring a waitboost, and thus we
> will forever restart the GPU at max clocks even if the workload switches
> and doesn't justify full power.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1500
> Fixes: 3e7abf814193 ("drm/i915: Extract GT render power state management")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
