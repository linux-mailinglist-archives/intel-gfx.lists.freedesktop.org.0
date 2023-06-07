Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4307253FA
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 08:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 305C910E432;
	Wed,  7 Jun 2023 06:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 189.cn (ptr.189.cn [183.61.185.101])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFF9B10E035;
 Wed,  7 Jun 2023 06:16:41 +0000 (UTC)
HMM_SOURCE_IP: 10.64.8.43:37502.551464108
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
 by 189.cn (HERMES) with SMTP id 0EAFE1002C5;
 Wed,  7 Jun 2023 14:16:34 +0800 (CST)
Received: from  ([114.242.206.180])
 by gateway-151646-dep-75648544bd-7vx9t with ESMTP id
 63d46740575b4bae9c59180969e45e00 for helgaas@kernel.org; 
 Wed, 07 Jun 2023 14:16:39 CST
X-Transaction-ID: 63d46740575b4bae9c59180969e45e00
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Message-ID: <a540daba-d61f-1de0-a3dd-eab733a25706@189.cn>
Date: Wed, 7 Jun 2023 14:16:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20230606194921.GA1139774@bhelgaas>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <20230606194921.GA1139774@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] vgaarb: various coding style and
 comments fix
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
Cc: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>,
 Karol Herbst <kherbst@redhat.com>, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, YiPeng Chai <YiPeng.Chai@amd.com>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Sui Jingfeng <suijingfeng@loongson.cn>, David Airlie <airlied@gmail.com>,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Ben Skeggs <bskeggs@redhat.com>, linux-pci@vger.kernel.org,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Kevin Tian <kevin.tian@intel.com>, Lijo Lazar <lijo.lazar@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Bokun Zhang <Bokun.Zhang@amd.com>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 loongson-kernel@lists.loongnix.cn, Abhishek Sahu <abhsahu@nvidia.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Yishai Hadas <yishaih@nvidia.com>, Li Yi <liyi@loongson.cn>,
 Pan Xinhui <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Cornelia Huck <cohuck@redhat.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian Konig <christian.koenig@amd.com>,
 Hawking Zhang <Hawking.Zhang@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2023/6/7 03:49, Bjorn Helgaas wrote:
> Match the subject line style:
>
>    $ git log --oneline drivers/pci/vgaarb.c
>    f321c35feaee PCI/VGA: Replace full MIT license text with SPDX identifier
>    d5109fe4d1ec PCI/VGA: Use unsigned format string to print lock counts
>    4e6c91847a7f PCI/VGA: Log bridge control messages when adding devices
>    dc593fd48abb PCI/VGA: Remove empty vga_arb_device_card_gone()
>    ...
>
> Subject line should be a summary of the commit log, not just "various
> style fixes".  This one needs to say something about
> vga_str_to_iostate().

Ok, thanks for the educating .

> On Mon, Jun 05, 2023 at 04:58:30AM +0800, Sui Jingfeng wrote:
>> From: Sui Jingfeng <suijingfeng@loongson.cn>
>>
>> To keep consistent with vga_iostate_to_str() function, the third argument
>> of vga_str_to_iostate() function should be 'unsigned int *'.
>>
>> Signed-off-by: Sui Jingfeng <suijingfeng@loongson.cn>
>> ---
>>   drivers/pci/vgaarb.c   | 29 +++++++++++++++--------------
>>   include/linux/vgaarb.h |  8 +++-----
>>   2 files changed, 18 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/pci/vgaarb.c b/drivers/pci/vgaarb.c
>> index 5a696078b382..e40e6e5e5f03 100644
>> --- a/drivers/pci/vgaarb.c
>> +++ b/drivers/pci/vgaarb.c
>> @@ -61,7 +61,6 @@ static bool vga_arbiter_used;
>>   static DEFINE_SPINLOCK(vga_lock);
>>   static DECLARE_WAIT_QUEUE_HEAD(vga_wait_queue);
>>   
>> -
>>   static const char *vga_iostate_to_str(unsigned int iostate)
>>   {
>>   	/* Ignore VGA_RSRC_IO and VGA_RSRC_MEM */
>> @@ -77,10 +76,12 @@ static const char *vga_iostate_to_str(unsigned int iostate)
>>   	return "none";
>>   }
>>   
>> -static int vga_str_to_iostate(char *buf, int str_size, int *io_state)
>> +static int vga_str_to_iostate(char *buf, int str_size, unsigned int *io_state)
>>   {
>> -	/* we could in theory hand out locks on IO and mem
>> -	 * separately to userspace but it can cause deadlocks */
>> +	/*
>> +	 * we could in theory hand out locks on IO and mem
>> +	 * separately to userspace but it can cause deadlocks
>> +	 */
> Omit all the comment formatting changes.  They are distractions from the
> vga_str_to_iostate() parameter change.
>
> I think this patch should be the single line change to the
> vga_str_to_iostate() prototype so it matches the callers.
>
> If you want to do the other comment formatting changes, they're fine,
> but they should be all together in a separate patch that clearly
> doesn't change the generated code.

Ok, no problem.

Will be improved at next version.

> Bjorn
