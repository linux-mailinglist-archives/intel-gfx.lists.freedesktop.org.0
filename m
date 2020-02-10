Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 965AE157CB6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 14:47:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1C636E994;
	Mon, 10 Feb 2020 13:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 136976E994
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 13:47:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20175477-1500050 for multiple; Mon, 10 Feb 2020 13:46:44 +0000
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200210134039.2607-1-andi.shyti@intel.com>
References: <20200210134039.2607-1-andi.shyti@intel.com>
Message-ID: <158134240184.5235.12886695727708474620@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Feb 2020 13:46:41 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: change prefix to debugfs
 functions
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

Quoting Andi Shyti (2020-02-10 13:40:39)
> "We don't own the debugfs 'namespace' prefix." (Jani Nikula [*])
> 
> I agree, change the functions name from "debugfs_*" to
> "intel_gt_*" prefix.

An alternate way of looking at it is that these are all dependent on
CONFIG_DEBUGFS. So are they not the debugfs interface?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
