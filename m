Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B2327EF3E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 18:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA8B6E489;
	Wed, 30 Sep 2020 16:31:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4376E4CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 16:31:31 +0000 (UTC)
IronPort-SDR: 4q8lut5rPu2NxCoUmrso11cvRXpeiFZIXc4pWRf+CKWZr+XVuYaEux1932iLmXE9AXIfnJRAOA
 JAACYdYjXroQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="180647533"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="180647533"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:31:29 -0700
IronPort-SDR: HYWdbzaWGyTX4RWpVxFXlgmIoYM5bVsknOpUyNclV8CJRvWz3IrDjDvPoHiLXdrwOpDXFLdvOd
 jDjetlgMYAXA==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="457715588"
Received: from jjgryzlo-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.105.223])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:31:28 -0700
Date: Wed, 30 Sep 2020 09:31:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <20200930163126.6p4d6tfrfxwt7z6c@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200930153016.105711-1-lucas.demarchi@intel.com>
 <CAM0jSHON6C2xvg9DezVYku2Ue-k94SGUZ9269ZZ49PjYqsTW4A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHON6C2xvg9DezVYku2Ue-k94SGUZ9269ZZ49PjYqsTW4A@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: don't conflate is_dgfx with fake
 lmem
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 04:58:42PM +0100, Matthew Auld wrote:
>On Wed, 30 Sep 2020 at 16:30, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>
>> When using fake lmem for tests, we are overriding the setting in
>> device info for dgfx devices. Current users of IS_DGFX() are correct,
>> but as we add support for DG1, we are going to use it in additional
>> places to trigger dgfx-only code path.
>>
>> In future if we need we can use HAS_LMEM() instead of IS_DGFX() in the
>> places that make sense to also contemplate fake lmem use.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.c | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
>> index 45e719c79183..3f6ed142198c 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.c
>> +++ b/drivers/gpu/drm/i915/i915_drv.c
>> @@ -840,9 +840,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>                     i915->params.fake_lmem_start) {
>>                         mkwrite_device_info(i915)->memory_regions =
>>                                 REGION_SMEM | REGION_LMEM | REGION_STOLEN;
>> -                       mkwrite_device_info(i915)->is_dgfx = true;
>>                         GEM_BUG_ON(!HAS_LMEM(i915));
>> -                       GEM_BUG_ON(!IS_DGFX(i915));
>
>Hmm, I guess this could work as an option c) but I think we will also
>need to add something like:
>
>@@ -835,7 +835,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>        u16 snb_gmch_ctl;
>
>        /* TODO: We're not aware of mappable constraints on gen8 yet */
>-       if (!IS_DGFX(i915)) {
>+       if (!IS_DGFX(i915) && !HAS_LMEM(i915)) {
>                ggtt->gmadr = pci_resource(pdev, 2);
>                ggtt->mappable_end = resource_size(&ggtt->gmadr);
>        }
>
>The point is that we need to steal the mappable aperture later(which
>is fine since it doesn't exist on "DGFX"), and use it as a substitute
>for LMEMBAR. The !mappable aperture property is also useful since it
>exercises some other parts of the code too.

humn.. this was actually the one I was on the fence switching to
HAS_LMEM().  It seemed to me we would not need to, but now I understand.

But since !HAS_LMEM() implies !IS_DGFX(), I would rather just replace
the check.

@@ -835,7 +835,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
         u16 snb_gmch_ctl;

         /* TODO: We're not aware of mappable constraints on gen8 yet */
-       if (!IS_DGFX(i915)) {
+       if (!HAS_LMEM(i915)) {
                 ggtt->gmadr = pci_resource(pdev, 2);
                 ggtt->mappable_end = resource_size(&ggtt->gmadr);
         }


Lucas De Marchi

>
>Assuming CI is happy and this unbocks you then,
>Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
