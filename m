Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879BB3A48D9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 20:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D7A6E079;
	Fri, 11 Jun 2021 18:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E6A36E079;
 Fri, 11 Jun 2021 18:50:13 +0000 (UTC)
IronPort-SDR: CV1yb3mTDG4l7c/BMyZjjqUhPYxB4OLAEvW79XuX8eQAcbpsVNQ2SlRpl2+BfDzkpLUZmd253b
 Dt6yW123JOaQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="203754081"
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="203754081"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 11:50:11 -0700
IronPort-SDR: sYEix0KXwIxrqzUdcHgIjFPcsG+oCixyU8+0iJcKaHLHNun67sbzD5GztNcfN5eKs/YGkyw04o
 oWv/tB8rKODQ==
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="636208084"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 11:50:11 -0700
Date: Fri, 11 Jun 2021 11:43:18 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20210611184318.GA28306@sdutt-i7>
References: <20210607180356.165785-1-matthew.brost@intel.com>
 <20210607180356.165785-8-matthew.brost@intel.com>
 <946237c6-1671-b419-5337-d5b8cc02a041@intel.com>
 <04a5897a-b521-b999-433e-81c417a19f70@intel.com>
 <4ec30495-2694-46da-225f-456ed2b6b4ee@intel.com>
 <20210610043858.GA12287@sdutt-i7>
 <d9b10d18-1b1f-3d50-a2e7-571a412d571a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9b10d18-1b1f-3d50-a2e7-571a412d571a@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/guc: New definition of the
 CTB registration action
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 03:19:50PM +0200, Michal Wajdeczko wrote:
> =

> =

> On 10.06.2021 06:38, Matthew Brost wrote:
> > On Wed, Jun 09, 2021 at 10:07:21PM +0200, Michal Wajdeczko wrote:
> >>
> >>
> >> On 09.06.2021 19:36, John Harrison wrote:
> >>> On 6/7/2021 18:23, Daniele Ceraolo Spurio wrote:
> >>>> On 6/7/2021 11:03 AM, Matthew Brost wrote:
> >>>>> From: Michal Wajdeczko <michal.wajdeczko@intel.com>
> >>>>>
> >>>>> Definition of the CTB registration action has changed.
> >>>>> Add some ABI documentation and implement required changes.
> >>>>>
> >>>>> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> >>>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> >>>>> Cc: Piotr Pi=F3rkowski <piotr.piorkowski@intel.com> #4
> >>>>> ---
> >>>>> =A0 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h=A0 | 107 +++++++++=
+++++++++
> >>>>> =A0 .../gt/uc/abi/guc_communication_ctb_abi.h=A0=A0=A0=A0 |=A0=A0 4=
 -
> >>>>> =A0 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c=A0=A0=A0=A0 |=A0 76 +=
+++++++-----
> >>>>> =A0 3 files changed, 152 insertions(+), 35 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> >>>>> b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> >>>>> index 90efef8a73e4..6426fc183692 100644
> >>>>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> >>>>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> >>>>> @@ -6,6 +6,113 @@
> >>>>> =A0 #ifndef _ABI_GUC_ACTIONS_ABI_H
> >>>>> =A0 #define _ABI_GUC_ACTIONS_ABI_H
> >>>>> =A0 +/**
> >>>>> + * DOC: HOST2GUC_REGISTER_CTB
> >>>>> + *
> >>>>> + * This message is used as part of the `CTB based communication`_
> >>>>> setup.
> >>>>> + *
> >>>>> + * This message must be sent as `MMIO HXG Message`_.
> >>>>> + *
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + *=A0 |=A0=A0 | Bits=A0 |
> >>>>> Description=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 |
> >>>>> + *
> >>>>> +=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+
> >>>>>
> >>>>> + *=A0 | 0 |=A0=A0=A0 31 | ORIGIN =3D
> >>>>> GUC_HXG_ORIGIN_HOST_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 | 30:28 | TYPE =3D
> >>>>> GUC_HXG_TYPE_REQUEST_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 | 27:16 | DATA0 =3D
> >>>>> MBZ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 |=A0 15:0 | ACTION =3D _`GUC_ACTION_HOST2GUC_REGISTE=
R_CTB` =3D
> >>>>> 0x5200=A0=A0=A0=A0=A0=A0=A0 |
> >>>>
> >>>> Specs says 4505
> >>>>
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + *=A0 | 1 | 31:12 | RESERVED =3D
> >>>>> MBZ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 |=A0 11:8 | **TYPE** - type for the `CT
> >>>>> Buffer`_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |=A0=A0 |
> >>>>> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 |=A0=A0 - _`GUC_CTB_TYPE_HOST2GU=
C` =3D
> >>>>> 0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 |=A0=A0 - _`GUC_CTB_TYPE_GUC2HOS=
T` =3D
> >>>>> 1=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 |=A0=A0 7:0 | **SIZE** - size of the `CT Buffer`_ in=
 4K units
> >>>>> minus 1=A0=A0=A0=A0=A0 |
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + *=A0 | 2 |=A0 31:0 | **DESC_ADDR** - GGTT address of the `CTB
> >>>>> Descriptor`_=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + *=A0 | 3 |=A0 31:0 | **BUFF_ADDF** - GGTT address of the `CT
> >>>>> Buffer`_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> +*
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + *=A0 |=A0=A0 | Bits=A0 |
> >>>>> Description=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 |
> >>>>> + *
> >>>>> +=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+
> >>>>>
> >>>>> + *=A0 | 0 |=A0=A0=A0 31 | ORIGIN =3D
> >>>>> GUC_HXG_ORIGIN_GUC_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 | 30:28 | TYPE =3D
> >>>>> GUC_HXG_TYPE_RESPONSE_SUCCESS_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 |=A0 27:0 | DATA0 =3D
> >>>>> MBZ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 |
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + */
> >>>>> +#define GUC_ACTION_HOST2GUC_REGISTER_CTB=A0=A0=A0=A0=A0=A0=A0 0x45=
05 // FIXME 0x5200
> >>>>
> >>>> Why FIXME? AFAICS the specs still says 4505, even if we plan to upda=
te
> >>>> at some point I don;t think this deserves a FIXME since nothing is
> >>>> incorrect.
> >>>>
> >>>>> +
> >>>>> +#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_LEN
> >>>>> (GUC_HXG_REQUEST_MSG_MIN_LEN + 3u)
> >>>>> +#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_0_MBZ
> >>>>> GUC_HXG_REQUEST_MSG_0_DATA0
> >>>>> +#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_MBZ=A0=A0=A0=A0=A0=A0=
=A0 (0xfffff << 12)
> >>>>> +#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_TYPE=A0=A0=A0 (0xf << =
8)
> >>>>> +#define=A0=A0 GUC_CTB_TYPE_HOST2GUC=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 0u
> >>>>> +#define=A0=A0 GUC_CTB_TYPE_GUC2HOST=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 1u
> >>>>> +#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_SIZE=A0=A0=A0 (0xff <<=
 0)
