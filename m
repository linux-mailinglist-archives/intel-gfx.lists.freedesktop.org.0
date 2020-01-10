Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC12E13762D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D117F6EA8B;
	Fri, 10 Jan 2020 18:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8637C89EEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:39:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 10:39:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="216757390"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 10 Jan 2020 10:39:22 -0800
Date: Fri, 10 Jan 2020 10:39:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20200110183922.GR2244136@mdroper-desk1.amr.corp.intel.com>
References: <3c13b232-e477-c4c6-c937-74323d53b607@redhat.com>
 <20200110181123.14536-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110181123.14536-1-vivek.kasireddy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Parse the I2C element from
 the VBT MIPI sequence block (v3)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 10, 2020 at 10:11:23AM -0800, Vivek Kasireddy wrote:
> Parsing the i2c element is mainly done to transfer the payload from the
> MIPI sequence block to the relevant slave device. In some cases, the
> commands that are part of the payload can be used to turn on the backligh=
t.
> =

> This patch is actually a refactored version of this old patch:
> https://lists.freedesktop.org/archives/intel-gfx/2014-December/056897.html
> =

> In addition to the refactoring, the original patch is augmented by lookin=
g up
> the i2c bus from ACPI NS instead of relying on the bus number provided
> in the VBT.
> =

> This patch was tested on Aava Mobile's Inari 10 tablet. It enabled
> turning on the backlight by transfering the payload to the device.
> =

> v2:
> - Add DRM_DEV_ERROR for invalid adapter and failed transfer and also
>   drop the DRM_DEBUG that existed originally. (Hans)
> - Add two gotos instead of one to clean things up properly.
> =

> v3:
> - Identify the device on which this patch was tested in the commit
>   message (Ville)
> =

> Cc: Hans de Goede <hdegoede@redhat.com>
> Cc: Nabendu Maiti <nabendu.bikash.maiti@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Bob Paauwe <bob.j.paauwe@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>

Since v3 is identical to v2 except for the commit message, I think we
can apply this based on v2's CI results.  The only CI failure was an
incomplete on a non-DSI TGL system and the incomplete happened long
after the VBT parsing changes here would have had any effect.

