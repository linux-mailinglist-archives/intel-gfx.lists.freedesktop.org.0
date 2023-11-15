Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150257EBE6C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 09:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A7F710E502;
	Wed, 15 Nov 2023 08:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 926E110E504;
 Wed, 15 Nov 2023 08:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700036171; x=1731572171;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=DeGz/PZtITqZi+IpmokuVnt5rC6x2ogyzPLY+iXwvF8=;
 b=LBfawIfGSucHUa6G4b19PhamNWtus7wYBWnT7MVC5tBZMOQBSpeMUTIO
 Odsjooo5xAiavlu3bit05Cse8TX0bGAa0xSq9sMBe6sEVOOX9kiVQ6cHy
 vu3bVOxvnYJnV/ParGWfc2Za7wJHr3yRDEcNVovTFvK6whe0W4nIgeUwf
 wSlTo0+od16uD6XbXXxH4HI/+XOCPpZaPa2Vf/F8hk7GQsQSjy0dSNZ5Y
 GA8wt6D/xgXWTw60J7oJzvV65Lk9lyg47/35Q6zAhOkn7DiCQuzaQL89w
 kslh/mU7DGP7hqEcfEGS5LYK/arnF+px3thn89aoinE9pc/1o3Dm1jRGg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="381228871"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="381228871"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 00:16:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="938406132"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="938406132"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 00:16:07 -0800
Date: Wed, 15 Nov 2023 10:15:53 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <87jzqkp99j.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.22.394.2311150901200.14041@eliteleevi.tm.intel.com>
References: <20231002193847.7134-1-maarten.lankhorst@linux.intel.com>
 <20231002193847.7134-11-maarten.lankhorst@linux.intel.com>
 <ZVNUxZzCGcxQzqJX@intel.com> <87bkbwsebl.fsf@intel.com>
 <569f8832-25f1-45be-bb60-50f5a76d8e44@linux.intel.com>
 <DM8PR11MB5655518A6F21A2E4CA2E76D3E0B2A@DM8PR11MB5655.namprd11.prod.outlook.com>
 <87jzqkp99j.wl-tiwai@suse.de>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 11/14] ALSA: hda/intel: Move
 snd_hdac_i915_init to before probe_work.
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, 14 Nov 2023, Takashi Iwai wrote:

> On Tue, 14 Nov 2023 14:31:25 +0100, Saarinen, Jani wrote:
> > Was this series tested on CI  ever as Ville saying no? How this got merged? 
> 
> Hm, I somehow believed that patches have been tested by intel people,
> as they came from intel.  (Also thought that drm-tip or whatever tree
> also drags the recent changes from sound.git tree for relevant part.)

ack, this is squarely on us Intel folks to ensure the test runs get done. 
This series did go through a number of Intel test setups, but 
unfortunately, as it now seems, not through the i915 CI setup that covers 
the affected configuration (audio DSP not used, HDA controller on the PCH, 
tests on the display audio codec).

Reproduced the problem now one one local setup and can confirm the fix 
Takashi and Maarten posted, does work.
 
Br, Kai