> >>>>> +#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR
> >>>>> GUC_HXG_REQUEST_MSG_n_DATAn
> >>>>> +#define HOST2GUC_REGISTER_CTB_REQUEST_MSG_3_BUFF_ADDR
> >>>>> GUC_HXG_REQUEST_MSG_n_DATAn
> >>>>
> >>>> The full mask still seems like overkill to me and I still think we
> >>>> should use BIT()/GENMASK() and a _MASK prefix, but not going to block
> >>>> on it.
> >>>>
> >>>>> +
> >>>>> +#define HOST2GUC_REGISTER_CTB_RESPONSE_MSG_LEN
> >>>>> GUC_HXG_RESPONSE_MSG_MIN_LEN
> >>>>> +#define HOST2GUC_REGISTER_CTB_RESPONSE_MSG_0_MBZ
> >>>>> GUC_HXG_RESPONSE_MSG_0_DATA0
> >>>>> +
> >>>>> +/**
> >>>>> + * DOC: HOST2GUC_DEREGISTER_CTB
> >>>>> + *
> >>>>> + * This message is used as part of the `CTB based communication`_
> >>>>> teardown.
> >>>>> + *
> >>>>> + * This message must be sent as `MMIO HXG Message`_.
> >>>>> + *
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + *=A0 |=A0=A0 | Bits=A0 |
> >>>>> Description=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 |
> >>>>> + *
> >>>>> +=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+
> >>>>>
> >>>>> + *=A0 | 0 |=A0=A0=A0 31 | ORIGIN =3D
> >>>>> GUC_HXG_ORIGIN_HOST_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 | 30:28 | TYPE =3D
> >>>>> GUC_HXG_TYPE_REQUEST_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 | 27:16 | DATA0 =3D
> >>>>> MBZ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 |=A0 15:0 | ACTION =3D _`GUC_ACTION_HOST2GUC_DEREGIS=
TER_CTB` =3D
> >>>>> 0x5201=A0=A0=A0=A0=A0 |
> >>>>
> >>>> Specs says 4506
> >>>>
> >>> I would say that the enum value should not be included in the structu=
re
> >>> definition. I would also argue that there is no point in repeating the
> >>> common header structure for every single H2G action definition. That =
is
> >>> just overly verbose and makes it harder to read the spec. It implies
> >>> that every action has a different header structure and must be coded
> >>> individually.
> >>
> >> but some actions are defined as REQUEST some as EVENT, so we need to s=
ay
> >> that, also each REQUEST action may define its own DATA0, so again we
> >> still need to define these bits somewhere
> >>
> >>>
> >>> Personally, I don't believe we should be replicating the entire GuC A=
PI
> >>> spec in the driver header files anyway. This is not something that is
> >>> defined by the i915 driver so the i915 driver should not be defining =
it!
> >>> Instead, just include a link or pointer to where the actual spec can =
be
> >>> found. We don't copy the entire bspec page for every register that the
> >>> driver touches, so why should this be any different?
> > =

> > I agree with John on this one. We plan publishing the GuC, right? Let's
> =

> Do you know of any ETA? I don't
> =


No, I don't.

> and likely the same promise was given few years back when GuC was
> introduced in upstream, I don't want to have just code that we can't
> compare with specification (in any form)
> =

> =

> > just point to it in the kernel DOC.
> > =

> > Also at some all these defines really should be auto-generated. I
> > suppose if these headers are auto-generated, I could live with these
> =

> I was also hoping to get these ABI headers auto-generated before we
> start to used them for good, unfortunately it was quite the opposite:
> for some time these hand crafted tables were used as input for
> discussion and then to prepare machine readable formats, but the only
> tool currently available (and still WIP) is for generating spec
> documentation
>

A tool really shouldn't be too hard to write to auto-generate headers.
Every other project I've worked on did tons of auto-generation of code
and I've personally written about 5 of these tools. This would be great
project for an intern or a newer employee.
 =

> > files generating kernel DOC. I can't really live with having to maintain
> > a table like this for every action manually.
> =

> the goal is to freeze ABI so no maintenance will be necessary, except
> adding new actions, and that's also the reason to keep these ABI files
> separate from the rest of our headers, where we can add/modify/improve
> any helpers/wrappers as we want.
> =

> and I don't recall that you were forced to modify any of such tables
> yet, nor were asked to manually prepare them for the rest of the
> existing actions, especially GuC submission ones, so why complain?
>

I'm fine with this going in, I just personally don't want to have to
manually create a table like this for every GuC submission action.

Matt
 =

> > =

> > Matt
> > =

> >>
> >> to some extend we have to replicate at least part of the GuC ABI spec,
> >> part that defines all bits, and IMHO there is nothing wrong if it comes
> >> with full message layout definitions, especially if you compare that
> >> with previous approach, were H2G action definitions were limited just =
to
> >> single enum value (and to find out how to use given H2G you had to look
> >> into firmware source code)
> >>
> >> so while we keep these abi.h files in kernel repo, they shall be treat=
ed
> >> as read-only imported external interface definitions, from which we ju=
st
> >> use all #define for coding and DOC: for documentation (latter at least
> >> until GuC will release its spec to the public)
> >>
> >>>
> >>> John.
> >>>
> >>>
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + *=A0 | 1 | 31:12 | RESERVED =3D
> >>>>> MBZ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 |=A0 11:8 | **TYPE** - type of the `CT
> >>>>> Buffer`_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |=A0=A0 |
> >>>>> |=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 | see
> >>>>> `GUC_ACTION_HOST2GUC_REGISTER_CTB`_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 |=A0=A0 7:0 | RESERVED =3D
> >>>>> MBZ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 |
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> +*
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + *=A0 |=A0=A0 | Bits=A0 |
> >>>>> Description=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 |
> >>>>> + *
> >>>>> +=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D+
> >>>>>
> >>>>> + *=A0 | 0 |=A0=A0=A0 31 | ORIGIN =3D
> >>>>> GUC_HXG_ORIGIN_GUC_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 | 30:28 | TYPE =3D
> >>>>> GUC_HXG_TYPE_RESPONSE_SUCCESS_=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |
> >>>>> + *=A0 |
> >>>>> +-------+----------------------------------------------------------=
----+
> >>>>> + *=A0 |=A0=A0 |=A0 27:0 | DATA0 =3D
> >>>>> MBZ=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 |
> >>>>> + *
> >>>>> +---+-------+------------------------------------------------------=
--------+
> >>>>>
> >>>>> + */
> >>>>> +#define GUC_ACTION_HOST2GUC_DEREGISTER_CTB=A0=A0=A0=A0=A0=A0=A0 0x=
4506 // FIXME
> >>>>> 0x5201
> >>>>
> >>>> Same comment for the FIXME as above
> >>>>
> >>>>> +
> >>>>> +#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_LEN
> >>>>> (GUC_HXG_REQUEST_MSG_MIN_LEN + 1u)
> >>>>> +#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_0_MBZ
> >>>>> GUC_HXG_REQUEST_MSG_0_DATA0
> >>>>> +#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_MBZ=A0=A0=A0 (0xffff=
f << 12)
> >>>>> +#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_TYPE=A0=A0=A0 (0xf <=
< 8)
> >>>>> +#define HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_1_MBZ2=A0=A0=A0 (0xff =
<< 0)
> >>>>> +
> >>>>> +#define HOST2GUC_DEREGISTER_CTB_RESPONSE_MSG_LEN
> >>>>> GUC_HXG_RESPONSE_MSG_MIN_LEN
> >>>>> +#define HOST2GUC_DEREGISTER_CTB_RESPONSE_MSG_0_MBZ
> >>>>> GUC_HXG_RESPONSE_MSG_0_DATA0
> >>>>> +
> >>>>> +/* legacy definitions */
> >>>>> +
> >>>>> =A0 enum intel_guc_action {
> >>>>> =A0=A0=A0=A0=A0 INTEL_GUC_ACTION_DEFAULT =3D 0x0,
> >>>>> =A0=A0=A0=A0=A0 INTEL_GUC_ACTION_REQUEST_PREEMPTION =3D 0x2,
> >>>>> diff --git
> >>>>> a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> >>>>> b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> >>>>> index c2a069a78e01..127b256a662c 100644
> >>>>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> >>>>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
> >>>>> @@ -112,10 +112,6 @@ static_assert(sizeof(struct guc_ct_buffer_desc)
> >>>>> =3D=3D 64);
> >>>>> =A0=A0 * - **flags**, holds various bits to control message handling
> >>>>> =A0=A0 */
> >>>>> =A0 -/* Type of command transport buffer */
> >>>>> -#define INTEL_GUC_CT_BUFFER_TYPE_SEND=A0=A0=A0 0x0u
> >>>>> -#define INTEL_GUC_CT_BUFFER_TYPE_RECV=A0=A0=A0 0x1u
> >>>>> -
> >>>>> =A0 /*
> >>>>> =A0=A0 * Definition of the command transport message header (DW0)
> >>>>> =A0=A0 *
> >>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>>> index 3241a477196f..6a29be779cc9 100644
> >>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >>>>> @@ -103,9 +103,9 @@ void intel_guc_ct_init_early(struct intel_guc_ct
> >>>>> *ct)
> >>>>> =A0 static inline const char *guc_ct_buffer_type_to_str(u32 type)
> >>>>> =A0 {
> >>>>> =A0=A0=A0=A0=A0 switch (type) {
> >>>>> -=A0=A0=A0 case INTEL_GUC_CT_BUFFER_TYPE_SEND:
> >>>>> +=A0=A0=A0 case GUC_CTB_TYPE_HOST2GUC:
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return "SEND";
> >>>>> -=A0=A0=A0 case INTEL_GUC_CT_BUFFER_TYPE_RECV:
> >>>>> +=A0=A0=A0 case GUC_CTB_TYPE_GUC2HOST:
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return "RECV";
> >>>>> =A0=A0=A0=A0=A0 default:
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 return "<invalid>";
> >>>>> @@ -136,25 +136,33 @@ static void guc_ct_buffer_init(struct
> >>>>> intel_guc_ct_buffer *ctb,
> >>>>> =A0=A0=A0=A0=A0 guc_ct_buffer_reset(ctb);
> >>>>> =A0 }
> >>>>> =A0 -static int guc_action_register_ct_buffer(struct intel_guc *guc,
> >>>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 d=
esc_addr,
> >>>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 t=
ype)
> >>>>> +static int guc_action_register_ct_buffer(struct intel_guc *guc, u32
> >>>>> type,
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 d=
esc_addr, u32 buff_addr, u32 size)
> >>>>> =A0 {
> >>>>> -=A0=A0=A0 u32 action[] =3D {
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_=
BUFFER,
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 desc_addr,
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 sizeof(struct guc_ct_buffer_desc),
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 type
> >>>>> +=A0=A0=A0 u32 request[HOST2GUC_REGISTER_CTB_REQUEST_MSG_LEN] =3D {
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 FIELD_PREP(GUC_HXG_MSG_0_ORIGIN, GUC_HXG_ORI=
GIN_HOST) |
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_=
REQUEST) |
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION,
> >>>>> GUC_ACTION_HOST2GUC_REGISTER_CTB),
> >>>>
> >>>> IMO we could use a macro or 2 for the HXG header, to avoid all these
> >>>> lines, which are hard to read. something like:
> >>>>
> >>>> GUC_HXG_HEADER(origin, type, data, action) \
> >>>> =A0=A0=A0 (FIELD_PREP(GUC_HXG_MSG_0_ORIGIN, origin) | \
> >>>> =A0=A0=A0=A0 FIELD_PREP(GUC_HXG_MSG_0_TYPE, type) | \
> >>>> FIELD_PREP(GUC_HXG_MSG_0_DATA0, data) | \
> >>>> =A0=A0=A0=A0 FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION, action))
> >>>>
> >>>> H2G_HEADER(type, data, action) \
> >>>> =A0=A0=A0 GUC_HXG_HEADER(GUC_HXG_ORIGIN_HOST, type, data, action)
> >>>>
> >>>> and then call
> >>>>
> >>>> H2G_HEADER(GUC_HXG_TYPE_REQUEST, 0, GUC_ACTION_HOST2GUC_REGISTER_CTB)
> >>>>
> >>>>
> >>>> Not a blocker.
> >>>>
> >>>> Daniele
> >>>>
> >>>>> + FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_1_SIZE, size / SZ_4K=
 -
> >>>>> 1) |
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG=
_1_TYPE, type),
> >>>>> + FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_2_DESC_ADDR, desc_ad=
dr),
> >>>>> + FIELD_PREP(HOST2GUC_REGISTER_CTB_REQUEST_MSG_3_BUFF_ADDR, buff_ad=
dr),
> >>>>> =A0=A0=A0=A0=A0 };
> >>>>> =A0 -=A0=A0=A0 /* Can't use generic send(), CT registration must go=
 over MMIO */
> >>>>> -=A0=A0=A0 return intel_guc_send_mmio(guc, action, ARRAY_SIZE(actio=
n),
> >>>>> NULL, 0);
> >>>>> +=A0=A0=A0 GEM_BUG_ON(type !=3D GUC_CTB_TYPE_HOST2GUC && type !=3D
> >>>>> GUC_CTB_TYPE_GUC2HOST);
> >>>>> +=A0=A0=A0 GEM_BUG_ON(size % SZ_4K);
> >>>>> +
> >>>>> +=A0=A0=A0 /* CT registration must go over MMIO */
> >>>>> +=A0=A0=A0 return intel_guc_send_mmio(guc, request, ARRAY_SIZE(requ=
est),
> >>>>> NULL, 0);
> >>>>> =A0 }
> >>>>> =A0 -static int ct_register_buffer(struct intel_guc_ct *ct, u32
> >>>>> desc_addr, u32 type)
> >>>>> +static int ct_register_buffer(struct intel_guc_ct *ct, u32 type,
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 desc_addr,=
 u32 buff_addr, u32 size)
