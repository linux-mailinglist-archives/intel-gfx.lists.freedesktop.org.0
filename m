Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5051882531D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 12:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0874E10E5B3;
	Fri,  5 Jan 2024 11:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB4910E5B3
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 11:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704455352; x=1735991352;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Dn5cLTUGDDdMJhzdBHYwpRpcvLYhmaHKPeFqS/Tu44w=;
 b=IdjBTH4k8cZv4qzZ6O+L+GFDaZ9fMpauektdm+wp7QAT+SiTtNIK19WN
 x0l27+La9jX2wCaxU75Lp++HpgU54oE5ZNNPEAM/RX5WR5TI1PMZ+z5bP
 EXVxHItZAzGPAp0E5imZtRPNu/Yd6UpCoVZLO00yyZW6i7ZJuJoQD6b7Y
 Gd4YL9yd6fA8wcRwCCGF5tLkcEtaNdol+WUlkyVg1FRE1CvigKjUujEQP
 PhcCLV+y6D6tVeBQZHsjnLSGk7sDpds46HZUZXdX+gsM/Pwf6QFzuwXPV
 Fhp8c9y9f656trIqTKZxxQ3M/F+C683NQBe4VGrcInPTOR9vtaIi4g5v3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4260732"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; 
   d="scan'208";a="4260732"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 03:49:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="22819050"
Received: from amaslenx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.106])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 03:49:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 intel-gfx@lists.freedesktop.org, Patchwork
 <patchwork@emeril.freedesktop.org>
Subject: Re: [Intel-gfx]  =?utf-8?Q?=C3=A2?= Fi.CI.IGT: success for
 drm/i915: use ref_tracker library in i915 (rev4)
In-Reply-To: <0a187141-2b6b-46e2-9b00-6b7b0ad9edfe@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231030-ref_tracker_i915-v1-0-006fe6b96421@intel.com>
 <170027769982.12898.9793616998753164560@emeril.freedesktop.org>
 <0a187141-2b6b-46e2-9b00-6b7b0ad9edfe@intel.com>
Date: Fri, 05 Jan 2024 13:49:07 +0200
Message-ID: <87v888xaoc.fsf@intel.com>
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

On Mon, 20 Nov 2023, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> Patchset merged to intel-gt-next.

For future reference, anything that has an impact outside of the gt/gem
land should be merged via drm-intel-next, not drm-intel-gt-next.

We can cross-merge drm-intel-next -> drm-intel-gt-next, but any changes
from drm-intel-gt-next back to drm-intel-next need to go via drm-next
and backmerge to drm-intel-next.


BR,
Jani.


-- 
Jani Nikula, Intel
