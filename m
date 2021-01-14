Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C0B2F58CD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 04:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A531893D0;
	Thu, 14 Jan 2021 03:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 446 seconds by postgrey-1.36 at gabe;
 Thu, 14 Jan 2021 03:10:09 UTC
Received: from 5.mo1.mail-out.ovh.net (5.mo1.mail-out.ovh.net [178.33.45.107])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F2D89580
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 03:10:09 +0000 (UTC)
Received: from player776.ha.ovh.net (unknown [10.109.143.175])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id DA2DC1EB74C
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 04:02:09 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player776.ha.ovh.net (Postfix) with ESMTPSA id 03AA21A1237C5;
 Thu, 14 Jan 2021 03:02:05 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-97G00225761b68-339b-4d54-9185-a942a8356e12,
 72D3C5DAFF26A6515C48D523C3EFD44FB281F22F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 14 Jan 2021 05:02:04 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/+0LPseG9PYD4hP@jack.zhora.eu>
References: <20210113124600.656-1-chris@chris-wilson.co.uk>
 <20210113124600.656-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113124600.656-5-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 12984159202951021065
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedukedrtdeggdehfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeejiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Reduce test_and_set_bit to
 set_bit in i915_request_submit()
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

On Wed, Jan 13, 2021 at 12:45:55PM +0000, Chris Wilson wrote:
> Avoid the full blown memory barrier of test_and_set_bit() by noting the
> completed request and removing it from the lists.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
