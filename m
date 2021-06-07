Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A4939E61D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 20:01:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B22786E9AC;
	Mon,  7 Jun 2021 18:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5C36E9A8;
 Mon,  7 Jun 2021 18:01:48 +0000 (UTC)
IronPort-SDR: pubGfgG5zZ3KaE/MSD/DZP4vEEvPbKPNuAvmxDF+3FxU7r/kbKgdLEy0kB7+hMJXLfGpSp+fMt
 re9PHOsJmkfg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204698814"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="204698814"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:01:26 -0700
IronPort-SDR: E9epUbaYqMZuS46hleSQzYt5LakkmaJ46G8qFnrrulpXqikp6bDCxQt4gORx419SGPI62uwVRm
 R8N0BL9lllOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="401708587"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 07 Jun 2021 11:01:26 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 11:01:25 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 23:31:23 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Mon, 7 Jun 2021 23:31:23 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Harry Wentland <harry.wentland@amd.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH 0/9] Enhance pipe color support for multi segmented luts
Thread-Index: AQHXVs2wPEDPA6xI2k+X99uG7qHEqqsD226AgAT9sYA=
Date: Mon, 7 Jun 2021 18:01:23 +0000
Message-ID: <3a4ccb6211824ce199c7307079833b07@intel.com>
References: <20210601104135.29020-1-uma.shankar@intel.com>
 <0909131c-1340-c93b-7b80-b661497ccf73@amd.com>
In-Reply-To: <0909131c-1340-c93b-7b80-b661497ccf73@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/9] Enhance pipe color support for multi
 segmented luts
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
Cc: "Cyr, Aric" <Aric.Cyr@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Harry Wentland <harry.wentland@amd.com>
> Sent: Saturday, June 5, 2021 12:21 AM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org; dri-
> devel@lists.freedesktop.org
> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; Cyr, Aric
> <Aric.Cyr@amd.com>
> Subject: Re: [PATCH 0/9] Enhance pipe color support for multi segmented luts
> 
> On 2021-06-01 6:41 a.m., Uma Shankar wrote:
> > Modern hardwares have multi segmented lut approach to prioritize the
> > darker regions of the spectrum. This series introduces a new UAPI to
> > define the lut ranges supported by the respective hardware.
> >
> > This also enables Pipe Color Management Support for Intel's XE_LPD hw.
> > Enable Support for Pipe Degamma with the increased lut samples
> > supported by hardware. This also adds support for newly introduced
> > Logarithmic Gamma for XE_LPD. Also added the gamma readout support.
> >
> > The Logarithmic gamma implementation on XE_LPD is non linear and adds
> > 25 segments with non linear lut samples in each segment. The
> > expectation is userspace will create the luts as per this distribution
> > and pass the final samples to driver to be programmed in hardware.
> >
> 
> Is this design targetting Intel XE_LPD HW in particular or is it intended to be generic?
> 
> If this is intended to be generic I think it would benefit from a lot more
> documentation. At this point it's difficult for me to see how to adapt this to AMD
> HW. It would take me a while to be comfortable to make a call on whether we can
> use it or not. And what about other vendors?

This is expected to be generic for all vendors.  XE_LPD is just a reference implementation.
It's basically an extension of what we have for crtc color but designing the UAPI to have it
more scalable for future hardware. The legacy hardware implementation which we have in
crtc properties can easily fit in this new UAPI and this can help represent hardware better
with more precision and scalability. Credits to Ville as to this is his idea of how we can represent
hardware generically and advertise to userspace.

Sure, I will add more documentation to make this clearer. 

> I think we need to be cautious in directly exposing HW functionality through UAPI.
> The CM parts of AMD HW seem to be changing in some way each generation and it
> looks like the same is true for Intel. The trouble we have with adapting the old
> gamma/degamma properties to modern HW is some indication to me that this
> approach is somewhat problematic.
> 

The advantage of having flexibility in userspace is that we give access of hardware to
userspace.It can then control things based on various usecases and not limited by just
a subset of operations what we define (in the lack of such an implementation).

> It would be useful to understand and document the specific use-cases we want to
> provide to userspace implementers with this functionality. Do we want to support
> modern transfer functions such as PQ or HLG? If so, it might be beneficial to have an
> API to explicitly specify that, and then use LUT tables in drivers that are optimized for
> the implementing HW. Or is the use case tone mapping? If so, would a parametric
> definition of tone mapping be easier to manage?
> 

