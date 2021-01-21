Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5AF2FEEF6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 16:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE93C6E900;
	Thu, 21 Jan 2021 15:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 717 seconds by postgrey-1.36 at gabe;
 Thu, 21 Jan 2021 15:35:57 UTC
Received: from 7.mo178.mail-out.ovh.net (7.mo178.mail-out.ovh.net
 [46.105.58.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3496E900
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:35:57 +0000 (UTC)
Received: from player799.ha.ovh.net (unknown [10.108.42.83])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 414D0C13CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 16:19:13 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player799.ha.ovh.net (Postfix) with ESMTPSA id C999D1A432095;
 Thu, 21 Jan 2021 15:19:03 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-106R0067583376b-cd8c-46fa-9f5f-f9dce69ec372,
 CAC1A779C7E69CC0B09A0D0E1FF85449833E868F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Thu, 21 Jan 2021 17:19:00 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YAmbZFpoxxT3QWzX@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120122205.2808-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 11200452273496637961
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudeggdejkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeelledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/gt: Do not suspend bonded
 requests if one hangs
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

On Wed, Jan 20, 2021 at 12:21:56PM +0000, Chris Wilson wrote:
> Treat the dependency between bonded requests as weak and leave the
> remainder of the pair on the GPU if one hangs.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
