Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF8F30CCCB
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 21:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC2EA6E204;
	Tue,  2 Feb 2021 20:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAAE16E204
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 20:10:46 +0000 (UTC)
IronPort-SDR: VZK/3vQ7oOTX4xV+Hhub1FtCL6YXGVwrZmpyF8DDiEk4kvIBxJ5P5AHlKyZirJ3MDiFZgDCrWh
 tqP7cnc89Mew==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="160089556"
X-IronPort-AV: E=Sophos;i="5.79,396,1602572400"; d="scan'208";a="160089556"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 12:10:44 -0800
IronPort-SDR: VjEsSlmSO9ULjDXZHvVUtAfDApyqtOcBiwIDm13aRKLwzgl/2uot30PWeuyFf14Nh7ZyjN78Hz
 oqkNL8qoW5uw==
X-IronPort-AV: E=Sophos;i="5.79,396,1602572400"; d="scan'208";a="480013630"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 12:10:44 -0800
Date: Tue, 2 Feb 2021 12:10:44 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210202201044.GE66899@orsosgc001.ra.intel.com>
References: <20210202075417.28230-1-umesh.nerlige.ramappa@intel.com>
 <161225425527.704.15100937094980533411@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161225425527.704.15100937094980533411@build.alporthouse.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 1/3] i915/perf: Store a mask of valid OA
 formats for a platform
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 02, 2021 at 08:24:15AM +0000, Chris Wilson wrote:
>Quoting Umesh Nerlige Ramappa (2021-02-02 07:54:15)
>> Validity of an OA format is checked by using a sparse array of formats
>> per gen. Instead maintain a mask of supported formats for a platform in
>> the perf object.
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c       | 64 +++++++++++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_perf_types.h | 16 +++++++
>>  2 files changed, 79 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 112ba5f2ce90..973577fcad58 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -3524,6 +3524,19 @@ static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
>>                                              2ULL << exponent);
>>  }
>>
>> +static __always_inline bool
>> +oa_format_valid(struct i915_perf *perf, enum drm_i915_oa_format format)
>> +{
>> +       return !!(perf->format_mask[__format_index(format)] &
>> +                 __format_bit(format));
>
>!! is already provided by the implicit cast to (bool)
>
>> +}
>> +
>> +static __always_inline void
>> +oa_format_add(struct i915_perf *perf, enum drm_i915_oa_format format)
>> +{
>> +       perf->format_mask[__format_index(format)] |= __format_bit(format);
>> +}
>> +
>>  /**
>>   * read_properties_unlocked - validate + copy userspace stream open properties
>>   * @perf: i915 perf instance
>> @@ -3615,7 +3628,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>                                           value);
>>                                 return -EINVAL;
>>                         }
>> -                       if (!perf->oa_formats[value].size) {
>> +                       if (!oa_format_valid(perf, value)) {
>>                                 DRM_DEBUG("Unsupported OA report format %llu\n",
>>                                           value);
>>                                 return -EINVAL;
>> @@ -4259,6 +4272,53 @@ static struct ctl_table dev_root[] = {
>>         {}
>>  };
>>
>> +static void oa_init_supported_formats(struct i915_perf *perf)
>> +{
>> +       struct drm_i915_private *i915 = perf->i915;
>> +       enum intel_platform platform = INTEL_INFO(i915)->platform;
>> +
>> +       switch (platform) {
>> +       case INTEL_HASWELL:
>> +               oa_format_add(perf, I915_OA_FORMAT_A13);
>> +               oa_format_add(perf, I915_OA_FORMAT_A13);
>> +               oa_format_add(perf, I915_OA_FORMAT_A29);
>> +               oa_format_add(perf, I915_OA_FORMAT_A13_B8_C8);
>> +               oa_format_add(perf, I915_OA_FORMAT_B4_C8);
>> +               oa_format_add(perf, I915_OA_FORMAT_A45_B8_C8);
>> +               oa_format_add(perf, I915_OA_FORMAT_B4_C8_A16);
>> +               oa_format_add(perf, I915_OA_FORMAT_C4_B8);
>> +               break;
>> +
>> +       case INTEL_BROADWELL:
>> +       case INTEL_CHERRYVIEW:
>> +       case INTEL_SKYLAKE:
>> +       case INTEL_BROXTON:
>> +       case INTEL_KABYLAKE:
>> +       case INTEL_GEMINILAKE:
>> +       case INTEL_COFFEELAKE:
>> +       case INTEL_COMETLAKE:
>> +       case INTEL_CANNONLAKE:
>> +       case INTEL_ICELAKE:
>> +       case INTEL_ELKHARTLAKE:
>> +       case INTEL_JASPERLAKE:
>> +               oa_format_add(perf, I915_OA_FORMAT_A12);
>> +               oa_format_add(perf, I915_OA_FORMAT_A12_B8_C8);
>> +               oa_format_add(perf, I915_OA_FORMAT_A32u40_A4u32_B8_C8);
>> +               oa_format_add(perf, I915_OA_FORMAT_C4_B8);
>> +               break;
>
>Ok, this looks as compact and readable as writing it as a bunch of
>tables. I presume there's a reason you didn't just use generation rather
>than platform.
>
>switch (gen) {
>case 7:
>	haswell();
>	break;
>case 8 .. 11:
>	broadwell();
>	break;
>case 12:
>	tigerlake();
>	break;
>}
>if you wanted to stick with a switch rather than an if-else tree for the
>ranges.

only haswell is supported on gen7 and gen12 may define new formats that 
are platform specific.

How about a mix? -

if (gen == 7 && haswell)
	haswell();
else if (gen >= 8 && gen <= 11)
	broadwell;
else
	gen12_formats();

gen12_formats can choose to use the switch if formats vary between 
platforms.

Thanks,
Umesh
>
>Note you could equally do
>	case INTEL_BROADWELL .. INTEL_JASPERLAKE:
>but I expect that to cause confusion for the reader.
>
>> +       /**
>> +        * Use a format mask to store the supported formats
>> +        * for a platform.
>> +        */
>> +#define __fbits (BITS_PER_TYPE(u32))
>> +#define __format_bit(__f) \
>> +       BIT((__f) & (__fbits - 1))
>> +
>> +#define __format_index_shift (5)
>> +#define __format_index(__f) \
>> +       (((__f) & ~(__fbits - 1)) >> __format_index_shift)
>> +
>> +#define FORMAT_MASK_SIZE (((I915_OA_FORMAT_MAX - 1) / __fbits) + 1)
>> +       u32 format_mask[FORMAT_MASK_SIZE];
>
>This is just open-coding set_bit/test_bit
>
>#define FORMAT_MASK_SIZE DIV_ROUND_UP(I915_OA_FORMAT_MAX - 1, BITS_PER_LONG)
>unsigned long format_mask[FORMAT_MASK_SIZE];
>
>static __always_inline bool
>oa_format_valid(struct i915_perf *perf, enum drm_i915_oa_format format)
>{
>	return test_bit(format, perf->format_mask);
>}
>
>static __always_inline void
>oa_format_add(struct i915_perf *perf, enum drm_i915_oa_format format)
>{
>	__set_bit(format, perf->format_mask);
>}
>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
