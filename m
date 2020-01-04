Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8346D1303A7
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 17:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F228789F38;
	Sat,  4 Jan 2020 16:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A7389F38
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Jan 2020 16:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578156350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=M0ntccaZX9N5LbyOrU4H7pBy+uxGMAaoU3/JWPt74iI=;
 b=RUKQIm/N2dm+ndHtxbfFV/xdgXgzWdFW+lS1raRV1FpQKAL6mBMuhW91qvNQyMs5qIVob/
 dB3sVynW4Hw+HJUrML7otuUMLvlpMPOzRFb0YOGIL4/W1VWfG8NP5nygLIHHH2ojE0tMYo
 NIll/b8uA4ByeaaIFlEhXHBxXSKli3A=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-jIlnZvaMNPqM5mh1g22qlw-1; Sat, 04 Jan 2020 11:45:46 -0500
Received: by mail-wr1-f70.google.com with SMTP id b13so7032122wrx.22
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Jan 2020 08:45:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M0ntccaZX9N5LbyOrU4H7pBy+uxGMAaoU3/JWPt74iI=;
 b=fLiYn7dl9UPRRuPY45jnf5nK7gJIUI3NHg8TRHtGgGAgkysEvpreMDWcZPgoXtjrfz
 rmMdsm+RYffB4Eafy+fQtSiHPlmmgwbIcFVOtkilnEn8e58Ff7dTVMvVn7wc63fHC/PW
 /bc/cLJUF8ytDJ7Jnekfc+dHTMRMvJI+yr+TmD5L+CnS0KLuddJ0Y6DOKkeUy6g3gnw6
 qqqqtyz/ZyNE7JSddjtlcmTZld8SMUD6Llied+2fCNww8wBTpkFU9osokYQypLd6OhsB
 wGtwEr8CLOqHy/0gRQpF5NW5Q/DRdOTlcVxuwwNj9fxsph5yudbwikePcM5RzsWcepew
 RC1Q==
X-Gm-Message-State: APjAAAVkah7VsNQ4iqnj52GKM5kOj2jQSb2+mbqBAuBr37dARznsBhKt
 UDDUhx5xRS3epJwuRswOymD3WKnVLrex5QB3N81TSVaMGNEKK3pvY/+x3eYZgu1jXD61PUHh+Xj
 jrnc4m56RCet+Da62YBNYmgE37IfG
X-Received: by 2002:a05:600c:10cd:: with SMTP id
 l13mr26666856wmd.102.1578156345271; 
 Sat, 04 Jan 2020 08:45:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqwPqnLafxbz7XKwS0H1ef23fzq8IOOXPCTqAmKCngHLvM1tI/wXC1qoGTB9A+fpImqPEHajHw==
X-Received: by 2002:a05:600c:10cd:: with SMTP id
 l13mr26666841wmd.102.1578156345036; 
 Sat, 04 Jan 2020 08:45:45 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id u14sm64709401wrm.51.2020.01.04.08.45.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 04 Jan 2020 08:45:44 -0800 (PST)
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <f3a97500-7e85-fe0c-e48d-56c93da3dc38@redhat.com>
 <20200104010925.17010-1-vivek.kasireddy@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3c13b232-e477-c4c6-c937-74323d53b607@redhat.com>
Date: Sat, 4 Jan 2020 17:45:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200104010925.17010-1-vivek.kasireddy@intel.com>
Content-Language: en-US
X-MC-Unique: jIlnZvaMNPqM5mh1g22qlw-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Parse the I2C element from
 the VBT MIPI sequence block (v2)
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 04-01-2020 02:09, Vivek Kasireddy wrote:
> Parsing the i2c element is mainly done to transfer the payload from the
> MIPI sequence block to the relevant slave device. In some cases, the
> commands that are part of the payload can be used to turn on the backlight.
> 
> This patch is actually a refactored version of this old patch:
> https://lists.freedesktop.org/archives/intel-gfx/2014-December/056897.html
> 
> In addition to the refactoring, the original patch is augmented by looking up
> the i2c bus from ACPI NS instead of relying on the bus number provided
> in the VBT.
> 
> v2:
> - Add DRM_DEV_ERROR for invalid adapter and failed transfer and also
>    drop the DRM_DEBUG that existed originally. (Hans)
> - Add two gotos instead of one to clean things up properly.
> 
> CC: Hans de Goede <hdegoede@redhat.com>
> Cc: Nabendu Maiti <nabendu.bikash.maiti@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Bob Paauwe <bob.j.paauwe@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>

