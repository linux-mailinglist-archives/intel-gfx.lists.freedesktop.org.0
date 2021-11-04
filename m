Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3CB444BEF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 01:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C727AE51;
	Thu,  4 Nov 2021 00:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B0317AE50;
 Thu,  4 Nov 2021 00:23:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="218530280"
X-IronPort-AV: E=Sophos;i="5.87,207,1631602800"; d="scan'208";a="218530280"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 17:23:19 -0700
X-IronPort-AV: E=Sophos;i="5.87,207,1631602800"; d="scan'208";a="501320537"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.216.3])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 17:23:19 -0700
Date: Wed, 03 Nov 2021 17:23:19 -0700
Message-ID: <87lf24db0o.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
In-Reply-To: <20211102012608.8609-2-vinay.belgaumkar@intel.com>
References: <20211102012608.8609-1-vinay.belgaumkar@intel.com>
 <20211102012608.8609-2-vinay.belgaumkar@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/27.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/guc/slpc: Define and
 initialize boost frequency
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 01 Nov 2021 18:26:06 -0700, Vinay Belgaumkar wrote:
>
> Define helpers and struct members required to record boost info.
> Boost frequency is initialized to RP0 at SLPC init. Also define num_waiters
> which can track the pending boost requests.
>
> Boost will be done by scheduling a worker thread. This will avoid
> the need to make H2G calls inside an interrupt context. Initialize the
> worker function during SLPC init as well. Had to move intel_guc_slpc_init
> a few lines below to accomodate this.
>
> v2: Add a workqueue to handle waitboost
> v3: Code review comments (Ashutosh)

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
