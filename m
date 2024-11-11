Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 241B79C3E58
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 13:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A6210E486;
	Mon, 11 Nov 2024 12:18:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TrhSzy3O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0298E10E486
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 12:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731327500; x=1762863500;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=WFcr6e0aBMBxSNKa7MTzoj9nlpyCrT82hxy6vXfX1bE=;
 b=TrhSzy3OHiPjzJf1QJsv5rKJceZi7ozY3dJgmXQVqY+hxlbfVcaCVcHe
 i74InUV0I75mB83mgCfUbzMc2ap0h204R5GR22jhb/W69XgsjYyVKFMxB
 SJ4sW23vD6tglGcVzR9zZ91+VDTADG5OIvBSutLSDPdJ4wzpwuaRznlYJ
 zc32niwnfaqrcc9gg96L6KljoKTGiSsS4LbOoOOx/r6Bdw+alnbV75R4g
 blx2lFscyGPINBNPVzWCLQ/m5ZmwIBebEQpLcdAv127XLPQn8cE7XmxBN
 eee9IM0G9tZP04rJ4p/YuwLQiJnujCUzP3bo54ZiG7qNihKeDvxt5yqUu w==;
X-CSE-ConnectionGUID: bUqtAQ5MQjaGzCAZzB80Ww==
X-CSE-MsgGUID: sekDiNRqQA+zKZg01zRsfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="18749739"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="18749739"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:18:19 -0800
X-CSE-ConnectionGUID: u1LjES0dSXq2jU4/XiGHpQ==
X-CSE-MsgGUID: nw9gbIqFToKstBD2vgdNLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="87010240"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:18:17 -0800
Date: Mon, 11 Nov 2024 14:11:41 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, 
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 3/9] drm/i915/display: update call to
 intel_dp_audio_compute_config
In-Reply-To: <20241008082327.342020-4-vinod.govindapillai@intel.com>
Message-ID: <alpine.DEB.2.22.394.2411111402570.14041@eliteleevi.tm.intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-4-vinod.govindapillai@intel.com>
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

> For the complete audio compute config calculations, we would
> need to have the transcoder M/N values as well. So move
> intel_dp_audio_compute_config after the transcoder M/N values
> are calculated in intel_link_compute_m_n().This becomes more
> relevant after the follow-up patches where we will need to
> assess if an audio frequency can be supported with a pipe config.

looks good:
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai

