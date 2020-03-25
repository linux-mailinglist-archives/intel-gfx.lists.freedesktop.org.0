Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E1F191EB4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 02:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10526E0E7;
	Wed, 25 Mar 2020 01:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C0B6E0E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:47:14 +0000 (UTC)
IronPort-SDR: yOHHZWimAHLq7Adp5Ecp1wVLr54JUOFQnAF7tVf0S9su4ZOqF32RXZCdsyW0Fw6PUXlc3oEZrx
 qXKeS8xA17eA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 18:47:14 -0700
IronPort-SDR: Hxicdm3aXfvdGHN0EDMT0nIRmh8eMwfoe3wuSsphFNZhYJeZACHgmp5ZT6nbPh7QFz/TR8KSXG
 s3/g38ykDdzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="246964254"
Received: from bguildex-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.30.30])
 by orsmga003.jf.intel.com with ESMTP; 24 Mar 2020 18:47:10 -0700
Date: Wed, 25 Mar 2020 03:47:09 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200325014709.GC1682@intel.intel>
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 0/6] Re-org uC debugfs files and move
 them under GT
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

Hi Daniele,

On Wed, Mar 11, 2020 at 06:16:25PM -0700, Daniele Ceraolo Spurio wrote:
> Rebased on top of Andi's patch. Note that some discussion is still
> ongoing on that patch.
> 
> Also dropped the patch that caused a const->non-const conversion and
> fixed a couple of bugs:
> - keep printing HUC_STATUS register
> - correcly set permissions for writable debugfs files
> 
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com> 
> 
> Andi Shyti (1):
>   drm/i915/gt: allow setting generic data pointer
> 
> Daniele Ceraolo Spurio (5):
>   drm/i915/guc: drop stage_pool debugfs
>   drm/i915/huc: make "support huc" reflect HW capabilities
>   drm/i915/debugfs: move uC printers and update debugfs file names
>   drm/i915/uc: Move uC debugfs to its own folder under GT
>   drm/i915/uc: do not free err log on uc_fini

is this series getting in at some point or shall I take this
series over?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
