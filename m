Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C13213FC68
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 23:49:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 021FC6EEBB;
	Thu, 16 Jan 2020 22:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426CC6EEBB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 22:49:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 14:49:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="306034548"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga001.jf.intel.com with ESMTP; 16 Jan 2020 14:49:42 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.152.108])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 00GMnfws029508; Thu, 16 Jan 2020 22:49:41 GMT
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
 <20200115013143.34961-3-daniele.ceraolospurio@intel.com>
 <op.0eh306txxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <9c1f6b9d-9885-2c3d-b113-8debaeed9e0e@intel.com>
Date: Thu, 16 Jan 2020 23:49:40 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0eicc2voxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <9c1f6b9d-9885-2c3d-b113-8debaeed9e0e@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/guc: Kill USES_GUC_SUBMISSION
 macro
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>>> -    if (USES_GUC_SUBMISSION(dev_priv)) {
>>> +    if (intel_uc_uses_guc_submission(&dev_priv->gt.uc)) {
>>  nit: that old macro was helpful exactly in cases where only dev_priv
>> is known and component might have no idea where to find uc
>>  maybe we should have helper like:
>>       #define to_intel_uc(i915) (&(i915)->gt.uc)
>>  (but likely Jani will complain)
>>
>
> IMO the problem here is that we shouldn't really be going down to the uc  
> from the dev_priv level, as intel_uc is now a subfeature of the GT.  
> We've already removed a lot of the existing checks at the dev_priv level  
> and this series gets rid of a few more; I guess once they're reduced  
> enough in number we can consider replacing them with a check at the GT  
> level.

so maybe we should introduce right now:

static inline bool intel_gt_uses_guc_submission(struct intel_gt *gt)
{
	return intel_uc_uses_guc_submission(&gt->uc);
}

and use it where we operate at gt level

Michal
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
