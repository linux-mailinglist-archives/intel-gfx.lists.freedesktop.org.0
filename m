Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5BE996C5E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 15:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF03A10E71B;
	Wed,  9 Oct 2024 13:39:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFk+BdmS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A5610E71B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 13:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728481175; x=1760017175;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=sA8lxdPdN9P2KGmcBupIuhr6siH/j3xJ+F7vAX+5EoI=;
 b=dFk+BdmSqRfGMOacezpLUhTUcSFX0RRbRE54OQvFOEZgqxRPHkjaBqIS
 WhNddOlIXzW9aDHJh9wKk7oPErKw78DRi+x4JEsx4xIkWKrB6AbSio6RL
 7hzUVcUKrnLxAKICepRquXon4KuXnuBnoCr/2QH4o4dxGHu4WCroTT6qY
 OjUxFY1czlsN02M2lpTSlnfaOp5547NsOoQ44++2Cnw0b4QIF04cpTGVF
 jWJwSHJl5Ysp8Z61dkzcWuKbv+LAx5pPOaBC3HNfuvq+haZnHECIsiUI+
 ubActKwLx6mAEh7i3mB8T78qZ17Ej/cnqA4ZmMBaRcPYWCMaacw7FQu5G w==;
X-CSE-ConnectionGUID: 3agOQhR7SlajDOY0yBQgMg==
X-CSE-MsgGUID: OcGcI0+oSGOtHgQqUqrTDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27674398"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27674398"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:39:35 -0700
X-CSE-ConnectionGUID: 2HgAjkZMT/SLpw16neXVUA==
X-CSE-MsgGUID: DIt3TsLTSKaqLvfObq95kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76262150"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:39:33 -0700
Date: Wed, 9 Oct 2024 16:33:49 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, 
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 9/9] drm/i915/display: update audio bw calculations for MTL
In-Reply-To: <20241008082327.342020-10-vinod.govindapillai@intel.com>
Message-ID: <alpine.DEB.2.22.394.2410091632530.14041@eliteleevi.tm.intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-10-vinod.govindapillai@intel.com>
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

Hi,

On Tue, 8 Oct 2024, Vinod Govindapillai wrote:

> Update the reference overhaed values for audio bw calculations
> for MTL onwards

s/overhaed/overhead/ , otherwise looks good:

Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai
