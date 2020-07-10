Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A54A21B274
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 11:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77174896E7;
	Fri, 10 Jul 2020 09:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0833D88D1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 09:43:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21774996-1500050 for multiple; Fri, 10 Jul 2020 10:43:08 +0100
MIME-Version: 1.0
In-Reply-To: <99a68e1a-4008-8a06-a24b-6cfae38a3fe0@intel.com>
References: <20200709195837.4285-1-umesh.nerlige.ramappa@intel.com>
 <99a68e1a-4008-8a06-a24b-6cfae38a3fe0@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 10:43:05 +0100
Message-ID: <159437418539.23667.2500906784284980999@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Use GTT when
 saving/restoring engine GPR
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

Quoting Lionel Landwerlin (2020-07-09 21:40:50)
> On 09/07/2020 22:58, Umesh Nerlige Ramappa wrote:
> > MI_STORE_REGISTER_MEM and MI_LOAD_REGISTER_MEM need to know which
> > translation to use when saving restoring the engine general purpose
> > registers to and from the GT scratch. Since GT scratch is mapped to
> > ggtt, we need to set an additional bit in the command to use GTT.
> >
> > Fixes: daed3e44396d17 ("drm/i915/perf: implement active wait for noa configurations")
> > Suggested-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> > Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> 
> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> 
> 
> Thanks a lot!

Pushed, thanks for the fix.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
