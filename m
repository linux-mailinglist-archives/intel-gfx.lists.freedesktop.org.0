Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C45744273FC
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Oct 2021 01:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350B76E072;
	Fri,  8 Oct 2021 23:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C6DC6E072
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 23:03:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="290103292"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="290103292"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 16:03:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="489648004"
Received: from ypeng18-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.40.52])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 16:03:34 -0700
Date: Sat, 9 Oct 2021 01:03:31 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Dale B Stimson <dale.b.stimson@intel.com>
Message-ID: <YWDOQ/wEs1KmIUNi@intel.intel>
References: <20211008204454.11680-1-sujaritha.sundaresan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211008204454.11680-1-sujaritha.sundaresan@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] RFC : drm/i915: Adding new sysfs
 frequency attributes
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

Hi Sujaritha,

On Fri, Oct 08, 2021 at 01:44:54PM -0700, Sujaritha Sundaresan wrote:
> This patch adds the following new sysfs frequency attributes;
> 	- punit_req_freq_mhz
> 	- throttle_reason_status
> 	- throttle_reason_pl1
> 	- throttle_reason_pl2
> 	- throttle_reason_pl4
> 	- throttle_reason_thermal
> 	- throttle_reason_prochot
> 	- throttle_reason_ratl
> 	- throttle_reason_vr_thermalert
> 	- throttle_reason_vr_tdc
> 
> Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
> Cc: Dale B Stimson <dale.b.stimson@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c |  83 +++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_rps.h |  10 +++
>  drivers/gpu/drm/i915/i915_reg.h     |  11 +++
>  drivers/gpu/drm/i915/i915_sysfs.c   | 135 ++++++++++++++++++++++++++++

if we add these here we're stuck forever! Can this hold a few
days?

The rest of the patch looks OK to me.

Andi
