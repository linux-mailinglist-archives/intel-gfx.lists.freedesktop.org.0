Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9637D148500
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD64C6E342;
	Fri, 24 Jan 2020 12:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9054D6E342
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 12:11:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 04:11:03 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="221006210"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 04:11:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org, Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <871rrvjj0v.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200118005848.20382-1-vivek.kasireddy@intel.com>
 <871rrvjj0v.fsf@intel.com>
Date: Fri, 24 Jan 2020 14:12:01 +0200
Message-ID: <87sgk5gijy.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Ensure that the ACPI adapter
 lookup overrides the bus num
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 19 Jan 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 17 Jan 2020, Vivek Kasireddy <vivek.kasireddy@intel.com> wrote:
>> Remove the i2c_bus_num >= 0 check from the adapter lookup function
>> as this would prevent ACPI bus number override. This check was mainly
>> there to return early if the bus number has already been found but we
>> anyway return in the next line if the slave address does not match.
>
> Hans, could I trouble you to check this on your collection of BYT DSI
> devices please?

I went ahead and pushed the patch. Thanks.

BR,
Jani.


>
> BR,
> Jani.
>
>
>>
>> Fixes: 8cbf89db2941 ("drm/i915/dsi: Parse the I2C element from the VBT MIPI sequence block (v3)")
>> Cc: Hans de Goede <hdegoede@redhat.com>
>> Cc: Nabendu Maiti <nabendu.bikash.maiti@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Bob Paauwe <bob.j.paauwe@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> index 6ec35d975bd7..04f953ba8f00 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -394,8 +394,7 @@ static int i2c_adapter_lookup(struct acpi_resource *ares, void *data)
>>  	acpi_handle adapter_handle;
>>  	acpi_status status;
>>  
>> -	if (intel_dsi->i2c_bus_num >= 0 ||
>> -	    !i2c_acpi_get_i2c_resource(ares, &sb))
>> +	if (!i2c_acpi_get_i2c_resource(ares, &sb))
>>  		return 1;
>>  
>>  	if (lookup->slave_addr != sb->slave_address)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
