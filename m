Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 653EA78C544
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 15:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B11F10E2FE;
	Tue, 29 Aug 2023 13:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0743B10E2FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 13:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693315696; x=1724851696;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5df57G4qs7bXEUmqKzEt2fnwg74mk8YyjQSYE0wAowM=;
 b=CLIHaU8mOp9TU/T2iY+SY67t9rZs6kqfFcUtocmeRWI7ZEnYz7UwWNTq
 kKaVCVSB9xwUMeKd9Haafdiy6Mne2VF4ZzjKtMTNtYyIGqlUvmJmeEz5S
 sEHCnISgZEP4KE/CQCVclpIPd60OO2Bz0n2mZ8ZEtIb1fukyV4Dj0nXdY
 4NqTDapR7A6MURNWWTgI3a0Vt2JilOJFzRdw0Ny/H0Kr4ScJ0es1nBpKt
 A+VBAk64TZiiNtoPYNSxebZDiW7YOzm517G7Qw9vRhJ3Bl4zX9gEMm675
 1YfGnaHhuQlpNdPHMlyW1TJIHrqeFsch2a4t52joOWgOEYijw1JR48yKa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="374258081"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="374258081"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 06:28:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="773692783"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="773692783"
Received: from ogbrugge-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.42.59])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 06:28:13 -0700
Date: Tue, 29 Aug 2023 15:28:10 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZO3yaqyyOn7+Jss6@ashyti-mobl2.lan>
References: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14016712196
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Mon, Aug 28, 2023 at 12:04:50PM +0530, Tejas Upadhyay wrote:
> Now this workaround is permanent workaround on MTL and DG2,
> earlier we used to apply on MTL A0 step only.
> VLK-45480
> 
> Fixes: d922b80b1010 ("drm/i915/gt: Add workaround 14016712196")
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

I read your patch yesterday, but forgot to tag it...

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thank you,
Andi
