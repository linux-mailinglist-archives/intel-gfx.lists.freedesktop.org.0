Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC19304971
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 21:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9312E899A3;
	Tue, 26 Jan 2021 20:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 8400 seconds by postgrey-1.36 at gabe;
 Tue, 26 Jan 2021 20:01:51 UTC
Received: from 1.mo4.mail-out.ovh.net (1.mo4.mail-out.ovh.net [178.33.248.196])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E671899A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 20:01:51 +0000 (UTC)
Received: from player798.ha.ovh.net (unknown [10.110.103.195])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 90BA2264C02
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 18:34:54 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player798.ha.ovh.net (Postfix) with ESMTPSA id 8E7561A82BCDE;
 Tue, 26 Jan 2021 17:34:49 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-96R001e0fe970e-34a9-41d5-bec1-bfca8970be0b,
 FCD1BBE7D880F588B4D98BD35E77FB0D8B597664) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Tue, 26 Jan 2021 19:34:48 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YBBSuH3DQuVrd+oa@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-10-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120122205.2808-10-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 5961921481763635721
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvdeigdegudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeelkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Improve DFS for priority
 inheritance
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

On Wed, Jan 20, 2021 at 12:22:05PM +0000, Chris Wilson wrote:
> The core of the scheduling algorithm is that we compute the topological
> order of the fence DAG. Knowing that we have a DAG, we should be able to
> use a DFS to compute the topological sort in linear time. However,
> during the conversion of the recursive algorithm into an iterative one,
> the memoization of how far we had progressed down a branch was

memoization?

> forgotten. The result was that instead of running in linear time, it was
> running in geometric time and could easily run for a few hundred
> milliseconds given a wide enough graph, not the microseconds as required.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

I have seen this patch long time ago... I'm r-b'eing starting
from the last patch :)

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
