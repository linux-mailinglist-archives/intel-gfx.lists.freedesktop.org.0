Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHoGFRs+6WmEWQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 23:31:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E8D44AF15
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 23:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4020B10EA73;
	Wed, 22 Apr 2026 21:31:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="U5F5wy2w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0859410EA4A;
 Wed, 22 Apr 2026 21:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vx+Lw1I0K7DilKPSdvCXgHKCSgbkfq0Nmh+giaDkHw8=; b=U5F5wy2wC5ESR8cof1S9WyQbNa
 Z1od9JV8jUxEScXk0NcwpgtjWhXf7lD+DOlRW8+wqXUBc/6tcZwsU00YTJy33TDmUcEtq18EV6ba8
 hX2ztcb1zfcYqvB5S5aYuJuyiQU3kvCeuLPGG/U4NkdJ/QkqsQxt9VaciGWOzbbPD4GNP/pqEw6WG
 G4bK68K4kOR5JBBLCC8TMZv+BspWjNeG5yw9aXzYtIq9xVICWuH2ZEg2F4jL/Xd+RfHtlh+xmUcZR
 T+8hX0dCPqrp2lFsWbv60qzB2ujMf82878vZTkSPyltWe7lINDqDdJA33j8X1oKWRTF+/d/pEiNub
 uOjCyGOg==;
Received: from [186.208.73.228] (helo=[192.168.18.14])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wFf9v-000S6S-GN; Wed, 22 Apr 2026 23:30:59 +0200
Message-ID: <1483a913-dede-4daf-ac82-0329656a3d17@igalia.com>
Date: Wed, 22 Apr 2026 18:30:52 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: harry.wentland@amd.com, louis.chauvet@bootlin.com, contact@emersion.fr,
 alex.hung@amd.com, daniels@collabora.com, uma.shankar@intel.com,
 maarten.lankhorst@intel.com, pekka.paalanen@collabora.com,
 pranay.samala@intel.com, swati2.sharma@intel.com
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
 <20260408051514.608781-2-chaitanya.kumar.borah@intel.com>
 <c15ff4ca-79c3-4e65-bcc3-24e74adc2636@igalia.com>
 <e4eced80-8b22-473d-8add-7e4a517937f8@intel.com>
