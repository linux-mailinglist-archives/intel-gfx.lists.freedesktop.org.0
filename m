Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4320D2F4D3C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 15:38:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975856EA1D;
	Wed, 13 Jan 2021 14:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244216EA1D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 14:38:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23585600-1500050 for multiple; Wed, 13 Jan 2021 14:38:48 +0000
MIME-Version: 1.0
In-Reply-To: <20210113141317.30765-1-jani.nikula@intel.com>
References: <20210113141317.30765-1-jani.nikula@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jan 2021 14:38:47 +0000
Message-ID: <161054872713.6195.17613762724297206864@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fix the uint*_t types
 that have crept in
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2021-01-13 14:13:17)
> Always prefer the kernel types over stdint types in i915.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
