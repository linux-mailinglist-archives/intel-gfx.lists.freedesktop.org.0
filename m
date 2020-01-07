Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A62132F91
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 20:36:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE4C6E090;
	Tue,  7 Jan 2020 19:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 442346E130
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 19:36:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 11:36:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,407,1571727600"; d="scan'208";a="370714150"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 07 Jan 2020 11:36:11 -0800
Date: Tue, 7 Jan 2020 11:36:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200107193611.GP1762291@mdroper-desk1.amr.corp.intel.com>
References: <20200103000050.8223-1-vivek.kasireddy@intel.com>
 <f3a97500-7e85-fe0c-e48d-56c93da3dc38@redhat.com>
 <20200103160054.1086df08@vkasired-desk2.fm.intel.com>
 <20200107164904.GG1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107164904.GG1208@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 07, 2020 at 06:49:04PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Jan 03, 2020 at 04:00:54PM -0800, Vivek Kasireddy wrote:
> > On Fri, 3 Jan 2020 12:05:11 +0100
> > Hans de Goede <hdegoede@redhat.com> wrote:
> > Hi Hans,
> > =

> > > Hi Vivek,
> > > =

> > > On 03-01-2020 01:00, Vivek Kasireddy wrote:
> > > > Parsing the i2c element is mainly done to transfer the payload from
> > > > the MIPI sequence block to the relevant slave device. In some
> > > > cases, the commands that are part of the payload can be used to
> > > > turn on the backlight.
> > > > =

> > > > This patch is actually a refactored version of this old patch:
> > > > https://lists.freedesktop.org/archives/intel-gfx/2014-December/0568=
97.html
> > > > =

> > > > In addition to the refactoring, the old patch is augmented by
> > > > looking up the i2c bus from ACPI NS instead of relying on the bus
> > > > number provided in the VBT.
> > > > =

> > > > Cc: Deepak M <m.deepak@intel.com>
> > > > Cc: Nabendu Maiti <nabendu.bikash.maiti@intel.com>
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Cc: Bob Paauwe <bob.j.paauwe@intel.com>
> > > > Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>  =

> > > =

> > > Thank you for this patch, I have been doing a lot of work to make
> > > DSI panels on Bay Trail and Cherry Trail devices work better, as such
> > > I've done a lot of testing of DSI panels. But I have never seen any
> > > MIPI sequences actually use the i2c commands. May I ask how you have
> > > tested this? Do you have a device which actually uses the i2c
> > > commands?
> > Oh, they sure exist; we do have a device that uses i2c commands to turn
> > on the backlight that we have tested this patch on. =

> =

> And what exactly is that device? That is valuable information that the
> commit message should contain.

I'm not sure if we're allowed to disclose that information.  I believe
Vivek is working with an engineering sample and the device itself might
not have been publicly announced by the device manufacturer yet.


Matt

> =

> > =

> > > =

> > > I also have some small review comments inline:
> > > =

