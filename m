Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FAF780F2E
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 17:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA2D710E540;
	Fri, 18 Aug 2023 15:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD6110E540
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692372524; x=1723908524;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=E0ycyb0VGj3/QIJWbcZJYz8j8MhN5kQwh99WMrSNph0=;
 b=YqcWcdQae3BbBtIu+4wBOZGcCb2JA5GImqGzUbYdKA097GOBdG4SYPdK
 Rzs0X+XE4AECnW7A3rQz+5rV+HazLeG9ClgIkDV85Lj0rJuPLIih2eT2u
 Rd+rtJZoMdO8NZqQA3dpTtK57Nh/uvEwkFg8oImnSYkBaEzVT2p7RwWWZ
 nQVVlv/5925RX40nCTdjz4K+KbJkeaUQVRhkl85wD8mpx4VfMl5MeisYD
 tE+bhyz0WgXudYUUhABen+gW92OBQK2V7njNaWLmE1TKyDa8lyr69fy9N
 /EMFyU3jto3pCDn4gD9GAapGkxNcUiX4bTmrHi7nCGJBcUZbTQ4ZwlRS2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="459477712"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="459477712"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 08:28:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="858728844"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="858728844"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 08:28:40 -0700
Date: Fri, 18 Aug 2023 18:24:43 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <alpine.DEB.2.22.394.2308181823010.3532114@eliteleevi.tm.intel.com>
References: <20230817125007.2681331-1-mitulkumar.ajitkumar.golani@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 0/3] Get optimal audio frequency and channels
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
Cc: intel-gfx@lists.freedesktop.org, jyri.sarha@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Thu, 17 Aug 2023, Mitul Golani wrote:

> Currently we do not check if there is enough bandwidth for
> audio, and what channels and freq it can really support.
> Also sometimes there can be HW constraints e.g. GLK where audio
> channels supported are only 2.
[...]
> Mitul Golani (3):
>   drm/i915: Add has_audio to separate audio parameter in crtc_state
>   drm/i915/display: Configure and initialize HDMI audio capabilities
>   drm/i915/display: Add wrapper to Compute SAD

thanks, looks good now. The adjusted logic to balance between
channels and rates seems to hit a fair balance. For the series:

Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai
