Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5120B44F41B
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Nov 2021 17:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E75572F34;
	Sat, 13 Nov 2021 16:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F202572F34
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Nov 2021 16:22:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="213305644"
X-IronPort-AV: E=Sophos;i="5.87,232,1631602800"; d="scan'208";a="213305644"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2021 08:22:07 -0800
X-IronPort-AV: E=Sophos;i="5.87,232,1631602800"; d="scan'208";a="493419230"
Received: from avgutkin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.13.224])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2021 08:22:04 -0800
Date: Sat, 13 Nov 2021 08:22:20 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20211113162220.zhykx4i3waqdrmxd@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211111004549.144706-1-michael.cheng@intel.com>
 <20211111004549.144706-2-michael.cheng@intel.com>
 <20211113012807.GD137318@mdroper-desk1.amr.corp.intel.com>
 <20211113013146.GE137318@mdroper-desk1.amr.corp.intel.com>
 <b02449e7-d921-72f9-efef-612eb45576da@intel.com>
 <20211113014727.GG137318@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211113014727.GG137318@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 1/3] drm/i915: Introduce new macros for
 i915 PTE
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
Cc: Michael Cheng <michael.cheng@intel.com>, wayne.boyer@intel.com,
 jani.nikula@intel.com, intel-gfx@lists.freedesktop.org, siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 12, 2021 at 05:47:27PM -0800, Matt Roper wrote:
>On Fri, Nov 12, 2021 at 05:42:28PM -0800, Michael Cheng wrote:
>> Thanks for the feed back! I feel like using something name GEN6 or BYT for a
>> platform that's not GEN6 or BYT could be a bit confusing, that's why we
>> decided to go with something more generic. I do agree I need to cite the
>> bspec more. Ill wait for more feedback before I send a new revision out.
>
>In general that's the pattern that i915 tries to use --- we name
>functions, macros, etc. after the first platform or generation that they
>apply to and then continue to use them on all subsequent platforms until
>the hardware changes again and we need a new version.  E.g., we're still
>calling "gen8_ppgtt_create" to create our PPGTTs on the latest
>platforms, even though we're well past gen8 at this point.


I'd be totally ok with it if it was gen8 or gen6, but here the define is
BYT.  But if it's only me who find strange using the BYT_ define, I'm
fine with it.

Lucas De Marchi
