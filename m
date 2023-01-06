Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE0E65FA27
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 04:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5A310E82F;
	Fri,  6 Jan 2023 03:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2479310E82F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 03:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672975629; x=1704511629;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DQjo0UzGT1Mdix8WSBoBBDnU+CvvMoluRQjJUvkjuPQ=;
 b=XfO13E5AUZLQ8ZsuIrVLCj2tj6iZMtxV0Y8SBY/epIKoD/Uvkpt0+d4N
 qLQD41DmaYw+zDQdayU8oSauvHJ79xoz3X+c52ml0f6kZcp/uG6Yokoxy
 646/54BYQD2pEz4dF0hkoAbUUs59ZW2ZEXZlbchWJuWEryZ20QOZZeBvq
 4WwQcOohhypmbscJa2AJlcm9SKW++4Rvt5OAuTJDXejiEqdzvPCwxFD6f
 KL+EksA+39ZHgeFymOkIDi1YhE7BigcchC70Nxxekw/WqxluStOre9M2i
 ek/l/th2JucSbnkxF7t10U0WZOut7nHwBGic3mt/StMXZb8z6cqc2SOBy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="302092454"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="302092454"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 19:27:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="829775235"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="829775235"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 19:27:08 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 19:27:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 19:27:07 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 19:27:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlbZRTVbgDdF51iPe0rn2SRZJjZU5T9Y70H6jAA6FhM8HEftDHp5feN1cg7fOQ/ObrbfUjkf8fK3NyEW6IHXpn3u6cNqO5g+nUH7mzGnuN9sazHpBnMy7gKEXMJUlU2xR+fyr/yF6Sf7se/ZE8+XntzsvRwVnVykoK8EPMyX4fhfIx2YDKZ/gGo1hypZsoH5U5bhLOv7gnxl74E5TRZLnjx9HSmVCUx5pPnwT/ppJ8M1pRLHuIORH08PfBc2yAdnOsNXztDCgceMo4LlZdz4aVUoSYYte6Np8kYSEwEj4e0gyNIvLr7eoHsu9HRc2xyGbJXxQCv1ERdZRHdKqyDrHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cmlqOGinn1ecx+EK92bb/eZ+HJgAYFoqsUZ2CRjBDW0=;
 b=KW4bxXH+EScC58DfH6BP2DUFaFBDXkBdX2M5dzZHYvnCIVHVjuSief04mBiGtjYMHoWy3DgkX7dzxzykMJtlJIoA+qaMMSWywi/o08sK4CPrdzxsVKblzSXP/I0s7AtJ24NjzDTYw1ZK76IHuPKEtyYbxh2AiVea1duT8qbZymbIyfe9t/oLfl+OvaZMrUaTGbwcxcbnctWQ1I0wqzm+HWaCzOyZz44v07jwIENxh6oLIpxTpxvbip3hL1YnFQxJILv/q0pv71Z4Hivl8qOzArfhYokiFDJ/YHQWn8MMw6VMLJc1eTL0h5+/8rW/+UXDZIO7bP0apM1dinexbH9cKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1739.namprd11.prod.outlook.com (2603:10b6:3:111::22)
 by PH0PR11MB5659.namprd11.prod.outlook.com (2603:10b6:510:ea::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 03:27:03 +0000
Received: from DM5PR11MB1739.namprd11.prod.outlook.com
 ([fe80::ba54:60bd:570f:7547]) by DM5PR11MB1739.namprd11.prod.outlook.com
 ([fe80::ba54:60bd:570f:7547%7]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 03:27:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH v5 5/7] drm/i915/hdcp: Fill wired_cmd_in structures at a
 single place
Thread-Index: AQHZHmz9b4Vl7NoiVEuPmnLQbaWQqq6OCAMAgAAF6gCAABOegIACnjWQ
Date: Fri, 6 Jan 2023 03:27:03 +0000
Message-ID: <DM5PR11MB17395635CB309DDDD1D38A52E3FB9@DM5PR11MB1739.namprd11.prod.outlook.com>
References: <20230102054047.124624-1-suraj.kandpal@intel.com>
 <20230102054047.124624-6-suraj.kandpal@intel.com> <87k022y6af.fsf@intel.com>
 <823d28bf-3bb4-4b97-0821-e920588ffec4@linux.intel.com>
 <Y7ViE+7bkT3DUw2t@intel.com>
In-Reply-To: <Y7ViE+7bkT3DUw2t@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1739:EE_|PH0PR11MB5659:EE_
x-ms-office365-filtering-correlation-id: 177267cb-d88e-4467-c927-08daef95e169
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +8LETYjKk25KqsYR5iDRwz/FDGxO0lFV8adxgAWrwb0LWKid8byyRfWJaNd6JV7Fg7bqaxW9pGoSRoBvYxFormL5Kkae6hF4GKwAsScAIyrm10OiC4XMiVlVRoRKsuzaiWjG1dlh5W6TxN56eL/SvtGKUGicHDgOVb62dcOxqFEJ50LzkXboVguTVb1q9Y3e+G5D3CY7Rmm9AM+4X54eWX5URKo/hBWVrMF0a4RRqK78MWKDeR5otCn9DlCbMdEjtc8Zm0dGo2cW9cuiJQuUp5+YwAgEcTm29MF2jsQqkAFrcP9NTwo6hnOCx4bo+Nxmqmz/xVJmnlXjaWPwP+opZmLC+yl2YOwffWwFdg+dxPTZP/MbZ/UrPd875FRwc+K9jJySuQweoVP3qw5fKENmON3Ukhqj4nPEfwqeqQJu1iePJ+Y1N7fFdZIFsHkGwmK4izFNQ1lgcxwICFgZz/ENbjWjKST0ADB/3es3EhzkDubpVchjqc387PpYT9n7pVrkrERWw+V4HlohVtDZ7iboBk5nF0q4FZbekV4nqvoIWOyEwYZJeo/Ix5zG3dC7oi6QHqJjlqhM4S14Rn7gBfGjzf5U9iN7hmGxqRGkJ1Ny0GaVw+F7tjx90sW3x/A9morzh/XAclR7ydOkxjfrjlifxJF3gB4L2KED+Xm0EMlSrnkte15xwl5zyf8G1fIc9GEuAtM+GjGnL74js0id++oUpw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1739.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(39860400002)(346002)(366004)(451199015)(9686003)(26005)(53546011)(33656002)(83380400001)(55016003)(6506007)(186003)(7696005)(38070700005)(122000001)(86362001)(82960400001)(38100700002)(4326008)(8676002)(41300700001)(66899015)(2906002)(5660300002)(8936002)(30864003)(66556008)(52536014)(478600001)(71200400001)(76116006)(66946007)(54906003)(316002)(66476007)(64756008)(66446008)(110136005)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5LlghgCVuDJb7Pu7tcke3QtUZYsyCIblHLx9r8fuwCeeEnc2XTWvEH4pT1WH?=
 =?us-ascii?Q?EOOECdZiPx3hv6GQFdO1+P6nFRqEt1QCynYhzwooTTgoMfsK2GQkXhK3oqiL?=
 =?us-ascii?Q?eWBSp6kM6JdieOsGwCTLF3tobbBUGsVr1OUVAZs85ngdJ+/M9JKOe5/kp0xf?=
 =?us-ascii?Q?WfCRqOJNUlAjnBGpcBjvh+gqBo1P5pM5EqYQwnLyPsI4MyNd+qYKUBR4kIZF?=
 =?us-ascii?Q?5Hm8tQLuSNRM2H3mDo9d0Kb/YIGjGBLGDnheZiqXJpkVdljcMbnvyWPAIUAy?=
 =?us-ascii?Q?+shWJCFSu7+zCFvFEM8/mZVM9AFZUrmPR434WRFUxqEx6Zy0zmKe/nBROeso?=
 =?us-ascii?Q?+D33SQxouY0SaTuhChJC+lrK/DSpqyItvyJLv3ltRCwn5Uj3EoMfsJtYJAkh?=
 =?us-ascii?Q?Jhl3OS3kz+FdZeiTUbT6DxMnbNInv+xNndBGPMrodU/XZLrExpxN8DGoMWOj?=
 =?us-ascii?Q?sw6RopaJnFFoObqUd5G56MuF7+17ssvM/0Bpm7oCVt6pjLtVxDdZJxJZVwth?=
 =?us-ascii?Q?w2RWwMu0zcgVc+4DsbpPTJn5bj8lQSQUymJQuX9MfExRFS9Dmt9eW5S1qWof?=
 =?us-ascii?Q?bWHyl6v69Klz2rvarjUN5+ViIynZWoqdbmvmG/KJUa7TBfDORl2yz8vtn68F?=
 =?us-ascii?Q?RhUdDo9lf2/ZZGEoArDxuvJFLUoImQklIuAI1IbwR60OOY+DhKNDRAqFoVSS?=
 =?us-ascii?Q?T6SpQQsgJJq6ysD0d9Y+QkfdBn5JPZG97UkMbU8hyDk4UVDXHJX8x7hsKdzM?=
 =?us-ascii?Q?9vBfrAOQ6R/SJbS6+4Lk65F1lxyETr2tDjQgKyZv6KAf9bj2CeTSPKY3/wK5?=
 =?us-ascii?Q?lDvTym5z88xx9WeNZWVrBMjjxC7cT1c4daS6aOkhfUtSOEIZn/fQcAij5kKw?=
 =?us-ascii?Q?IO4sT4J++RdnTSQmCBNs+VDcWknmeLnhAac73/B8PRW6EtohJeLkKiHH5sIX?=
 =?us-ascii?Q?GaSizASpby1jTV0CEudNC/NnZUgNlTpJF5NhFgoBwd3aXMgDAwS4l/Y17lJ0?=
 =?us-ascii?Q?FzVLwQfrWgBeOTSaVPSeH4qPihVPyw/1ZsMWyiSyXSFaYvrVxbWwqo251f1i?=
 =?us-ascii?Q?jRYWOn1tg2SNFmbXigvSPSITh5taaeoYUqahN7Ic44GKdJkUX5OwVGctC63W?=
 =?us-ascii?Q?KFvIyaLAGQQPDMGKPCK0rW5khyWg6sHo+XbFaO4leF7buG2INSlGYEabDCy3?=
 =?us-ascii?Q?mZkv+PQ79LqsepBDf2yYWWPWs+WWn9v7LqAhGEfdSm/MnV7kVhJfwBWyfLwW?=
 =?us-ascii?Q?mHQhJDLWYi7hdSASGt4/qOWMuT4GPyjml3OFd1Yk/CEX+GXkiPwZo9sLkvgz?=
 =?us-ascii?Q?GDB63Xs33EODodJWYPuAil+tt0mjdPOylzDEjZVpugJ4pp6j8wRHBVLgP8eJ?=
 =?us-ascii?Q?/pvRaCvjEmYwqmhNPNtNrGDQQmAPHWGiluq+AwRzLwgjnMsC5XFtli2elKrk?=
 =?us-ascii?Q?a0PiR0zUTa2HLdEKcA9G4c0tOFoicmSQvSx866qeTvEtdNNWKDXzL5hisQWN?=
 =?us-ascii?Q?2Pz3pvMHZ/F/ASwnAgaonAGHWWuR+b2yixnOhNw62gLpzOfmDc9tFumFipN+?=
 =?us-ascii?Q?Ts5J6NQVEl2dX6WU1eN2kPqPTO5RMOgIrUikkqiL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1739.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 177267cb-d88e-4467-c927-08daef95e169
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 03:27:03.7005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6zIjIqFtrDnL2CKRKAKi8QP4uSMQGQsLH0VwV9NMy3bE5A/EXPgy7we2Bug024iJPSaFi3ztSBydzavlAT8qFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5659
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 5/7] drm/i915/hdcp: Fill wired_cmd_in
 structures at a single place
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > On 04/01/2023 09:53, Jani Nikula wrote:
> > > On Mon, 02 Jan 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > > > Need to fill wired cmd in structures at a single place as they
> > > > remain same for both gsc and mei.
> > >
> > > I'm still opposed to adding this stuff to i915 and exporting the
> > > symbols. Seems like it should be a separate component, because this
> > > is not about i915.
> > >
> > > Cc: other maintainers, please chime in.
> > >
> > > > --v3
> > > > -remove inline function from header [Jani]
> > > >
> > > > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >   drivers/gpu/drm/i915/Makefile              |   1 +
> > > >   drivers/gpu/drm/i915/i915_hdcp_interface.c | 216
> +++++++++++++++++++++
> > > >   drivers/misc/mei/hdcp/mei_hdcp.c           | 153 ++-------------
> > > >   include/drm/i915_hdcp_interface.h          |  39 ++++
> > > >   4 files changed, 270 insertions(+), 139 deletions(-)
> > > >   create mode 100644 drivers/gpu/drm/i915/i915_hdcp_interface.c
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/Makefile
> > > > b/drivers/gpu/drm/i915/Makefile index 461d6b40656d..c6a9826af58d
> > > > 100644
> > > > --- a/drivers/gpu/drm/i915/Makefile
> > > > +++ b/drivers/gpu/drm/i915/Makefile
> > > > @@ -36,6 +36,7 @@ i915-y +=3D i915_driver.o \
> > > >   	  i915_drm_client.o \
> > > >   	  i915_config.o \
> > > >   	  i915_getparam.o \
> > > > +	  i915_hdcp_interface.o\
> > > >   	  i915_ioctl.o \
> > > >   	  i915_irq.o \
> > > >   	  i915_mitigations.o \
> > > > diff --git a/drivers/gpu/drm/i915/i915_hdcp_interface.c
> > > > b/drivers/gpu/drm/i915/i915_hdcp_interface.c
> > > > new file mode 100644
> > > > index 000000000000..e6b787c2fa50
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/i915/i915_hdcp_interface.c
> > > > @@ -0,0 +1,216 @@
> > > > +// SPDX-License-Identifier: MIT
> > > > +/*
> > > > + * Copyright 2022, Intel Corporation.
> > > > + */
> > > > +
> > > > +#include <drm/i915_hdcp_interface.h>
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_session_in(struct wired_cmd_initiate_hdcp2_session_=
in
> *session_init_in,
> > > > +			  struct hdcp_port_data *data) {
> > > > +	session_init_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	session_init_in->header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION;
> > > > +	session_init_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	session_init_in->header.buffer_len =3D
> > > > +
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > > > +
> > > > +	session_init_in->port.integrated_port_type =3D data->port_type;
> > > > +	session_init_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	session_init_in->port.attached_transcoder =3D (u8)data->hdcp_tran=
scoder;
> > > > +	session_init_in->protocol =3D data->protocol; }
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_session_in);
> >
> > I am not familiar enough with the problem space but this kind of
> > trivial exported symbols definitely do not look like the best choice.
> >
> > Presumably there are two kernel modules dealing with this HDCP
> > protocol in which case would creating a kernel module like intel_hdcp,
> > which would establish the protocol definitions and API to use it. I915
> > and any other module would then depend on that module and use it.
> >
> > Presumably this is what Jani meant actually and that sounds like the
> > exactly right direction to me. I just don't know enough about the
> > scope of the protocol to propose anything more specific.
>=20
> I'm also in favor of the separated module here. Eventually we will have t=
o use it in
> the new Xe driver as well.
>=20
>=20

