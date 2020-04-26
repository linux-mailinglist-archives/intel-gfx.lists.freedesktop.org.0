Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E1B1B94A8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 01:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4064F89B60;
	Sun, 26 Apr 2020 23:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 780 seconds by postgrey-1.36 at gabe;
 Sun, 26 Apr 2020 23:29:02 UTC
Received: from 3.mo6.mail-out.ovh.net (3.mo6.mail-out.ovh.net [178.33.253.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E718B89B60
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 23:29:02 +0000 (UTC)
Received: from player755.ha.ovh.net (unknown [10.108.57.76])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 8183320B2E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 01:29:01 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player755.ha.ovh.net (Postfix) with ESMTPSA id EC5B811D8534A;
 Sun, 26 Apr 2020 23:28:58 +0000 (UTC)
Date: Mon, 27 Apr 2020 02:28:57 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200426232857.GC13001@jack.zhora.eu>
References: <20200425175751.30358-4-chris@chris-wilson.co.uk>
 <20200425185400.8938-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425185400.8938-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 1818609824947880457
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrheekgddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehhedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Switch to manual evaluation of
 RPS
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

On Sat, Apr 25, 2020 at 07:54:00PM +0100, Chris Wilson wrote:
> As with the realisation for soft-rc6, we respond to idling the engines
> within microseconds, far faster than the response times for HW RC6 and
> RPS. Furthermore, our fast parking upon idle, prevents HW RPS from
> running for many desktop workloads, as the RPS evaluation intervals are
> on the order of tens of milliseconds, but the typical workload is just a
> couple of milliseconds, but yet we still need to determine the best
> frequency for user latency versus power.
> 
> Recognising that the HW evaluation intervals are a poor fit, and that
> they were deprecated [in bspec at least] from gen10, start to wean
> ourselves off them and replace the EI with a timer and our accurate
> busy-stats. The principle benefit of manually evaluating RPS intervals
> is that we can be more responsive for better performance and powersaving
> for both spiky workloads and steady-state.

basically, when you unpark, you wait a bit depending on the
workload before actually setting the rps and you do this by
creating a timer.

> +static bool has_busy_stats(struct intel_rps *rps)
> +{
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +
> +	return HAS_EXECLISTS(rps_to_i915(rps)); /* XXX init ordering */
> +
> +	for_each_engine(engine, rps_to_gt(rps), id) {
> +		if (!intel_engine_supports_stats(engine))
> +			return false;
> +	}
> +
> +	return true;
> +}

mh? what's the exit point here?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
