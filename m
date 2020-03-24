Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E41061913AF
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 15:53:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43FB2896ED;
	Tue, 24 Mar 2020 14:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B046C896ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 14:53:54 +0000 (UTC)
IronPort-SDR: oajo+yUaW/Xskl7I8yseO+65A8KE14yzwcztCRqeo/xWbU2ao5W31GBcydIMCg45OaopZ0Rlfy
 VQ/+VSfJAfIA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 07:53:53 -0700
IronPort-SDR: SCnojjseI1e0rZ5AcF+w3KFMzBJtvwLU3H30J8SfZt3lpjR7O4CvKiwTQjmfM4Dg1jyY3SOWlb
 Z31TxWSxpUxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,300,1580803200"; d="scan'208";a="446255687"
Received: from bguildex-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.30.30])
 by fmsmga005.fm.intel.com with ESMTP; 24 Mar 2020 07:53:52 -0700
Date: Tue, 24 Mar 2020 16:53:51 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200324145351.GA1682@intel.intel>
References: <20200324134232.8773-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324134232.8773-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Select the deepest available
 parking mode for rc6
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

Hi Chris,

>  	struct intel_uncore *uncore = rc6_to_uncore(rc6);
> +	unsigned int target;
>  
>  	if (!rc6->enabled)
>  		return;
> @@ -622,7 +623,14 @@ void intel_rc6_park(struct intel_rc6 *rc6)
>  
>  	/* Turn off the HW timers and go directly to rc6 */
>  	set(uncore, GEN6_RC_CONTROL, GEN6_RC_CTL_RC6_ENABLE);
> -	set(uncore, GEN6_RC_STATE, 0x4 << RC_SW_TARGET_STATE_SHIFT);
> +
> +	if (HAS_RC6pp(rc6_to_i915(rc6)))
> +		target = 0x6; /* deepest rc6 */
> +	else if (HAS_RC6p(rc6_to_i915(rc6)))
> +		target = 0x5; /* deep rc6 */
> +	else
> +		target = 0x4; /* normal rc6 */

can we put names to these values?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
