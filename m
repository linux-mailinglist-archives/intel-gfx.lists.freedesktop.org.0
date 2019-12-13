Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6594711E953
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 18:41:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41D66EB78;
	Fri, 13 Dec 2019 17:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B327C6EB78
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 17:41:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 09:41:33 -0800
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="216500000"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.18])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 09:41:33 -0800
Date: Fri, 13 Dec 2019 09:41:24 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191213174124.bzdowjmw56madod6@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191213155152.69182-1-venkata.s.dhanalakota@intel.com>
 <157625336045.7535.4716622584112654192@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157625336045.7535.4716622584112654192@skylake-alporthouse-com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Register sysctl path
 globally
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

On Fri, Dec 13, 2019 at 04:09:20PM +0000, Chris Wilson wrote:
>Quoting Venkata Sandeep Dhanalakota (2019-12-13 15:51:51)
>> We do not require to register the sysctl paths per instance,
>> so making registration global.
>>
>> v2: make sysctl path register and unregister function driver
>>     specific (Tvrtko and Lucas).
>>
>> Cc: Sudeep Dutt <sudeep.dutt@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_pci.c        |  9 ++++++++-
>>  drivers/gpu/drm/i915/i915_perf.c       | 18 ++++++++++++++----
>>  drivers/gpu/drm/i915/i915_perf.h       |  2 ++
>>  drivers/gpu/drm/i915/i915_perf_types.h |  1 -
>>  4 files changed, 24 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>> index bba6b50e6beb..4b33128070da 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -30,6 +30,7 @@
>>  #include "display/intel_fbdev.h"
>>
>>  #include "i915_drv.h"
>> +#include "i915_perf.h"
>>  #include "i915_globals.h"
>>  #include "i915_selftest.h"
>>
>> @@ -1051,7 +1052,12 @@ static int __init i915_init(void)
>>                 return 0;
>>         }
>>
>> -       return pci_register_driver(&i915_pci_driver);
>> +       err = pci_register_driver(&i915_pci_driver);
>> +       if (err)
>> +               return err;
>> +
>> +       i915_perf_sysctl_register();
>> +       return 0;
>>  }
>>
>>  static void __exit i915_exit(void)
>> @@ -1059,6 +1065,7 @@ static void __exit i915_exit(void)
>>         if (!i915_pci_driver.driver.owner)
>>                 return;
>>
>> +       i915_perf_sysctl_unregister();
>>         pci_unregister_driver(&i915_pci_driver);
>>         i915_globals_exit();
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 8d2e37949f46..4abd7623ef2d 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -387,6 +387,8 @@ struct i915_oa_config_bo {
>>         struct i915_vma *vma;
>>  };
>>
>> +static struct ctl_table_header *sysctl_header;
>> +
>>  static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer);
>>
>>  void i915_oa_config_release(struct kref *ref)
>> @@ -4228,7 +4230,7 @@ static struct ctl_table dev_root[] = {
>>  };
>>
>>  /**
>> - * i915_perf_init - initialize i915-perf state on module load
>> + * i915_perf_init - initialize i915-perf state on module bind
>>   * @i915: i915 device instance
>>   *
>>   * Initializes i915-perf state without exposing anything to userspace.
>> @@ -4345,7 +4347,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>
>>                 oa_sample_rate_hard_limit = 1000 *
>>                         (RUNTIME_INFO(i915)->cs_timestamp_frequency_khz / 2);
>> -               perf->sysctl_header = register_sysctl_table(dev_root);
>>
>>                 mutex_init(&perf->metrics_lock);
>>                 idr_init(&perf->metrics_idr);
>> @@ -4381,6 +4382,17 @@ static int destroy_config(int id, void *p, void *data)
>>         return 0;
>>  }
>>
>> +void i915_perf_sysctl_register(void)
>> +{
>> +       sysctl_header = register_sysctl_table(dev_root);
>> +}
>> +
>> +void i915_perf_sysctl_unregister(void)
>> +{
>> +       if (sysctl_header)
>> +               unregister_sysctl_table(sysctl_header);
>
>unregister_sysctl_table() is NULL-safe.

I had the same comment.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>Other than that,
>Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
>-Chris
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