Applied to dinq.  Thanks for the patch and review.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 99 +++++++++++++++++++-
>  2 files changed, 100 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i=
915/display/intel_dsi.h
> index 7481a5aa3084..6cef1356b4e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -69,6 +69,9 @@ struct intel_dsi {
>  	/* number of DSI lanes */
>  	unsigned int lane_count;
>  =

> +	/* i2c bus associated with the slave device */
> +	int i2c_bus_num;
> +
>  	/*
>  	 * video mode pixel format
>  	 *
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/d=
rm/i915/display/intel_dsi_vbt.c
> index 0032161e0f76..89fb0d90b694 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -86,6 +86,12 @@ static struct gpio_map vlv_gpio_table[] =3D {
>  	{ VLV_GPIO_NC_11_PANEL1_BKLTCTL },
>  };
>  =

> +struct i2c_adapter_lookup {
> +	u16 slave_addr;
> +	struct intel_dsi *intel_dsi;
> +	acpi_handle dev_handle;
> +};
> +
>  #define CHV_GPIO_IDX_START_N		0
>  #define CHV_GPIO_IDX_START_E		73
>  #define CHV_GPIO_IDX_START_SW		100
> @@ -378,11 +384,98 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *i=
ntel_dsi, const u8 *data)
>  	return data;
>  }
>  =

> +static int i2c_adapter_lookup(struct acpi_resource *ares, void *data)
> +{
> +	struct i2c_adapter_lookup *lookup =3D data;
> +	struct intel_dsi *intel_dsi =3D lookup->intel_dsi;
> +	struct acpi_resource_i2c_serialbus *sb;
> +	struct i2c_adapter *adapter;
> +	acpi_handle adapter_handle;
> +	acpi_status status;
> +
> +	if (intel_dsi->i2c_bus_num >=3D 0 ||
> +	    !i2c_acpi_get_i2c_resource(ares, &sb))
> +		return 1;
> +
> +	if (lookup->slave_addr !=3D sb->slave_address)
> +		return 1;
> +
> +	status =3D acpi_get_handle(lookup->dev_handle,
> +				 sb->resource_source.string_ptr,
> +				 &adapter_handle);
> +	if (ACPI_FAILURE(status))
> +		return 1;
> +
> +	adapter =3D i2c_acpi_find_adapter_by_handle(adapter_handle);
> +	if (adapter)
> +		intel_dsi->i2c_bus_num =3D adapter->nr;
> +
> +	return 1;
> +}
> +
>  static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *da=
ta)
>  {
> -	DRM_DEBUG_KMS("Skipping I2C element execution\n");
> +	struct drm_device *drm_dev =3D intel_dsi->base.base.dev;
> +	struct device *dev =3D &drm_dev->pdev->dev;
> +	struct i2c_adapter *adapter;
> +	struct acpi_device *acpi_dev;
> +	struct list_head resource_list;
> +	struct i2c_adapter_lookup lookup;
> +	struct i2c_msg msg;
> +	int ret;
> +	u8 vbt_i2c_bus_num =3D *(data + 2);
> +	u16 slave_addr =3D *(u16 *)(data + 3);
> +	u8 reg_offset =3D *(data + 5);
> +	u8 payload_size =3D *(data + 6);
> +	u8 *payload_data;
> +
> +	if (intel_dsi->i2c_bus_num < 0) {
> +		intel_dsi->i2c_bus_num =3D vbt_i2c_bus_num;
> +
> +		acpi_dev =3D ACPI_COMPANION(dev);
> +		if (acpi_dev) {
> +			memset(&lookup, 0, sizeof(lookup));
> +			lookup.slave_addr =3D slave_addr;
> +			lookup.intel_dsi =3D intel_dsi;
> +			lookup.dev_handle =3D acpi_device_handle(acpi_dev);
> +
> +			INIT_LIST_HEAD(&resource_list);
> +			acpi_dev_get_resources(acpi_dev, &resource_list,
> +					       i2c_adapter_lookup,
> +					       &lookup);
> +			acpi_dev_free_resource_list(&resource_list);
> +		}
> +	}
>  =

> -	return data + *(data + 6) + 7;
> +	adapter =3D i2c_get_adapter(intel_dsi->i2c_bus_num);
> +	if (!adapter) {
> +		DRM_DEV_ERROR(dev, "Cannot find a valid i2c bus for xfer\n");
> +		goto err_bus;
> +	}
> +
> +	payload_data =3D kzalloc(payload_size + 1, GFP_KERNEL);
> +	if (!payload_data)
> +		goto err_alloc;
> +
> +	payload_data[0] =3D reg_offset;
> +	memcpy(&payload_data[1], (data + 7), payload_size);
> +
> +	msg.addr =3D slave_addr;
> +	msg.flags =3D 0;
> +	msg.len =3D payload_size + 1;
> +	msg.buf =3D payload_data;
> +
> +	ret =3D i2c_transfer(adapter, &msg, 1);
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
>  }
>  =

>  static const u8 *mipi_exec_spi(struct intel_dsi *intel_dsi, const u8 *da=
ta)
> @@ -683,6 +776,8 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, =
u16 panel_id)
>  	intel_dsi->panel_off_delay =3D pps->panel_off_delay / 10;
>  	intel_dsi->panel_pwr_cycle_delay =3D pps->panel_power_cycle_delay / 10;
>  =

> +	intel_dsi->i2c_bus_num =3D -1;
> +
>  	/* a regular driver would get the device in probe */
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		mipi_dsi_attach(intel_dsi->dsi_hosts[port]->device);
> -- =

> 2.21.1
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
