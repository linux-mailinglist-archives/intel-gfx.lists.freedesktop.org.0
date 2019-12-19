Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E7F127378
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 03:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1F1A6EBBD;
	Fri, 20 Dec 2019 02:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2143 seconds by postgrey-1.36 at gabe;
 Thu, 19 Dec 2019 15:43:52 UTC
Received: from 16.mo1.mail-out.ovh.net (16.mo1.mail-out.ovh.net
 [178.33.104.224])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6A46E34E
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 15:43:52 +0000 (UTC)
Received: from player730.ha.ovh.net (unknown [10.108.16.7])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 72EE61A5EC0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 16:08:06 +0100 (CET)
Received: from smida.it (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@smida.it)
 by player730.ha.ovh.net (Postfix) with ESMTPSA id 4D94ED5BD786;
 Thu, 19 Dec 2019 15:08:04 +0000 (UTC)
Date: Thu, 19 Dec 2019 17:08:02 +0200
From: Andi Shyti <andi@smida.it>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191219150802.GA36515@jack.zhora.eu>
References: <20191218143111.3852266-1-chris@chris-wilson.co.uk>
 <20191218143111.3852266-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218143111.3852266-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 10544615580799259913
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgjeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisehsmhhiuggrrdhitheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeeftddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesshhmihgurgdrihhtpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-Mailman-Approved-At: Fri, 20 Dec 2019 02:24:35 +0000
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915: Drop GEM context as a direct
 link from i915_request
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

On Wed, Dec 18, 2019 at 02:31:05PM +0000, Chris Wilson wrote:
> Keep the intel_context as being the primary state for i915_request, with
> the GEM context a backpointer from the low level state for the rarer
> cases we need client information. Our goal is to remove such references
> to clients from the backend, and leave the HW submission agnostic to
> client interfaces and self-contained.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Andi Shyti <andi.shyti@intel.com>

this patch does a bit more than what you say, anyway, looks all
right,

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
