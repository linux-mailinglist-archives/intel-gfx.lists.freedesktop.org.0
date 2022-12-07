Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09489645CB8
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 15:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E118710E109;
	Wed,  7 Dec 2022 14:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from aposti.net (aposti.net [89.234.176.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01E210E109
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 14:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1670423740; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YqDxxxhZHaBdHsBXxbpRVSGi+NbNR5i1v15tPxKzHUs=;
 b=QYkLCuKxOX0S/9+aqaVMWBjJKzV+AZ8I1j8Osu8jbWE9iUYzVAVb+KQ6xmO9vSonqy93jX
 MiTK3tITq1Etm5HLopinGmsZNCxhXN0D04gKhiejoSe+kGvZtR+q8qvsbjwfDmdSO3x4u6
 4Iv4E/j/8YyM5UTyXzZGqbn3bP2w9Aw=
Message-ID: <4232b29f81ac80e41da78d79cbfc03d2790ae8d3.camel@crapouillou.net>
From: Paul Cercueil <paul@crapouillou.net>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "tvrtko.ursulin@linux.intel.com"
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 07 Dec 2022 14:35:37 +0000
In-Reply-To: <a52e97690775c651b08b0095319bcc244e939fc3.camel@intel.com>
References: <20221130022928.196982-1-rodrigo.vivi@intel.com>
 <1813a272-a6e1-9b96-1d47-92302860f5b7@linux.intel.com>
 <a52e97690775c651b08b0095319bcc244e939fc3.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove CONFIG_PM dependency from
 RC6.
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

Hi Rodrigo,

Le mercredi 30 novembre 2022 =C3=A0 13:37 +0000, Vivi, Rodrigo a =C3=A9crit=
=C2=A0:
> On Wed, 2022-11-30 at 11:47 +0000, Tvrtko Ursulin wrote:
> >=20
> > On 30/11/2022 02:29, Rodrigo Vivi wrote:
> > > RC6 is a sleep state that doesn't depend on the cpu sleep,
> > > or any of the APM or ACPI or anything related to the
> > > CONFIG_PM.
> > >=20
> > > A long time ago we have removed the module parameter
> > > that allows the RC6 disablement. We want that feature enabled
> > > everywhere. However, for some reason this CONFIG_PM was long
> > > forgotten behind.
> > >=20
> > > If we end up needing knobs to disable RC6 we should create
> > > individual ones, rather than relying on this master one.
> >=20
> > Digging in history shows 5ab3633d6907 ("drm/i915: make rc6 in sysfs
> > functions conditional") and then it appears the issue could still
> > be=20
> > present, since we still use power_group_name which is NULL when
> > !CONFIG_PM.
>=20
> oh, indeed!
> So, we should probably go with Paul's proposal:
> https://lists.freedesktop.org/archives/intel-gfx/2022-November/311569.htm=
l

Could you ack it then? Or is there something to change?

Cheers,
-Paul

> >=20
> > $ ls -l /sys/class/drm/card0/power/
> > total 0
> > -rw-r--r-- 1 root root 4096 Nov 30 11:45 async
> > -rw-r--r-- 1 root root 4096 Nov 30 11:45 autosuspend_delay_ms
> > -rw-r--r-- 1 root root 4096 Nov 30 11:45 control
> > -r--r--r-- 1 root root 4096 Nov 30 11:45 rc6_enable
> > -r--r--r-- 1 root root 4096 Nov 30 11:45 rc6_residency_ms
> > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_active_kids
> > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_active_time
> > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_enabled
> > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_status
> > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_suspended_time
> > -r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_usage
> >=20
> > Other than rc6 entries I guess come from somewhere else but I
> > haven't
> > looked from where exactly.
>=20
>=20
> Ouch! Everything else here comes from the pci's pm_runtime.
> Probably our bad decision was to add rc6 to it.
> But we do need to stick to that.
>=20
>=20
> >=20
> > Regards,
> >=20
> > Tvrtko
> >=20
> > > Cc: Paul Cercueil <paul@crapouillou.net>
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > > =C2=A0 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 6 ------
> > > =C2=A0 1 file changed, 6 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > > b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > > index cf71305ad586..77327ede18ad 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> > > @@ -164,7 +164,6 @@ sysfs_gt_attribute_r_func(struct kobject
> > > *kobj,
> > > struct attribute *attr,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
> > > NULL);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0\
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INTEL_GT_ATTR_RO(_nam=
e)
> > > =C2=A0=20
> > > -#ifdef CONFIG_PM
> > > =C2=A0 static u32 get_residency(struct intel_gt *gt, enum
> > > intel_rc6_res_type id)
> > > =C2=A0 {
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_wakeref_t waker=
ef;
> > > @@ -329,11 +328,6 @@ static void intel_sysfs_rc6_init(struct
> > > intel_gt *gt, struct kobject *kobj)
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gt->info.id, ERR_PTR(ret))=
;
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> > > =C2=A0 }
> > > -#else
> > > -static void intel_sysfs_rc6_init(struct intel_gt *gt, struct
> > > kobject *kobj)
> > > -{
> > > -}
> > > -#endif /* CONFIG_PM */
> > > =C2=A0=20
> > > =C2=A0 static u32 __act_freq_mhz_show(struct intel_gt *gt)
> > > =C2=A0 {
>=20
>=20

