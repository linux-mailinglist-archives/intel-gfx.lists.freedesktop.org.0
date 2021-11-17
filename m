Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A88DE455078
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 23:29:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A8F6E0E1;
	Wed, 17 Nov 2021 22:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2F86E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 22:29:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="297488267"
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="297488267"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 14:29:41 -0800
X-IronPort-AV: E=Sophos;i="5.87,243,1631602800"; d="scan'208";a="472907547"
Received: from yohanpar-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.32.122])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 14:29:40 -0800
Date: Wed, 17 Nov 2021 14:29:40 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20211117222940.gyxnctt7vylyj2b2@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211111004549.144706-1-michael.cheng@intel.com>
 <20211111004549.144706-2-michael.cheng@intel.com>
 <20211113012807.GD137318@mdroper-desk1.amr.corp.intel.com>
 <20211113013146.GE137318@mdroper-desk1.amr.corp.intel.com>
 <b02449e7-d921-72f9-efef-612eb45576da@intel.com>
 <20211113014727.GG137318@mdroper-desk1.amr.corp.intel.com>
 <20211113162220.zhykx4i3waqdrmxd@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211113162220.zhykx4i3waqdrmxd@ldmartin-desk2>
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
Cc: jani.nikula@intel.com, siva.mullati@intel.com,
 intel-gfx@lists.freedesktop.org, Michael Cheng <michael.cheng@intel.com>,
 wayne.boyer@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Nov 13, 2021 at 08:22:20AM -0800, Lucas De Marchi wrote:
>On Fri, Nov 12, 2021 at 05:47:27PM -0800, Matt Roper wrote:
>>On Fri, Nov 12, 2021 at 05:42:28PM -0800, Michael Cheng wrote:
>>>Thanks for the feed back! I feel like using something name GEN6 or BYT for a
>>>platform that's not GEN6 or BYT could be a bit confusing, that's why we
>>>decided to go with something more generic. I do agree I need to cite the
>>>bspec more. Ill wait for more feedback before I send a new revision out.
>>
>>In general that's the pattern that i915 tries to use --- we name
>>functions, macros, etc. after the first platform or generation that they
>>apply to and then continue to use them on all subsequent platforms until
>>the hardware changes again and we need a new version.  E.g., we're still
>>calling "gen8_ppgtt_create" to create our PPGTTs on the latest
>>platforms, even though we're well past gen8 at this point.
>
>
>I'd be totally ok with it if it was gen8 or gen6, but here the define is
>BYT.  But if it's only me who find strange using the BYT_ define, I'm
>fine with it.

let's ignore that and go with the GEN6 + BYT defines. Please also Cc
dri-devel since this touches gt/  code.

thanks
Lucas De Marchi
