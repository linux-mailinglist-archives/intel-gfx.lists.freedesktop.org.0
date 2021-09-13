Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5DB408A0A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 13:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF2906E175;
	Mon, 13 Sep 2021 11:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C926E174;
 Mon, 13 Sep 2021 11:21:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="307193506"
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="307193506"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 04:21:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,288,1624345200"; d="scan'208";a="528003173"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga004.fm.intel.com with ESMTP; 13 Sep 2021 04:21:14 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 12:21:13 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Mon, 13 Sep 2021 16:51:12 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 4/6] drm/edid: parse the DisplayID v2.0 VESA vendor
 block for MSO
Thread-Index: AQHXnnMP3ZkKGG/hO0qHTdOFN1KAfKuhjZ7Q///dN4CAAHTBUA==
Date: Mon, 13 Sep 2021 11:21:11 +0000
Message-ID: <5bea734572a341f3bc8ca721718a18a3@intel.com>
References: <cover.1630419362.git.jani.nikula@intel.com>
 <73ca2887e7b37880690f5c9ba4594c9cd1170669.1630419362.git.jani.nikula@intel.com>
 <264db723a9c34755bd8c2a052e3e5bf6@intel.com> <87wnnk3jro.fsf@intel.com>
In-Reply-To: <87wnnk3jro.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/edid: parse the DisplayID v2.0
 VESA vendor block for MSO
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, September 13, 2021 3:00 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org; ville.syrjala@linux.intel.com
> Subject: RE: [PATCH v2 4/6] drm/edid: parse the DisplayID v2.0 VESA vendo=
r block
> for MSO
>=20
> On Mon, 13 Sep 2021, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> >> -----Original Message-----
> >> From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Tuesday, August 31, 2021 7:48 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: dri-devel@lists.freedesktop.org; ville.syrjala@linux.intel.com;
> >> Nikula, Jani <jani.nikula@intel.com>
> >> Subject: [PATCH v2 4/6] drm/edid: parse the DisplayID v2.0 VESA
> >> vendor block for MSO
> >>
> >> The VESA Organization Vendor-Specific Data Block, defined in VESA
> >> DisplayID Standard v2.0, specifies the eDP Multi-SST Operation (MSO)
> >> stream count and segment pixel overlap.
> >>
> >> DisplayID v1.3 has Appendix B: DisplayID as an EDID Extension,
> >> describing how DisplayID sections may be embedded in EDID extension
> >> blocks. DisplayID v2.0 does not have such a section, perhaps implying
> >> that DisplayID v2.0 data should not be included in EDID extensions,
> >> but rather in a "pure" DisplayID structure at its own DDC address pair=
 A4h/A5h, as
> described in VESA E-DDC Standard v1.3 chapter 3.
> >>
> >> However, in practice, displays out in the field have embedded
> >> DisplayID
> >> v2.0 data blocks in EDID extensions, including, in particular, some
> >> eDP MSO displays, where a pure DisplayID structure is not available at=
 all.
