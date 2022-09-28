Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BA35EDC62
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 14:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029E410E47E;
	Wed, 28 Sep 2022 12:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BED110E47E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 12:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664367374; x=1695903374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tNV5IQUDrJL0UOVBVMZMjLOsljyoKe1sdDtMZJYWn1Q=;
 b=mkQoEWN0uOgWbJCu9pHTBp6bpZJfolrJGsedEEfjKmQbwZyxsJFz3Hed
 URBQSDSBhqMUPMqi4yV0qNxipr5RlpMyS49uTxl9phxlUjomEf3dhBjvJ
 lPxTRt75r7iyNkJCC9mPAg5I2W6iHBE80ydDZW+68BICQa8M/mi1RWyy7
 4AJXFDP/zEtI4mAdkgQ9ipudiZQG0EmwBzaYOx4+JNcBNfgmf3BlL4qRY
 FhZ58KZ+UqA1BzQtOUZjTE47O021X1xVxBI+r/w9Dvb6cur+//crcqkw7
 GC81GDW8T9tB7D08Ls69WaC0vYctQGDxMb3z2mLhX++DVoabiImXEUnid A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="300303355"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="300303355"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 05:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="866953847"
X-IronPort-AV: E=Sophos;i="5.93,352,1654585200"; d="scan'208";a="866953847"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 28 Sep 2022 05:16:12 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 05:16:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 05:16:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 05:16:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6uNcJfG2ssBsxPRcAOenWFyxbyb9JSgTj4RpA/KWmwENWV/lA8dkX65JiAxdwE/pRD2pHdIiL4tPPAXW1TELqiZAm/KkyYGwavO+QaPUinzsoGRLZjNdjju1WYRCOuef60+iSj1b6NYj50qvChpG6ABoE9bwocliJ53mReJQ+pId8qSyI63E8pI6CADdYUMYH1zpKYdgZi5DepXO7/lPfSfhGzPGbIBo6ZNNZBYkYzeAN2uOg75U88u5cdUPbJy2GBRup0eOJuaERwxtL/oUFNkhelRQMyKtZ4UUGQ5gFIiRlrQEYAIccbJoksGMBh1EmPZfj0uvM+SI9PrmJVquA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A0m/Q7b9PW52LKqfXTHV8ivTpaGrj/6Biw4d2X83Ojc=;
 b=Cm9SpARwilrAo9u9PyAQFD5Zr8izwlGa4TtYRFlf+uX7pFgggUZnYM6F5ekdlJ0F92eU6ndt/3ZrdzoYqxeKsr4bpJcFtWH0c9/6wYsUkBwNsbcksDniG+jn0rBwQMLwU/1UA6ncGyAvdXlJHFSaEIeacBwqGxapeE6Xw76ZBRY61LR3kk5K5kB54Wwxkvr6+GL2TAAdXTPc577Jw+Kl7V7ZeNCoJtptV0MPcAaYhIgBjLsU9foLDJ+uRz6Qin1ocChyHpdwuufQ8/LkF3VsBc63eRvK6ubkg5t6C1Rst5RdB2t44Jjt66V7BadNlGqVuD/mkS+K5B3GZ2qyrky4Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) by
 CH0PR11MB5523.namprd11.prod.outlook.com (2603:10b6:610:d6::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.16; Wed, 28 Sep 2022 12:16:10 +0000
Received: from DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::e1dd:b01e:569f:59f0]) by DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::e1dd:b01e:569f:59f0%7]) with mapi id 15.20.5676.019; Wed, 28 Sep 2022
 12:16:10 +0000
From: "Tangudu, Tilak" <tilak.tangudu@intel.com>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
Thread-Index: AQHYnOb/nXPKOQaUxEK3uszLKYKWSa2dtiSAgACS7CCAVuSFAA==
Date: Wed, 28 Sep 2022 12:16:10 +0000
Message-ID: <DM4PR11MB52486B936CD17F347D2B7070E2549@DM4PR11MB5248.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-2-tilak.tangudu@intel.com>
 <YurbEfhNA53uoNlk@intel.com>
 <DM4PR11MB524866E916928FF7F9752A58E29F9@DM4PR11MB5248.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB524866E916928FF7F9752A58E29F9@DM4PR11MB5248.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jani.nikula@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5248:EE_|CH0PR11MB5523:EE_