In that case ill create a different patch series which uses a different mod=
ule rather than the
export symbol method and in this series rever back to how things used to be=
 i.e keeping this
in the mei_hdcp.c file for now

Regards,
Suraj Kandpal

> >
> > Regards,
> >
> > Tvrtko
> >
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in
> *verify_rxcert_in,
> > > > +			 struct hdcp2_ake_send_cert *rx_cert,
> > > > +			 struct hdcp_port_data *data)
> > > > +{
> > > > +	verify_rxcert_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	verify_rxcert_in->header.command_id =3D
> WIRED_VERIFY_RECEIVER_CERT;
> > > > +	verify_rxcert_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	verify_rxcert_in->header.buffer_len =3D
> > > > +
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > > > +
> > > > +	verify_rxcert_in->port.integrated_port_type =3D data->port_type;
> > > > +	verify_rxcert_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	verify_rxcert_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	verify_rxcert_in->cert_rx =3D rx_cert->cert_rx;
> > > > +	memcpy(verify_rxcert_in->r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > > > +	memcpy(verify_rxcert_in->rx_caps, rx_cert->rx_caps,
> > > > +HDCP_2_2_RXCAPS_LEN); } EXPORT_SYMBOL(i915_hdcp_fill_rxcert_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_hprime_in(struct wired_cmd_ake_send_hprime_in
> *send_hprime_in,
> > > > +			 struct hdcp2_ake_send_hprime *rx_hprime,
> > > > +			 struct hdcp_port_data *data)
> > > > +{
> > > > +	send_hprime_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	send_hprime_in->header.command_id =3D WIRED_AKE_SEND_HPRIME;
> > > > +	send_hprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	send_hprime_in->header.buffer_len =3D
> > > > +WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > > > +
> > > > +	send_hprime_in->port.integrated_port_type =3D data->port_type;
> > > > +	send_hprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	send_hprime_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(send_hprime_in->h_prime, rx_hprime->h_prime,
> > > > +	       HDCP_2_2_H_PRIME_LEN);
> > > > +}
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_hprime_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_i=
nfo_in
> *pairing_info_in,
> > > > +			       struct hdcp2_ake_send_pairing_info *pairing_info,
> > > > +			       struct hdcp_port_data *data) {
> > > > +	pairing_info_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	pairing_info_in->header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO;
> > > > +	pairing_info_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	pairing_info_in->header.buffer_len =3D
> > > > +
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > > > +
> > > > +	pairing_info_in->port.integrated_port_type =3D data->port_type;
> > > > +	pairing_info_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	pairing_info_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(pairing_info_in->e_kh_km, pairing_info->e_kh_km,
> > > > +	       HDCP_2_2_E_KH_KM_LEN);
> > > > +}
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_pairing_info_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_locality_check_in(struct wired_cmd_init_locality_ch=
eck_in
> *lc_init_in,
> > > > +				 struct hdcp_port_data *data) {
> > > > +	lc_init_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	lc_init_in->header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> > > > +	lc_init_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	lc_init_in->header.buffer_len =3D
> > > > +WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > > > +
> > > > +	lc_init_in->port.integrated_port_type =3D data->port_type;
> > > > +	lc_init_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	lc_init_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder; }
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_locality_check_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_validate_locality_in(struct wired_cmd_validate_loca=
lity_in
> *verify_lprime_in,
> > > > +				    struct hdcp2_lc_send_lprime *rx_lprime,
> > > > +				    struct hdcp_port_data *data) {
> > > > +	verify_lprime_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	verify_lprime_in->header.command_id =3D WIRED_VALIDATE_LOCALITY;
> > > > +	verify_lprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	verify_lprime_in->header.buffer_len =3D
> > > > +
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > > > +
> > > > +	verify_lprime_in->port.integrated_port_type =3D data->port_type;
> > > > +	verify_lprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	verify_lprime_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(verify_lprime_in->l_prime, rx_lprime->l_prime,
> > > > +	       HDCP_2_2_L_PRIME_LEN);
> > > > +}
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_validate_locality_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_session_key_in(struct wired_cmd_get_session_key_in
> *get_skey_in,
> > > > +			      struct hdcp_port_data *data) {
> > > > +	get_skey_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	get_skey_in->header.command_id =3D WIRED_GET_SESSION_KEY;
> > > > +	get_skey_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	get_skey_in->header.buffer_len =3D
> > > > +WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > > > +
> > > > +	get_skey_in->port.integrated_port_type =3D data->port_type;
> > > > +	get_skey_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	get_skey_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder; }
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_session_key_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_repeater_in(struct wired_cmd_verify_repeater_in
> *verify_repeater_in,
> > > > +			   struct hdcp2_rep_send_receiverid_list *rep_topology,
> > > > +			   struct hdcp_port_data *data) {
> > > > +	verify_repeater_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	verify_repeater_in->header.command_id =3D WIRED_VERIFY_REPEATER;
> > > > +	verify_repeater_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	verify_repeater_in->header.buffer_len =3D
> > > > +				WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > > > +
> > > > +	verify_repeater_in->port.integrated_port_type =3D data->port_type=
;
> > > > +	verify_repeater_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	verify_repeater_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(verify_repeater_in->rx_info, rep_topology->rx_info,
> > > > +	       HDCP_2_2_RXINFO_LEN);
> > > > +	memcpy(verify_repeater_in->seq_num_v, rep_topology->seq_num_v,
> > > > +	       HDCP_2_2_SEQ_NUM_LEN);
> > > > +	memcpy(verify_repeater_in->v_prime, rep_topology->v_prime,
> > > > +	       HDCP_2_2_V_PRIME_HALF_LEN);
> > > > +	memcpy(verify_repeater_in->receiver_ids, rep_topology->receiver_i=
ds,
> > > > +	       HDCP_2_2_RECEIVER_IDS_MAX_LEN); }
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_repeater_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_auth_stream_req_in(struct
> wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
> > > > +				  struct hdcp2_rep_stream_ready
> *stream_ready, ssize_t cmd_size,
> > > > +				  struct hdcp_port_data *data) {
> > > > +	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	verify_mprime_in->header.command_id =3D
> WIRED_REPEATER_AUTH_STREAM_REQ;
> > > > +	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	verify_mprime_in->header.buffer_len =3D cmd_size  -
> > > > +sizeof(verify_mprime_in->header);
> > > > +
> > > > +	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > > > +	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	verify_mprime_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder;
> > > > +
> > > > +	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> HDCP_2_2_MPRIME_LEN);
> > > > +	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m,
> > > > +data->seq_num_m);
> > > > +
> > > > +	memcpy(verify_mprime_in->streams, data->streams,
> > > > +	       array_size(data->k, sizeof(*data->streams)));
> > > > +
> > > > +	verify_mprime_in->k =3D cpu_to_be16(data->k); }
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_auth_stream_req_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_enable_auth_in(struct wired_cmd_enable_auth_in
> *enable_auth_in,
> > > > +			      struct hdcp_port_data *data) {
> > > > +	enable_auth_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	enable_auth_in->header.command_id =3D WIRED_ENABLE_AUTH;
> > > > +	enable_auth_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	enable_auth_in->header.buffer_len =3D
> > > > +WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > > > +
> > > > +	enable_auth_in->port.integrated_port_type =3D data->port_type;
> > > > +	enable_auth_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	enable_auth_in->port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > > > +	enable_auth_in->stream_type =3D data->streams[0].stream_type; }
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_enable_auth_in);
> > > > +
> > > > +void
> > > > +i915_hdcp_fill_close_session_in(struct wired_cmd_close_session_in
> *session_close_in,
> > > > +				struct hdcp_port_data *data)
> > > > +{
> > > > +	session_close_in->header.api_version =3D HDCP_API_VERSION;
> > > > +	session_close_in->header.command_id =3D WIRED_CLOSE_SESSION;
> > > > +	session_close_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > +	session_close_in->header.buffer_len =3D
> > > > +				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > > > +
> > > > +	session_close_in->port.integrated_port_type =3D data->port_type;
> > > > +	session_close_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > +	session_close_in->port.attached_transcoder =3D
> > > > +(u8)data->hdcp_transcoder; }
> > > > +EXPORT_SYMBOL(i915_hdcp_fill_close_session_in);
> > > > +
> > > > diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c
> > > > b/drivers/misc/mei/hdcp/mei_hdcp.c
> > > > index d4faecbbbe76..2cf42e98dfae 100644
> > > > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > > > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > > > @@ -50,17 +50,7 @@ mei_hdcp_initiate_session(struct device *dev, st=
ruct
> hdcp_port_data *data,
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -	session_init_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	session_init_in.header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION;
> > > > -	session_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	session_init_in.header.buffer_len =3D
> > > > -
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > > > -
> > > > -	session_init_in.port.integrated_port_type =3D data->port_type;
> > > > -	session_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	session_init_in.port.attached_transcoder =3D (u8)data->hdcp_trans=
coder;
> > > > -	session_init_in.protocol =3D data->protocol;
> > > > -
> > > > +	i915_hdcp_fill_session_in(&session_init_in, data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&session_init_in,
> > > >   			      sizeof(session_init_in));
> > > >   	if (byte < 0) {
> > > > @@ -119,21 +109,7 @@
> mei_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
> > > >   		return -EINVAL;
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -
> > > > -	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	verify_rxcert_in.header.command_id =3D
> WIRED_VERIFY_RECEIVER_CERT;
> > > > -	verify_rxcert_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	verify_rxcert_in.header.buffer_len =3D
> > > > -
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > > > -
> > > > -	verify_rxcert_in.port.integrated_port_type =3D data->port_type;
> > > > -	verify_rxcert_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	verify_rxcert_in.port.attached_transcoder =3D (u8)data->hdcp_tran=
scoder;
> > > > -
> > > > -	verify_rxcert_in.cert_rx =3D rx_cert->cert_rx;
> > > > -	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > > > -	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps,
> HDCP_2_2_RXCAPS_LEN);
> > > > -
> > > > +	i915_hdcp_fill_rxcert_in(&verify_rxcert_in, rx_cert, data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&verify_rxcert_in,
> > > >   			      sizeof(verify_rxcert_in));
> > > >   	if (byte < 0) {
> > > > @@ -192,18 +168,7 @@ mei_hdcp_verify_hprime(struct device *dev,
> struct hdcp_port_data *data,
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> > > > -	send_hprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	send_hprime_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > > > -
> > > > -	send_hprime_in.port.integrated_port_type =3D data->port_type;
> > > > -	send_hprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	send_hprime_in.port.attached_transcoder =3D (u8)data->hdcp_transc=
oder;
> > > > -
> > > > -	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
> > > > -	       HDCP_2_2_H_PRIME_LEN);
> > > > -
> > > > +	i915_hdcp_fill_hprime_in(&send_hprime_in, rx_hprime, data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&send_hprime_in,
> > > >   			      sizeof(send_hprime_in));
> > > >   	if (byte < 0) {
> > > > @@ -248,20 +213,8 @@ mei_hdcp_store_pairing_info(struct device *dev=
,
> struct hdcp_port_data *data,
> > > >   		return -EINVAL;
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -
> > > > -	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	pairing_info_in.header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO;
> > > > -	pairing_info_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	pairing_info_in.header.buffer_len =3D
> > > > -
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > > > -
> > > > -	pairing_info_in.port.integrated_port_type =3D data->port_type;
> > > > -	pairing_info_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	pairing_info_in.port.attached_transcoder =3D (u8)data->hdcp_trans=
coder;
> > > > -
> > > > -	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> > > > -	       HDCP_2_2_E_KH_KM_LEN);
> > > > -
> > > > +	i915_hdcp_fill_pairing_info_in(&pairing_info_in, pairing_info,
> > > > +				       data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&pairing_info_in,
> > > >   			      sizeof(pairing_info_in));
> > > >   	if (byte < 0) {
> > > > @@ -309,15 +262,7 @@ mei_hdcp_initiate_locality_check(struct device
> *dev,
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -	lc_init_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> > > > -	lc_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	lc_init_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > > > -
> > > > -	lc_init_in.port.integrated_port_type =3D data->port_type;
> > > > -	lc_init_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	lc_init_in.port.attached_transcoder =3D (u8)data->hdcp_transcoder=
;
> > > > -
> > > > +	i915_hdcp_fill_locality_check_in(&lc_init_in, data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init=
_in));
> > > >   	if (byte < 0) {
> > > >   		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte); @@ -
> 364,19
> > > > +309,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct
> hdcp_port_data *data,
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> > > > -	verify_lprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	verify_lprime_in.header.buffer_len =3D
> > > > -
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > > > -
> > > > -	verify_lprime_in.port.integrated_port_type =3D data->port_type;
> > > > -	verify_lprime_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	verify_lprime_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > > > -
> > > > -	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> > > > -	       HDCP_2_2_L_PRIME_LEN);
> > > > -
> > > > +	i915_hdcp_fill_validate_locality_in(&verify_lprime_in, rx_lprime,
> > > > +					    data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&verify_lprime_in,
> > > >   			      sizeof(verify_lprime_in));
> > > >   	if (byte < 0) {
> > > > @@ -423,15 +357,7 @@ static int mei_hdcp_get_session_key(struct dev=
ice
> *dev,
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -	get_skey_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
> > > > -	get_skey_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	get_skey_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > > > -
> > > > -	get_skey_in.port.integrated_port_type =3D data->port_type;
> > > > -	get_skey_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	get_skey_in.port.attached_transcoder =3D (u8)data->hdcp_transcode=
r;
> > > > -
> > > > +	i915_hdcp_fill_session_key_in(&get_skey_in, data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&get_skey_in, sizeof(get_sk=
ey_in));
> > > >   	if (byte < 0) {
> > > >   		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte); @@ -
> 487,25
> > > > +413,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device
> *dev,
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> > > > -	verify_repeater_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	verify_repeater_in.header.buffer_len =3D
> > > > -
> 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > > > -
> > > > -	verify_repeater_in.port.integrated_port_type =3D data->port_type;
> > > > -	verify_repeater_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	verify_repeater_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > > > -
> > > > -	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> > > > -	       HDCP_2_2_RXINFO_LEN);
> > > > -	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
> > > > -	       HDCP_2_2_SEQ_NUM_LEN);
> > > > -	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
> > > > -	       HDCP_2_2_V_PRIME_HALF_LEN);
> > > > -	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_id=
s,
> > > > -	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> > > > -
> > > > +	i915_hdcp_fill_repeater_in(&verify_repeater_in, rep_topology,
> > > > +data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&verify_repeater_in,
> > > >   			      sizeof(verify_repeater_in));
> > > >   	if (byte < 0) {
> > > > @@ -566,23 +474,8 @@ static int mei_hdcp_verify_mprime(struct devic=
e
> *dev,
> > > >   	if (!verify_mprime_in)
> > > >   		return -ENOMEM;
> > > > -	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
> > > > -	verify_mprime_in->header.command_id =3D
> WIRED_REPEATER_AUTH_STREAM_REQ;
> > > > -	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	verify_mprime_in->header.buffer_len =3D cmd_size  -
> sizeof(verify_mprime_in->header);
> > > > -
> > > > -	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > > > -	verify_mprime_in->port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	verify_mprime_in->port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > > > -
> > > > -	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> HDCP_2_2_MPRIME_LEN);
> > > > -	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> >seq_num_m);
> > > > -
> > > > -	memcpy(verify_mprime_in->streams, data->streams,
> > > > -	       array_size(data->k, sizeof(*data->streams)));
> > > > -
> > > > -	verify_mprime_in->k =3D cpu_to_be16(data->k);
> > > > -
> > > > +	i915_hdcp_fill_auth_stream_req_in(verify_mprime_in, stream_ready,
> > > > +					  cmd_size, data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)verify_mprime_in, cmd_size)=
;
> > > >   	kfree(verify_mprime_in);
> > > >   	if (byte < 0) {
> > > > @@ -628,16 +521,7 @@ static int mei_hdcp_enable_authentication(stru=
ct
> device *dev,
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
> > > > -	enable_auth_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	enable_auth_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > > > -
> > > > -	enable_auth_in.port.integrated_port_type =3D data->port_type;
> > > > -	enable_auth_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	enable_auth_in.port.attached_transcoder =3D (u8)data->hdcp_transc=
oder;
> > > > -	enable_auth_in.stream_type =3D data->streams[0].stream_type;
> > > > -
> > > > +	i915_hdcp_fill_enable_auth_in(&enable_auth_in, data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&enable_auth_in,
> > > >   			      sizeof(enable_auth_in));
> > > >   	if (byte < 0) {
> > > > @@ -682,16 +566,7 @@ mei_hdcp_close_session(struct device *dev, str=
uct
> hdcp_port_data *data)
> > > >   	cldev =3D to_mei_cl_device(dev);
> > > > -	session_close_in.header.api_version =3D HDCP_API_VERSION;
> > > > -	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> > > > -	session_close_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > > > -	session_close_in.header.buffer_len =3D
> > > > -				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > > > -
> > > > -	session_close_in.port.integrated_port_type =3D data->port_type;
> > > > -	session_close_in.port.physical_port =3D (u8)data->hdcp_ddi;
> > > > -	session_close_in.port.attached_transcoder =3D (u8)data-
> >hdcp_transcoder;
> > > > -
> > > > +	i915_hdcp_fill_close_session_in(&session_close_in, data);
> > > >   	byte =3D mei_cldev_send(cldev, (u8 *)&session_close_in,
> > > >   			      sizeof(session_close_in));
> > > >   	if (byte < 0) {
> > > > diff --git a/include/drm/i915_hdcp_interface.h
> > > > b/include/drm/i915_hdcp_interface.h
> > > > index a92925cd1eae..9952bf78d4f7 100644
> > > > --- a/include/drm/i915_hdcp_interface.h
> > > > +++ b/include/drm/i915_hdcp_interface.h
> > > > @@ -536,4 +536,43 @@ struct
> wired_cmd_repeater_auth_stream_req_out {
> > > >   	struct hdcp_port_id	port;
> > > >   } __packed;
> > > > +void
> > > > +i915_hdcp_fill_session_in(struct wired_cmd_initiate_hdcp2_session_=
in
> *session_init_in,
> > > > +			  struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in
> *verify_rxcert_in,
> > > > +			 struct hdcp2_ake_send_cert *rx_cert,
> > > > +			 struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_hprime_in(struct wired_cmd_ake_send_hprime_in
> *send_hprime_in,
> > > > +			 struct hdcp2_ake_send_hprime *rx_hprime,
> > > > +			 struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_i=
nfo_in
> *pairing_info_in,
> > > > +			       struct hdcp2_ake_send_pairing_info *pairing_info,
> > > > +			       struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_locality_check_in(struct wired_cmd_init_locality_ch=
eck_in
> *lc_init_in,
> > > > +				 struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_validate_locality_in(struct wired_cmd_validate_loca=
lity_in
> *verify_lprime_in,
> > > > +				    struct hdcp2_lc_send_lprime *rx_lprime,
> > > > +				    struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_session_key_in(struct wired_cmd_get_session_key_in
> *get_skey_in,
> > > > +			      struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_repeater_in(struct wired_cmd_verify_repeater_in
> *verify_repeater_in,
> > > > +			   struct hdcp2_rep_send_receiverid_list *rep_topology,
> > > > +			   struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_auth_stream_req_in(struct
> wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
> > > > +				  struct hdcp2_rep_stream_ready
> *stream_ready, ssize_t cmd_size,
> > > > +				  struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_enable_auth_in(struct wired_cmd_enable_auth_in
> *enable_auth_in,
> > > > +			      struct hdcp_port_data *data); void
> > > > +i915_hdcp_fill_close_session_in(struct wired_cmd_close_session_in
> *session_close_in,
> > > > +				struct hdcp_port_data *data);
> > > >   #endif /* _I915_HDCP_INTERFACE_H_ */
> > >
