Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AA93B95A9
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 19:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC956E055;
	Thu,  1 Jul 2021 17:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0646E055
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 17:46:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="205579079"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="205579079"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 10:46:47 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="457757738"
Received: from aebanas-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.38.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 10:46:46 -0700
Date: Thu, 1 Jul 2021 10:46:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20210701174643.ufr2tmpsanjd4ods@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210630230624.25407-1-anusha.srivatsa@intel.com>
 <20210701000114.smjdtszhfx24gkkj@ldmartin-desk2>
 <d8855d661aea7e6b3dc70ea378efd5c5f9cec3c4.camel@intel.com>
 <20210701001752.3oag6zry5w35m4xl@ldmartin-desk2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210701001752.3oag6zry5w35m4xl@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use RUNTIME_INFO->stp for DMC
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 30, 2021 at 05:17:52PM -0700, Lucas De Marchi wrote:
>On Wed, Jun 30, 2021 at 05:15:00PM -0700, Jose Souza wrote:
>>On Wed, 2021-06-30 at 17:01 -0700, Lucas De Marchi wrote:
>>>Typo: RUNTIME_INFO->stp
>>>
>>>On Wed, Jun 30, 2021 at 04:06:24PM -0700, Anusha Srivatsa wrote:
>>>> On the dmc side,we maintain a lookup table with different display
>>>> stepping-substepping combinations.
>>>>
>>>> Instead of adding new table for every new platform, lets ues
>>>> the stepping info from RUNTIME_INFO(dev_priv)->step
>>>> Adding the helper intel_get_display_step().
>>>>
>>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>>>> ---
>>>> drivers/gpu/drm/i915/display/intel_dmc.c | 49 ++++++++++++++++++++++--
>>>> 1 file changed, 45 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> index f8789d4543bf..c7ff7ff3f412 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> @@ -266,14 +266,55 @@ static const struct stepping_info icl_stepping_info[] = {
>>>> };
>>>>
>>>> static const struct stepping_info no_stepping_info = { '*', '*' };
>>>> +struct stepping_info *display_step;
>>>> +
>>>> +static struct stepping_info *
>>>> +intel_get_display_stepping(struct intel_step_info step)
>>>> +{
>>>> +
>>>> +	switch (step.display_step) {
>>>> +	case STEP_A0:
>>>> +		display_step->stepping = 'A';
>>>> +		display_step->substepping = '0';
>>>> +		break;
>>>> +	case STEP_A2:
>>>> +		display_step->stepping = 'A';
>>>> +		display_step->substepping = '2';
>>>> +		break;
>>>> +	case STEP_B0:
>>>> +		display_step->stepping = 'B';
>>>> +		display_step->substepping = '0';
>>>> +		break;
>>>> +	case STEP_B1:
>>>> +		display_step->stepping = 'B';
>>>> +		display_step->substepping = '1';
>>>> +		break;
>>>> +	case STEP_C0:
>>>> +		display_step->stepping = 'C';
>>>> +		display_step->substepping = '0';
>>>> +		break;
>>>> +	case STEP_D0:
>>>> +		display_step->stepping = 'D';
>>>> +		display_step->substepping = '0';
>>>> +		break;
>>>> +	default:
>>>> +		display_step->stepping = '*';
>>>> +		display_step->substepping = '*';
>>>> +		break;
>>>> +	}
>>>
>>>
>>>"crazy" idea that would avoid this type of conversion:
>>>changing the step enum to be:
>>>
>>>
>>>#define make_step(letter, num) (int)(((letter) << 8 ) | (num))
>>>
>>>STEP_A0 = make_step('A', '0'),
>>>STEP_A1 = make_step('A', '1'),
>>
>>Looks a good idea to me, we could also keep it u8 using 4bits for each if there is memory concerns.
>
>humn... indeed. Not much a concern actually, but not having to change
>additional code is already a good thing.
>
>
>I hope no stepping goes beyond Z9 :)

I take that out. Even if we would do (number - 'A'), there is not enough
room in 4bits to handle until Z. In fact we could go only until P8 - so
if we are going that route we will need to have some extra build checks
that we don't go beyond that.

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