> >>>>> =A0 {
> >>>>> -=A0=A0=A0 int err =3D guc_action_register_ct_buffer(ct_to_guc(ct),
> >>>>> desc_addr, type);
> >>>>> +=A0=A0=A0 int err;
> >>>>> =A0 +=A0=A0=A0 err =3D guc_action_register_ct_buffer(ct_to_guc(ct),=
 type,
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 desc_addr, buff_addr, size);
> >>>>> =A0=A0=A0=A0=A0 if (unlikely(err))
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 CT_ERROR(ct, "Failed to register %s buf=
fer (err=3D%d)\n",
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 guc_ct_buffer_type_to_st=
r(type), err);
> >>>>> @@ -163,14 +171,17 @@ static int ct_register_buffer(struct
> >>>>> intel_guc_ct *ct, u32 desc_addr, u32 type)
> >>>>> =A0 =A0 static int guc_action_deregister_ct_buffer(struct intel_guc=
 *guc,
> >>>>> u32 type)
> >>>>> =A0 {
> >>>>> -=A0=A0=A0 u32 action[] =3D {
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPOR=
T_BUFFER,
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 CTB_OWNER_HOST,
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 type
> >>>>> +=A0=A0=A0 u32 request[HOST2GUC_DEREGISTER_CTB_REQUEST_MSG_LEN] =3D=
 {
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 FIELD_PREP(GUC_HXG_MSG_0_ORIGIN, GUC_HXG_ORI=
GIN_HOST) |
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 FIELD_PREP(GUC_HXG_MSG_0_TYPE, GUC_HXG_TYPE_=
REQUEST) |
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 FIELD_PREP(GUC_HXG_REQUEST_MSG_0_ACTION,
> >>>>> GUC_ACTION_HOST2GUC_DEREGISTER_CTB),
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 FIELD_PREP(HOST2GUC_DEREGISTER_CTB_REQUEST_M=
SG_1_TYPE, type),
> >>>>> =A0=A0=A0=A0=A0 };
> >>>>> =A0 -=A0=A0=A0 /* Can't use generic send(), CT deregistration must =
go over
> >>>>> MMIO */
> >>>>> -=A0=A0=A0 return intel_guc_send_mmio(guc, action, ARRAY_SIZE(actio=
n),
> >>>>> NULL, 0);
> >>>>> +=A0=A0=A0 GEM_BUG_ON(type !=3D GUC_CTB_TYPE_HOST2GUC && type !=3D
> >>>>> GUC_CTB_TYPE_GUC2HOST);
> >>>>> +
> >>>>> +=A0=A0=A0 /* CT deregistration must go over MMIO */
> >>>>> +=A0=A0=A0 return intel_guc_send_mmio(guc, request, ARRAY_SIZE(requ=
est),
> >>>>> NULL, 0);
> >>>>> =A0 }
> >>>>> =A0 =A0 static int ct_deregister_buffer(struct intel_guc_ct *ct, u3=
2 type)
> >>>>> @@ -258,7 +269,7 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct)
> >>>>> =A0 int intel_guc_ct_enable(struct intel_guc_ct *ct)
> >>>>> =A0 {
> >>>>> =A0=A0=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
> >>>>> -=A0=A0=A0 u32 base, cmds;
> >>>>> +=A0=A0=A0 u32 base, desc, cmds;
> >>>>> =A0=A0=A0=A0=A0 void *blob;
> >>>>> =A0=A0=A0=A0=A0 int err;
> >>>>> =A0 @@ -274,23 +285,26 @@ int intel_guc_ct_enable(struct intel_guc_=
ct *ct)
> >>>>> =A0=A0=A0=A0=A0 GEM_BUG_ON(blob !=3D ct->ctbs.send.desc);
> >>>>> =A0 =A0=A0=A0=A0=A0 /* (re)initialize descriptors */
> >>>>> -=A0=A0=A0 cmds =3D base + ptrdiff(ct->ctbs.send.cmds, blob);
> >>>>> =A0=A0=A0=A0=A0 guc_ct_buffer_reset(&ct->ctbs.send);
> >>>>> -
> >>>>> -=A0=A0=A0 cmds =3D base + ptrdiff(ct->ctbs.recv.cmds, blob);
> >>>>> =A0=A0=A0=A0=A0 guc_ct_buffer_reset(&ct->ctbs.recv);
> >>>>> =A0 =A0=A0=A0=A0=A0 /*
> >>>>> =A0=A0=A0=A0=A0=A0 * Register both CT buffers starting with RECV bu=
ffer.
> >>>>> =A0=A0=A0=A0=A0=A0 * Descriptors are in first half of the blob.
> >>>>> =A0=A0=A0=A0=A0=A0 */
> >>>>> -=A0=A0=A0 err =3D ct_register_buffer(ct, base + ptrdiff(ct->ctbs.r=
ecv.desc,
> >>>>> blob),
> >>>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_CT_BUFF=
ER_TYPE_RECV);
> >>>>> +=A0=A0=A0 desc =3D base + ptrdiff(ct->ctbs.recv.desc, blob);
> >>>>> +=A0=A0=A0 cmds =3D base + ptrdiff(ct->ctbs.recv.cmds, blob);
> >>>>> +=A0=A0=A0 err =3D ct_register_buffer(ct, GUC_CTB_TYPE_GUC2HOST,
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc, cmds, ct->c=
tbs.recv.size * 4);
> >>>>> +
> >>>>> =A0=A0=A0=A0=A0 if (unlikely(err))
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 goto err_out;
> >>>>> =A0 -=A0=A0=A0 err =3D ct_register_buffer(ct, base +
> >>>>> ptrdiff(ct->ctbs.send.desc, blob),
> >>>>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_CT_BUFF=
ER_TYPE_SEND);
> >>>>> +=A0=A0=A0 desc =3D base + ptrdiff(ct->ctbs.send.desc, blob);
> >>>>> +=A0=A0=A0 cmds =3D base + ptrdiff(ct->ctbs.send.cmds, blob);
> >>>>> +=A0=A0=A0 err =3D ct_register_buffer(ct, GUC_CTB_TYPE_HOST2GUC,
> >>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc, cmds, ct->c=
tbs.send.size * 4);
> >>>>> +
> >>>>> =A0=A0=A0=A0=A0 if (unlikely(err))
> >>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 goto err_deregister;
> >>>>> =A0 @@ -299,7 +313,7 @@ int intel_guc_ct_enable(struct intel_guc_ct=
 *ct)
> >>>>> =A0=A0=A0=A0=A0 return 0;
> >>>>> =A0 =A0 err_deregister:
> >>>>> -=A0=A0=A0 ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER_TYPE_RECV);
> >>>>> +=A0=A0=A0 ct_deregister_buffer(ct, GUC_CTB_TYPE_GUC2HOST);
> >>>>> =A0 err_out:
> >>>>> =A0=A0=A0=A0=A0 CT_PROBE_ERROR(ct, "Failed to enable CTB (%pe)\n", =
ERR_PTR(err));
> >>>>> =A0=A0=A0=A0=A0 return err;
> >>>>> @@ -318,8 +332,8 @@ void intel_guc_ct_disable(struct intel_guc_ct *=
ct)
> >>>>> =A0=A0=A0=A0=A0 ct->enabled =3D false;
> >>>>> =A0 =A0=A0=A0=A0=A0 if (intel_guc_is_fw_running(guc)) {
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER=
_TYPE_SEND);
> >>>>> -=A0=A0=A0=A0=A0=A0=A0 ct_deregister_buffer(ct, INTEL_GUC_CT_BUFFER=
_TYPE_RECV);
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 ct_deregister_buffer(ct, GUC_CTB_TYPE_HOST2G=
UC);
> >>>>> +=A0=A0=A0=A0=A0=A0=A0 ct_deregister_buffer(ct, GUC_CTB_TYPE_GUC2HO=
ST);
> >>>>> =A0=A0=A0=A0=A0 }
> >>>>> =A0 }
> >>>>
> >>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
