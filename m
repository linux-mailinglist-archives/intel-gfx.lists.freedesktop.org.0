Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E48E029385C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 11:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E3596E05A;
	Tue, 20 Oct 2020 09:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F486E05A
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 09:41:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22764795-1500050 for multiple; Tue, 20 Oct 2020 10:41:28 +0100
MIME-Version: 1.0
In-Reply-To: <20201019093738.GS27141@zhen-hp.sh.intel.com>
References: <20200811030209.21058-1-yan.y.zhao@intel.com>
 <20200811092532.13753-1-chris@chris-wilson.co.uk>
 <20200812020631.GP27035@zhen-hp.sh.intel.com>
 <20200819083259.GD32450@zhen-hp.sh.intel.com>
 <20201019093738.GS27141@zhen-hp.sh.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Zhenyu Wang <zhenyuw@linux.intel.com>
Date: Tue, 20 Oct 2020 10:41:28 +0100
Message-ID: <160318688893.14137.1131576378237908661@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop runtime-pm assert from vgpu
 io accessors
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
Cc: intel-gfx@lists.freedesktop.org, Yan Zhao <yan.y.zhao@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Zhenyu Wang (2020-10-19 10:37:38)
> 
> Hi, Chris
> 
> Looks this one is still missed to push? Could you help?

Yes, it just happened at a bad time for the trees.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
