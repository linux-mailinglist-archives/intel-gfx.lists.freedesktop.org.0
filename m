Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C5413FA89
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 21:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3616E4A5;
	Thu, 16 Jan 2020 20:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 605366E4A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 20:25:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 12:25:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214224295"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 12:25:15 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
 <20200115013143.34961-2-daniele.ceraolospurio@intel.com>
 <op.0eh3oacvxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a1ebcd7c-21b1-4300-1e1c-b50853c0abd3@intel.com>
Date: Thu, 16 Jan 2020 12:24:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0eh3oacvxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/guc: Kill USES_GUC macro
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



On 1/16/20 11:42 AM, Michal Wajdeczko wrote:
> On Wed, 15 Jan 2020 02:31:37 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> use intel_uc_uses_guc() directly instead, to be consistent in the way we
>> check what we want to do with the GuC.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> ---
>> =A0drivers/gpu/drm/i915/gt/intel_ggtt.c |=A0 2 +-
>> =A0drivers/gpu/drm/i915/i915_debugfs.c=A0 | 19 ++++++++++---------
>> =A0drivers/gpu/drm/i915/i915_drv.h=A0=A0=A0=A0=A0 |=A0 1 -
>> =A03 files changed, 11 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c =

>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 79096722ce16..bb4aa923dbd9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -462,7 +462,7 @@ static int ggtt_reserve_guc_top(struct i915_ggtt =

>> *ggtt)
>> =A0=A0=A0=A0 u64 size;
>> =A0=A0=A0=A0 int ret;
>> -=A0=A0=A0 if (!USES_GUC(ggtt->vm.i915))
>> +=A0=A0=A0 if (!intel_uc_uses_guc(&ggtt->vm.gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0GEM_BUG_ON(ggtt->vm.total <=3D GUC_GGTT_TOP);
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c =

>> b/drivers/gpu/drm/i915/i915_debugfs.c
>> index d5a9b8a964c2..c2f480defc71 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -1752,10 +1752,8 @@ stringify_guc_log_type(enum guc_log_buffer_type =

>> type)
>> =A0=A0=A0=A0 return "";
>> =A0}
>> -static void i915_guc_log_info(struct seq_file *m,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct drm_i915_pri=
vate *dev_priv)
>> +static void i915_guc_log_info(struct seq_file *m, struct intel_guc_log
> =

> hmm, s/dev_priv/guc_log changes look unrelated to main topic
> can you move these changes to separate patch ?

It made sense to me to do the changes since I now had the uc variable at =

hand, but I can easily split them as a prep patch.

Daniele

> =

>> *log)
>> =A0{
>> -=A0=A0=A0 struct intel_guc_log *log =3D &dev_priv->gt.uc.guc.log;
>> =A0=A0=A0=A0 enum guc_log_buffer_type type;
>> =A0=A0=A0=A0if (!intel_guc_log_relay_created(log)) {
>> @@ -1779,11 +1777,12 @@ static void i915_guc_log_info(struct seq_file *m,
>> =A0static int i915_guc_info(struct seq_file *m, void *data)
>> =A0{
>> =A0=A0=A0=A0 struct drm_i915_private *dev_priv =3D node_to_i915(m->priva=
te);
>> +=A0=A0=A0 struct intel_uc *uc =3D &dev_priv->gt.uc;
>> -=A0=A0=A0 if (!USES_GUC(dev_priv))
>> +=A0=A0=A0 if (!intel_uc_uses_guc(uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> -=A0=A0=A0 i915_guc_log_info(m, dev_priv);
>> +=A0=A0=A0 i915_guc_log_info(m, &uc->guc.log);
>> =A0=A0=A0=A0/* Add more as required ... */
>> @@ -1884,11 +1883,12 @@ static int i915_guc_log_dump(struct seq_file =

>> *m, void *data)
>> =A0static int i915_guc_log_level_get(void *data, u64 *val)
>> =A0{
>> =A0=A0=A0=A0 struct drm_i915_private *dev_priv =3D data;
>> +=A0=A0=A0 struct intel_uc *uc =3D &dev_priv->gt.uc;
>> -=A0=A0=A0 if (!USES_GUC(dev_priv))
>> +=A0=A0=A0 if (!intel_uc_uses_guc(uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> -=A0=A0=A0 *val =3D intel_guc_log_get_level(&dev_priv->gt.uc.guc.log);
>> +=A0=A0=A0 *val =3D intel_guc_log_get_level(&uc->guc.log);
>> =A0=A0=A0=A0return 0;
>> =A0}
>> @@ -1896,11 +1896,12 @@ static int i915_guc_log_level_get(void *data, =

>> u64 *val)
>> =A0static int i915_guc_log_level_set(void *data, u64 val)
>> =A0{
>> =A0=A0=A0=A0 struct drm_i915_private *dev_priv =3D data;
>> +=A0=A0=A0 struct intel_uc *uc =3D &dev_priv->gt.uc;
>> -=A0=A0=A0 if (!USES_GUC(dev_priv))
>> +=A0=A0=A0 if (!intel_uc_uses_guc(uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> -=A0=A0=A0 return intel_guc_log_set_level(&dev_priv->gt.uc.guc.log, val);
>> +=A0=A0=A0 return intel_guc_log_set_level(&uc->guc.log, val);
>> =A0}
>> DEFINE_SIMPLE_ATTRIBUTE(i915_guc_log_level_fops,
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h =

>> b/drivers/gpu/drm/i915/i915_drv.h
>> index 077af22b8340..ad0019cd2604 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1719,7 +1719,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>> =A0#define HAS_GT_UC(dev_priv)=A0=A0=A0 (INTEL_INFO(dev_priv)->has_gt_uc)
>> /* Having GuC is not the same as using GuC */
>> -#define USES_GUC(dev_priv)=A0=A0=A0=A0=A0=A0=A0 intel_uc_uses_guc(&(dev=
_priv)->gt.uc)
>> =A0#define USES_GUC_SUBMISSION(dev_priv)    =

>> intel_uc_uses_guc_submission(&(dev_priv)->gt.uc)
>> #define HAS_POOLED_EU(dev_priv)=A0=A0=A0 (INTEL_INFO(dev_priv)->has_pool=
ed_eu)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
