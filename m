Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E64971AE665
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44DAD6EA23;
	Fri, 17 Apr 2020 19:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2026EA23;
 Fri, 17 Apr 2020 19:58:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20938236-1500050 for multiple; Fri, 17 Apr 2020 20:58:21 +0100
MIME-Version: 1.0
In-Reply-To: <158715338057.10467.8702495067706573035@emeril.freedesktop.org>
References: <20200417141555.12028-1-chris@chris-wilson.co.uk>
 <158715338057.10467.8702495067706573035@emeril.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] ✗ Fi.CI.BAT: failure for drm/i915/gt: Poison residual state [HWSP] across resume.
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158715349956.2062.3869802463739303133@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 20:58:19 +0100
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

Quoting Patchwork (2020-04-17 20:56:20)
> Participating hosts (51 -> 12)
> ------------------------------
> 
>   ERROR: It appears as if the changes made in Patchwork_17352 prevented too many machines from booting.
> 
>   Missing    (39): fi-kbl-soraka fi-skl-6770hq fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-lmem fi-icl-guc fi-icl-dsi fi-skl-6600u fi-cml-u2 fi-tgl-u fi-bdw-5557u fi-cml-s fi-bxt-dsi fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-ctg-p8600 fi-tgl-y fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-byt-clapper fi-bdw-samus 

Ok. I'll go hide under the rock.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
