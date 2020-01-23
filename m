Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 024C3146C3B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 16:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 240DF6FD5D;
	Thu, 23 Jan 2020 15:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44286FD5D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 15:02:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19983962-1500050 for multiple; Thu, 23 Jan 2020 15:02:19 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
 <67edac14-e319-a1b2-76a1-1404ca5836e2@intel.com>
In-Reply-To: <67edac14-e319-a1b2-76a1-1404ca5836e2@intel.com>
Message-ID: <157979173710.19995.3438477214193047615@skylake-alporthouse-com>
Date: Thu, 23 Jan 2020 15:02:17 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniele Ceraolo Spurio (2020-01-22 23:52:33)
> 
> 
> On 1/22/20 11:48 AM, Michal Wajdeczko wrote:
> >  From commit 84b1ca2f0e68 ("drm/i915/uc: prefer intel_gt over i915
> > in GuC/HuC paths") we stopped using HUC_STATUS error -ENODEV only
> > to indicate lack of HuC hardware and we started to use this error
> > also for all other cases when HuC was not in use or supported.
> > 
> > Fix that by relying again on HAS_GT_UC macro, since currently
> > used function intel_huc_is_supported() is based on HuC firmware
> > support which could be unsupported also due to force disabled
> > GuC firmware.
> > 
> > Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > Cc: Tony Ye <tony.ye@intel.com>
> 
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Once upon a time did you (Michal) not argue we should indicate the lack
of firmware in the error code? Something like

if (!HAS_GT_UC(gt->i915))
	return -ENODEV;

if (!intel_huc_is_supported(huc))
	return -ENOEXEC;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
