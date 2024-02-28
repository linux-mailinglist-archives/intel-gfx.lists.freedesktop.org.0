Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FD486AF50
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 13:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375BC10E09C;
	Wed, 28 Feb 2024 12:40:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFrNscqZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F37210E09C
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 12:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709124007; x=1740660007;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6tmb3LlujkEl2TKhYC1EJs+iLnTo6OJpQYrnnnwDlQ0=;
 b=OFrNscqZi2CgtIZiahQsCXaEDEJxegT1BnDBpOEFAbzQD789xba6bHn7
 1eYzw4mhOxeNK2VidCsgH5Yv68dklECJhoZNsUqv13T1RvjTt3vKxY66D
 gYSWu41LiHA4rswzL5YBagCTxTHnMqkty3IRvZjwsvx5i18Q5mRgZXHFM
 Z0PPX3kUjpDqxGztRqVNCIfCOqJxIOn3w92kUOrgE3EtNhJjLY1WZMeFy
 f37zBYeDPJ7lXmrtTxEgbGBK0IzmKkCH63FFcbRh+QTkOk13bDTwOq5YX
 kp45PvYie3J8tkoXtsKtNE5ES694bYbeP8ngqcmBRe6kHQdcGKGY2ALa3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="4090411"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="4090411"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 04:40:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="11966202"
Received: from tmelzer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.32.33])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 04:40:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 0/6] Enable Adaptive Sync SDP Support for DP
In-Reply-To: <20240221121321.2213128-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240221121321.2213128-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Wed, 28 Feb 2024 14:40:01 +0200
Message-ID: <877cioahjy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 21 Feb 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> An Adaptive Sync SDP allows a DP protocol converter to
> forward Adaptive Sync video with minimal buffering overhead
> within the converter. An Adaptive-Sync-capable DP protocol
> converter indicates its support by setting the related bit
> in the DPCD register.

Please use the -vN parameter to git format-patch or send-email to add
the series version to the subject.

Thanks,
Jani.

-- 
Jani Nikula, Intel