> >>
> >> Parse the MSO data from the DisplayID data block. Do it as part of
> >> drm_add_display_info(), extending it to parse also DisplayID data to
> >> avoid requiring extra calls to update the information.
> >>
> >> v2: Check for VESA OUI (Ville)
> >>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/drm_edid.c  | 72
> >> +++++++++++++++++++++++++++++++++++++
> >>  include/drm/drm_connector.h | 12 +++++++
> >> include/drm/drm_displayid.h | 13
> >> +++++++
> >>  3 files changed, 97 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> >> index 92974b1478bc..c45c225267ca 100644
> >> --- a/drivers/gpu/drm/drm_edid.c
> >> +++ b/drivers/gpu/drm/drm_edid.c
> >> @@ -28,6 +28,7 @@
> >>   * DEALINGS IN THE SOFTWARE.
> >>   */
> >>
> >> +#include <linux/bitfield.h>
> >>  #include <linux/hdmi.h>
> >>  #include <linux/i2c.h>
> >>  #include <linux/kernel.h>
> >> @@ -5145,6 +5146,71 @@ void drm_get_monitor_range(struct
> >> drm_connector *connector,
> >>  		      info->monitor_range.max_vfreq);  }
> >>
> >> +static void drm_parse_vesa_mso_data(struct drm_connector *connector,
> >> +				    const struct displayid_block *block) {
> >> +	struct displayid_vesa_vendor_specific_block *vesa =3D
> >> +		(struct displayid_vesa_vendor_specific_block *)block;
> >> +	struct drm_display_info *info =3D &connector->display_info;
> >> +
> >> +	if (block->num_bytes < 3) {
> >> +		drm_dbg_kms(connector->dev, "Unexpected vendor block size
> >> %u\n",
> >> +			    block->num_bytes);
> >> +		return;
> >> +	}
> >> +
> >> +	if (oui(vesa->oui[0], vesa->oui[1], vesa->oui[2]) !=3D VESA_IEEE_OUI=
)
> >> +		return;
> >> +
> >> +	if (sizeof(*vesa) !=3D sizeof(*block) + block->num_bytes) {
> >> +		drm_dbg_kms(connector->dev, "Unexpected VESA vendor block
> >> size\n");
> >> +		return;
> >> +	}
> >> +
> >> +	switch (FIELD_GET(DISPLAYID_VESA_MSO_MODE, vesa->mso)) {
> >> +	default:
> >> +		drm_dbg_kms(connector->dev, "Reserved MSO mode value\n");
> >> +		fallthrough;
> >> +	case 0:
> >> +		info->mso_stream_count =3D 0;
> >> +		break;
> >> +	case 1:
> >> +		info->mso_stream_count =3D 2; /* 2 or 4 links */
> >> +		break;
> >> +	case 2:
> >> +		info->mso_stream_count =3D 4; /* 4 links */
> >> +		break;
> >> +	}
> >> +
> >> +	if (!info->mso_stream_count) {
> >> +		info->mso_pixel_overlap =3D 0;
> >> +		return;
> >> +	}
> >> +
> >> +	info->mso_pixel_overlap =3D FIELD_GET(DISPLAYID_VESA_MSO_OVERLAP,
> >> vesa->mso);
> >> +	if (info->mso_pixel_overlap > 8) {
> >> +		drm_dbg_kms(connector->dev, "Reserved MSO pixel overlap value
> >> %u\n",
> >> +			    info->mso_pixel_overlap);
> >> +		info->mso_pixel_overlap =3D 8;
> >
> > Going beyond 8 is not right from a vendor perspective as it goes into r=
eserved
> region.
> > Should we not just set to 0 or how we decide that we fixed overlap at
> > 8. It seems an undefined operation and it may vary from sink to sink.
>=20
> I don't know if there's a right choice here. I don't mind setting it to
> 0 if you prefer that.

I feel it will be wrong on a vendor's behalf if he programs anything above =
8. But not sure what
should driver do in such case, it's an undefined behavior. If he intentiona=
lly programs it as say 20,
fixing at 8 will still lead to some artifacts. 0 only helps in case where t=
his field is corrupted and has
garbage data.

No strong objection, I will leave to your discretion Jani.

With this, all else looks good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Regards,
Uma Shankar

> BR,
> Jani.
>=20
>=20
> >
> > Regards,
> > Uma Shankar
> >
> >> +	}
> >> +
> >> +	drm_dbg_kms(connector->dev, "MSO stream count %u, pixel overlap %u\n=
",
> >> +		    info->mso_stream_count, info->mso_pixel_overlap); }
> >> +
> >> +static void drm_update_mso(struct drm_connector *connector, const
> >> +struct edid *edid) {
> >> +	const struct displayid_block *block;
> >> +	struct displayid_iter iter;
> >> +
> >> +	displayid_iter_edid_begin(edid, &iter);
> >> +	displayid_iter_for_each(block, &iter) {
> >> +		if (block->tag =3D=3D DATA_BLOCK_2_VENDOR_SPECIFIC)
> >> +			drm_parse_vesa_mso_data(connector, block);
> >> +	}
> >> +	displayid_iter_end(&iter);
> >> +}
> >> +
> >>  /* A connector has no EDID information, so we've got no EDID to
> >> compute quirks from. Reset
> >>   * all of the values which would have been set from EDID
> >>   */
> >> @@ -5168,6 +5234,9 @@ drm_reset_display_info(struct drm_connector
> >> *connector)
> >>
> >>  	info->non_desktop =3D 0;
> >>  	memset(&info->monitor_range, 0, sizeof(info->monitor_range));
> >> +
> >> +	info->mso_stream_count =3D 0;
> >> +	info->mso_pixel_overlap =3D 0;
> >>  }
> >>
> >>  u32 drm_add_display_info(struct drm_connector *connector, const
> >> struct edid
> >> *edid) @@ -5246,6 +5315,9 @@ u32 drm_add_display_info(struct
> >> drm_connector *connector, const struct edid *edi
> >>  		info->color_formats |=3D DRM_COLOR_FORMAT_YCRCB444;
> >>  	if (edid->features & DRM_EDID_FEATURE_RGB_YCRCB422)
> >>  		info->color_formats |=3D DRM_COLOR_FORMAT_YCRCB422;
> >> +
> >> +	drm_update_mso(connector, edid);
> >> +
> >>  	return quirks;
> >>  }
> >>
> >> diff --git a/include/drm/drm_connector.h
> >> b/include/drm/drm_connector.h index 79fa34e5ccdb..379746d3266f 100644
> >> --- a/include/drm/drm_connector.h
> >> +++ b/include/drm/drm_connector.h
> >> @@ -590,6 +590,18 @@ struct drm_display_info {
> >>  	 * @monitor_range: Frequency range supported by monitor range descri=
ptor
> >>  	 */
> >>  	struct drm_monitor_range_info monitor_range;
> >> +
> >> +	/**
> >> +	 * @mso_stream_count: eDP Multi-SST Operation (MSO) stream count fro=
m
> >> +	 * the DisplayID VESA vendor block. 0 for conventional Single-Stream
> >> +	 * Transport (SST), or 2 or 4 MSO streams.
> >> +	 */
> >> +	u8 mso_stream_count;
> >> +
> >> +	/**
> >> +	 * @mso_pixel_overlap: eDP MSO segment pixel overlap, 0-8 pixels.
> >> +	 */
> >> +	u8 mso_pixel_overlap;
> >>  };
> >>
> >>  int drm_display_info_set_bus_formats(struct drm_display_info *info,
> >> diff --git a/include/drm/drm_displayid.h
> >> b/include/drm/drm_displayid.h index
> >> 79771091771a..7ffbd9f7bfc7 100644
> >> --- a/include/drm/drm_displayid.h
> >> +++ b/include/drm/drm_displayid.h
> >> @@ -23,9 +23,12 @@
> >>  #define DRM_DISPLAYID_H
> >>
> >>  #include <linux/types.h>
> >> +#include <linux/bits.h>
> >>
> >>  struct edid;
> >>
> >> +#define VESA_IEEE_OUI				0x3a0292
> >> +
> >>  /* DisplayID Structure versions */
> >>  #define DISPLAY_ID_STRUCTURE_VER_12		0x12
> >>  #define DISPLAY_ID_STRUCTURE_VER_20		0x20
> >> @@ -126,6 +129,16 @@ struct displayid_detailed_timing_block {
> >>  	struct displayid_detailed_timings_1 timings[];  };
> >>
> >> +#define DISPLAYID_VESA_MSO_OVERLAP	GENMASK(3, 0)
> >> +#define DISPLAYID_VESA_MSO_MODE		GENMASK(6, 5)
> >> +
> >> +struct displayid_vesa_vendor_specific_block {
> >> +	struct displayid_block base;
> >> +	u8 oui[3];
> >> +	u8 data_structure_type;
> >> +	u8 mso;
> >> +} __packed;
> >> +
> >>  /* DisplayID iteration */
> >>  struct displayid_iter {
> >>  	const struct edid *edid;
> >> --
> >> 2.30.2
> >
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