x-ms-office365-filtering-correlation-id: 7cb2b50c-a66a-4144-0bab-08daa14b3aa4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cf9xN5r4Jhr8Ag73paWrUjwQP4J1ajnhRmgjAuL60ZtZyR/y0Lj9F74FrK8QtuGo2r4dbTqkgtT1XRzh4i1NBfWPXVtkbD2tMWTTgbbUyoTjgIurdgnk3nhgqCtlmevzmEJrQCnSsVUp+lgcNLrNS2Z9Cyvfgy6GoCDHmcp2bjDCa7BlQ+zaIF2GPgpCE0S+my0D0oAGo3rYnuRAnS2cfZ66Zb26AnhGeqG8JzlU55IxpwwznISRgbYxqTp9FlZlg/D2egG2Xy578revXJLci7J52sGArycm0cbrvEg3X8xyfNOnLSTZO3h70PMWXs5kSQgI3cfKNwIc2RK/v2n7cAmsXyU/hVUiQ2ql7dnhaGYB/vJ9fn/eXVbI+5rSYIM/OY6/7rorM+cgsHvi6QVlgIcb1dWWQjiQjr9yEE8eAyelzuqb3Z3+F9NWs3BwU1kBg2SmR2wYblz/9iGE1ocKnnNPwr+S7nCi+wRO/L3ZO2xjKdp/Mj97dl0pYw3SW+RyM0x7bCUUmFvb3lLamKdd8rBCOY0ZHYKPdjxsO0CCVlKBXvHDlm11GTx/qCX0wR1I42cTlOXRVlQB8sK+zPF+GPVZ0EDAkA6yDQVBMo8X3RVnNQwj6xRt4uFuhHVZ3fKOVzNxn6IRhcf+EAGZ7vaxDnykDAgHM0YHPUbmF1ERas6Vdr/TH9nepNeKY5kLoA9uz5o7wJo9Y60qHHf8yVXlmQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5248.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(376002)(136003)(366004)(451199015)(186003)(83380400001)(55016003)(4326008)(41300700001)(64756008)(66446008)(66946007)(86362001)(76116006)(5660300002)(66476007)(33656002)(82960400001)(66556008)(52536014)(54906003)(110136005)(38070700005)(8936002)(6636002)(316002)(53546011)(26005)(9686003)(55236004)(6506007)(7696005)(478600001)(2906002)(71200400001)(8676002)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8E2H4XVMoXlyAloyAUtxIq0LMrv71ay3UQmbSR/il7JG48TSGPV2nMbeYARm?=
 =?us-ascii?Q?Zy3Mz0m9Ff07cPyiljNthvrKi2iyH+qrAWpnHu1Q3bfRxaBR+PwElIvkEqi/?=
 =?us-ascii?Q?KZgEqbj1sLSmfMcz4P3JyLpi4uf42MpOORKTX/JpHGwQNt8WBtEDxxzspYzW?=
 =?us-ascii?Q?21GPBarXlzXSf3CxvyQL4p4Wo0VM5kzYjXVAtFzKDFAR0w2/SjKXz5F7p0Ru?=
 =?us-ascii?Q?ifIF1U6edYlWj3UfBIppO08wR7OcY+hanXyxYp6qfWa7cR+zF4eIkvADq5AN?=
 =?us-ascii?Q?kxC4bRRk5leTiYGFYBhP9AbLO1ZSV5UYIWh+I1zM/ShW5RCuGc2UcSn+Krja?=
 =?us-ascii?Q?09JPK5SvUIjQ91QRQy3BcvcZVNoNgRvDSaMA5pgp1SNIJ35qnp+QKda9diO1?=
 =?us-ascii?Q?8whQ3avaMq4TgaCADN8+4Wv39YR8/Rqx4AzjZ+EHQYyChAX24fLP8J8O06Hf?=
 =?us-ascii?Q?D1MY+DjsFYA7EKE1ajphCgi0As67NNnf7SfbnxSrVdOI10cFU2qzauvNX6w6?=
 =?us-ascii?Q?xXdyKKNaiRjPukPVNhZcLXZ25/fA6It2/tKQ5uoE+++p2j42t1OgNYfQGnUx?=
 =?us-ascii?Q?0D1jZSUM84oFVmKuPKvdSFKkZ2R+YBOsdF8VmZPsCQq6JRUSQ0yB0H0JiabP?=
 =?us-ascii?Q?81laUqscd6An4cyQKZP1mpnlD832TYxLYAMOY1w7NnRt0eyqYE3QuDeuM6oh?=
 =?us-ascii?Q?5p2nuofeYs2ALkQ1VBwfPUSgZRJ1Hkn9MMEVIQb/w2Nc4ZxIo1tC+8Twqwkt?=
 =?us-ascii?Q?6EPYekO/WnJC6Ig3DloAB2EI9a5xQmLYKKl8B+I5mRztbukxA5W1HX/9zheU?=
 =?us-ascii?Q?JfjJk0I9E/7Y5vBFMYyhVIgf+UAEdbdIRH22+UevhXtIk+aQ0YKjAaQeU+M7?=
 =?us-ascii?Q?vCLQ7b41U9WzDUvykPvTSVDkDrCP61+fLupAI6ruPGi8AypFSLxbtOnSqgE2?=
 =?us-ascii?Q?TkPGzBMsTUAb2gYRN95gThhnXyYXI8rK1Gu+Zz3D0PaPoIQ4KhN6BwSQDkch?=
 =?us-ascii?Q?VDij6SigdeH9oTDWVNtzfzryK+xv1dzKDiSWLkUfvEWIQxzeIpYgmy6Mp3xz?=
 =?us-ascii?Q?EDJGEf4dQK84bhTwandfRHB9ULnGCJNLl72eObu1gqayq9OPKJbXvoPyn8Xc?=
 =?us-ascii?Q?4D1YKmXJ7vfHOEucAADjK1RFGrdIsBfUOgEu0gJJ475VhCS/n2o/rvfY8xuf?=
 =?us-ascii?Q?NZJvLTHD7RR9nnQnDhYOFNtKMfl1CPI1X/Q40CcR+0OT6uGDpyu0x9s3enNI?=
 =?us-ascii?Q?/zSQzToN2UQRmiY+bPRsBfOTr9MRe2RR0XOzUOhjylLQe/fxFmCJrk2oChW0?=
 =?us-ascii?Q?vkyMG6k41KzODWHkOnrz9rbzsuPgNODMObjLKGxleWdf4irLjd3iVQffbDff?=
 =?us-ascii?Q?qbQ32jsJOhci9sDEnHOCsDrr/HvE26sY5m1duX7BZVd9GT2hHqJlS55vX0Vm?=
 =?us-ascii?Q?SZtgVqEYlu1k09Pi5ifOGYf+1O/mSsIWfZLo8P6AwJs72E2s39Ojd1KA6LWF?=
 =?us-ascii?Q?/BolGHAhQMbvI3sDCZzoc4r7lCSGXivW0uG9JHojcYY+Hgg/Kn3KL9rl8nwU?=
 =?us-ascii?Q?GFNXjam+jVFEk73zEb9rQ7G5tKUeYgGBYlRfFSI4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5248.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cb2b50c-a66a-4144-0bab-08daa14b3aa4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2022 12:16:10.4169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4P9fJ3+U9FYVC2g7hu/CC03jeHBksfPq7U6ArhVJzUyyhbiTdbZtvB5pTjKMAzTj2MRhvlcu3LiC6F71Ye/wEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5523
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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
Cc: "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

 @Nikula, Jani,

As you know we have reused i915_gem_backup_suspend, i915_gem_suspend_late a=
nd=20
i915_gem_resume in runtime_pm_suspend/resume callbacks ,they use runtime pm=
=20
helpers (intel_runtime_pm_get/put).
These need to be avoided in callbacks as they lead to deadlock.

This can be done in two ways=20
1) push runtime pm helpers usage at higher level functions,
Which requires code refactoring (https://patchwork.freedesktop.org/series/1=
05427/#rev2    is partially implemented following this)
2) Add is_intel_rpm_allowed helper and avoid the runtime helpers (https://p=
atchwork.freedesktop.org/series/105427/#rev3 is completely implemented foll=
owing this)

Hope I gave you the context,

As per your review comment in rev2,  the below is implemented in rev3

""""""""""""""""""""""""
v2: Return -2 if runtime pm is not allowed in runtime_pm_get and skip
wakeref release in runtime_pm_put if wakeref value is -2. - Jani N
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
"""""""""""""""""""""""""

Rodrigo and myself want to trigger a discussion, if 2) is a proper approach=
 or go with 1) which requires lot of code refactoring.
Or Is there any way we follow 1) with less code refactoring.?
Or Do you think there is any other proper approach ?

(Please note rev3 is not clean, d3cold off support need to be restricted to=
 Headless clients for now , we see some Display related warnings in headed =
case ).

