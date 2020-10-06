Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBE128512D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 19:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E90BA6E4C5;
	Tue,  6 Oct 2020 17:48:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D236E48F;
 Tue,  6 Oct 2020 17:48:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22640144-1500050 for multiple; Tue, 06 Oct 2020 18:48:30 +0100
MIME-Version: 1.0
In-Reply-To: <2f7809798dd0b59246d67c5044dafb1e518fc4c5.camel@intel.com>
References: <20201006145632.117291-1-srinivasx.k@intel.com>
 <2f7809798dd0b59246d67c5044dafb1e518fc4c5.camel@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Ausmus, James" <james.ausmus@intel.com>, "K,
 SrinivasX" <srinivasx.k@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Pandey, Hariom" <hariom.pandey@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Souza, Jose" <jose.souza@intel.com>,
 "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 06 Oct 2020 18:48:29 +0100
Message-ID: <160200650945.2919.11750150118902885340@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Remove require_force_probe
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Souza, Jose (2020-10-06 18:46:45)
> +Rodrigo and Jani
> 
> On Tue, 2020-10-06 at 14:56 +0000, Kamati Srinivas wrote:
> > Removing force probe protection from EHL platform. Did
> > not observe warnings, errors, flickering or any visual
> > defects while doing ordinary tasks like browsing and
> > editing documents in a two monitor setup.
> 
> One of the requirements was also to have CI BAT all green and shards as green is possible but EHL don't show up in CI results, we actually have one
> single EHL machine in CI but I guess it is not able to run all tests that shards do:
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9097/filelist.html

https://intel-gfx-ci.01.org/tree/drm-tip/drmtip-alt.html
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
