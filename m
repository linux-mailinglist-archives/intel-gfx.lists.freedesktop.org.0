Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA27E21389B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 12:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A776E226;
	Fri,  3 Jul 2020 10:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 43717 seconds by postgrey-1.36 at gabe;
 Fri, 03 Jul 2020 10:25:24 UTC
Received: from 2.mo179.mail-out.ovh.net (2.mo179.mail-out.ovh.net
 [178.33.250.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E1716E226
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 10:25:24 +0000 (UTC)
Received: from player796.ha.ovh.net (unknown [10.108.42.102])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 3DD4A171A98
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 12:09:23 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player796.ha.ovh.net (Postfix) with ESMTPSA id 16CA813F5F23E;
 Fri,  3 Jul 2020 10:09:14 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-106R006d813813e-b720-413c-9f89-fcc89b1ab7d4,330C922CC493531D64D5056C63BB4F2290C4140E)
 smtp.auth=andi@etezian.org
Date: Fri, 3 Jul 2020 13:09:13 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>, andi@etezian.org,
 andi.shyti@intel.com
Message-ID: <20200703100913.GF1969@jack.zhora.eu>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702083225.20044-5-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 275564005401215497
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrtdeigddvhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeeliedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 05/23] drm/i915: Export ppgtt_bind_vma
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

On Thu, Jul 02, 2020 at 09:32:07AM +0100, Chris Wilson wrote:
> Reuse the ppgtt_bind_vma() for aliasing_ppgtt_bind_vma() so we can
> reduce some code near-duplication. The catch is that we need to then
> pass along the i915_address_space and not rely on vma->vm, as they
> differ with the aliasing-ppgtt.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

very nice!

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
