Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C61EE39C613
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 07:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A6F6E46B;
	Sat,  5 Jun 2021 05:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53B126E46B
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Jun 2021 05:44:56 +0000 (UTC)
IronPort-SDR: ZrXxtdlIi6hXCztbEdMJyHkTSpwn4/fFYby61aOTVO0dFOskSMGVXGXnjZzR/28DBSTqDyicjW
 XQ60F458j5kw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="201393182"
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="201393182"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 22:44:55 -0700
IronPort-SDR: W3sD0PjHoku1ojX0pw0+LRo3LR+9Akf8H1jcgyqa2j5Qi7O2VK/dbR6MrlmRsiiqLo/X3PLww7
 +udHrblhlUXw==
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="480891244"
Received: from pmcorrea-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.35.132])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 22:44:55 -0700
Date: Fri, 4 Jun 2021 22:44:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210605054454.432wxsd5xu4cloen@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210605002007.4153933-1-lucas.demarchi@intel.com>
 <162285301816.31069.14470638938169728375@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162285301816.31069.14470638938169728375@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?ma-buf=3A_fix_build_due_to_missing_export?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch is intended for drm-misc, where the issue comes from.

Lucas De Marchi

On Sat, Jun 05, 2021 at 12:30:18AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: dma-buf: fix build due to missing export
>URL   : https://patchwork.freedesktop.org/series/91045/
>State : failure
>
>== Summary ==
>
>Applying: dma-buf: fix build due to missing export
>Using index info to reconstruct a base tree...
>M	drivers/dma-buf/dma-resv.c
>Falling back to patching base and 3-way merge...
>Auto-merging drivers/dma-buf/dma-resv.c
>CONFLICT (content): Merge conflict in drivers/dma-buf/dma-resv.c
>error: Failed to merge in the changes.
>hint: Use 'git am --show-current-patch=diff' to see the failed patch
>Patch failed at 0001 dma-buf: fix build due to missing export
>When you have resolved this problem, run "git am --continue".
>If you prefer to skip this patch, run "git am --skip" instead.
>To restore the original branch and stop patching, run "git am --abort".
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
