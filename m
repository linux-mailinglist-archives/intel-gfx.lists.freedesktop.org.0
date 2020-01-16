Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA76713FCBB
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 00:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03AB16EF20;
	Thu, 16 Jan 2020 23:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C1C6EF20
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 23:09:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 15:09:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214276025"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 15:09:54 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
 <20200115013143.34961-3-daniele.ceraolospurio@intel.com>
 <op.0eh306txxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <9c1f6b9d-9885-2c3d-b113-8debaeed9e0e@intel.com>
 <op.0eicc2voxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b4be7a7b-dee3-af04-54c8-95f13992e145@intel.com>
Date: Thu, 16 Jan 2020 15:09:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0eicc2voxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/16/20 2:49 PM, Michal Wajdeczko wrote:
>>>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(dev_priv)) {
>>>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&dev_priv->gt.uc)) {
>>> =A0nit: that old macro was helpful exactly in cases where only dev_priv
>>> is known and component might have no idea where to find uc
>>> =A0maybe we should have helper like:
>>> =A0=A0=A0=A0=A0 #define to_intel_uc(i915) (&(i915)->gt.uc)
>>> =A0(but likely Jani will complain)
>>>
>>
>> IMO the problem here is that we shouldn't really be going down to the =

>> uc from the dev_priv level, as intel_uc is now a subfeature of the GT. =

>> We've already removed a lot of the existing checks at the dev_priv =

>> level and this series gets rid of a few more; I guess once they're =

>> reduced enough in number we can consider replacing them with a check =

>> at the GT level.
> =

> so maybe we should introduce right now:
> =

> static inline bool intel_gt_uses_guc_submission(struct intel_gt *gt)
> {
>  =A0=A0=A0=A0return intel_uc_uses_guc_submission(&gt->uc);
> }
> =

> and use it where we operate at gt level
> =


The problem is that with the gvt code is actually initialized before we =

commit to using GuC submission and patch 3 changes the check from uses =

to wants, so that's quite a specific case which I'm not sure is worth =

the helper yet. That's why I wanted to wait until things settle down a =

bit more to understand what was left before adding a high-level "wants" =

helper, which IMO is not the best suited for a GT level check.

Daniele

> Michal
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
