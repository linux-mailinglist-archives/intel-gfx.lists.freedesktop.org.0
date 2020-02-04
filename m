Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4061521B8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 22:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5434A6E8F8;
	Tue,  4 Feb 2020 21:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B97776E8F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 21:10:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 13:10:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="231502439"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga003.jf.intel.com with ESMTP; 04 Feb 2020 13:10:17 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-2-daniele.ceraolospurio@intel.com>
 <op.0fg226jqxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b77396d3-18f6-9813-706e-f21fefced4de@intel.com>
Date: Tue, 4 Feb 2020 13:10:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0fg226jqxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 01/10] drm/i915/debugfs: Pass guc_log
 struct to i915_guc_log_info
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/4/20 9:05 AM, Michal Wajdeczko wrote:
> On Tue, 04 Feb 2020 00:28:29 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> The log struct is the only thing the function needs (apart from
>> the seq_file), so we can pass just that instead of the whole dev_priv.
>>
>> v2: Split this change to its own patch (Michal)
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> ---
>> =A0drivers/gpu/drm/i915/i915_debugfs.c | 6 ++----
>> =A01 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c =

>> b/drivers/gpu/drm/i915/i915_debugfs.c
>> index e75e8212f03b..7264c0ff766c 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -1753,10 +1753,8 @@ stringify_guc_log_type(enum guc_log_buffer_type =

>> type)
>> =A0=A0=A0=A0 return "";
>> =A0}
>> -static void i915_guc_log_info(struct seq_file *m,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct drm_i915_pri=
vate *dev_priv)
>> +static void i915_guc_log_info(struct seq_file *m, struct =

>> intel_guc_log *log)
> =

> maybe to avoid polluting i915_debugfs.c we should move this function to
> gt/uc/intel_guc_log.c as universal printer:
> =

> void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p)
> =


ok

>> =A0{
>> -=A0=A0=A0 struct intel_guc_log *log =3D &dev_priv->gt.uc.guc.log;
>> =A0=A0=A0=A0 enum guc_log_buffer_type type;
>> =A0=A0=A0=A0if (!intel_guc_log_relay_created(log)) {
>> @@ -1784,7 +1782,7 @@ static int i915_guc_info(struct seq_file *m, =

>> void *data)
>> =A0=A0=A0=A0 if (!USES_GUC(dev_priv))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> -=A0=A0=A0 i915_guc_log_info(m, dev_priv);
>> +=A0=A0=A0 i915_guc_log_info(m, &dev_priv->gt.uc.guc.log);
> =

> too many dots ... this is "guc" info function, maybe we should have:

This is changed in the next patch to use intel_uc. It made more sense to =

me to keep that change in the patch that introduced a second use for the =

variable.

Daniele

> =

>  =A0=A0=A0=A0struct intel_guc *guc =3D &dev_priv->gt.uc.guc;
> or
>  =A0=A0=A0=A0struct intel_gt *gt =3D &dev_priv->gt;
>  =A0=A0=A0=A0struct intel_uc *uc =3D &gt->uc;
>  =A0=A0=A0=A0struct intel_guc *guc =3D &uc->guc;
> =

> as that "guc" is likely to be reused in "more" below
> =

>> =A0=A0=A0=A0/* Add more as required ... */
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