Yes right, ideally this is what intend to achieve here. We cant have fixed tables for operations
like Tone mapping as it will depend on mastering luminance values which can vary along with
other attributes of metadata. Eventually this operation would be done by the gamma block
(non linear luts), the values for which would be calculated and send by userspace. Thus making
all this very generic. Also we can't do any color math in driver as it has lot of floating operations.

So here the trade-off is between having a UAPI where userspace controls hw, computes and sends
values vs having just a fixed function operations with hard coded lut tables in driver.

Maybe we can have both the options in order to give flexibility to hardware vendors. We can
document the usage of the UAPI we create which can help things co-exist. Userspace can query
the supported properties and implement based on the properties exposed by the respective
vendor driver implementation. 

My personal preference would be to go with generic option (expose hardware to userspace) which
will make life easier for userspace developers. This will help use hardware for any color operation not
just limited to linearization, CSC conversions and tone mapping. Also this is already done for crtc, so it just
need to be extended to planes.

> > +-----+------------------------------+
> > | x   |  2 pow x segment|No of Entries
> > |     |  0              | 1          |
> > | 0   |  1              | 1          |
> > | 1   |  2              | 2          |
> > | 2   |  4              | 2          |
> > | 3   |  8              | 2          |
> > | 4   |  16             | 2          |
> > | 5   |  32             | 4          |
> > | 6   |  64             | 4          |
> > | 7   |  128            | 4          |
> > | 8   |  256            | 8          |
> > | 9   |  512            | 8          |
> > | 10  |  1024           | 8          |
> > | 11  |  2048           | 16         |
> > | 12  |  4096           | 16         |
> > | 13  |  8192           | 16         |
> > | 14  |  16384          | 32         |
> > | 15  |  32768          | 32         |
> > | 16  |  65536          | 64         |
> > | 17  |  131072         | 64         |
> > | 18  |  262144         | 64         |
> > | 19  |  524288         | 32         |
> > | 20  |  1048576        | 32         |
> > | 21  |  2097152        | 32         |
> > | 22  |  4194304        | 32         |
> > | 23  |  8388608        | 32         |
> > | 24  |  16777216       | 1          |
> > |     | Total Entries   | 511        |
> >  -----+-----------------+------------+
> >
> > Credits: Special mention and credits to Ville Syrjala for coming up
> > with a design for this feature and inputs. This series is based on his
> > original design.
> >
> > Note: Userspace support for this new UAPI will be done on Chrome and
> > plan is to get this supported on mutter as well. We will notify the
> > list once we have that ready for review.
> >
> 
> Is this an RFC? If so it would be good to mark it as such.

Yes, sure will update the tag.

Thanks Harry for the feedback.

Regards,
Uma Shankar

> Harry
> 
> > Uma Shankar (9):
> >   drm: Add gamma mode property
> >   drm/i915/xelpd: Define color lut range structure
> >   drm/i915/xelpd: Add support for Logarithmic gamma mode
> >   drm/i915/xelpd: Attach gamma mode property
> >   drm: Add Client Cap for advance gamma mode
> >   drm/i915/xelpd: logarithmic gamma enabled only with advance gamma mode
> >   drm/i915/xelpd: Enable Pipe Degamma
> >   drm/i915/xelpd: Add Pipe Color Lut caps to platform config
> >   drm/i915/xelpd: Enable XE_LPD Gamma Lut readout
> >
> >  drivers/gpu/drm/drm_atomic_uapi.c          |   8 +
> >  drivers/gpu/drm/drm_color_mgmt.c           |  75 ++++
> >  drivers/gpu/drm/drm_ioctl.c                |   5 +
> >  drivers/gpu/drm/i915/display/intel_color.c | 454 ++++++++++++++++++++-
> >  drivers/gpu/drm/i915/i915_pci.c            |   3 +-
> >  drivers/gpu/drm/i915/i915_reg.h            |   7 +
> >  include/drm/drm_atomic.h                   |   1 +
> >  include/drm/drm_color_mgmt.h               |   8 +
> >  include/drm/drm_crtc.h                     |  25 ++
> >  include/drm/drm_file.h                     |   8 +
> >  include/uapi/drm/drm.h                     |   8 +
> >  include/uapi/drm/drm_mode.h                |  43 ++
> >  12 files changed, 630 insertions(+), 15 deletions(-)
> >

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
