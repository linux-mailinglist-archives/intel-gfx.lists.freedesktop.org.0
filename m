Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5730B1AEA45
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2020 08:44:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40DC6E057;
	Sat, 18 Apr 2020 06:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C4AE6E057
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Apr 2020 06:44:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20940196-1500050 for multiple; Sat, 18 Apr 2020 07:44:41 +0100
MIME-Version: 1.0
In-Reply-To: <20200417172835.15461-1-anshuman.gupta@intel.com>
References: <20200417172835.15461-1-anshuman.gupta@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158719228030.2062.12619165504050077204@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 18 Apr 2020 07:44:40 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add ICL PG3 PW ID for EHL
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

Quoting Anshuman Gupta (2020-04-17 18:28:35)
> Gen11 onwards PG3 contains functions for pipe B,
> external displays, and VGA. Add missing ICL_DISP_PW_3
> for ehl_power_wells.
> 
> Cc: Animesh Manna <animesh.manna@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1737
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

This brings EHL back from the dead, which is good enough for me.
Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
