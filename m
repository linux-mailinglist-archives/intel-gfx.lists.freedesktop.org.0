Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC7D184A0B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 15:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B149F6EBE7;
	Fri, 13 Mar 2020 14:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 373526EBE4
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 14:55:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 07:55:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="416318465"
Received: from ebrigham-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.252.14.214])
 by orsmga005.jf.intel.com with ESMTP; 13 Mar 2020 07:55:31 -0700
Date: Fri, 13 Mar 2020 16:55:30 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20200313145530.GA3001@intel.intel>
References: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
 <20200312011631.15262-4-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312011631.15262-4-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915/huc: make "support huc"
 reflect HW capabilities
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

Hi Daniele,

On Wed, Mar 11, 2020 at 06:16:28PM -0700, Daniele Ceraolo Spurio wrote:
> We currently initialize HuC support based on GuC being enabled in
> modparam; this means that huc_is_supported() can return false on HW that
> does have a HuC when enable_guc=0. The rationale for this behavior is
> that HuC requires GuC for authentication and therefore is not supported
> by itself. However, we do not allow defining HuC fw wthout GuC fw and
> selecting HuC in modparam implicitly selects GuC as well, so we can't
> actually hit a scenario where HuC is selected alone. Therefore, we can
> flip the support check to reflect the HW capabilities and fw
> availability, which is more intuitive and will make it cleaner to log
> HuC the difference between not supported in HW and not selected.
> 
> Removing the difference between GuC and HuC also allows us to simplify
> the init_early, since we don't need to differentiate the support based
> on the type of uC.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>

Looks good to me,

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
