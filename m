Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAE92EF6BD
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC3F6E85C;
	Fri,  8 Jan 2021 17:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D6A6E85C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:42 +0000 (UTC)
IronPort-SDR: kbsOZK6LROlCi5rZcwV0TTWz9yQbonLwx5ZzR+HKCe9BcmEcRRQLIPAhkYoeLDCVcIomcXcHJV
 6aBSW8jsBxHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="177727543"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="177727543"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:41 -0800
IronPort-SDR: yhS5DeI4spb1mZSa+UffSze2jnMrLO+gcpsmSLz6M0SaNkkgkTNb2Tpux3wLqwHbSrL3U47msd
 zs3Zv2ayJYOA==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="350939240"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
In-Reply-To: <20201229061532.GB11717@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1608648128.git.jani.nikula@intel.com>
 <4bf586da0ac828353940c0d5a643bacbb4399d7b.1608648128.git.jani.nikula@intel.com>
 <20201229061532.GB11717@intel.com>
Date: Fri, 08 Jan 2021 19:45:36 +0200
Message-ID: <87ft3bxqyn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/pps: rename
 intel_edp_panel_* to intel_pps_*
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 29 Dec 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
>>  /*
>> - * Must be paired with intel_edp_panel_vdd_off() or
>> - * intel_edp_panel_off().
>> + * Must be paired with intel_pps_vdd_off() or
> IMHO can we change the comment, there is no function with name intel_pps_vdd_off()

Fixed in v2.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
