Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7CB1303A6
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 17:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD4E6E463;
	Sat,  4 Jan 2020 16:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D49416E461
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Jan 2020 16:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578156293;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rVEg1pCgTz0x1WPd9GtxR2otkGPveKv4qhhkb6PjKGw=;
 b=Feg0R501vHA61tOBezOM4X83TUY/+1waU66QU8MI4m86A9FkTPzhjpr24i/IPj8ZwoFW+8
 dd8ZQ9/LUXVgKM2paQnA9QONBgsf5rkW6vJh4OiP0XIiZDxWjtbcUoT3TvY84rEI6SQygK
 0H5pvr3T8UZW1Sh/THvp3PAka5BotVQ=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-158-r0BSo9DRO4ahJBqTqTZhyQ-1; Sat, 04 Jan 2020 11:44:51 -0500
Received: by mail-wr1-f69.google.com with SMTP id z15so6856966wrw.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Jan 2020 08:44:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rVEg1pCgTz0x1WPd9GtxR2otkGPveKv4qhhkb6PjKGw=;
 b=nBuHzjJgcm/dCNfCmSge4mgyTaJEpLlkNKiQCCSNatM+pqH+Y/Zhh5OGQoi354F5+T
 7NUcn3Mnpht4jpKUYk9OVtQQfbKTr6iJCmfoUUZ1HobAoroMAhjlnsr/Ar6VmwdBAK8T
 9wb9M1J6kvB9YgjwxGGVjjlYfJM8Y+0u/qC3Eu1FkjBCoxw8nos6Wcqbec0pzyxAaP25
 /IOQjxOCLS/HxHDMmm6oLXBoFQAwfSRuJ4sRQfJizhRt7CbApisDqC4PJA2NOWMdKiND
 uqXoGzzs+8xjBsWy+3T6Oh6ocI+/NagGl2CcTFcXfFx5u3ypzXuyXk4K/REdoPLz6EQE
 gaqQ==
X-Gm-Message-State: APjAAAXKYdRCLw7fRw/87jFTh5HDtPV48v8+3v1heDdnsN4Me5ppKUAf
 9oErMUTIjvTrUvn38lmziOM6ORoSko8M+2AxPeA9M9F3Q9V8oFoycWUxL/n4Hs9ZsRJ4ORXJw47
 Urd4gWGPfM7SlcKvB+dzz/m00Ewgn
X-Received: by 2002:a05:600c:2409:: with SMTP id
 9mr23943881wmp.109.1578156290026; 
 Sat, 04 Jan 2020 08:44:50 -0800 (PST)
X-Google-Smtp-Source: APXvYqwgJSYDYmGsn6ile9WBmW+c1lgJ7O9AHez2DFSgMDF6zDLJiFxf9asBSSlWyQkB4w0ynTmdjA==
X-Received: by 2002:a05:600c:2409:: with SMTP id
 9mr23943865wmp.109.1578156289796; 
 Sat, 04 Jan 2020 08:44:49 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id i5sm16338821wml.31.2020.01.04.08.44.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 04 Jan 2020 08:44:48 -0800 (PST)
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20200103000050.8223-1-vivek.kasireddy@intel.com>
 <f3a97500-7e85-fe0c-e48d-56c93da3dc38@redhat.com>
 <20200103160054.1086df08@vkasired-desk2.fm.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0b4f4d19-fca4-f7be-b438-13c26b64e553@redhat.com>
