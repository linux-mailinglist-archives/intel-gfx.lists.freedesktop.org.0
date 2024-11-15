Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D73E99CF661
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 21:51:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA93810E173;
	Fri, 15 Nov 2024 20:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB2F10E173;
 Fri, 15 Nov 2024 20:51:21 +0000 (UTC)
Message-ID: <35d58bad-670e-46db-85fa-33d8f97c453e@lankhorst.se>
Date: Fri, 15 Nov 2024 21:51:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] drm/xe/sriov: Move VF bootstrap and query_config to
 vf_guc_init
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten@lankhorst.se>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-6-maarten.lankhorst@linux.intel.com>
 <ZzYguKUVI6DSpNvL@intel.com>
 <4698fb99-209c-4e66-a364-232884bcdf9b@lankhorst.se>
 <ZzebyT2n7Yawvugg@intel.com>
 <ba5aef93-83a9-45f0-8d92-c9871fb264b5@lankhorst.se>
 <Zzeo2Ntxaq3fQgbC@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <Zzeo2Ntxaq3fQgbC@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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



Den 2024-11-15 kl. 21:02, skrev Rodrigo Vivi:
> On Fri, Nov 15, 2024 at 08:50:01PM +0100, Maarten Lankhorst wrote:
>> Hey,
>>
>> Den 2024-11-15 kl. 20:06, skrev Rodrigo Vivi:
>>> On Fri, Nov 15, 2024 at 03:21:43PM +0100, Maarten Lankhorst wrote:
>>>> Hey,
>>>>
>>>> Den 2024-11-14 kl. 17:09, skrev Rodrigo Vivi:
>>>>> On Thu, Nov 07, 2024 at 11:01:37AM +0100, Maarten Lankhorst wrote:
>>>>>> We want to split up GUC init to an alloc and noalloc part to keep the
>>>>>> init path the same for VF and !VF as much as possible.
>>>>>>
>>>>>> Everything in vf_guc_init should be done as early as possible, otherwise
>>>>>> VRAM probing becomes impossible.
>>>>>>
>>>>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>>>> Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-6-maarten.lankhorst@linux.intel.com
>>>>>> Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
>>>>>> ---
>>>>>>    drivers/gpu/drm/xe/xe_gt_sriov_vf.c |  1 -
>>>>>>    drivers/gpu/drm/xe/xe_guc.c         | 17 +++++++++--------
>>>>>>    2 files changed, 9 insertions(+), 9 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
>>>>>> index cca5d57328021..997438047a037 100644
>>>>>> --- a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
>>>>>> +++ b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
>>>>>> @@ -948,7 +948,6 @@ u32 xe_gt_sriov_vf_read32(struct xe_gt *gt, struct xe_reg reg)
>>>>>>    	struct vf_runtime_reg *rr;
>>>>>>    	xe_gt_assert(gt, IS_SRIOV_VF(gt_to_xe(gt)));
>>>>>> -	xe_gt_assert(gt, gt->sriov.vf.pf_version.major);
>>>>>>    	xe_gt_assert(gt, !reg.vf);
>>>>>>    	if (reg.addr == GMD_ID.addr) {
>>>>>> diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
>>>>>> index 7224593c9ce9b..5a050a5379911 100644
>>>>>> --- a/drivers/gpu/drm/xe/xe_guc.c
>>>>>> +++ b/drivers/gpu/drm/xe/xe_guc.c
>>>>>> @@ -301,6 +301,7 @@ static int xe_guc_realloc_post_hwconfig(struct xe_guc *guc)
>>>>>>    static int vf_guc_init(struct xe_guc *guc)
>>>>>>    {
>>>>>> +	struct xe_gt *gt = guc_to_gt(guc);
>>>>>>    	int err;
>>>>>>    	xe_guc_comm_init_early(guc);
>>>>>> @@ -313,6 +314,14 @@ static int vf_guc_init(struct xe_guc *guc)
>>>>>>    	if (err)
>>>>>>    		return err;
>>>>>> +	err = xe_gt_sriov_vf_bootstrap(gt);
>>>>>> +	if (err)
>>>>>> +		return err;
>>>>>> +
>>>>>> +	err = xe_gt_sriov_vf_query_config(gt);
>>>>>> +	if (err)
>>>>>> +		return err;
>>>>>> +
>>>>>>    	return 0;
>>>>>>    }
>>>>>> @@ -753,14 +762,6 @@ static int vf_guc_min_load_for_hwconfig(struct xe_guc *guc)
>>>>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>>>
>>>>> as I believe there was a good reason for these functions to be called this early.
>>>>
>>>> This is in fact called slightly earlier than before. It's now called in xe_uc_init instead of xe_uc_init_hwconfig. :-)
>>>
>>> Oh! Indeed! one step earlier actually... that name min_for_hwconfig got me confused, I'm sorry.
>>>
>>> The only difference that I see now is that this functions are not avoided anymore if xe.force_execlist=1...
>>>
>>> We should probably add some skips inside the function? I know I know we likely have many other bugs
>>> if using force_execlists, but let's at least try to avoid introducing more cases...
>>
>> I don't think it's even possible to use execists in VF mode. :-)
> 
> yeap, it is not... this is why we should ensure these functions are not called, liked
> they were not called before this patch...
Why are we even here with execlists in VF mode? This is insane..

Should refuse to load as soon as VF mode is detected.

Cheers,
~Maarten