Content-Language: en-US
From: Melissa Wen <mwen@igalia.com>
In-Reply-To: <e4eced80-8b22-473d-8add-7e4a517937f8@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwen@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-]
X-Rspamd-Queue-Id: A1E8D44AF15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 21/04/2026 11:57, Borah, Chaitanya Kumar wrote:
>
>
> On 4/21/2026 6:40 PM, Melissa Wen wrote:
>>
>>
>> On 08/04/2026 02:15, Chaitanya Kumar Borah wrote:
>>> Introduce DRM_COLOROP_FIXED_MATRIX, a new colorop type representing a
>>> hardware that performs a fixed matrix operation.
>>>
>>> Unlike CTM-based colorops, this block does not expose programmable
>>> coefficients. Instead, userspace selects one of the predefined
>>> hardware modes via a new FIXED_MATRIX_TYPE enum property. Supported 
>>> modes
>>> include common YCbCr->RGB and RGB709->RGB2020 conversions.
>>>
>>> v2:
>>>   - Naming changes (Pekka)
>>>
>>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>> ---
>>>   drivers/gpu/drm/drm_atomic.c      |   4 ++
>>>   drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>>>   drivers/gpu/drm/drm_colorop.c     | 107 
>>> ++++++++++++++++++++++++++++++
>>>   include/drm/drm_colorop.h         |  84 +++++++++++++++++++++++
>>>   include/uapi/drm/drm_mode.h       |  12 ++++
>>>   5 files changed, 211 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/drm_atomic.c 
>>> b/drivers/gpu/drm/drm_atomic.c
>>> index 41c57063f3b4..16a2183b11bf 100644
>>> --- a/drivers/gpu/drm/drm_atomic.c
>>> +++ b/drivers/gpu/drm/drm_atomic.c
>>> @@ -845,6 +845,10 @@ static void 
>>> drm_atomic_colorop_print_state(struct drm_printer *p,
>>> drm_get_colorop_lut3d_interpolation_name(colorop- 
>>> >lut3d_interpolation));
>>>           drm_printf(p, "\tdata blob id=%d\n", state->data ? state- 
>>> >data->base.id : 0);
>>>           break;
>>> +    case DRM_COLOROP_FIXED_MATRIX:
>>> +        drm_printf(p, "\tfixed_matrix_type=%s\n",
>>> +               drm_get_colorop_fixed_matrix_type_name(state- 
>>> >fixed_matrix_type));
>>> +        break;
>>>       default:
>>>           break;
>>>       }
>>> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/ 
>>> drm_atomic_uapi.c
>>> index 5bd5bf6661df..d69406b08a0f 100644
>>> --- a/drivers/gpu/drm/drm_atomic_uapi.c
>>> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
>>> @@ -761,6 +761,8 @@ static int 
>>> drm_atomic_colorop_set_property(struct drm_colorop *colorop,
>>>       } else if (property == colorop->data_property) {
>>>           return drm_atomic_color_set_data_property(colorop, state,
>>>                                 property, val);
>>> +    } else if (property == colorop->fixed_matrix_type_property) {
>>> +        state->fixed_matrix_type = val;
>>>       } else {
>>>           drm_dbg_atomic(colorop->dev,
>>>                      "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
>>> @@ -793,6 +795,8 @@ drm_atomic_colorop_get_property(struct 
>>> drm_colorop *colorop,
>>>           *val = colorop->lut3d_interpolation;
>>>       else if (property == colorop->data_property)
>>>           *val = (state->data) ? state->data->base.id : 0;
>>> +    else if (property == colorop->fixed_matrix_type_property)
>>> +        *val = state->fixed_matrix_type;
>>>       else
>>>           return -EINVAL;
>>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/ 
>>> drm_colorop.c
>>> index 566816e3c6f0..dd385e8dacbe 100644
>>> --- a/drivers/gpu/drm/drm_colorop.c
>>> +++ b/drivers/gpu/drm/drm_colorop.c
>>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list 
>>> drm_colorop_type_enum_list[] = {
>>>       { DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>>       { DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>>       { DRM_COLOROP_3D_LUT, "3D LUT"},
>>> +    { DRM_COLOROP_FIXED_MATRIX, "Fixed Matrix"},
>>>   };
>>>   static const char * const colorop_curve_1d_type_names[] = {
>>> @@ -90,6 +91,14 @@ static const struct drm_prop_enum_list 
>>> drm_colorop_lut3d_interpolation_list[] =
>>>       { DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>>   };
>>> +static const char * const colorop_fixed_matrix_type_names[] = {
>>> +    [DRM_COLOROP_FM_YCBCR601_FULL_RGB]  = "YCbCr 601 Full to RGB",
>>> +    [DRM_COLOROP_FM_YCBCR709_FULL_RGB]    = "YCbCr 709 Full to RGB",
>>> +    [DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC]  = "YCbCr 2020 Full to 
>>> RGB NC",
>>> +    [DRM_COLOROP_FM_YCBCR_LIMITED_FULL]  = "YCbCr limited to full",
>>> +    [DRM_COLOROP_FM_RGB709_RGB2020]     = "RGB709 to RGB2020",
>>> +};
>>> +
>>>   /* Init Helpers */
>>>   static int drm_plane_colorop_init(struct drm_device *dev, struct 
>>> drm_colorop *colorop,
>>> @@ -455,6 +464,81 @@ int drm_plane_colorop_3dlut_init(struct 
>>> drm_device *dev, struct drm_colorop *col
>>>   }
>>>   EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
>>> +/**
>>> + * drm_plane_colorop_fixed_matrix_init - Initialize a 
>>> DRM_COLOROP_FIXED_MATRIX
>>> + *
>>> + * @dev: DRM device
>>> + * @colorop: The drm_colorop object to initialize
>>> + * @plane: The associated drm_plane
>>> + * @funcs: control functions for the new colorop
>>> + * @supported_fm: A bitfield of supported 
>>> drm_colorop_fixed_matrix_type enum values,
>>> + *               created using BIT(fixed_matrix_type) and combined 
>>> with the OR '|'
>>> + *               operator.
>>> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
>>> + * @return zero on success, -E value on failure
>>> + */
>>> +int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, 
>>> struct drm_colorop *colorop,
>>> +                    struct drm_plane *plane,
>>> +                    const struct drm_colorop_funcs *funcs,
>>> +                    u64 supported_fm, uint32_t flags)
>>> +{
>>> +    struct drm_prop_enum_list enum_list[DRM_COLOROP_FM_COUNT];
>>> +    int i, len;
>>> +
>>> +    struct drm_property *prop;
>>> +    int ret;
>>> +
>>> +    if (!supported_fm) {
>>> +        drm_err(dev,
>>> +            "No supported FM type op for new Fixed Matrix colorop 
>>> on [PLANE:%d:%s]\n",
>>> +            plane->base.id, plane->name);
>>> +        return -EINVAL;
>>> +    }
>>> +
>>> +    if ((supported_fm & -BIT(DRM_COLOROP_FM_COUNT)) != 0) {
>>> +        drm_err(dev, "Unknown Fixed Matrix provided on 
>>> [PLANE:%d:%s]\n",
>>> +            plane->base.id, plane->name);
>>> +        return -EINVAL;
>>> +    }
>>> +
>>> +    ret = drm_plane_colorop_init(dev, colorop, plane, funcs, 
>>> DRM_COLOROP_FIXED_MATRIX, flags);
>>> +    if (ret)
>>> +        return ret;
>>> +
>>> +    len = 0;
>>> +    for (i = 0; i < DRM_COLOROP_FM_COUNT; i++) {
>>> +        if ((supported_fm & BIT(i)) == 0)
>>> +            continue;
>>> +
>>> +        enum_list[len].type = i;
>>> +        enum_list[len].name = colorop_fixed_matrix_type_names[i];
>>> +        len++;
>>> +    }
>>> +
>>> +    if (WARN_ON(len <= 0))
>>> +        return -EINVAL;
>>> +
>>> +    prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, 
>>> "FIXED_MATRIX_TYPE",
>>> +                    enum_list, len);
>>> +
>>> +    if (!prop)
>>> +        return -ENOMEM;
>>> +
>>> +    colorop->fixed_matrix_type_property = prop;
>>> +    /*
>>> +     * Default to the first supported CSC mode as provided by the 
>>> driver.
>>> +     * Intuitively this should be something that keeps the colorop 
>>> in pixel bypass
>>> +     * mode but that is already handled via the standard colorop 
>>> bypass
>>> +     * property.
>>> +     */
>>> +    drm_object_attach_property(&colorop->base, colorop- 
>>> >fixed_matrix_type_property,
>>> +                   enum_list[0].type);
>>> +    drm_colorop_reset(colorop);
>>> +
>>> +    return 0;
>>> +}
>>> +EXPORT_SYMBOL(drm_plane_colorop_fixed_matrix_init);
>>> +
>>>   static void __drm_atomic_helper_colorop_duplicate_state(struct 
>>> drm_colorop *colorop,
>>>                               struct drm_colorop_state *state)
>>>   {
>>> @@ -521,6 +605,13 @@ static void __drm_colorop_state_reset(struct 
>>> drm_colorop_state *colorop_state,
>>>                                 &val);
>>>           colorop_state->curve_1d_type = val;
>>>       }
>>> +
>>> +    if (colorop->fixed_matrix_type_property) {
>>> + drm_object_property_get_default_value(&colorop->base,
>>> + colorop->fixed_matrix_type_property,
>>> +                              &val);
>>> +        colorop_state->fixed_matrix_type = val;
>>> +    }
>>>   }
>>>   /**
>>> @@ -561,6 +652,7 @@ static const char * const colorop_type_name[] = {
>>>       [DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
>>>       [DRM_COLOROP_MULTIPLIER] = "Multiplier",
>>>       [DRM_COLOROP_3D_LUT] = "3D LUT",
>>> +    [DRM_COLOROP_FIXED_MATRIX] = "Fixed Matrix",
>>>   };
>>>   static const char * const colorop_lu3d_interpolation_name[] = {
>>> @@ -617,6 +709,21 @@ const char 
>>> *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
>>>       return colorop_lu3d_interpolation_name[type];
>>>   }
>>> +/**
>>> + * drm_get_colorop_fixed_matrix_type_name: return a string for 
>>> fixed matrix type
>>> + * @type: fixed matrix type to compute name of
>>> + *
>>> + * In contrast to the other drm_get_*_name functions this one here 
>>> returns a
>>> + * const pointer and hence is threadsafe.
>>> + */
>>> +const char *drm_get_colorop_fixed_matrix_type_name(enum 
>>> drm_colorop_fixed_matrix_type type)
>>> +{
>>> +    if (WARN_ON(type >= ARRAY_SIZE(colorop_fixed_matrix_type_names)))
>>> +        return "unknown";
>>> +
>>> +    return colorop_fixed_matrix_type_names[type];
>>> +}
>>> +
>>>   /**
>>>    * drm_colorop_set_next_property - sets the next pointer
>>>    * @colorop: drm colorop
>>> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
>>> index bd082854ca74..c13b4b045fff 100644
>>> --- a/include/drm/drm_colorop.h
>>> +++ b/include/drm/drm_colorop.h
>>> @@ -134,6 +134,71 @@ enum drm_colorop_curve_1d_type {
>>>       DRM_COLOROP_1D_CURVE_COUNT
>>>   };
>>> +/**
>>> + * enum drm_colorop_fixed_matrix_type - type of Fixed Matrix
>>> + *
>>> + * Describes a Fixed Matrix operation to be applied by the 
>>> DRM_COLOROP_FIXED_MATRIX
>>> + */
>>> +enum drm_colorop_fixed_matrix_type {
>>> +    /**
>>> +     * @DRM_COLOROP_FM_YCBCR601_FULL_RGB:
>>> +     *
>>> +     * enum string "YCbCr 601 Full to RGB"
>>> +     *
>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>> +     * according to the BT.601 coefficients.
>>> +     */
>>> +    DRM_COLOROP_FM_YCBCR601_FULL_RGB,
>>> +
>>> +    /**
>>> +     * @DRM_COLOROP_FM_YCBCR709_FULL_RGB:
>>> +     *
>>> +     * enum string "YCbCr 709 Full to RGB"
>>> +     *
>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>> +     * according to the BT.709 coefficients.
>>> +     */
>>> +    DRM_COLOROP_FM_YCBCR709_FULL_RGB,
>>> +
>>> +    /**
>>> +     * @DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB:
>>> +     *
>>> +     * enum string "YCbCr 2020 Full to RGB NC"
>> Nit: I think you mean "YCbCr 2020 NC Full to RGB"?
>>> +     *
>>> +     * This selects the matrix that converts full range YCbCr into RGB
>>> +     * according to the BT.2020 non-constant luminance coefficients.
>>> +     */
>>> +    DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC,
>> ... and here ^ DRM_COLOROP_FM_YCBCR_NC_FULL_RGB
>
> Ack.
>
>>> +
>>> +    /**
>>> +     * @DRM_COLOROP_FM_YCBCR_LIMITED_FULL:
>>> +     *
>>> +     * enum string "YCbCr limited to full"
>>> +     *
>>> +     * This selects the matrix that converts limited range YCbCr into
>>> +     * full range YCbCr. Though not strictly a matrix operation but
>>> +     * can be represented as one.
>>> +     */
>>> +    DRM_COLOROP_FM_YCBCR_LIMITED_FULL,
>> I didn't full understand how this is going to work.
>> Looks like it's merging two properties (COLOR_ENCODING and 
>> COLOR_RANGE) in a single colorop.
>> But we can only select one enum value. So how to communicate, for 
>> example, a "YCbCr 709 Limited to RGB" conversion?
>> The driver will have to define a coloro pipeline with two fixed 
>> matrix colorop in a row, one with only "Limited to Full" and another 
>> with "YCbCr Full to RGB" ?
>>
>
> It depends on what the HW supports. Let's say a fixed function HW 
> block can itself support "YCbCr Limited to RGB" then we just need a 
> single colorop that exposes this enum. These are being added in the 
> series that Harry published.[1]
>
> In Intel's case, we have two separate blocks to do this. One that does 
> the range correction (Limited to Full) and then a fixed function CSC 
> block that does only "YCbCr Full to RGB" conversion. If they are 
> adjacent in the pipeline, they can very well be represent by a single 
> colorop described in the previous paragraph but we have a unique 
> situation where there is a 1D LUT in between the two blocks.
>
> [YUV Limited to Full] -> [1D LUT] -> [YCbCr XXX Full to RGB] -> [1D LUT].

I see. Thanks for clarifying.

Apart from the DRM_COLOROP_FM_YCBCR_NC_FULL_RGB fix above-mentioned, 
this patch LGTM.
It was missing IGT tests, but I see Harry provided it in the series you 
linked.

Reviewed-by: Melissa Wen <mwen@igalia.com>

>
> ==
> Chaitanya
>
> [1] 
> https://lore.kernel.org/dri-devel/20260330153451.99472-3-harry.wentland@amd.com/
>
>> Melissa
>>> +
>>> +    /**
>>> +     * @DRM_COLOROP_FM_RGB709_RGB2020:
>>> +     *
>>> +     * enum string "RGB709 to RGB2020"
>>> +     *
>>> +     * Selects the fixed-function CSC preset that converts RGB
>>> +     * (BT.709) colorimetry to RGB (BT.2020).
>>> +     */
>>> +    DRM_COLOROP_FM_RGB709_RGB2020,
>>> +
>>> +    /**
>>> +     * @DRM_COLOROP_FM_COUNT:
>>> +     *
>>> +     * enum value denoting the size of the enum
>>> +     */
>>> +    DRM_COLOROP_FM_COUNT
>>> +};
>>> +
>>>   /**
>>>    * struct drm_colorop_state - mutable colorop state
>>>    */
>>> @@ -183,6 +248,13 @@ struct drm_colorop_state {
>>>        */
>>>       struct drm_property_blob *data;
>>> +    /**
>>> +     * @fixed_matrix_type:
>>> +     *
>>> +     * Type of Fixed Matrix operation.
>>> +     */
>>> +    enum drm_colorop_fixed_matrix_type fixed_matrix_type;
>>> +
>>>       /** @state: backpointer to global drm_atomic_state */
>>>       struct drm_atomic_state *state;
>>>   };
>>> @@ -368,6 +440,13 @@ struct drm_colorop {
>>>        */
>>>       struct drm_property *data_property;
>>> +    /**
>>> +     * @fixed_matrix_type_property:
>>> +     *
>>> +     * Sub-type for DRM_COLOROP_FIXED_MATRIX type.
>>> +     */
>>> +    struct drm_property *fixed_matrix_type_property;
>>> +
>>>       /**
>>>        * @next_property:
>>>        *
>>> @@ -424,6 +503,10 @@ int drm_plane_colorop_3dlut_init(struct 
>>> drm_device *dev, struct drm_colorop *col
>>>                    uint32_t lut_size,
>>>                    enum drm_colorop_lut3d_interpolation_type 
>>> interpolation,
>>>                    uint32_t flags);
>>> +int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, 
>>> struct drm_colorop *colorop,
>>> +                    struct drm_plane *plane,
>>> +                    const struct drm_colorop_funcs *funcs,
>>> +                    u64 supported_fm, uint32_t flags);
>>>   struct drm_colorop_state *
>>>   drm_atomic_helper_colorop_duplicate_state(struct drm_colorop 
>>> *colorop);
>>> @@ -480,6 +563,7 @@ drm_get_colorop_lut1d_interpolation_name(enum 
>>> drm_colorop_lut1d_interpolation_ty
>>>   const char *
>>>   drm_get_colorop_lut3d_interpolation_name(enum 
>>> drm_colorop_lut3d_interpolation_type type);
>>> +const char *drm_get_colorop_fixed_matrix_type_name(enum 
>>> drm_colorop_fixed_matrix_type type);
>>>   void drm_colorop_set_next_property(struct drm_colorop *colorop, 
>>> struct drm_colorop *next);
>>> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
>>> index a4bdc4bd11bc..dc4b8566fec8 100644
>>> --- a/include/uapi/drm/drm_mode.h
>>> +++ b/include/uapi/drm/drm_mode.h
>>> @@ -971,6 +971,18 @@ enum drm_colorop_type {
>>>        *         color = lut3d[index]
>>>        */
>>>       DRM_COLOROP_3D_LUT,
>>> +
>>> +    /**
>>> +     * @DRM_COLOROP_FIXED_MATRIX:
>>> +     *
>>> +     * enum string "Fixed Matrix"
>>> +     *
>>> +     * A Colorop block that performs a pre-defined matrix operation 
>>> selected
>>> +     * via the FIXED_MATRIX_TYPE enum property. The driver 
>>> advertises the supported
>>> +     * operations through this property.
>>> +     */
>>> +    DRM_COLOROP_FIXED_MATRIX,
>>> +
>>>   };
>>>   /**
>>
>

