Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529FD2C8498
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 14:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A90FC6E492;
	Mon, 30 Nov 2020 13:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A366E48E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 13:01:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23162035-1500050 for multiple; Mon, 30 Nov 2020 13:01:23 +0000
MIME-Version: 1.0
In-Reply-To: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 hariom.pandey@intel.com, intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:01:23 +0000
Message-ID: <160674128376.8815.15501065474758980770@build.alporthouse.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tejas Upadhyay (2020-11-30 12:48:55)
> Removing force probe protection from RKL platform. Did
> not observe warnings, errors, flickering or any visual
> defects while doing ordinary tasks like browsing and
> editing documents in a two monitor setup.

Really? CI says differently.
https://gitlab.freedesktop.org/drm/intel/-/issues/2743
is severe HW failure, something fishy in the world of forcewake.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