Date: Sat, 4 Jan 2020 17:44:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200103160054.1086df08@vkasired-desk2.fm.intel.com>
Content-Language: en-US
X-MC-Unique: r0BSo9DRO4ahJBqTqTZhyQ-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Parse the I2C element from
 the VBT MIPI sequence block
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
Cc: Deepak M <m.deepak@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 04-01-2020 01:00, Vivek Kasireddy wrote:
> On Fri, 3 Jan 2020 12:05:11 +0100
> Hans de Goede <hdegoede@redhat.com> wrote:
> Hi Hans,
> 
>> Hi Vivek,
>>
>> On 03-01-2020 01:00, Vivek Kasireddy wrote:
>>> Parsing the i2c element is mainly done to transfer the payload from
>>> the MIPI sequence block to the relevant slave device. In some
>>> cases, the commands that are part of the payload can be used to
>>> turn on the backlight.
>>>
>>> This patch is actually a refactored version of this old patch:
>>> https://lists.freedesktop.org/archives/intel-gfx/2014-December/056897.html
>>>
>>> In addition to the refactoring, the old patch is augmented by
>>> looking up the i2c bus from ACPI NS instead of relying on the bus
>>> number provided in the VBT.
>>>
>>> Cc: Deepak M <m.deepak@intel.com>
>>> Cc: Nabendu Maiti <nabendu.bikash.maiti@intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Bob Paauwe <bob.j.paauwe@intel.com>
>>> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
>>
>> Thank you for this patch, I have been doing a lot of work to make
>> DSI panels on Bay Trail and Cherry Trail devices work better, as such
>> I've done a lot of testing of DSI panels. But I have never seen any
>> MIPI sequences actually use the i2c commands. May I ask how you have
>> tested this? Do you have a device which actually uses the i2c
>> commands?
> Oh, they sure exist; we do have a device that uses i2c commands to turn
> on the backlight that we have tested this patch on.

Ah, ok, good. I was a bit worried this patch was not tested with
any devices actually using the i2c stuff. So I'm happy to hear that it
has been tested.

Regards,

Hans



