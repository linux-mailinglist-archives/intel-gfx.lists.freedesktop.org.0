Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE4B2F9C3E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 11:19:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A712A6E1A2;
	Mon, 18 Jan 2021 10:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694DD6E1A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 10:19:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23626684-1500050 for multiple; Mon, 18 Jan 2021 10:18:59 +0000
MIME-Version: 1.0
In-Reply-To: <87lfcqobpl.fsf@intel.com>
References: <87lfcqobpl.fsf@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Mika Kuoppala <mika.kuoppala@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Mon, 18 Jan 2021 10:18:57 +0000
Message-ID: <161096513778.18103.1157215231360174140@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] Fixes that failed to apply to v5.11-rc4
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

Quoting Jani Nikula (2021-01-18 09:07:02)
> 
> The following commits have been marked as Cc: stable or fixing something
> in v5.11-rc4 or earlier, but failed to cherry-pick to
> drm-intel-fixes. Please see if they are worth backporting, and please do
> so if they are.
> 
> Conflicts:
> 6a3daee1b38e ("drm/i915/selftests: Fix some error codes")

Selftest bad error codes, that should not impact users so not worth the
backport.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
