Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD781814BA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 10:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 831C96E955;
	Wed, 11 Mar 2020 09:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D92F46E954
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 09:25:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20518577-1500050 for multiple; Wed, 11 Mar 2020 09:25:28 +0000
MIME-Version: 1.0
In-Reply-To: <20200311084704.20468-1-chuansheng.liu@intel.com>
References: <20200311084704.20468-1-chuansheng.liu@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Chuansheng Liu <chuansheng.liu@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158391872698.28297.4099094935804827720@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 11 Mar 2020 09:25:26 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: print more workaround
 registers
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

Quoting Chuansheng Liu (2020-03-11 08:47:04)
> In the node i915_wa_registers, we could print out
> more information with whitelist, GT workaround and
> engine workaround.

Who's the consumer? We've stopped using this file in igt.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
