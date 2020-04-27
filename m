Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C01A1BB190
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 00:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7DD6E117;
	Mon, 27 Apr 2020 22:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout1.mo804.mail-out.ovh.net
 (smtpout1.mo804.mail-out.ovh.net [79.137.123.220])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFCC86E082
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 19:53:45 +0000 (UTC)
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.26])
 by mo804.mail-out.ovh.net (Postfix) with ESMTPS id B1FD2389FECA;
 Mon, 27 Apr 2020 21:53:42 +0200 (CEST)
Received: from smida.it (37.59.142.98) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 27 Apr
 2020 21:53:41 +0200
Date: Mon, 27 Apr 2020 22:53:40 +0300
From: Andi Shyti <andi@smida.it>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200427195340.GC3168@jack.zhora.eu>
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
 <20200427085408.13879-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427085408.13879-5-chris@chris-wilson.co.uk>
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG4EX1.mxp6.local (172.16.2.31) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 595c8246-d74f-4872-8180-7c701263d73c
X-Ovh-Tracer-Id: 4054928514842023322
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrheelgddugedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisehsmhhiuggrrdhitheqnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisehsmhhiuggrrdhithdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
X-Mailman-Approved-At: Mon, 27 Apr 2020 22:37:45 +0000
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/gt: Move rps.enabled/active to
 flags
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

On Mon, Apr 27, 2020 at 09:54:04AM +0100, Chris Wilson wrote:
> Pull the boolean intel_rps.enabled and intel_rps.active into a single
> flags field, in preparation for more.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
