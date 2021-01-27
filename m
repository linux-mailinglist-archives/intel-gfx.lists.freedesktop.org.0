Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E9F305F51
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870B86E2D8;
	Wed, 27 Jan 2021 15:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379BA6E2D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:18:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23715766-1500050 for multiple; Wed, 27 Jan 2021 15:17:59 +0000
MIME-Version: 1.0
In-Reply-To: <CO1PR11MB5075034ACD67B3DD27311637F6BB9@CO1PR11MB5075.namprd11.prod.outlook.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <160674128376.8815.15501065474758980770@build.alporthouse.com>
 <SN6PR11MB342108C9577A99EF4D3BBC87DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
 <160674847963.9850.14014681039747149826@build.alporthouse.com>
 <SN6PR11MB34210126D6425BBDD80F6258DFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB342113B3B07EFA7D7E6656AADFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
 <DM6PR11MB3355DDA42F41463D267737AEEEF10@DM6PR11MB3355.namprd11.prod.outlook.com>
 <160707557006.6805.9985083009767030866@build.alporthouse.com>
 <CO1PR11MB5075034ACD67B3DD27311637F6BB9@CO1PR11MB5075.namprd11.prod.outlook.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Pandey, Hariom" <hariom.pandey@intel.com>
Date: Wed, 27 Jan 2021 15:18:01 +0000
Message-ID: <161176068198.2943.12987783906560421660@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
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
Cc: "Naramasetti, LaxminarayanaX" <laxminarayanax.naramasetti@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Pandey, Hariom (2021-01-27 15:10:53)
> Hi Chris,
> 
> (i) To your concern on the GPU dying issue gitlab#2743 --> this issue has been resolved and not observed in last 3 runs --> The gitlab had been updated with the pass results and closed.
> (ii) RocketLate platform has been setup in Public CI with the name " fi-rkl-11500t" --> https://intel-gfx-ci.01.org/tree/drm-tip/bat-all.html? --> This link shows last few Pass runs.
> 
> With the above progress, please confirm if you are fine to merge/accept this patch of RKL force probe flag removal.

Now that we have some visibility in CI, those of us without rkl (who
_just_ see the bug reports) can all build up some confidence. From the
CI, it's looking good, but you want to wait for a few idle [full] runs to
get a true feel of the overall health.

So if people are happy that the scary forcewake error was truly a one off
and doesn't need any follow up, then I see nothing stopping us from
declaring ourselves in good shape -- barring a disastrous idle run.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
