Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD096EAC4F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1743910EE30;
	Fri, 21 Apr 2023 14:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 695 seconds by postgrey-1.36 at gabe;
 Tue, 18 Apr 2023 01:06:03 UTC
Received: from twspam01.aspeedtech.com (twspam01.aspeedtech.com
 [211.20.114.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8C4810E65A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 01:06:03 +0000 (UTC)
Received: from twspam01.aspeedtech.com (localhost [127.0.0.2] (may be forged))
 by twspam01.aspeedtech.com with ESMTP id 33I0cEu9049085
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 08:38:14 +0800 (GMT-8)
 (envelope-from jammy_huang@aspeedtech.com)
Received: from mail.aspeedtech.com ([192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id 33I0bc1v049048;
 Tue, 18 Apr 2023 08:37:38 +0800 (GMT-8)
 (envelope-from jammy_huang@aspeedtech.com)
Received: from [192.168.2.115] (192.168.2.115) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 18 Apr
 2023 08:53:53 +0800
Message-ID: <17008c40-d1e2-a6ec-5964-ea817ca3b447@aspeedtech.com>
Date: Tue, 18 Apr 2023 08:53:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter
 <daniel.vetter@ffwll.ch>, DRI Development <dri-devel@lists.freedesktop.org>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
 <019d57ab-2717-25bd-897a-5301f245263c@suse.de>
Content-Language: en-US
From: Jammy Huang <jammy_huang@aspeedtech.com>
In-Reply-To: <019d57ab-2717-25bd-897a-5301f245263c@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [192.168.2.115]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 33I0bc1v049048
X-Mailman-Approved-At: Fri, 21 Apr 2023 14:09:20 +0000
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/ast: Use
 drm_aperture_remove_conflicting_pci_framebuffers
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
Cc: linux-fbdev@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

The Intel(x86) CPUs have a separate address space for "IO", but the ARM 
architecture only has "memory", so all IO devices are accessed as if 
they were memory. Which means ARM does not support isolated IO. Here is 
a related discussion on ARM's forum.

https://community.arm.com/support-forums/f/architectures-and-processors-forum/52046/how-to-read-write-an-i-o-port-in-aarch64

Thus, we adapt MMIO only after this patch.


On 2023/4/4 下午 10:45, Thomas Zimmermann wrote:
> Hi,
>
> FYI I have merged patches 1, 6 and 7 of this patchset. They look fine 
> and are worthwhile fixes on their own.
>
> Best regards
> Thomas
>
> Am 11.01.23 um 16:41 schrieb Daniel Vetter:
>> It's just open coded and matches.
>>
>> Note that Thomas said that his version apparently failed for some
>> reason, but hey maybe we should try again.
>>
>> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
>> Cc: Dave Airlie <airlied@redhat.com>
>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>> Cc: Javier Martinez Canillas <javierm@redhat.com>
>> Cc: Helge Deller <deller@gmx.de>
>> Cc: linux-fbdev@vger.kernel.org
>> ---
>>   drivers/gpu/drm/ast/ast_drv.c | 16 +---------------
>>   1 file changed, 1 insertion(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/ast/ast_drv.c 
>> b/drivers/gpu/drm/ast/ast_drv.c
>> index 420fc75c240e..3ac24a780f50 100644
>> --- a/drivers/gpu/drm/ast/ast_drv.c
>> +++ b/drivers/gpu/drm/ast/ast_drv.c
>> @@ -90,27 +90,13 @@ static const struct pci_device_id ast_pciidlist[] 
>> = {
>>     MODULE_DEVICE_TABLE(pci, ast_pciidlist);
>>   -static int ast_remove_conflicting_framebuffers(struct pci_dev *pdev)
>> -{
>> -    bool primary = false;
>> -    resource_size_t base, size;
>> -
>> -    base = pci_resource_start(pdev, 0);
>> -    size = pci_resource_len(pdev, 0);
>> -#ifdef CONFIG_X86
>> -    primary = pdev->resource[PCI_ROM_RESOURCE].flags & 
>> IORESOURCE_ROM_SHADOW;
>> -#endif
>> -
>> -    return drm_aperture_remove_conflicting_framebuffers(base, size, 
>> primary, &ast_driver);
>> -}
>> -
>>   static int ast_pci_probe(struct pci_dev *pdev, const struct 
>> pci_device_id *ent)
>>   {
>>       struct ast_private *ast;
>>       struct drm_device *dev;
>>       int ret;
>>   -    ret = ast_remove_conflicting_framebuffers(pdev);
>> +    ret = drm_aperture_remove_conflicting_pci_framebuffers(pdev, 
>> &ast_driver);
>>       if (ret)
>>           return ret;
>
-- 
Best Regards
Jammy

