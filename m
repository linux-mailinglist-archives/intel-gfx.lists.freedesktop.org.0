Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B5114EA1A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:33:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D5F6E201;
	Fri, 31 Jan 2020 09:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 344A26E201;
 Fri, 31 Jan 2020 09:33:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20069274-1500050 for multiple; Fri, 31 Jan 2020 09:33:37 +0000
MIME-Version: 1.0
To: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158043981762.13121.15582529510028456135@emeril.freedesktop.org>
References: <20200130165721.20342-1-akeem.g.abodunrin@intel.com>
 <158043981762.13121.15582529510028456135@emeril.freedesktop.org>
Message-ID: <158046321523.5254.15778918831751488886@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 Jan 2020 09:33:35 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7/7=2E5_HWs?=
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

Quoting Patchwork (2020-01-31 03:03:37)
> Participating hosts (47 -> 42)
> ------------------------------
> 
>   Additional (4): fi-bdw-gvtdvm fi-gdg-551 fi-elk-e7500 fi-kbl-7500u 
>   Missing    (9): fi-hsw-4770r fi-icl-1065g7 fi-hsw-4200u fi-byt-j1900 fi-bsw-cyan fi-hsw-4770 fi-ivb-3770 fi-byt-n2820 fi-bdw-samus 

Please note the absence of any gen7. None survived booting.
Hint, it's the same misplaced batch_advance as last time.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
