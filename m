Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C10A430A731
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 13:07:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA4C6E49C;
	Mon,  1 Feb 2021 12:07:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B75F96E3D0;
 Mon,  1 Feb 2021 12:07:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23760215-1500050 for multiple; Mon, 01 Feb 2021 12:07:10 +0000
MIME-Version: 1.0
In-Reply-To: <20210201115756.876351-1-tvrtko.ursulin@linux.intel.com>
References: <20210201115756.876351-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Mon, 01 Feb 2021 12:07:10 +0000
Message-ID: <161218123064.27906.1183308463378840226@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Wrap interactive header
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-02-01 11:57:56)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Slight improvement with regards to wrapping header components to fit
> console width. If a single element is wider than max it can still
> overflow but it should now work better for practical console widths.

<----
intel-gpu-top: Intel Kabylake (Gen9) @ /dev/dri/card0
 900/ 949 MHz;   0% RC6;  6.97/18.42 W;        2 irqs/s
      IMC reads:        6 MiB/s
     IMC writes:        0 MiB/s

---->
intel-gpu-top: Intel Kabylake (Gen9) @ /dev/dri/card0 -  903/ 954 MHz;   0% RC6
    7.16/18.40 W;       14 irqs/s

      IMC reads:       80 MiB/s
     IMC writes:        0 MiB/s

I thought it looked reasonably tidy, without adding any lines to the
header.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
