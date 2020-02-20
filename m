Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA1A1658D8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 08:56:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6456ECE6;
	Thu, 20 Feb 2020 07:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC6AB6ECE6;
 Thu, 20 Feb 2020 07:56:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20283582-1500050 for multiple; Thu, 20 Feb 2020 07:56:40 +0000
MIME-Version: 1.0
To: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158216948422.17408.15681047567411025097@emeril.freedesktop.org>
References: <20200219180256.15524-1-akeem.g.abodunrin@intel.com>
 <158216948422.17408.15681047567411025097@emeril.freedesktop.org>
Message-ID: <158218539796.8112.1670548444030292872@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 20 Feb 2020 07:56:38 +0000
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

Quoting Patchwork (2020-02-20 03:31:24)
> Participating hosts (42 -> 36)
> ------------------------------
> 
>   Additional (6): fi-bdw-5557u fi-glk-dsi fi-ilk-650 fi-snb-2520m fi-cfl-8109u fi-bsw-kefka 
>   Missing    (12): fi-hsw-4770r fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-cfl-guc fi-kbl-7500u fi-hsw-4770 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 

Please see the fixes (and cleanup) patch so that the bb is actually
built and not killing gen7 hosts.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
