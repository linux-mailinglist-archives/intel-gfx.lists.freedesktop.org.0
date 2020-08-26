Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A19252C50
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 13:17:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14096E10C;
	Wed, 26 Aug 2020 11:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341D06E10A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 11:17:43 +0000 (UTC)
IronPort-SDR: 89bdsvn+f5r3Lu4DZ8eFRUIRR4wwT2CXnJ+Q7AE0AwoQ/0GkXPkPidt9UbYElNbjcdsTl4MvaO
 ffMVrj5y1DJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="220531332"
X-IronPort-AV: E=Sophos;i="5.76,355,1592895600"; d="scan'208";a="220531332"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 04:17:42 -0700
IronPort-SDR: q1KOck5H38KwvC5q9SvJ/GHQxPJvVaBN+jWUD6yKULwZBRB5OdDsiIceaszjIkz+uhPBBmO9/F
 uc0RscC5aqAw==
X-IronPort-AV: E=Sophos;i="5.76,355,1592895600"; d="scan'208";a="474731838"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 04:17:41 -0700
Date: Wed, 26 Aug 2020 16:47:32 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200826111732.GA25775@intel.com>
References: <20200805114521.867-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200805114521.867-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 0/2] HDCP minor refactoring
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-08-05 at 17:15:19 +0530, Anshuman Gupta wrote:
> No functional change.

Thanks for the changes. Merged the changes based on v2 CI results.

-Ram
> 
> Anshuman Gupta (2):
>   drm/i915/hdcp: Add update_pipe early return
>   drm/i915/hdcp: No direct access to power_well desc
> 
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 23 +++++++++--------------
>  1 file changed, 9 insertions(+), 14 deletions(-)
> 
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
