Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B565F9C3E7E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 13:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D5210E4A3;
	Mon, 11 Nov 2024 12:36:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QI36pvJc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC1A10E4A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 12:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731328585; x=1762864585;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=dFsezA+CbBintUlhJ4FVVBMePIw94bGnIOxtUgIlvaY=;
 b=QI36pvJc8rRW3Lj8vtVI5vm+oxLGGFs/WwqkwvvQx8plyW2kd3qr5ez5
 AbOjGD0fxJuA2HCXDMVdvAaIMhQSLx7NJzvia/LSWCSu1xaP63Hg6jdst
 niXGuI7nB2AE8iPJpuz5tsn3TJgUABQcyYc5fUtCARHH+bq5pdkOHPwu9
 +V5YRWPsylfYddiglPtREiBToPfVjQN+BKRgjNwHuA6BWMTQPHx1S2vJQ
 U+RAmkOLGXd5SxotrKgT+nvuCwgDwm314u/caLbnnZ7CFotzFH4LOUIvE
 poWetEfiMWtJvaxoPE8Y9UtvyjIomYPhOwR0dui0BQQYuPfb1FKMTA3H+ Q==;
X-CSE-ConnectionGUID: wfoikLnZSTWu0nsEA3SxWA==
X-CSE-MsgGUID: EvTt0KFlTyqq1Ofmr3TY3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="41745334"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="41745334"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:36:25 -0800
X-CSE-ConnectionGUID: TOcc7Jh7Sea/rT0kTJXVJg==
X-CSE-MsgGUID: gI/HziO4TbOHsdZVBS38tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="87047623"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:36:22 -0800
Date: Mon, 11 Nov 2024 14:29:54 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, 
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 2/9] drm/i915/display: create a common function to check
 validity of ELD
In-Reply-To: <20241008082327.342020-3-vinod.govindapillai@intel.com>
Message-ID: <alpine.DEB.2.22.394.2411111429190.14041@eliteleevi.tm.intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-3-vinod.govindapillai@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

On Tue, 8 Oct 2024, Vinod Govindapillai wrote:

> We would need to check the validity of connector ELD from multiple
> places in the follow up patches. So create a separate function to
> check the validity for ELD.

Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai
