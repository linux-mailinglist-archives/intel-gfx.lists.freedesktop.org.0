Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480E623FF2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 11:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F96510E6D8;
	Thu, 10 Nov 2022 10:35:13 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10AF10E6C2;
 Thu, 10 Nov 2022 10:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668076507; x=1699612507;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=acfCZi49aNWIjXd+to48hKJjnxdc38i66nL5tddRPgI=;
 b=QFQa4EWKawnXX33SjyJaWagikgYmxkNEw25uw/nkE0bK/uFkQMxz/7Zl
 /HrPFIWMTdZhY0mN8LxXImd/+op8NzVcJP5YpJ/P9ZWLkJjnt8CUoYBdO
 wQAZm0toFcgSqe+3FxEFHpo0j51wlA4ljZQ4noS207K1NzXzt/K1z0FIe
 73eXfF9gZBHwummLuyS6834MzUuT3CvM3BBzxraI0pptv88Szupqr3TM5
 fa2rdJbnEDuIM6AqI/82LLoLPZNUSwkgL9zvaleOZKAWyKCl9ntbaCt+U
 IePgNSgOM+QKPgaMvfy6EKIGEwaPuVAySgKZiI7kEtR5nwJDdmpZqtfhk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="373396670"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="373396670"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 02:35:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="966366443"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="966366443"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 10 Nov 2022 02:35:03 -0800