Thanks
Tilak


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Tangudu, Tilak
> Sent: Thursday, August 4, 2022 11:03 AM
> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Cc: Nikula, Jani <jani.nikula@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Gupta, saurabhg <saurabhg.gupta@intel.com>;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
> helper
>=20
>=20
>=20
> > -----Original Message-----
> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Sent: Thursday, August 4, 2022 2:01 AM
> > To: Tangudu, Tilak <tilak.tangudu@intel.com>
> > Cc: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> > <vinay.belgaumkar@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>; Wilson, Chris P
> > <chris.p.wilson@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> > Gupta, saurabhg <saurabhg.gupta@intel.com>; Gupta, Anshuman
> > <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> > Deak, Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> > <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
> >
> > On Thu, Jul 21, 2022 at 03:29:48PM +0530, tilak.tangudu@intel.com wrote=
:
> > > From: Tilak Tangudu <tilak.tangudu@intel.com>
> > >
> > > Added is_intel_rpm_allowed function to query the runtime_pm status
> > > and disllow during suspending and resuming.
> >
> > >
> > > v2: Return -2 if runtime pm is not allowed in runtime_pm_get and
> > > skip wakeref release in runtime_pm_put if wakeref value is -2. -
> > > Jani N
> >
> > Should we have some defines instead of the -#s?
> Ok will address this.
> >
> > > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_runtime_pm.c | 23
> > ++++++++++++++++++++++-
> > > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
> > >  2 files changed, 23 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > index 6ed5786bcd29..704beeeb560b 100644
> > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > @@ -113,7 +113,7 @@ static void
> > untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
> > >  	unsigned long flags, n;
> > >  	bool found =3D false;
> > >
> > > -	if (unlikely(stack =3D=3D -1))
> > > +	if (unlikely(stack =3D=3D -1) || unlikely(stack =3D=3D -2))
> > >  		return;
> > >
> > >  	spin_lock_irqsave(&rpm->debug.lock, flags); @@ -320,6 +320,21
> > @@
> > > untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm *rpm)
> > > }
> > >
> > >  #endif
> > > +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm) {
> > > +	return rpm->kdev->power.runtime_status; }
> > > +
> > > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm)
> >
> > why not static?
>  We need is_intel_rpm_allowed for rc6 helpers , the helpers use
> pm_runtime_get_sync, To avoid lock issue we need to use it here too.
>=20
> See this patch " drm/i915: Guard rc6 helpers with is_intel_rpm_allowed"
>=20
> >
> > > +{
> > > +	int rpm_status;
> > > +
> > > +	rpm_status =3D intel_runtime_pm_status(rpm);
> > > +	if (rpm_status =3D=3D RPM_RESUMING
> >
> > I don't have a good feeling about this. If we are resuming we
> > shouldn't grab extra references... This seems a workaround for the lock
> mess.
> >
> > > || rpm_status =3D=3D RPM_SUSPENDING)
> >
> > and when we are suspending and we call this function is because we
> > need to wake up, no?!
>=20
> As we have re-used i915_gem_backup_suspend, i915_gem_suspend_late
> and i915_gem_resume , These functions use runtime helpers, which in-turn
> call  runtime suspend/resume callbacks and leads to deadlock.
>  So, these helpers need to be avoided.  we have added is_intel_rpm_allowe=
d
> and disallowed rpm callbacks with above condition during suspending and
> resuming  to avoid deadlock.
> >
> > > +		return false;
> > > +	else
> > > +		return true;
> > > +}
> > >
> > >  static void
> > >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool
> > > wakelock) @@ -354,6 +369,9 @@ static intel_wakeref_t
> > __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
> > >  						     runtime_pm);
> > >  	int ret;
> > >
> > > +	if (!is_intel_rpm_allowed(rpm))
> > > +		return -2;
> > > +
> > >  	ret =3D pm_runtime_get_sync(rpm->kdev);
> > >  	drm_WARN_ONCE(&i915->drm, ret < 0,
> > >  		      "pm_runtime_get_sync() failed: %d\n", ret); @@ -490,6
> > +508,9
> > > @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
> > >
> > >  	untrack_intel_runtime_pm_wakeref(rpm, wref);
> > >
> > > +	if (wref =3D=3D -2)
> > > +		return;
> > > +
> > >  	intel_runtime_pm_release(rpm, wakelock);
> > >
> > >  	pm_runtime_mark_last_busy(kdev);
> > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > index d9160e3ff4af..99418c3a934a 100644
> > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> > > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> > > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> > > intel_runtime_pm *rpm);  void intel_runtime_pm_driver_release(struct
> > > intel_runtime_pm *rpm);
> > > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
> >
> > if really need to export please follow the naming convention.\
>=20
> Ok will address this.
>=20
> -Tilak
> >
> > >
> > >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
> > > intel_wakeref_t intel_runtime_pm_get_if_in_use(struct
> > > intel_runtime_pm *rpm);
> > > --
> > > 2.25.1
> > >
