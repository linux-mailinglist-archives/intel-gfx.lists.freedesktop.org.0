Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6BD47C35B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 16:47:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB0310F84C;
	Tue, 21 Dec 2021 15:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7855310F54D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 15:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640101668; x=1671637668;
 h=message-id:subject:from:to:date:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=i46nCpA3QiRj0DBu8mo0esnpRLAJVsj8h5lM/p5Bmdc=;
 b=gd6Rj1Vmy64rGjZWYLN1hkwiQ3hU3OQZYyGlCGf02tu7WFpuKHRU2+ux
 fi27HJgMfZrKVr9coyKjfKaFmnosLw5LGG2n7m48ExtPRI4l4LeeDqg8D
 7tq1eBrEXLKDEzGb4TbLK9UtAuBRm3vqvvbiDNjp9UduWpqjU4skMegQj
 f7gzNJYJu5YFNZaK+zA8va4WiTFREOkUf4MRKvrOwwqAaR3BRI3hWzIE/
 jYUjb1hxjATMTWNE9cOpSOU6i9T446EMlaq54cAFJSGS6bm8axAlHCob/
 44x5qIuBtKNtlo7L2L7HyjlHF8AjBqTpQjLooEsBxs1nUgyMhmih+pK7Y Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="240639006"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="240639006"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 07:47:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="755845851"
Received: from arajji-mobl.ger.corp.intel.com (HELO [10.249.254.222])
 ([10.249.254.222])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 07:47:46 -0800
Message-ID: <a78c405c05b7e2f2c0536c8d31a4ca1d586ba4c9.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 daniel@ffwll.ch, intel-gfx@lists.freedesktop.org
Date: Tue, 21 Dec 2021 16:47:44 +0100
In-Reply-To: <20211221140713.367218-1-christian.koenig@amd.com>
References: <20211221140713.367218-1-christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove questionable fence
 optimization during copy
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Christian,

On Tue, 2021-12-21 at 15:07 +0100, Christian König wrote:
> First of all as discussed multiple times now kernel copies *must*
> always wait
> for all fences in a BO before actually doing the copy. This is
> mandatory.

This patch looks ok to me. 

Regarding the discussion I was just awaiting  Daniel's reply from
yesterday:

https://lists.freedesktop.org/archives/intel-gfx/2021-December/285717.html

since his earlier reply

https://lists.freedesktop.org/archives/intel-gfx/2021-December/285717.html

contradicted your previous reply

https://lists.freedesktop.org/archives/intel-gfx/2021-December/284467.html

That confirmed all writes had to add an exclusive fence, and confirmed
that starting the blit early was ok.

So I was left a bit confused as to what the rules really were.

So now if I understand both of you correctly, writers that want to opt
out of implicit syncing do *not* need to add an exclusive fence. Is
that correct?

> 
> Additional to that drop the handling when there can't be a shared
> slot
> allocated on the source BO and just properly return an error code.
> Otherwise
> this code path would only be tested under out of memory conditions.

Good point. 

> 
> Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

Ok if I add this to drm-intel-gt-next?

/Thomas


