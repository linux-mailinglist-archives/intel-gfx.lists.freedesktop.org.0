Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF15276EB5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 12:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83846E1D5;
	Thu, 24 Sep 2020 10:27:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFCAA6E1D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 10:27:50 +0000 (UTC)
IronPort-SDR: 79JRMT87XFRyxoA7qo1VNFKcTwdpe6UcVJ0IHUn3QoQnbX/C5lCQ6eIjb9hYlIaQNpNUn1DaS3
 6tn+at1yV0mA==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="158527954"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="158527954"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 03:27:50 -0700
IronPort-SDR: 596AwCLsDphZxvqCIGkUZuYHleOl+6SpAYRmV+fOUQvUyEZxHBH3pYGsNnS2wrBv2e1eTrklSQ
 JweNMJc504Jw==
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; d="scan'208";a="486847359"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 03:27:49 -0700
Date: Thu, 24 Sep 2020 15:58:02 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200924102802.GA27649@intel.com>
References: <20200923132435.17039-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923132435.17039-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 0/2] HDCP misc
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

On 2020-09-23 at 18:54:33 +0530, Anshuman Gupta wrote:
> Rebased of a older series which has been pending to merge.
> original series : https://patchwork.freedesktop.org/series/73345/

Thanks for the review and rebasing. Pushed into dinq.

Ram.
> 
> Ramalingam C (2):
>   drm/i915: terminate reauth at stream management failure
>   drm/i915: dont retry stream management at seq_num_m roll over
> 
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 89 ++++++++++++++---------
>  1 file changed, 56 insertions(+), 33 deletions(-)
> 
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
