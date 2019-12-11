Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADDD11BFAE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 23:14:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFBA6E853;
	Wed, 11 Dec 2019 22:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20BD6E853
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 22:14:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 14:14:16 -0800
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="207854500"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 14:14:16 -0800
Date: Wed, 11 Dec 2019 14:14:10 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Message-ID: <20191211221410.gsnbtxaqhambp4nu@ldmartin-desk1>
References: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
 <d7b95242-51d0-f052-aabb-fae4ab66e9c3@linux.intel.com>
 <96a54ef7-86d2-0e9b-e0bc-20878883cfea@linux.intel.com>
 <20191211171318.GE47225@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211171318.GE47225@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 11, 2019 at 09:13:18AM -0800, Venkata Sandeep Dhanalakota wrote:
>On 19/12/11 04:39, Tvrtko Ursulin wrote:
>>
>> On 11/12/2019 16:31, Tvrtko Ursulin wrote:
>> > On 11/12/2019 16:07, Venkata Sandeep Dhanalakota wrote:
>> > > We do not require to register the sysctl paths per instance,
>> > > so making registration global.
>> > >
>> > > Cc: Sudeep Dutt <sudeep.dutt@intel.com>
>> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> > > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> > > Cc: Jani Nikula <jani.nikula@intel.com>
>> > > Signed-off-by: Venkata Sandeep Dhanalakota
>> > > <venkata.s.dhanalakota@intel.com>
>> > > ---
>> > > =A0 drivers/gpu/drm/i915/i915_perf.c=A0=A0=A0=A0=A0=A0 | 10 ++++++++=
--
>> > > =A0 drivers/gpu/drm/i915/i915_perf_types.h |=A0 1 -
>> > > =A0 2 files changed, 8 insertions(+), 3 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/i915_perf.c
>> > > b/drivers/gpu/drm/i915/i915_perf.c
>> > > index 8d2e37949f46..426d04214a5d 100644
>> > > --- a/drivers/gpu/drm/i915/i915_perf.c
>> > > +++ b/drivers/gpu/drm/i915/i915_perf.c
>> > > @@ -387,6 +387,8 @@ struct i915_oa_config_bo {
>> > > =A0=A0=A0=A0=A0 struct i915_vma *vma;
>> > > =A0 };
>> > > +static struct ctl_table_header *sysctl_header;
>> > > +
>> > > =A0 static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer
>> > > *hrtimer);
>> > > =A0 void i915_oa_config_release(struct kref *ref)
>> > > @@ -4345,7 +4347,8 @@ void i915_perf_init(struct drm_i915_private *i=
915)
>> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 oa_sample_rate_hard_limit =3D 1000 *
>> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (RUNTIME_INFO(i915)->cs_time=
stamp_frequency_khz / 2);
>> > > -=A0=A0=A0=A0=A0=A0=A0 perf->sysctl_header =3D register_sysctl_table=
(dev_root);
>> > > +=A0=A0=A0=A0=A0=A0=A0 if (!sysctl_header)
>> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sysctl_header =3D register_sysctl=
_table(dev_root);
>> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 mutex_init(&perf->metrics_lock);
>> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 idr_init(&perf->metrics_idr);
>> > > @@ -4395,7 +4398,10 @@ void i915_perf_fini(struct drm_i915_private *=
i915)
>> > > =A0=A0=A0=A0=A0 idr_for_each(&perf->metrics_idr, destroy_config, per=
f);
>> > > =A0=A0=A0=A0=A0 idr_destroy(&perf->metrics_idr);
>> > > -=A0=A0=A0 unregister_sysctl_table(perf->sysctl_header);
>> > > +=A0=A0=A0 if (sysctl_header) {
>> > > +=A0=A0=A0=A0=A0=A0=A0 unregister_sysctl_table(sysctl_header);
>> > > +=A0=A0=A0=A0=A0=A0=A0 sysctl_header =3D NULL;
>> > > +=A0=A0=A0 }
>> >
>> > I am not sure if this could be racy with manual unbind from sysfs. Does
>> > PCI core serialize for us?
>>
>> Actually with two devices you also need to reference count it since you
>> don't want removal of the first device to remove the node but last.
>>
>Apparently this is not called during module exit, using krefs is
>way go to or have some helper which are called during module init/exit.
>
>void i915_perf_sysctl_register() {
>	sysctl_header =3D register_sysctl_table(dev_root);
>}
>
>void i915_perf_sysctl_unregister() {
>	unregister_sysctl_table(sysctl_header);
>}

yeah, since you are moving this to be global, I don't think it belongs
to the device, but rather to the module. So, IMO it makes more sense to
use this approach than kref/kunref on bind/unbind.

Lucas De Marchi

>
>
>> > Regards,
>> >
>> > Tvrtko
>> >
>> > > =A0=A0=A0=A0=A0 memset(&perf->ops, 0, sizeof(perf->ops));
>> > > =A0=A0=A0=A0=A0 perf->i915 =3D NULL;
>> > > diff --git a/drivers/gpu/drm/i915/i915_perf_types.h
>> > > b/drivers/gpu/drm/i915/i915_perf_types.h
>> > > index 74ddc20a0d37..45e581455f5d 100644
>> > > --- a/drivers/gpu/drm/i915/i915_perf_types.h
>> > > +++ b/drivers/gpu/drm/i915/i915_perf_types.h
>> > > @@ -380,7 +380,6 @@ struct i915_perf {
>> > > =A0=A0=A0=A0=A0 struct drm_i915_private *i915;
>> > > =A0=A0=A0=A0=A0 struct kobject *metrics_kobj;
>> > > -=A0=A0=A0 struct ctl_table_header *sysctl_header;
>> > > =A0=A0=A0=A0=A0 /*
>> > > =A0=A0=A0=A0=A0=A0 * Lock associated with adding/modifying/removing =
OA configs
>> > >
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