> > > > ---
> > > >   drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +
> > > >   drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 93
> > > > ++++++++++++++++++++ 2 files changed, 96 insertions(+)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h
> > > > b/drivers/gpu/drm/i915/display/intel_dsi.h index
> > > > b15be5814599..5651bc8aa5c2 100644 ---
> > > > a/drivers/gpu/drm/i915/display/intel_dsi.h +++
> > > > b/drivers/gpu/drm/i915/display/intel_dsi.h @@ -68,6 +68,9 @@ struct
> > > > intel_dsi { /* number of DSI lanes */
> > > >   	unsigned int lane_count;
> > > >   =

> > > > +	/* i2c bus associated with the slave device */
> > > > +	int i2c_bus_num;
> > > > +
> > > >   	/*
> > > >   	 * video mode pixel format
> > > >   	 *
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> > > > b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c index
> > > > f90946c912ee..60441a5a3dba 100644 ---
> > > > a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c +++
> > > > b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c @@ -83,6 +83,12 @@
> > > > static struct gpio_map vlv_gpio_table[] =3D { {
> > > > VLV_GPIO_NC_11_PANEL1_BKLTCTL }, };
> > > >   =

> > > > +struct i2c_adapter_lookup {
> > > > +	u16 slave_addr;
> > > > +	struct intel_dsi *intel_dsi;
> > > > +	acpi_handle dev_handle;
> > > > +};
> > > > +
> > > >   #define CHV_GPIO_IDX_START_N		0
> > > >   #define CHV_GPIO_IDX_START_E		73
> > > >   #define CHV_GPIO_IDX_START_SW		100
> > > > @@ -375,8 +381,93 @@ static const u8 *mipi_exec_gpio(struct
> > > > intel_dsi *intel_dsi, const u8 *data) return data;
> > > >   }
> > > >   =

> > > > +static int i2c_adapter_lookup(struct acpi_resource *ares, void
> > > > *data) +{
> > > > +	struct i2c_adapter_lookup *lookup =3D data;
> > > > +	struct intel_dsi *intel_dsi =3D lookup->intel_dsi;
> > > > +	struct acpi_resource_i2c_serialbus *sb;
> > > > +	struct i2c_adapter *adapter;
> > > > +	acpi_handle adapter_handle;
> > > > +	acpi_status status;
> > > > +
> > > > +	if (intel_dsi->i2c_bus_num >=3D 0 ||
> > > > +	    !i2c_acpi_get_i2c_resource(ares, &sb))
> > > > +		return 1;
> > > > +
> > > > +	if (lookup->slave_addr !=3D sb->slave_address)
> > > > +		return 1;
> > > > +
> > > > +	status =3D acpi_get_handle(lookup->dev_handle,
> > > > +				 sb->resource_source.string_ptr,
> > > > +				 &adapter_handle);
> > > > +	if (ACPI_FAILURE(status))
> > > > +		return 1;
> > > > +
> > > > +	adapter =3D i2c_acpi_find_adapter_by_handle(adapter_handle);
> > > > +	if (adapter)
> > > > +		intel_dsi->i2c_bus_num =3D adapter->nr;
> > > > +
> > > > +	return 1;
> > > > +}
> > > > +
> > > >   static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const
> > > > u8 *data) {
> > > > +	struct drm_device *dev =3D intel_dsi->base.base.dev;
> > > > +	struct i2c_adapter *adapter;
> > > > +	struct acpi_device *acpi_dev;
> > > > +	struct list_head resource_list;
> > > > +	struct i2c_adapter_lookup lookup;
> > > > +	struct i2c_msg msg;
> > > > +	int ret;
> > > > +	u8 vbt_i2c_bus_num =3D *(data + 2);
> > > > +	u16 slave_addr =3D *(u16 *)(data + 3);
> > > > +	u8 reg_offset =3D *(data + 5);
> > > > +	u8 payload_size =3D *(data + 6);
> > > > +	u8 *payload_data;
> > > > +
> > > > +	if (intel_dsi->i2c_bus_num < 0) {
> > > > +		intel_dsi->i2c_bus_num =3D vbt_i2c_bus_num;
> > > > +
> > > > +		acpi_dev =3D ACPI_COMPANION(&dev->pdev->dev);
> > > > +		if (acpi_dev) {
> > > > +			memset(&lookup, 0, sizeof(lookup));
> > > > +			lookup.slave_addr =3D slave_addr;
> > > > +			lookup.intel_dsi =3D intel_dsi;
> > > > +			lookup.dev_handle =3D
> > > > acpi_device_handle(acpi_dev); +
> > > > +			INIT_LIST_HEAD(&resource_list);
> > > > +			acpi_dev_get_resources(acpi_dev,
> > > > &resource_list,
> > > > +					       i2c_adapter_lookup,
> > > > +					       &lookup);
> > > > +
> > > > acpi_dev_free_resource_list(&resource_list);
> > > > +		}
> > > > +	}
> > > > +
> > > > +	adapter =3D i2c_get_adapter(intel_dsi->i2c_bus_num);
> > > > +	if (!adapter)
> > > > +		goto out;  =

> > > =

> > > This should never happen, so you should put a DRM_DEV_WARN here.
> > Ok, will do.
> > =

> > > =

> > > > +
> > > > +	payload_data =3D kzalloc(payload_size + 1, GFP_KERNEL);
> > > > +	if (!payload_data)
> > > > +		goto out;
> > > > +
> > > > +	payload_data[0] =3D reg_offset;
> > > > +	memcpy(&payload_data[1], (data + 7), payload_size);
> > > > +
> > > > +	msg.addr =3D slave_addr;
> > > > +	msg.flags =3D 0;
> > > > +	msg.len =3D payload_size + 1;
> > > > +	msg.buf =3D payload_data;
> > > > +
> > > > +	ret =3D i2c_transfer(adapter, &msg, 1);
> > > > +	if (ret < 0)
> > > > +		DRM_ERROR("i2c transfer failed");  =

> > > =

> > > DRM_DEV_ERROR? And maybe some more info, like the register which
> > > the transfer is going to + payload size?
> > Ok, adding extra info makes sense.
> > =

> > > =

> > > > +
> > > > +	kfree(payload_data);
> > > > +	i2c_put_adapter(adapter);
> > > > +  =

> > > =

> > > Just put out here, no need for the DRM_DEBUG (which should no
> > > longer be a debug now that we implement this) below, since we
> > > WARN or ERROR on all goto out; statements above.
> > Ok, will do.
> > =

> > Thanks,
> > Vivek
> > =

> > > =

> > > out:
> > > =

> > > > +	return data + payload_size + 7;  =

> > > =

> > > And drop these 3 lines:
> > > =

> > > > +out:
> > > >   	DRM_DEBUG_KMS("Skipping I2C element execution\n");
> > > >   =

> > > >   	return data + *(data + 6) + 7;  =

> > > =

> > > =

> > > =

> > > > @@ -664,6 +755,8 @@ bool intel_dsi_vbt_init(struct intel_dsi
> > > > *intel_dsi, u16 panel_id) intel_dsi->panel_off_delay =3D
> > > > pps->panel_off_delay / 10; intel_dsi->panel_pwr_cycle_delay =3D
> > > > pps->panel_power_cycle_delay / 10; =

> > > > +	intel_dsi->i2c_bus_num =3D -1;
> > > > +
> > > >   	/* a regular driver would get the device in probe */
> > > >   	for_each_dsi_port(port, intel_dsi->ports) {
> > > >   		mipi_dsi_attach(intel_dsi->dsi_hosts[port]->device);
> > > >   =

> > > =

> > > Regards,
> > > =

> > > Hans
> > > =

> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