> 
>>
>> I also have some small review comments inline:
>>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +
>>>    drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 93
>>> ++++++++++++++++++++ 2 files changed, 96 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h
>>> b/drivers/gpu/drm/i915/display/intel_dsi.h index
>>> b15be5814599..5651bc8aa5c2 100644 ---
>>> a/drivers/gpu/drm/i915/display/intel_dsi.h +++
>>> b/drivers/gpu/drm/i915/display/intel_dsi.h @@ -68,6 +68,9 @@ struct
>>> intel_dsi { /* number of DSI lanes */
>>>    	unsigned int lane_count;
>>>    
>>> +	/* i2c bus associated with the slave device */
>>> +	int i2c_bus_num;
>>> +
>>>    	/*
>>>    	 * video mode pixel format
>>>    	 *
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>>> b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c index
>>> f90946c912ee..60441a5a3dba 100644 ---
>>> a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c +++
>>> b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c @@ -83,6 +83,12 @@
>>> static struct gpio_map vlv_gpio_table[] = { {
>>> VLV_GPIO_NC_11_PANEL1_BKLTCTL }, };
>>>    
>>> +struct i2c_adapter_lookup {
>>> +	u16 slave_addr;
>>> +	struct intel_dsi *intel_dsi;
>>> +	acpi_handle dev_handle;
>>> +};
>>> +
>>>    #define CHV_GPIO_IDX_START_N		0
>>>    #define CHV_GPIO_IDX_START_E		73
>>>    #define CHV_GPIO_IDX_START_SW		100
>>> @@ -375,8 +381,93 @@ static const u8 *mipi_exec_gpio(struct
>>> intel_dsi *intel_dsi, const u8 *data) return data;
>>>    }
>>>    
>>> +static int i2c_adapter_lookup(struct acpi_resource *ares, void
>>> *data) +{
>>> +	struct i2c_adapter_lookup *lookup = data;
>>> +	struct intel_dsi *intel_dsi = lookup->intel_dsi;
>>> +	struct acpi_resource_i2c_serialbus *sb;
>>> +	struct i2c_adapter *adapter;
>>> +	acpi_handle adapter_handle;
>>> +	acpi_status status;
>>> +
>>> +	if (intel_dsi->i2c_bus_num >= 0 ||
>>> +	    !i2c_acpi_get_i2c_resource(ares, &sb))
>>> +		return 1;
>>> +
>>> +	if (lookup->slave_addr != sb->slave_address)
>>> +		return 1;
>>> +
>>> +	status = acpi_get_handle(lookup->dev_handle,
>>> +				 sb->resource_source.string_ptr,
>>> +				 &adapter_handle);
>>> +	if (ACPI_FAILURE(status))
>>> +		return 1;
>>> +
>>> +	adapter = i2c_acpi_find_adapter_by_handle(adapter_handle);
>>> +	if (adapter)
>>> +		intel_dsi->i2c_bus_num = adapter->nr;
>>> +
>>> +	return 1;
>>> +}
>>> +
>>>    static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const
>>> u8 *data) {
>>> +	struct drm_device *dev = intel_dsi->base.base.dev;
>>> +	struct i2c_adapter *adapter;
>>> +	struct acpi_device *acpi_dev;
>>> +	struct list_head resource_list;
>>> +	struct i2c_adapter_lookup lookup;
>>> +	struct i2c_msg msg;
>>> +	int ret;
>>> +	u8 vbt_i2c_bus_num = *(data + 2);
>>> +	u16 slave_addr = *(u16 *)(data + 3);
>>> +	u8 reg_offset = *(data + 5);
>>> +	u8 payload_size = *(data + 6);
>>> +	u8 *payload_data;
>>> +
>>> +	if (intel_dsi->i2c_bus_num < 0) {
>>> +		intel_dsi->i2c_bus_num = vbt_i2c_bus_num;
>>> +
>>> +		acpi_dev = ACPI_COMPANION(&dev->pdev->dev);
>>> +		if (acpi_dev) {
>>> +			memset(&lookup, 0, sizeof(lookup));
>>> +			lookup.slave_addr = slave_addr;
>>> +			lookup.intel_dsi = intel_dsi;
>>> +			lookup.dev_handle =
>>> acpi_device_handle(acpi_dev); +
>>> +			INIT_LIST_HEAD(&resource_list);
>>> +			acpi_dev_get_resources(acpi_dev,
>>> &resource_list,
>>> +					       i2c_adapter_lookup,
>>> +					       &lookup);
>>> +
>>> acpi_dev_free_resource_list(&resource_list);
>>> +		}
>>> +	}
>>> +
>>> +	adapter = i2c_get_adapter(intel_dsi->i2c_bus_num);
>>> +	if (!adapter)
>>> +		goto out;
>>
>> This should never happen, so you should put a DRM_DEV_WARN here.
> Ok, will do.
> 
>>
>>> +
>>> +	payload_data = kzalloc(payload_size + 1, GFP_KERNEL);
>>> +	if (!payload_data)
>>> +		goto out;
>>> +
>>> +	payload_data[0] = reg_offset;
>>> +	memcpy(&payload_data[1], (data + 7), payload_size);
>>> +
>>> +	msg.addr = slave_addr;
>>> +	msg.flags = 0;
>>> +	msg.len = payload_size + 1;
>>> +	msg.buf = payload_data;
>>> +
>>> +	ret = i2c_transfer(adapter, &msg, 1);
>>> +	if (ret < 0)
>>> +		DRM_ERROR("i2c transfer failed");
>>
>> DRM_DEV_ERROR? And maybe some more info, like the register which
>> the transfer is going to + payload size?
> Ok, adding extra info makes sense.
> 
>>
>>> +
>>> +	kfree(payload_data);
>>> +	i2c_put_adapter(adapter);
>>> +
>>
>> Just put out here, no need for the DRM_DEBUG (which should no
>> longer be a debug now that we implement this) below, since we
>> WARN or ERROR on all goto out; statements above.
> Ok, will do.
> 
> Thanks,
> Vivek
> 
>>
>> out:
>>
>>> +	return data + payload_size + 7;
>>
>> And drop these 3 lines:
>>
>>> +out:
>>>    	DRM_DEBUG_KMS("Skipping I2C element execution\n");
>>>    
>>>    	return data + *(data + 6) + 7;
>>
>>
>>
>>> @@ -664,6 +755,8 @@ bool intel_dsi_vbt_init(struct intel_dsi
>>> *intel_dsi, u16 panel_id) intel_dsi->panel_off_delay =
>>> pps->panel_off_delay / 10; intel_dsi->panel_pwr_cycle_delay =
>>> pps->panel_power_cycle_delay / 10;
>>> +	intel_dsi->i2c_bus_num = -1;
>>> +
>>>    	/* a regular driver would get the device in probe */
>>>    	for_each_dsi_port(port, intel_dsi->ports) {
>>>    		mipi_dsi_attach(intel_dsi->dsi_hosts[port]->device);
>>>    
>>
>> Regards,
>>
>> Hans
>>
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
