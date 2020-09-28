Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E59127B345
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 19:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6336E14F;
	Mon, 28 Sep 2020 17:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0621B6E14F;
 Mon, 28 Sep 2020 17:32:28 +0000 (UTC)
IronPort-SDR: BwRWlioCwVGqBxK5SW0FW4N5w5ziVAWAhK8bG9cBNU0p4yR0LTJU5kfoom5iXDK0JTC+h07kDl
 U7tf+B0WdwQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="159414029"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="159414029"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 10:32:26 -0700
IronPort-SDR: j8xoHDJJ45rGwOwoyZZF+HllFLLJ158Zya1dckhQLHFShb8AsHRsnJgHZ0XZbKAsPILnuPhSUL
 yTL6bLE1PmoA==
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="488674823"
Received: from lizwalsh-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.86.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 10:32:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20200928172447.GA2157395@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200928080931.246347-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20200928080931.246347-2-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87d026owdq.fsf@intel.com>
 <SN6PR11MB3421571FA9A490C67E0E9D82DF350@SN6PR11MB3421.namprd11.prod.outlook.com>
 <874knhq0x1.fsf@intel.com>
 <20200928172447.GA2157395@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 28 Sep 2020 20:32:38 +0300
Message-ID: <87sgb1olhl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/jsl: Split EHL/JSL platform
 info and PCI ids
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 28 Sep 2020, Matt Roper <matthew.d.roper@intel.com> wrote:
> Why are we adding IS_JASPERLAKE at all?  EHL/JSL are documented as the
> same graphics IP, but are paired with different PCHs in the final SoCs,
> which is what causes the minor differences in programming.  My
> understanding is that the voltage programming differences are ultimately
> due to that difference in PCH so we should just use HAS_PCH_MCC (EHL)
> and HAS_PCH_JSP (JSL) to distinguish which type of programming is needed
> rather than using a platform test.

Good point. If the difference is in the PCH, then of course the PCH
check should be used instead. Which avoids the problem altogether.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