v2 looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
>   drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +
>   drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 99 +++++++++++++++++++-
>   2 files changed, 100 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
> index b15be5814599..5651bc8aa5c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -68,6 +68,9 @@ struct intel_dsi {
>   	/* number of DSI lanes */
>   	unsigned int lane_count;
>   
> +	/* i2c bus associated with the slave device */
> +	int i2c_bus_num;
> +
>   	/*
>   	 * video mode pixel format
>   	 *
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index f90946c912ee..35fcef7c0d70 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -83,6 +83,12 @@ static struct gpio_map vlv_gpio_table[] = {
>   	{ VLV_GPIO_NC_11_PANEL1_BKLTCTL },
>   };
>   
> +struct i2c_adapter_lookup {
> +	u16 slave_addr;
> +	struct intel_dsi *intel_dsi;
> +	acpi_handle dev_handle;
> +};
> +
>   #define CHV_GPIO_IDX_START_N		0
>   #define CHV_GPIO_IDX_START_E		73
>   #define CHV_GPIO_IDX_START_SW		100
> @@ -375,11 +381,98 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
>   	return data;
>   }
>   
> +static int i2c_adapter_lookup(struct acpi_resource *ares, void *data)
> +{
> +	struct i2c_adapter_lookup *lookup = data;
> +	struct intel_dsi *intel_dsi = lookup->intel_dsi;
> +	struct acpi_resource_i2c_serialbus *sb;
> +	struct i2c_adapter *adapter;
> +	acpi_handle adapter_handle;
> +	acpi_status status;
> +
> +	if (intel_dsi->i2c_bus_num >= 0 ||
> +	    !i2c_acpi_get_i2c_resource(ares, &sb))
> +		return 1;
> +
> +	if (lookup->slave_addr != sb->slave_address)
> +		return 1;
> +
> +	status = acpi_get_handle(lookup->dev_handle,
> +				 sb->resource_source.string_ptr,
> +				 &adapter_handle);
> +	if (ACPI_FAILURE(status))
> +		return 1;
> +
> +	adapter = i2c_acpi_find_adapter_by_handle(adapter_handle);
> +	if (adapter)
> +		intel_dsi->i2c_bus_num = adapter->nr;
> +
> +	return 1;
> +}
> +
>   static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
>   {
> -	DRM_DEBUG_KMS("Skipping I2C element execution\n");
> +	struct drm_device *drm_dev = intel_dsi->base.base.dev;
> +	struct device *dev = &drm_dev->pdev->dev;
> +	struct i2c_adapter *adapter;
> +	struct acpi_device *acpi_dev;
> +	struct list_head resource_list;
> +	struct i2c_adapter_lookup lookup;
> +	struct i2c_msg msg;
> +	int ret;
> +	u8 vbt_i2c_bus_num = *(data + 2);
> +	u16 slave_addr = *(u16 *)(data + 3);
> +	u8 reg_offset = *(data + 5);
> +	u8 payload_size = *(data + 6);
> +	u8 *payload_data;
> +
> +	if (intel_dsi->i2c_bus_num < 0) {
> +		intel_dsi->i2c_bus_num = vbt_i2c_bus_num;
> +
> +		acpi_dev = ACPI_COMPANION(dev);
> +		if (acpi_dev) {
> +			memset(&lookup, 0, sizeof(lookup));
> +			lookup.slave_addr = slave_addr;
> +			lookup.intel_dsi = intel_dsi;
> +			lookup.dev_handle = acpi_device_handle(acpi_dev);
> +
> +			INIT_LIST_HEAD(&resource_list);
> +			acpi_dev_get_resources(acpi_dev, &resource_list,
> +					       i2c_adapter_lookup,
> +					       &lookup);
> +			acpi_dev_free_resource_list(&resource_list);
> +		}
> +	}
>   
> -	return data + *(data + 6) + 7;
> +	adapter = i2c_get_adapter(intel_dsi->i2c_bus_num);
> +	if (!adapter) {
> +		DRM_DEV_ERROR(dev, "Cannot find a valid i2c bus for xfer\n");
> +		goto err_bus;
> +	}
> +
> +	payload_data = kzalloc(payload_size + 1, GFP_KERNEL);
> +	if (!payload_data)
> +		goto err_alloc;
> +
> +	payload_data[0] = reg_offset;
> +	memcpy(&payload_data[1], (data + 7), payload_size);
> +
> +	msg.addr = slave_addr;
> +	msg.flags = 0;
> +	msg.len = payload_size + 1;
> +	msg.buf = payload_data;
> +
> +	ret = i2c_transfer(adapter, &msg, 1);
> +	if (ret < 0)
> +		DRM_DEV_ERROR(dev,
> +			      "Failed to xfer payload of size (%u) to reg (%u)\n",
> +			      payload_size, reg_offset);
> +
> +	kfree(payload_data);
> +err_alloc:
> +	i2c_put_adapter(adapter);
> +err_bus:
> +	return data + payload_size + 7;
>   }
>   
>   static const u8 *mipi_exec_spi(struct intel_dsi *intel_dsi, const u8 *data)
> @@ -664,6 +757,8 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
>   	intel_dsi->panel_off_delay = pps->panel_off_delay / 10;
>   	intel_dsi->panel_pwr_cycle_delay = pps->panel_power_cycle_delay / 10;
>   
> +	intel_dsi->i2c_bus_num = -1;
> +
>   	/* a regular driver would get the device in probe */
>   	for_each_dsi_port(port, intel_dsi->ports) {
>   		mipi_dsi_attach(intel_dsi->dsi_hosts[port]->device);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