Received: from [10.249.147.250] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.147.250])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2AAAZ255025020; Thu, 10 Nov 2022 10:35:02 GMT
Message-ID: <bd8662e8-57d4-40e9-bba1-d689ed31ce08@intel.com>
Date: Thu, 10 Nov 2022 11:35:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 John Harrison <john.c.harrison@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 Intel-GFX@Lists.FreeDesktop.Org
References: <20221104172525.569913-1-John.C.Harrison@Intel.com>
 <20221104172525.569913-2-John.C.Harrison@Intel.com>
 <6a4d1ac0-a1a0-e1d4-7d83-54b43d226371@intel.com>
 <fabaf9ee-f3fc-c18f-56b3-6d073618da41@linux.intel.com>
 <82055e8f-9bee-2b03-3dce-dcf66c30c903@linux.intel.com>
 <2583bccd-82fd-967a-aec9-e6d3837dbbed@intel.com>
 <1ad6bce7-9626-afa6-d73e-6d8f7a9c4d2a@linux.intel.com>
 <c9742b0f-546f-cccc-021a-7bad68410838@intel.com>
 <ad19d7ce-4102-4f8f-903d-7390b004b2e9@linux.intel.com>
 <67d18d17-8a01-32a1-1ff6-099c708ab290@intel.com>
 <02454937-4213-c558-590f-e1e7c83083e3@intel.com>
 <7f420032-fe96-4d19-886d-b333668e4c5b@linux.intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <7f420032-fe96-4d19-886d-b333668e4c5b@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Add GT oriented dmesg
 output
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
Cc: DRI-Devel@Lists.FreeDesktop.Org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 10.11.2022 10:55, Tvrtko Ursulin wrote:
> 
> On 09/11/2022 19:57, Michal Wajdeczko wrote:
> 
> [snip]
> 
>>> Is it really a problem to merge this patch now to get the process
>>> started? And other sub-components get updated as and when people get the
>>> time to do them? You could maybe even help rather than posting
>>> completely conflicting patch sets that basically duplicate all the
>>> effort for no actual benefit.
>>
>> Instead of merging this patch now, oriented on GT only, I would rather
>> wait until we discuss and plan solution for the all sub-components.
> 
> Yes, agreed.
> 
>> Once that's done (with agreement on naming and output) we can start
>> converting exiting messages.
>>
>> My proposal would be:
>>   - use wrappers per component
> 
> This is passable to me but Jani has raised a concern on IRC that it
> leads to a lot of macro duplication. Which is I think a valid point, but
> which does not have a completely nice solution. Best I heard so far was
> a suggestion from Joonas to add just a single component formatter macro
> and use the existing drm_xxx helpers.
> 
>>   - use lower case names
> 
> I prefer this as well. Even though usual argument is for macros to be
> upper case, I find the improved readability of lower case trumps that.
> 
>>   - don't add colon
> 
> Not sure, when I look at it below it looks a bit not structured enough
> without the colon, but maybe it is just me.
> 
>> #define i915_xxx(_i915, _fmt, ...) \
>>     drm_xxx(&(_i915)->drm, _fmt, ##__VA_ARGS__)
>>
>> #define gt_xxx(_gt, _fmt, ...) \
>>     i915_xxx((_gt)->i915, "GT%u " _fmt, (_gt)->info.id, ..
>>
>> #define guc_xxx(_guc, _fmt, ...) \
>>     gt_xxx(guc_to_gt(_guc), "GuC " _fmt, ..
>>
>> #define ct_xxx(_ct, _fmt, ...) \
>>     guc_xxx(ct_to_guc(_ct), "CTB " _fmt, ..
>>
>> where
>>     xxx = { err, warn, notice, info, dbg }
>>
>> and then for calls like:
>>
>>     i915_err(i915, "Foo failed (%pe)\n", ERR_PTR(err));
>>       gt_err(gt,   "Foo failed (%pe)\n", ERR_PTR(err));
>>      guc_err(guc,  "Foo failed (%pe)\n", ERR_PTR(err));
>>       ct_err(ct,   "Foo failed (%pe)\n", ERR_PTR(err));
> 
> So the macro idea would be like this:
> 
>   drm_err(I915_LOG("Foo failed (%pe)\n", i915), ERR_PTR(err));
>   drm_err(GT_LOG("Foo failed (%pe)\n", gt), ERR_PTR(err));
>   drm_err(GUC_LOG("Foo failed (%pe)\n", guc), ERR_PTR(err));
>   drm_err(CT_LOG("Foo failed (%pe)\n", ct), ERR_PTR(err));
> 
> Each component would just need to define a single macro and not have to
> duplicate all the err, info, warn, notice, ratelimited, once, whatever
> versions. Which is a benefit but it's a quite a bit uglier to read in
> the code.

If there is a choice between having ugly code all over the place and few
more lines with helpers then without any doubts I would pick the latter.

And this seems to be option already used elsewhere, see:

#define dev_err(dev, fmt, ...) \
	dev_printk_index_wrap ...

#define pci_err(pdev, fmt, arg...) \
	dev_err(&(pdev)->dev, fmt, ##arg)

#define drm_err(drm, fmt, ...) \
	__drm_printk((drm), err,, "*ERROR* " fmt, ##__VA_ARGS__)

#define drbd_err(obj, fmt, args...) \
	drbd_printk(KERN_ERR, obj, fmt, ## args)

#define ch7006_err(client, format, ...) \
	dev_err(&client->dev, format, __VA_ARGS__)

#define mthca_err(mdev, format, arg...) \
	dev_err(&mdev->pdev->dev, format, ## arg)

#define ctx_err(ctx, fmt, arg...) \
	cal_err((ctx)->cal, "ctx%u: " fmt, (ctx)->dma_ctx, ##arg)

#define mlx4_err(mdev, format, ...) \
	dev_err(&(mdev)->persist->pdev->dev, format, ##__VA_ARGS__)

...

Michal


[1]
https://elixir.bootlin.com/linux/v6.1-rc4/source/include/linux/dev_printk.h#L143

[2]
https://elixir.bootlin.com/linux/v6.1-rc4/source/include/linux/pci.h#L2485

[3]
https://elixir.bootlin.com/linux/v6.1-rc4/source/include/drm/drm_print.h#L468

[4]
https://elixir.bootlin.com/linux/v6.1-rc4/source/drivers/block/drbd/drbd_int.h#L113

[5]
https://elixir.bootlin.com/linux/v6.1-rc4/source/drivers/gpu/drm/i2c/ch7006_priv.h#L139

[6]
https://elixir.bootlin.com/linux/v6.1-rc4/source/drivers/infiniband/hw/mthca/mthca_dev.h#L377

[7]
https://elixir.bootlin.com/linux/v6.1-rc4/source/drivers/media/platform/ti/cal/cal.h#L279

[8]
https://elixir.bootlin.com/linux/v6.1-rc4/source/drivers/net/ethernet/mellanox/mlx4/mlx4.h#L225

> 
> Perhaps macro could be called something other than XX_LOG to make it
> more readable, don't know.
> 
> Regards,
> 
> Tvrtko
